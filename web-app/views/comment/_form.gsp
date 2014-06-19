<%@ page import="com.pmapp.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="comment.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${commentInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'commentsBy', 'error')} required">
	<label for="commentsBy">
		<g:message code="comment.commentsBy.label" default="Comments By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="commentsBy" required="" value="${commentInstance?.commentsBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'task', 'error')} required">
	<label for="task">
		<g:message code="comment.task.label" default="Task" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="task" name="task.id" from="${com.pmapp.Task.list()}" optionKey="id" required="" value="${commentInstance?.task?.id}" class="many-to-one"/>

</div>

