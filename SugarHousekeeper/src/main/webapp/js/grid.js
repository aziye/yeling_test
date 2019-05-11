// register the grid component
Vue.component('demo-grid', {
  template: '#grid-template',
  replace: true,
  props: {
    data: Array,
    columns: Array,
    filterKey: String
  },
  data: function () {
    var sortOrders = {}
    this.columns.forEach(function (key) {
      sortOrders[key] = 1
    })
    return {
      sortKey: '',
      sortOrders: sortOrders
    }
  },
  computed: {
    filteredData: function () {
      var sortKey = this.sortKey
      var filterKey = this.filterKey && this.filterKey.toLowerCase()
      var order = this.sortOrders[sortKey] || 1
      var data = this.data
      if (filterKey) {
        data = data.filter(function (row) {
          return Object.keys(row).some(function (key) {
            return String(row[key]).toLowerCase().indexOf(filterKey) > -1
          })
        })
      }
      if (sortKey) {
        data = data.slice().sort(function (a, b) {
          a = a[sortKey]
          b = b[sortKey]
          return (a === b ? 0 : a > b ? 1 : -1) * order
        })
      }
      return data
    }
  },
  filters: {
    capitalize: function (str) {
      return str.charAt(0).toUpperCase() + str.slice(1)
    }
  },
  methods: {
    sortBy: function (key) {
      this.sortKey = key
      this.sortOrders[key] = this.sortOrders[key] * -1
    }
  }
})

// bootstrap the demo
/*var demo = new Vue({
  el: '#demo',
  data: {
    searchQuery: '',
    gridColumns: ['wharfid',' maxcurrentspeed',' maxtonnage','mintonnage','maxcaptain','minccaptain','maxdraft',' mindraft',' runningstate','remark'] ,
    gridData: [
    	{"wharfid":65,"maxcurrentspeed":2,"maxtonnage":2,"mintonnage":2,"maxcaptain":2,"minccaptain":2,"maxdraft":2,"mindraft":2,"runningstate":"2","remark":"2"},
    	{"wharfid":66,"maxcurrentspeed":87,"maxtonnage":7,"mintonnage":7,"maxcaptain":7,"minccaptain":7,"maxdraft":7,"mindraft":7,"runningstate":"7","remark":"rerewrwerwer"},
    	{"wharfid":67,"maxcurrentspeed":8,"maxtonnage":4,"mintonnage":4,"maxcaptain":4,"minccaptain":44,"maxdraft":4,"mindraft":4,"runningstate":"4","remark":"4"},
    	{"wharfid":68,"maxcurrentspeed":1,"maxtonnage":1,"mintonnage":2,"maxcaptain":2,"minccaptain":3,"maxdraft":3,"mindraft":4,"runningstate":"5","remark":"5"}
    ]
  }
})*/
