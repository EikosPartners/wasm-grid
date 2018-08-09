import Vue from 'vue'
import App from './App.vue'

Vue.config.productionTip = false

var Module = Module !== undefined ? Module : {};

new Vue({
  render: h => h(App, {
    props: { Module: Module }
  })
}).$mount('#app')
