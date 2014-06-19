
'use strict';


/* Controllers */

var projectController = angular.module('PmApp');

projectController.controller('ProjectShowController', ['$scope', '$http','$routeParams',
    function ($scope,$http,$routeParams) {
        $scope.project_id = $routeParams.project_id;
        $http.get('http://localhost:8080/pmproject/project/show/'+$scope.project_id)
            .success(function (data, status, headers, config) {
                console.log("project", data)
                $scope.projectDetail = data;
            }).error(function (data, status, headers, config) {
                console.log("Error while loading project ", status)
            });
    }]);


projectController.controller('ProjectEditController', ['$scope', '$http','$routeParams',
    function ($scope,$http,$routeParams) {
        $scope.project_id = $routeParams.project_id;
        $http.get('http://localhost:8080/pmproject/project/show/'+$scope.project_id)
            .success(function (data, status, headers, config) {
                console.log("project", data)
                $scope.projectDetail = data;
            }).error(function (data, status, headers, config) {
                console.log("Error while loading project ", status)
            });
    }]);

projectController.controller('ProjectController', ['$scope', '$http',
    function ($scope, $http) {
        $http.get('http://localhost:8080/pmproject/project/index')
            .success(function (data, status, headers, config) {
                console.log("projects", data)
                $scope.projects = data;
            }).error(function (data, status, headers, config) {
                console.log("Error while loading projects ", status)
            });
    }]);

projectController.controller('ProjectAddController',function ($scope, $http,$location) {
    var formData = {
        name: "default",
        description: "default"
    };

    $scope.save = function() {
        formData = $scope.form;
    };

    $scope.addProject = function() {
        console.log("posting data....");
        formData = $scope.form;
        console.log(formData);

        $http({
            method: 'POST',
            url: 'http://localhost:8080/pmproject/project/save',
            data: JSON.stringify(formData),
            headers: {'Content-Type': 'application/json'}
        }).success(function(data,status,headers){
                alert("succ1")
                var strJSON=data;
                if(strJSON.status=="Success")
                {
                    $location.path('/projects');
//                    window.location = "/projects";
                }
                else
                {
                    $scope.status=strJSON.status;
                }
                /*success callback*/
                console.log("status:"+$scope.status)

            });
    };
});


projectController.controller('ProjectUpdateController',function ($scope, $http,$location) {
    var formData = {
        project_id:$scope.projectDetail.id,
        name: $scope.projectDetail.name,
        description: $scope.projectDetail.description
    };

    $scope.save = function() {
        formData = $scope.form;
    };

    $scope.updateProject = function() {
        console.log("posting data....");
        formData = $scope.form;
        console.log(formData);

        $http({
            method: 'PUT',
            url: 'http://localhost:8080/pmproject/project/update',
            data: JSON.stringify(formData),
            headers: {'Content-Type': 'application/json'}
        }).success(function(data,status,headers){
                alert("succ1")
                var strJSON=data;
                if(strJSON.status=="Success")
                {
                    $location.path('/projects');
//                    window.location = "/projects";
                }
                else
                {
                    $scope.status=strJSON.status;
                }
                /*success callback*/
                console.log("status:"+$scope.status)

            });
    };
});