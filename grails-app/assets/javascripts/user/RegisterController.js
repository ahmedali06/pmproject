
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

    $scope.submitForm = function() {
        console.log("posting data....");
        formData = $scope.form;
        console.log(formData);

        $http({
            method: 'POST',
            url: 'http://localhost:8080/pmproject/person/save',
            data: JSON.stringify(formData),
            headers: {'Content-Type': 'application/json'}
        }).success(function(data,status,headers){
                var strJSON=data;
                if(strJSON.status=="Success")
                {
//                    alert("success");
                    $location.path('/success');
//                    window.location = "#/success";
//                    scope.$apply(function() { $location.path("#/home"); });
                }
                else
                {
                    $scope.user.status=strJSON.userId+" : "+strJSON.status;
                }
                /*success callback*/
                console.log("status:"+status)

            });
    };
});
