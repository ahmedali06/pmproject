<div class="container">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <h3>
                            Create
                        </h3>
                    </div>
                </div>
                <form class="form-horizontal" role="form" name="createProject" action="#" ng-controller="ProjectAddController" ng-submit="addProject()">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">Project Name</label>
                        <div class="col-sm-10">
                            <input type="name" class="form-control" id="projectname" ng-model="form.name" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name">Description</label>
                        <textarea class="form-control" rows="3" id="description" ng-model="form.description" required></textarea>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default" ngClick="Submit">Create</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

%{--<!DOCTYPE html>--}%
%{--<html>--}%
	%{--<head>--}%
		%{--<meta name="layout" content="main">--}%
		%{--<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />--}%
		%{--<title><g:message code="default.create.label" args="[entityName]" /></title>--}%
	%{--</head>--}%
	%{--<body>--}%
		%{--<a href="#create-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--}%
		%{--<div class="nav" role="navigation">--}%
			%{--<ul>--}%
				%{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
				%{--<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>--}%
			%{--</ul>--}%
		%{--</div>--}%
		%{--<div id="create-project" class="content scaffold-create" role="main">--}%
			%{--<h1><g:message code="default.create.label" args="[entityName]" /></h1>--}%
			%{--<g:if test="${flash.message}">--}%
			%{--<div class="message" role="status">${flash.message}</div>--}%
			%{--</g:if>--}%
			%{--<g:hasErrors bean="${projectInstance}">--}%
			%{--<ul class="errors" role="alert">--}%
				%{--<g:eachError bean="${projectInstance}" var="error">--}%
				%{--<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>--}%
				%{--</g:eachError>--}%
			%{--</ul>--}%
			%{--</g:hasErrors>--}%
			%{--<g:form url="[resource:projectInstance, action:'save']" >--}%
				%{--<fieldset class="form">--}%
					%{--<g:render template="form"/>--}%
				%{--</fieldset>--}%
				%{--<fieldset class="buttons">--}%
					%{--<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
				%{--</fieldset>--}%
			%{--</g:form>--}%
		%{--</div>--}%
	%{--</body>--}%
%{--</html>--}%
