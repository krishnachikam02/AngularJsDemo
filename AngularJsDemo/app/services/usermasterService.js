angular.module('UserApp')
.factory('datafactory',['$http',function($http){
    
    var urlBase = 'http://localhost:54565/api/UserMaster';
    var urlForPost='http://localhost:54565/api/UserMaster';
    var urlRole='http://localhost:54565/api/RoleMaster';
    
    var datafactory ={};
    
    datafactory.getUser = function(){
        return $http.get(urlBase);
    };
    
    datafactory.insertUser = function (userObj){
        return $http.post(urlForPost,userObj);
    };
    
     datafactory.UpdateUserMaster = function (userObj) {
            debugger
            return $http.put(urlForPost, userObj);
        };
    
    datafactory.DeleteUserMaster = function (UserId){
           
        var data = {
         "userid":UserId
        };

        var config = {
         params: data,
         headers : {'Accept' : 'application/json'}
        };

        return $http.delete(urlBase,config);
    };
    
    datafactory.validateUser = function(username,password){
        
        var data = {
            "emailid":username,
            "password":password
        }
        
        var config = {
             params: data,
             headers : {'Accept' : 'application/json'}
        };
        
        return $http.get(urlBase,config);
    }    
    //service for rolemaster
    datafactory.getRoleList = function(){
        return $http.get(urlRole);
    };
    
    
    //service for update
    datafactory.UpdateRoleMaster = function (data) {
            debugger
            return $http.post(urlRole,data);
        };
    
    
    //service for delete
    datafactory.DeleteRoleMaster = function(abcd){
           
        var data = {
         "RoleId":abcd
        };

        var config = {
         params: data,
         headers : {'Accept' : 'application/json'}
        };

        return $http.delete(urlRole,config);
    };
    
    return datafactory;
    
}]);


