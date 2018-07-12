require('./bootstrap');

import store from './store/store'

window.Vue = require('vue');

Vue.component('input-search', require('./components/SearchComponent'));

const app = new Vue({
    el   : '#app',
    store: store
});
