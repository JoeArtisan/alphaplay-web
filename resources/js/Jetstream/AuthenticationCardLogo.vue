<template>
    <a :href="'/'">
        <img class="w-48" src="/img/logo.jpg">
    </a>
</template>

<script>
    import { defineComponent } from 'vue'
    import { Link } from '@inertiajs/inertia-vue3';

    export default defineComponent({
        components: {
            Link,
        },
    })
</script>
