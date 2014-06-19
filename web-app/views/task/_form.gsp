<%@ page import="com.pmapp.Task" %>



<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="task.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${taskInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="task.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${taskInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="task.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${taskInstance?.status}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'priority', 'error')} required">
	<label for="priority">
		<g:message code="task.priority.label" default="Priority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="priority" required="" value="${taskInstance?.priority}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'reportedBy', 'error')} required">
	<label for="reportedBy">
		<g:message code="task.reportedBy.label" default="Reported By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="reportedBy" required="" value="${taskInstance?.reportedBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'assignTo', 'error')} required">
	<label for="assignTo">
		<g:message code="task.assignTo.label" default="Assign To" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="assignTo" required="" value="${taskInstance?.assignTo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="task.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${com.pmapp.Project.list()}" optionKey="id" required="" value="${taskInstance?.project?.id}" class="many-to-one"/>

</div>

