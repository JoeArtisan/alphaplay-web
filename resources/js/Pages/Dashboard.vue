<template>
    <app-layout title="Dashboard">
        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                   

                    <div class="w-full">
                        <ul class="flex mb-0 list-none flex-wrap pt-3 pb-4 flex-row">
                            <li class="-mb-px mr-2 last:mr-0 flex-auto text-center">
                                <a class="text-xs font-bold uppercase px-5 py-3 shadow-lg rounded block leading-normal" v-on:click="toggleTabs(1)" v-bind:class="{'text-gray-600 bg-white': openTab !== 1, 'text-green-500 bg-gray-200': openTab === 1}">
                                    Lotería
                                </a>
                            </li>
                            <li class="-mb-px mr-2 last:mr-0 flex-auto text-center">
                                <a class="text-xs font-bold uppercase px-5 py-3 shadow-lg rounded block leading-normal" v-on:click="toggleTabs(2)" v-bind:class="{'text-gray-600 bg-white': openTab !== 2, 'text-green-500 bg-gray-200': openTab === 2}">
                                    Chances
                                </a>
                            </li>
                        </ul>

                        <div class="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-lg rounded">
                            <div class="px-4 py-5 flex-auto">
                                <div class="tab-content tab-space">
                                    <div v-bind:class="{'hidden': openTab !== 1, 'block': openTab === 1}" class="bg-gray-200 bg-opacity-25 grid grid-cols-1 md:grid-cols-2">
                                        <div class="p-6">
                                            <div class="flex items-center">
                                                <img class="w-8 h-8 text-gray-400" src="https://www2.jps.go.cr/wp-content/uploads/2021/04/logo_nacional.png">
                                                <div class="ml-4 text-lg text-gray-600 leading-7 font-semibold">Último Sorteo Lotería</div>
                                            </div>

                                            <div class="ml-12">
                                                <div class="mt-2 text-sm text-gray-500">
                                                    Sorteo: {{data.loteria.last.numeroSorteo}} <br>
                                                    Fecha: {{getDate(data.loteria.last.fecha)}} <br>
                                                    Validez: {{getDate(data.loteria.last.vigencia)}} <br>
                                                    Primer premio: num {{data.loteria.last.premios[0].numero}} serie {{data.loteria.last.premios[0].serie}}<br>
                                                    Segundo premio: num {{data.loteria.last.premios[1].numero}} serie {{data.loteria.last.premios[1].serie}}<br>
                                                    Tercer premio: num {{data.loteria.last.premios[2].numero}} serie {{data.loteria.last.premios[2].serie}}<br>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="p-6 border-t border-gray-200">
                                            <LineChart title="Últimos 7 sorteos lotería" :data="data.loteria.page.data" :labels="data.loteria.page.label"/>
                                        </div>
                                    </div>

                                    <div v-bind:class="{'hidden': openTab !== 2, 'block': openTab === 2}" class="bg-gray-200 bg-opacity-25 grid grid-cols-1 md:grid-cols-2">
                                        <div class="p-6 border-t border-gray-200 md:border-t-0 md:border-l">
                                            <div class="flex items-center">
                                                <img class="w-8 h-8 text-gray-400" src="https://www2.jps.go.cr/wp-content/uploads/2021/04/logo_chances.png">
                                                <div class="ml-4 text-lg text-gray-600 leading-7 font-semibold">Último sorteo de Chances</div>
                                            </div>

                                            <div class="ml-12">
                                                <div class="mt-2 text-sm text-gray-500">
                                                    Sorteo: {{data.chances.last.numeroSorteo}} <br>
                                                    Fecha: {{getDate(data.chances.last.fecha)}} <br>
                                                    Validez: {{getDate(data.chances.last.vigencia)}} <br>
                                                    Primer premio: num {{data.chances.last.premios[0].numero}} serie {{data.chances.last.premios[0].serie}}<br>
                                                    Segundo premio: num {{data.chances.last.premios[1].numero}} serie {{data.chances.last.premios[1].serie}}<br>
                                                    Tercer premio: num {{data.chances.last.premios[2].numero}} serie {{data.chances.last.premios[2].serie}}
                                                </div>
                                            </div>
                                        </div>

                                        <div class="p-6 border-t border-gray-200 md:border-l">
                                            <LineChart title="Últimos 7 sorteos chances" :data="data.chances.page.data" :labels="data.chances.page.label"/>
                                        </div>

                                        <div class="p-6 border-t border-gray-200 md:border-t-0 md:border-l">
                                            <div class="flex items-center">
                                                <div class="ml-4 text-lg text-gray-600 leading-7 font-semibold">Análisis histórico de los chances</div>
                                            </div>

                                            <div class="ml-12">
                                                <div class="mt-2 text-sm text-gray-500">
                                                    Se han contado {{data.chances.count}} sorteos desde el {{ getDate(data.chances.first) }} y tenemos más de {{data.chances.age}} años de información.<br>
                                                    El numero más frecuente es el {{data.chances.top7_frecuency_all.data[0]}} con {{data.chances.top7_frecuency_all.label[0]}} ocasiones. <br>
                                                    El numero más frecuente de los ultimos 10 años el {{data.chances.top7_frecuency_10y.data[0]}} con {{data.chances.top7_frecuency_10y.label[0]}} ocasiones. <br>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="p-6 border-t border-gray-200 md:border-l">
                                            <BarChart :title="'Los 7 más frecuentes de los ultimos 10 años'" :data="data.chances.top7_frecuency_10y.data" :labels="data.chances.top7_frecuency_10y.label"/>
                                        </div>

                                        <div class="p-6 border-t border-gray-200 md:border-l">
                                            <BarChart :title="'Los 7 más frecuentes de los ultimos ' + data.chances.age + ' años'" :data="data.chances.top7_frecuency_all.data" :labels="data.chances.top7_frecuency_all.label"/>
                                        </div>
                            
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </app-layout>
</template>

<script>
    import { defineComponent } from 'vue'
    import AppLayout from '@/Layouts/AppLayout.vue'
    import LineChart from '@/Pages/LineChart.vue'
    import BarChart from '@/Pages/BarChart.vue'

    export default defineComponent({
        props:['data'],
        components: {
            AppLayout,
            LineChart,
            BarChart
        },
        data() {
            return {
                openTab: 1
            }
        },

        methods:{

            getDate(f){
                let nf = new Date(f)
                return nf.getDate() + "/" + (nf.getMonth() + 1) + "/" + nf.getFullYear()
            },
            toggleTabs: function(tabNumber){
                this.openTab = tabNumber
            }
        },
    })
</script>
<style scoped>
/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}
</style>