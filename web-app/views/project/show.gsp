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
                <form class="form-horizontal" role="form" name="showProject" action="#" ng-controller="ProjectUpdateController" ng-submit="updateProject()">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">Project Name</label>
                        <div class="col-sm-10">
                            <input type="name" class="form-control" id="projectname"  ng-model="projectDetail.name" value="{{projectDetail.name}}" readonly ondblclick="setEditable(this)"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name">Description</label>
                        <textarea class="form-control" rows="3" id="description" ng-model="projectDetail.description" readonly ondblclick="setEditable(this)">{{projectDetail.description}}</textarea>
                    </div>
                    <input type="hidden" ng-model="projectDetail.id" value="{{projectDetail.id}}"/>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            %{--<a href="#/project/edit/{{projectDetail.id}}" class="btn btn-default">Update</a>--}%
                            <button type="submit" class="btn btn-default" ngClick="Submit">Update</button>
                            <a href="#/project/delete/{{projectDetail.id}}" class="btn btn-warning">Delete</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
