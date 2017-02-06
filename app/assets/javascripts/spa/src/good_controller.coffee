angular
  .module('spa')
  .controller('GoodController', [
    '$scope', '$state', 'goods', ($scope, $state, goods) ->
      goodId = $state.params.goodId

      resolveGood = ()->
        $scope.good = goods.findById(goodId)
        if !$scope.good
          goods.requestById goodId, (data) -> $scope.good = data

      initialize = () ->
        resolveGood()
        console.warn 'Good controller'

      initialize()
    ])
