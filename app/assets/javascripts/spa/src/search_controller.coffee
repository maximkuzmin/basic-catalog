angular
  .module('spa')
  .controller('SearchController', [
    '$scope', '$http', '$state', 'goods', ($scope, $http, $state, goods) ->
      $scope.params = { q : $state.params.q || '' }
      $scope.goods = goods
      $scope.requestActive = false
      $scope.$state = $state

      requestCallback = (data) ->
        $scope.requestActive = false

      $scope.requestData = () ->
        if $state.current.name == 'search'
          $scope.requestActive = true
          updateUrl()
          goods.request $scope.params, requestCallback

      updateUrl = () ->
        $state.go 'search', $scope.params, { notify: false }

      urlWatcher = (url) ->
        console.log url
        $scope.showTemplate = !url.match(/(good)|(company)/)
        $scope.requestData() if $scope.showTemplate

      initialize = () ->
        $scope.$watch('$state.current.name', urlWatcher)
        $scope.requestData()
        console.warn 'Search controller'

      initialize()
    ])
