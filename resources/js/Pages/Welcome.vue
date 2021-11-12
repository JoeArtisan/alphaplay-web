<template>
    <app-layout title="Bienvenida">
        <div class="bg-cover bg-no-repeat bg-right-top xl:bg-bottom">
            <div class="container mx-auto px-5 pb-16 sm:pb-16 lg:pb-24 xl:pb-32">
                <div class="mt-16 space-y-8 lg:mt-24 xl:mt-28">
                    <div class="space-y-4">
                        <h1 class="text-3xl font-black sm:w-2/3 sm:text-4xl md:max-w-xl md:text-5xl">Analisis gratuito de Chances y Loteria Nacional</h1>
                        <p class="max-w-sm text-lg text-gray-700 md:max-w-md md:text-xl">Recopilamos, analisamos y visualizamos analiticamente números favorecidos por usted basados en patrones de alta frecuencia.</p>
                    </div>
                    <div class="space-y-4">
                        <a :href="route('register')" class="w-full px-8 py-3.5 mr-1 transition duration-300 bg-green-500 hover:bg-green-600 shadow text-white font-semibold rounded-lg sm:w-auto">Registrese gratis</a>
                        <a :href="route('login')" class="w-full px-8 py-3.5 transition duration-300 bg-blue-500 hover:bg-blue-600 shadow text-white font-semibold rounded-lg sm:w-auto">Ingresar al sitio</a>
                    </div>
                </div>
            </div>
        </div><!-- End Hero Block -->
        
        <div class="border-t border-gray-200"></div>

        <section class="py-12 lg:py-16 xl:py-28"><!-- Start How It Works Block -->
            <div class="container mx-auto px-5">
                <div class="grid gap-6 lg:gap-10 xl:grid-cols-3">
                    <div class="space-y-2 lg:space-y-4">
                        <h2 class="text-2xl font-black sm:text-3xl">Cómo funciona ?</h2>
                        <p class="w-full sm:w-1/2 xl:w-80 text-gray-600 md:text-lg">Ingrese a nuestro sitio y descubra todo el potencial del analisis de datos realizado por el equipo de Alpha Play.</p>
                    </div>
                    <div class="grid gap-6 sm:grid-cols-2 lg:gap-10 xl:col-span-2">
                        <div class="relative bg-white p-5 rounded-xl shadow space-y-2 transition-shadow duration-200 hover:shadow-lg md:p-8"><!-- Start Step Box -->
                            <dt>
                                <div class="absolute flex items-center justify-center h-12 w-12 rounded-full bg-blue-500 text-white">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" /></svg>
                                </div>
                                <p class="ml-16 text-xl font-medium">Paso 1: Registro</p>
                            </dt>
                            <dd class="ml-16 text-gray-500">Obten una cuenta en nuestro sitio totalmete gratis y para siempre.</dd>
                        </div><!-- End Step Box -->
                        <div class="relative bg-white p-5 rounded-xl shadow space-y-2 transition-shadow duration-200 hover:shadow-lg md:p-8"><!-- Start Step Box -->
                            <dt>
                                <div class="absolute flex items-center justify-center h-12 w-12 rounded-full bg-blue-500 text-white">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01" /></svg>
                                </div>
                                <p class="ml-16 text-xl font-medium">Paso 2: Modalidades</p>
                            </dt>
                            <dd class="ml-16 text-gray-500">Escoja entre las modalidades disponible para el analisis de datos.</dd>
                        </div><!-- End Step Box -->
                        <div class="relative bg-white p-5 rounded-xl shadow space-y-2 transition-shadow duration-200 hover:shadow-lg md:p-8"><!-- Start Step Box -->
                            <dt>
                                <div class="absolute flex items-center justify-center h-12 w-12 rounded-full bg-blue-500 text-white">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 7h6m0 10v-3m-3 3h.01M9 17h.01M9 14h.01M12 14h.01M15 11h.01M12 11h.01M9 11h.01M7 21h10a2 2 0 002-2V5a2 2 0 00-2-2H7a2 2 0 00-2 2v14a2 2 0 002 2z" /></svg>
                                </div>
                                <p class="ml-16 text-xl font-medium">Paso 3: Analice</p>
                            </dt>
                            <dd class="ml-16 text-gray-500">Visualice los graficos, identifique las tendencias y escoja su numero.</dd>
                        </div><!-- End Step Box -->
                        <div class="relative bg-white p-5 rounded-xl shadow space-y-2 transition-shadow duration-200 hover:shadow-lg md:p-8"><!-- Start Step Box -->
                            <dt>
                                <div class="absolute flex items-center justify-center h-12 w-12 rounded-full bg-blue-500 text-white">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" /></svg>
                                </div>
                                <p class="ml-16 text-xl font-medium">Paso 4: Juegue</p>
                            </dt>
                            <dd class="ml-16 text-gray-500">Busque a asu proveedor mas cercano y compre uno o mas numeros.</dd>
                        </div><!-- End Step Box -->
                    </div>
                </div>
            </div>
        </section><!-- End How It Works Block -->      
        
    </app-layout>
</template>

<script>
    import { defineComponent } from 'vue'
    import AppLayout from '@/Layouts/AppLayout.vue'
    import JetApplicationLogo from '@/Jetstream/ApplicationLogo.vue'

    export default defineComponent({
        components: {
            AppLayout,
            JetApplicationLogo
        },
    })
</script>