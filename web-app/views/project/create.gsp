<form role="form" role="form" name="createProject" action="#" ng-controller="ProjectAddController" ng-submit="addProject()">
    <div class="form-group">
        <label for="name">Project Name:</label>
        <input type="text" class="form-control" ng-model="form.name" id="name" placeholder="Enter Project Name">
    </div>

    <div class="form-group">
        <label for="description">Description:</label>
        <textarea class="form-control" rows="3" id="description" ng-model="form.description" required></textarea>
    </div>


    <button type="submit" class="btn btn-default" ngClick="Submit">Create</button>
</form>
