'use strict';
angular.module('PmApp', [
     'http-auth-interceptor',
     'ngRoute',
     'ui.bootstrap'
]).
    config(['$routeProvider', function($routeProvider) {
        $routeProvider.
            when("/login", {templateUrl: "views/user/login.gsp", controller: "SignInController"}).
            when("/index", {templateUrl: "views/user/login.gsp", controller: "SignInController"}).
            when("/register", {templateUrl: "views/user/register.gsp", controller: "RegisterController"}).
            when("/success", {templateUrl: "views/success.gsp", controller: "RegisterController"}).
            when("/dashboard", {templateUrl: "views/dashboard.gsp", controller: "RegisterController"}).
            when("/projects/create", {templateUrl: "views/project/create.gsp", controller: "ProjectController"}).
            when("/projects", {templateUrl: "views/project/index.gsp", controller: "ProjectController"}).
            when("/project/show/:project_id", {templateUrl: "views/project/show.gsp", controller: "ProjectShowController"}).
            when("/project/edit/:project_id", {templateUrl: "views/project/edit.gsp", controller: "ProjectEditController"}).
            when("/tasks", {templateUrl: "views/dashboard.gsp", controller: "RegisterController"}).
            when("/user/:id", {templateUrl: "views/user/login.gsp", controller: "SignInController"}).
            otherwise({redirectTo: '/index'});
    }]);



function getLocalToken() {
    return sessionStorage["authToken"];
}

function setLocalToken(value) {
    sessionStorage["authToken"] = value;
}

function getHttpConfig() {
    return {
        headers: {
            'X-Auth-Token': getLocalToken()
        }
    };
}

function getAuthenticateHttpConfig() {
    return {
        ignoreAuthModule: true
    };
}

gambApp.run(['$rootScope', '$http', '$location',
    function ($rootScope, $http, $location) {
        $http.defaults.headers.common['X-AUTH-TOKEN'] = getLocalToken();

        $rootScope.$on('event:auth-loginRequired', function () {
            console.log('showing login form');
            $location.path('/login');
        });
        $rootScope.$on('event:auth-loginFailed', function () {
            console.log('showing login error message');
            $('#login-error').show();
        });
        $rootScope.$on('event:auth-loginConfirmed', function () {
            console.log('redirecting to home');
            $http.defaults.headers.common['X-AUTH-TOKEN'] = getLocalToken();
            $location.path('/');
        });
        $rootScope.$on('event:auth-logoutRequest', function () {
            console.log('Logging out user');
            delete $http.defaults.headers.common["X-AUTH-TOKEN"]
            $rootScope.isAuthenticated = false;
            $rootScope.currentUser = null;
            sessionStorage.clear();
            $location.path("/login")
        });
    }]);
