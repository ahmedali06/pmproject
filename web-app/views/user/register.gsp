<%--
  Created by IntelliJ IDEA.
  User: ahmed ali
  Date: 6/10/14
  Time: 1:03 PM
  To change this template use File | Settings | File Templates.
--%>
<h1>Register</h1>
<form role="form" name="saveUserData" action="#" ng-controller="RegisterController" ng-submit="submitForm()">
    <div class="form-group">
        <label for="firstname" class="col-md-2">
            First Name:
        </label>
        <div class="col-md-10">
            <input type="text" class="form-control" ng-model="form.firstname" id="firstname" placeholder="Enter First Name" required>
        </div>


    </div>

    <div class="form-group">
        <label for="lastname" class="col-md-2">
            Last Name:
        </label>
        <div class="col-md-10">
            <input type="text" class="form-control" ng-model="form.lastname" id="lastname" placeholder="Enter Last Name" required>
        </div>


    </div>

    <div class="form-group">
        <label for="emailaddress" class="col-md-2">
            Email address:
        </label>
        <div class="col-md-10">
            <input type="email" class="form-control" ng-model="form.emailaddress" id="emailaddress" placeholder="Enter email address" required>
            <p class="help-block">
                Example: yourname@domain.com
            </p>
        </div>


    </div>

    <div class="form-group">
        <label for="password" class="col-md-2">
            Password:
        </label>
        <div class="col-md-10">
            <input type="password" class="form-control" ng-model="form.password" id="password" placeholder="Enter Password" required>
            <p class="help-block">
                Min: 6 characters (Alphanumeric only)
            </p>
        </div>


    </div>

    <div class="form-group">
        <label for="password" class="col-md-2">
            Comfirm Password:
        </label>
        <div class="col-md-10">
            <input type="password" class="form-control" id="confirm_password" placeholder="Re Enter Password" required>
            <p class="help-block">
                Min: 6 characters (Alphanumeric only)
            </p>
        </div>


    </div>

    <div class="form-group">
        <label for="gender" class="col-md-2">
            Gender:
        </label>
        <div class="col-md-10">
            <label class="radio">
                <input type="radio" ng-model="form.gender" id="gender" value="M" checked>
                Male
            </label>
            <label class="radio">
                <input type="radio" ng-model="form.gender" id="gender" value="W">
                Female
            </label>
        </div>


    </div>

    <div class="checkbox">
        <div class="col-md-2">
        </div>
        <div class="col-md-10">
            <label>
                <input type="checkbox" required>Terms and Conditions</label>
        </div>


    </div>

    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-10">
            <button type="submit" class="btn btn-info" ngClick="Submit">
                Register
            </button>
        </div>
    </div>
</form>