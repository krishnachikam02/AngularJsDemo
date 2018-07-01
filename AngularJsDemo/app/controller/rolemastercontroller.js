(function(){
    var rolemastercontroller= function($scope,datafactory){
        $scope.roleModel={};
        $scope.isEdit = 'save';
        //getting data
        $scope.getRoleMaster=function(){
            datafactory.getRoleList()
            .then(function(response){
             console.log(response);
             $scope.roleList = response.data.results;
            console.log($scope.roleList);
                 },function(error){
                $scope.status='unable to load role data: '+error.message;
                  });
        } 
        
        //edit 
        $scope.edit=function(role)
        {
            $scope.roleModel={
                "RoleId":role.RoleId,
                "RoleName":role.RoleName,
                "RoleDescription":role.RoleDescription
            }
            $scope.isEdit = 'Edit';
        }
        
        //updating data
         $scope.update = function(data){
                   datafactory.UpdateRoleMaster($scope.roleModel)
                   .then(function(response){
                    $scope.status = 'Updated role!';
                    $scope.getRoleMaster();
                    $scope.roleModel ={};
                   },function(error){
                       $scope.status='unable to do'+error.message;
                
                   });
               }
         
         
         //deleting data
         $scope.delete=function(abcd){
              datafactory.DeleteRoleMaster(abcd.RoleId)
              .then(function(response) { 
                  debugger
              $scope.status = 'delete ';  
              $scope.getRoleMaster();
              $scope.roleModel = { };
          }, function (error) {
              $scope.status = 'Unable to do ' + error.message;
          });
        } 
        
        
          $scope.getRoleMaster();
    };
    rolemastercontroller.$inject=['$scope','datafactory'];
    angular.module('UserApp')
    .controller('rolemastercontroller',rolemastercontroller);
 
}());