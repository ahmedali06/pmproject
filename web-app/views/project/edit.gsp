<div class="container">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <h3>
                            Project Detail
                        </h3>
                    </div>
                </div>
                <form class="form-horizontal" role="form" name="editProject" action="#" ng-controller="ProjectUpdateController" ng-submit="updateProject()">
                <div class="form-group">
                    <label for="projectname" class="col-sm-2 control-label">Project Name</label>
                    <div class="col-sm-10">
                        <input type="name" class="form-control" ng-model="formData.name" id="projectname"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="name">Description</label>
                    <textarea class="form-control" rows="3" ng-model="formData.description" id="description"></textarea>
                </div>
                <input type="hidden"   ng-model="formData.id"/>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default" ngClick="Submit">Update{{formData.description}}</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
