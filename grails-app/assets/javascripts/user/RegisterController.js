
'use strict';

/* Controllers */
var registerController=angular.module('PmApp');
    registerController.controller('RegisterController',function ($scope, $http,$location) {
    var formData = {
        firstname: "default",
        lastname: "default",
        emailaddress: "default",
        password:"password",
        gender:"default"
    };

    $scope.save = function() {
        formData = $scope.form;
    };

    $scope.registerUser = function() {
        event.preventDefault();
        console.log("posting data....");
        formData = $scope.form;
        console.log(formData);

        $http({
            method: 'POST',
            url: '/pmproject/person/save',
            data: JSON.stringify(formData),
            headers: {'Content-Type': 'application/json'}
        }).success(function(data,status){
                console.log(status)
                $location.path('/success');

            }).error(function(data,status){

                console.log(status)

            });
    };
});
