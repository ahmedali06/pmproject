<%--
  Created by IntelliJ IDEA.
  User: ahmed ali
  Date: 6/10/14
  Time: 1:03 PM
  To change this template use File | Settings | File Templates.
--%>
<h1>Create Task</h1>
<form role="form" name="saveUserData" action="#" ng-controller="RegisterController" ng-submit="registerUser()">
    <div class="form-group">
        <label for="title" class="col-md-2">
            Title:
        </label>
        <div class="col-md-10">
            <input type="text" class="form-control" ng-model="form.title" id="title" placeholder="Enter Title" required>
        </div>


    </div>

    <div class="form-group">
        <label for="lastname" class="col-md-2">
            Description:
        </label>
        <div class="col-md-10">
            <textarea class="form-control" rows="3" id="description" ng-model="form.description" required></textarea>
        </div>


    </div>

    <div class="form-group">
        <label for="emailaddress" class="col-md-2">
            Status:
        </label>
        <div class="col-md-10">
            <input type="text" class="form-control" ng-model="form.status" id="status" placeholder="Enter Status" required>
        </div>


    </div>

    <div class="form-group">
        <label for="emailaddress" class="col-md-2">
            Priority:
        </label>
        <div class="col-md-10">
            <input type="text" class="form-control" ng-model="form.priority" id="priority" placeholder="Enter Priority" required>
        </div>


    </div>

    <div class="form-group">
        <label for="emailaddress" class="col-md-2">
            Project:
        </label>
        <div class="col-md-10">
            <input type="text" class="form-control" ng-model="form.project" id="project" placeholder="Enter Project" required>
        </div>


    </div>

    <div class="form-group">
        <label for="assignto" class="col-md-2">
            Assign To:
        </label>
        <div class="col-md-10">
            <input type="text" class="form-control" ng-model="form.assignto" id="assignto" placeholder="Enter Assign To" required>
        </div>


    </div>

    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-10">
            <button type="submit" class="btn btn-info" ngClick="Submit">
                Create
            </button>
        </div>
    </div>
</form>