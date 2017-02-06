angular
  .module('spa')
  .controller('MainController', [
    '$scope', '$http', '$state', '$window', ($scope, $http, $state, $window) ->
      console.warn 'MainController'
    ])
