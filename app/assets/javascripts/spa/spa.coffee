app = angular.module 'spa', ['ui.router']

app.config(
  ['$stateProvider', '$urlRouterProvider',
    ($stateProvider, $urlRouterProvider) ->
      searchState = {
        name: 'search'
        url: '/?q'
        controller: 'SearchController'
        templateUrl: '/api/templates/search'
      }

      showGoodState = {
        name: 'search.show_good'
        url: 'goods/:goodId'
        controller: 'GoodController'
        templateUrl: '/api/templates/search_show_good'
      }

      showCompanyState = {
        name: 'search.show_company'
        url: 'company/:companyId'
        controller: 'CompanyController'
        templateUrl: '/api/templates/search_show_company'
      }

      $stateProvider.state(state) for state in [searchState, showGoodState, showCompanyState]
      $urlRouterProvider.otherwise '/'
])
