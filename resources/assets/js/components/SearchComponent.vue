<template>
    <div class="search">
        <input class="form-control" type="text" placeholder="Localizar" v-model="inputVal" v-on:keyup.13="search">
    </div>
</template>

<script>
    export default {
        name   : "SearchComponent",
        props  : ['module'],
        data() {
            return {
                inputVal: ''
            }
        },
        methods: {
            search() {

            }
        }
    }
</script>

<style scoped>

</style>