
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

projectController.controller('ProjectDeleteController', ['$scope', '$http','$location','$routeParams',
    function ($scope,$http,$location,$routeParams) {
        console.log('ProjectDeleteController called')
        $scope.project_id = $routeParams.project_id;
        console.log("id:"+$scope.project_id)
        $http.delete('http://localhost:8080/pmproject/project/delete/'+$scope.project_id)
            .success(function(data,status){
                console.log(status)
                $location.path('/projects');

            }).error(function(data,status){

                console.log(status)

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
        event.preventDefault();
        console.log("posting data....");
        formData = $scope.form;
        console.log(formData);

        $http({
            method: 'POST',
            url: '/pmproject/project/save',
            data: JSON.stringify(formData),
            headers: {'Content-Type': 'application/json'}
        }).success(function(data,status){
                console.log(status)
                    $location.path('/projects');

            }).error(function(data,status){

                console.log(status)

            });
    };
});


projectController.controller('ProjectUpdateController',function ($scope, $http,$location) {

    $scope.updateProject = function() {
        event.preventDefault();
        var paramData=$scope.projectDetail;
        console.log("posting data...."+$scope.projectDetail.id);
        console.log("posting data...."+$scope.projectDetail.name);
        console.log("posting data...."+$scope.projectDetail.description);

        $http({
            method: 'PUT',
            url: '/pmproject/project/update',
            data: paramData,
            headers: {'Content-Type': 'application/json'}
        }).success(function(data,status){
                console.log(status)
                console.log(data.updatedId)
                $location.path('/project/show/'+data.updatedId);
                setReadOnly('projectname');
                setReadOnly('description');

            }).error(function(data,status){

                console.log(status)

            });
    };
});


