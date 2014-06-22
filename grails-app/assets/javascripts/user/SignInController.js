'use strict';

/* Controllers */
var signInController=angular.module('PmApp');

        signInController.controller('SignInController', ['$rootScope', '$scope', '$http', 'authService',
            function ($rootScope, $scope, $http, authService) {
                console.log('SignInController called');
                console.log($scope.form);
                $scope.signInUser = function () {
                    event.preventDefault();
                    console.log('SignIn called');

                    $http.post('http://localhost:8080/pmproject/auth/api/login', { username: $scope.form.username, password: $scope.form.password }, getAuthenticateHttpConfig).
                        success(function (data) {
                            console.log('authentication token: ' + data.token);
                            console.log('authentication username: ' + data.username);
                            $rootScope.isAuthenticated = true;
                            $rootScope.currentUser = data.username;
                            setLocalToken(data.token);
                            authService.loginConfirmed({}, function (config) {
                                if (!config.headers["X-Auth-Token"]) {
                                    console.log('X-Auth-Token not on original request; adding it');
                                    config.headers["X-Auth-Token"] = getLocalToken();
                                }
                                return config;
                            });
                        }).
                        error(function (data) {
                            console.log('login error: ' + data);
                            $rootScope.$broadcast('event:auth-loginFailed', data);
                        });
                }
            }]);


