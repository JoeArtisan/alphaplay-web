<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Client\Pool;
use Illuminate\Http\Request;
use Inertia\Inertia;
use App\Models\Fate;

class DashController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function welcome(Request $request)
    {
        if ($request->user()) return redirect()->route('dashboard');

        return Inertia::render('Welcome');
    }

    public function data(Request $request)
    {
        
        $id = 6460; // first 4213 07/05/1996 - last 6627 09/11/2021, 
        
        //$this->getChances($id);

        $fates = Fate::all();
        echo($fates);

        return Inertia::render('Welcome');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function dashboard(Request $request)
    {
        $chances_page_label = [];
        $chances_page_data = [];
        $loteria_page_label = [];
        $loteria_page_data = [];

        $chances_last = [];
        $chances_page = [];
        $loteria_last = [];
        $loteria_page = [];

        $responses = Http::pool(fn (Pool $pool) => [
            $pool->as('chances_last')->get('https://integration.jps.go.cr/api/App/chances/last'),
            $pool->as('chances_page')->get('https://integration.jps.go.cr/api/App/chances/page'),
            $pool->as('loteria_last')->get('https://integration.jps.go.cr/api/App/loterianacional/last'),
            $pool->as('loteria_page')->get('https://integration.jps.go.cr/api/App/loterianacional/page'),
        ]);

        if($responses['chances_last']->ok() && $responses['chances_page']->ok() && $responses['loteria_last']->ok() && $responses['loteria_page']->ok()){
            $chances_last = $responses['chances_last']->json();
            $chances_page = $responses['chances_page']->json();
            $loteria_last = $responses['loteria_last']->json();
            $loteria_page = $responses['loteria_page']->json();
        }

        for ($i = 6; $i >= 0; $i--) { 
            $cdate = strtotime($chances_page[$i]['fecha']);
            $ldate = strtotime($chances_page[$i]['fecha']);

            $chances_page_label[] = date("d/m/Y", $cdate);
            $loteria_page_label[] = date("d/m/Y", $ldate);

            $chances_page_data[] = $chances_page[$i]['premios'][0]['numero'];
            $loteria_page_data[] = $loteria_page[$i]['premios'][0]['numero'];
        }

        $exist = Fate::where('fate_id', $chances_last['numeroSorteo'])->first();
        $isValid = !$exist && count($chances_last['premios']) > 0;

        if ($isValid) {
            Fate::create([
                'fate_id' => $chances_last['numeroSorteo'],
                'role' => 1,
                'award' => $chances_last['premios'][0]['numero'],
                'serie' => $chances_last['premios'][0]['serie'],
                'release' => $chances_last['fecha'],
                'validity' => $chances_last['vigencia'],
            ]);
        }

        $frelease = Fate::where('fate_id',4213)->first()->release;
        
        $top7_frecuency_all_chances = DB::table('fates')
                 ->select('award', DB::raw('count(award) as total'))
                 ->where('role',1)
                 ->groupBy('award')
                 ->orderBy('total','DESC')
                 ->take(7)
                 ->get();

        $top7_frecuency_all_chances_label = [];
        $top7_frecuency_all_chances_data = [];

        foreach ($top7_frecuency_all_chances as $f) {
            $top7_frecuency_all_chances_label[] = $f->award;
            $top7_frecuency_all_chances_data[] = $f->total;
        }


        $top7_frecuency_10y_chances = DB::table('fates')
                 ->select('award', DB::raw('count(award) as total'))
                 ->where('role',1)
                 ->whereDate('release','>=','2011-10-01')
                 ->groupBy('award')
                 ->orderBy('total','DESC')
                 ->take(7)
                 ->get();

        $top7_frecuency_10y_chances_label = [];
        $top7_frecuency_10y_chances_data = [];

        foreach ($top7_frecuency_10y_chances as $f) {
            $top7_frecuency_10y_chances_label[] = $f->award;
            $top7_frecuency_10y_chances_data[] = $f->total;
        }


        $data = [
            'chances' => [
                'last' => $chances_last,
                'page' => [
                    'label' => $chances_page_label,
                    'data' => $chances_page_data,
                ],
                'count' => Fate::where('role',1)->get()->count(),
                'first' => $frelease,
                'age' => $frelease->age,
                'top7_frecuency_all' => [
                    'label' => $top7_frecuency_all_chances_label,
                    'data' => $top7_frecuency_all_chances_data,
                ],
                'top7_frecuency_10y' => [
                    'label' => $top7_frecuency_10y_chances_label,
                    'data' => $top7_frecuency_10y_chances_data,
                ],
            ],

            'loteria' => [
                'last' => $loteria_last,
                'page' => [
                    'label' => $loteria_page_label,
                    'data' => $loteria_page_data,
                ],
            ],
        ];
        

        return Inertia::render('Dashboard', ['data' => $data]); 
    }

    public function getChances(Int $id){
        $to = $id + 200;
        for ($i = $id; $i <= $to; $i++) { 
            $this->getChancesData($i);
        }
    }

    public function getChancesData(Int $i){
        $link = 'https://integration.jps.go.cr/api/App/chances/'.$i;
        $sorteo = Http::get($link)->json();            
        $exist = Fate::where('fate_id', $i)->first();
        $isValid = !$exist && count($sorteo['premios']) > 0;
        if ($isValid) {
            Fate::create([
                'fate_id' => $i,
                'role' => 1,
                'award' => $sorteo['premios'][0]['numero'],
                'serie' => $sorteo['premios'][0]['serie'],
                'release' => $sorteo['fecha'],
                'validity' => $sorteo['vigencia'],
            ]);
        }
        
    }
}