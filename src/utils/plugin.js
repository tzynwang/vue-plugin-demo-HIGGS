const MyPlugin = {
  install(Vue) {
    Vue.mixin({
      mounted() {
        console.log('mounted the following component:')
        console.log(this.$el)
      }
    })
  }
}

export default MyPlugin
