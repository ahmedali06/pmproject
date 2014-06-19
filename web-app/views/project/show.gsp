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
                %{--<form class="form-horizontal" role="form" name="createProject" action="#" ng-controller="ProjectShowController" ng-submit="updateProject()">--}%
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">Project Name</label>
                        <div class="col-sm-10">
                            <input type="name" class="form-control" id="projectname"  value="{{projectDetail.name}}" readonly/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name">Description</label>
                        <textarea class="form-control" rows="3" id="description" readonly>{{projectDetail.description}}</textarea>
                    </div>
                    <input type="hidden" value="{{projectDetail.id}}"/>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <a href="#/project/edit/{{projectDetail.id}}" class="btn btn-default">Edit</a>
                            %{--<button type="submit" class="btn btn-default" ngClick="Submit">Edit</button>--}%
                        </div>
                    </div>
                %{--</form>--}%
            </div>
        </div>
    </div>
</div>
