<div class="row clearfix">
        <div class="col-md-3 column">
            <span class="label label-default">Project</span>
            <div class="btn-group">
                <button class="btn btn-default">Cobone</button> <button data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span></button>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#">Cobone</a>
                    </li>
                    <li class="disabled">
                        <a href="#">Triperna</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-3 column">
            <span class="label label-default">Status</span>
            <div class="btn-group">
                <button class="btn btn-default">Open</button> <button data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span></button>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#">Open</a>
                    </li>
                    <li class="disabled">
                        <a href="#">InProgress</a>
                    </li>
                    <li class="disabled">
                        <a href="#">Resolved</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-3 column">
            <span class="label label-default">Assign To</span>
            <div class="btn-group">
                <button class="btn btn-default">AhmedAli</button> <button data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span></button>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#">AhmedAli</a>
                    </li>
                    <li class="disabled">
                        <a href="#">Sufyan</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-md-3 column">
            <span class="label label-default">Text</span><span class="label label-default"></span>
                <input type="text" class="form-control" id="projectname" ng-model="form.searchText" required/>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-bordered table-hover table-condensed">
                <thead>
                <tr>
                    <th>
                        Task#
                    </th>
                    <th>
                        Project
                    </th>
                    <th>
                        Title
                    </th>
                    <th>
                        Status
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <a href="#"> 1 </a>
                    </td>
                    <td>
                        Cobone
                    </td>
                    <td>
                        Fix header
                    </td>
                    <td>
                        OPEN
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="#"> 2</a>
                    </td>
                    <td>
                        Triperna
                    </td>
                    <td>
                        Fix banner
                    </td>
                    <td>
                        OPEN
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="#"> 3 </a>
                    </td>
                    <td>
                        Cobone
                    </td>
                    <td>
                        testing
                    </td>
                    <td>
                        OPEN
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="#"> 4</a>
                    </td>
                    <td>
                        Triperan
                    </td>
                    <td>
                        Fix header
                    </td>
                    <td>
                        InProgress
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="#"> 5 </a>
                    </td>
                    <td>
                        Cobone
                    </td>
                    <td>
                        Fix footer
                    </td>
                    <td>
                        RESOLVED
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>