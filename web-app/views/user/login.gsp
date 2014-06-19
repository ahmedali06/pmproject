<%--
  Created by IntelliJ IDEA.
  User:  ahmed ali
  Date: 6/10/14
  Time: 1:03 PM
  To change this template use File | Settings | File Templates.
--%>

<div class="center-block form-signin">
    <form class="form-signin" role="form" name="loginUser" action="#" ng-controller="SignInController" ng-submit="signInUser()">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" class="form-control" ng-model="form.username" id="username" placeholder="User Name" required autofocus>
        <input type="password" ng-model="form.password" id="password" class="form-control" placeholder="Password" required>
        <label class="checkbox">
            <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-lg btn-primary btn-block" type="submit" ngClick="Submit">Sign in</button>
    </form>
    <p class="modal_or_separator hidden-xs">OR</p>
    <a href="#/register" class="btn btn btn-success btn-block">Create My Account</a>
</div>