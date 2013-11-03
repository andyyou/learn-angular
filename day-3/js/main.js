window.TodoCtrl =  function($scope)
{
  $scope.name = 'AndyYou';
  $scope.action = function(){
    $scope.name = 'Ken';
  }
}


// $(function(){
//   $('.btn').click(function(){
//     console.log('ok.');
//   })
// });