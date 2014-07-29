/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var deps = [
    "ui.router",
    "ui.bootstrap"    
],

IPM = angular.module("IPM", deps);



IPM.config([
    '$stateProvider', 
    '$urlRouterProvider', 
    function($stateProvider, $urlRouterProvider){
        
        var tplUrl = 'public/templates/'
        
        $urlRouterProvider.otherwise('/login');
        
        
        $stateProvider.
                
                state('login', {
                    url: '/login',
                    templateUrl: tplUrl+ 'application/login.html'
                }).
                
                state('main', {
                    url: '/main',
                    templateUrl: tplUrl + 'application/main.html'
                });
    }
]);


