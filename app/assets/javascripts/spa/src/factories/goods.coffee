angular
  .module('spa')
  .factory('goods', ['$http', ($http) ->
    factory = {
      list: []
    }

    factory.request = (params, callback) ->
      $http
        .get '/api/goods', params: params
        .success (data) ->
          factory.list = angular.copy data
          callback()

    factory.requestById = (id, callback) ->
      $http
        .get "/api/goods/#{id}"
        .success callback

    factory.findById = (id) ->
      id = parseInt(id)
      result = null
      for good in factory.list
        result = good if good.id == id
      return result

    return factory
])
