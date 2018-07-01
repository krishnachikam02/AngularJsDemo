(function(){
  var app =angular.module('UserApp',['ngRoute']);
    app.config(function($routeProvider){
        
        $routeProvider
            .when('/',{
                   
                    controller :'rolemastercontroller',
                    templateUrl :'app/views/rolemaster.html'
               })
               .when('/login',{
                   
                    controller :'loginController',
                    templateUrl :'app/views/login.html'
               })
              .when('/user',{
                   
                    controller :'userController',
                    templateUrl :'app/views/user.html'
               })
            
               .otherwise({redirectTo:'/'});
               
               });    
}());




    


























(function(){
    
    var app = angular.module('subapp',['ngRoute']);
    
    app.config(function($routeProvider){
        
        $routeProvider
        
        .when('/',{
            controller:'loginController',
            templateUrl:'app/views/login.html'
        })
        .when('/subject',{
            controller:'subjectController',
            templateUrl:'app/views/subject.html'
        })
        .otherwise({redirectTo:'/'});
               
        });
    
}());