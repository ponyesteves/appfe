angular.module('appuu')
.directive 'auForm', () ->
  replace: false
  restrict: 'E'
  templateUrl: '/views/fw/resources/form'
.directive 'auFicha', ($compile, ResourseManager) ->
  replace: false
  restrict: 'E'
  link: (s, e) ->
    s.ficha.then (resp) ->
      e.html(ResourseManager.construir_ficha(resp.data))
      $compile(e.contents())(s)
