app = angular.module 'app', []
app.controller 'HomeController', ($scope) ->
  $scope.counter = 0
  $scope.name = 'AndyYou'
  $scope.playList = ['A song', 'B song', 'C song']

  $scope.go = () -> 
    $scope.counter += 1
    return
    
  $scope.$watch 'counter', () ->
    console.log $scope.counter
    return
  return
