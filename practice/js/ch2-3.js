(function() {
  var app;

  app = angular.module('app', []);

  app.controller('HomeController', function($scope) {
    $scope.counter = 0;
    $scope.name = 'AndyYou';
    $scope.playList = ['A song', 'B song', 'C song'];
    $scope.go = function() {
      $scope.counter += 1;
    };
    return $scope.$watch('counter', function() {
      console.log($scope.counter);
    });
  });

}).call(this);
