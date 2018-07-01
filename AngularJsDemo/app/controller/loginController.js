(function(){
    var loginController = function($scope,$location,datafactory){
        
        $scope.username = null;
        $scope.password = null;
        $scope.LoginModel = {};
        
        $scope.UserData = {};
        
        
        $scope.validateUser = function(username,password){
            datafactory.validateUser(username,password)
             .then(function(response){
                    if(response.data.results.length == 1){
                        $location.path('/user'); 
                    }
                    else{
                        $location.path('/'); 
                    }
                   },function(error){
                        $location.path('/'); 
                
                   });
        }
        
    };
    
        loginController.$inject = ['$scope','$location','datafactory'];
        angular.module('UserApp')
        .controller('loginController',loginController);
    
}());
    

