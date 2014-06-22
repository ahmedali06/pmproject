
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-6 column">
                    <h3>
                        Tasks
                    </h3>
                </div>
                <div class="col-md-6 column">
                    <a href="#/projects/create" class="btn btn-lg" type="button">Create New Task</a>
                </div>
            </div>
            <table class="table table-bordered table-hover table-condensed">
                <thead>
                <tr>
                    <th>
                        ID
                    </th>
                    <th>
                       Title
                    </th>
                    <th>
                        Description
                    </th>
                    <th>
                        Status
                    </th>
                    <th>
                        Priority
                    </th>
                    <th>
                        Reported By
                    </th>
                    <th>
                        Assign To
                    </th>
                    <th>
                        Project Name
                    </th>
                </tr>
                </thead>
                <tbody ng-repeat="project in projects">
                <tr >
                    <td>
                        <a href="#/project/show/{{project.id}}"> {{project.id}}</a>
                    </td>
                    <td>
                        {{project.name}}
                    </td>
                    <td>
                        {{project.description}}
                    </td>
                    <td>
                        <a href="#/project/show/{{project.id}}"> {{project.id}}</a>
                    </td>
                    <td>
                        {{project.name}}
                    </td>
                    <td>
                        {{project.description}}
                    </td>
                    <td>
                        <a href="#/project/show/{{project.id}}"> {{project.id}}</a>
                    </td>
                    <td>
                        {{project.name}}
                    </td>

                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
