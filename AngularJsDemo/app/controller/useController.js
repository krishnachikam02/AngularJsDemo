 (function(){
   var userController =function($scope,datafactory,$http){
       $scope.DisplayMessage='Show Available userMaster';
       $scope.sortBy='Fullname';
       $scope.reverse=false;
       
        $scope.isEdit = 'Save';
       
       $scope.UserModel={};
       
      
       $scope.doSort = function(propName){
           
           $scope.sortBy=propName;
           $scope.reverse=!$scope.reverse;
       };
       
       $scope.Click = function(Fullname,EmailId){
           
           $scope.UserModel={
               "Fullname" :Fullname,
               "EmailId" :EmailId
            
           }
    //insert model
           datafactory.insertUser($scope.UserModel)
           .then(function(response){
              
               $scope.status='Updated user! Refreshing user list.';
               $scope.GetUserMaster();
               $scope.UserModel = {};
               $scope.Fullname=null;
               $scope.EmailId=null;
        
           },
                 function(error){
               $scope.status='unable to load user data: '+error.message;
           });
       }
        //get model
               $scope.GetUserMaster = function(){
                   datafactory.getUser()
                   .then(function(response){
                       console.log(response);
                       $scope.userList = response.data.results;
                   },function(error){
                       $scope.status='unable to load user data: '+error.message;
                
                   });
               }
        //edit model
                $scope.edit = function(data){
                   $scope.UserModel={
                       "UserId":data.UserId,
                       "Fullname" :data.Fullname,
                       "EmailId" :data.EmailId
                   }
                    $scope.isEdit = 'Edit';
               }
        //update model
               $scope.update = function(){
                   datafactory.UpdateUserMaster($scope.UserModel)
                   .then(function(response){
                    $scope.status = 'Updated Customer! Refreshing customer list.';
                    $scope.GetUserMaster();
                    $scope.UserModel ={};
                   },function(error){
                       $scope.status='unable to load user data: '+error.message;
                
                   });
               }
        //delete model    
            $scope.delete = function (data){
                $scope.UserId = data.UserId
              
                 datafactory.DeleteUserMaster($scope.UserId)
                      .then(function (response) {
                          $scope.status = 'deleted Customer! Refreshing customer list.';
                         $scope.GetUserMaster();
                         $scope.UserModel ={};
                      }, function (error) {
                          $scope.status = 'Unable to update customer: ' + error.message;
                    });
             }
              
          
       
       
        $scope.GetUserMaster();
                
   };
    userController.$inject=['$scope','datafactory','$http'];
    angular.module('UserApp')
    .controller('userController',userController);
         
}());

          
       