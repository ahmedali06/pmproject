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
                        <label for="name" class="col-md-2">
                            Project Name:
                        </label>
                        <div class="col-md-10">
                            <input type="name" class="form-control" id="projectname"  ng-model="projectDetail.name" value="{{projectDetail.name}}" readonly ondblclick="setEditable(this)"/>
                        </div>


                    </div>

                    <div class="form-group">
                        <label for="description" class="col-md-2">
                            Description:
                        </label>
                        <div class="col-md-10">
                            <textarea class="form-control" rows="3" id="description" ng-model="projectDetail.description" readonly ondblclick="setEditable(this)"></textarea>
                        </div>
                    </div>
                    <input type="hidden" ng-model="projectDetail.id" value="{{projectDetail.id}}"/>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default" ngClick="Submit">Update</button>
                            <a href="#/project/delete/{{projectDetail.id}}" class="btn btn-warning">Delete</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
