angular
  .module('spa')
  .controller('CompanyController', [
    '$scope', '$state', '$http', ($scope, $state, $http) ->
      companyId = $state.params.companyId

      requestCompany = ()->
        $http
          .get "/api/companies/#{companyId}"
          .success (data) ->
            $scope.company = data


      initialize = () ->
        requestCompany()
        console.warn 'Company controller'

      initialize()
    ])
