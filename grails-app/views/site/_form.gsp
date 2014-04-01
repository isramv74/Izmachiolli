<%@ page import="izmachiolli.Site" %>



<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'header', 'error')} ">
	<label for="header">
		<g:message code="site.header.label" default="Header" />
		
	</label>
	<g:textArea name="header" cols="60" rows="3" maxlength="5000" value="${siteInstance?.header}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'left', 'error')} ">
	<label for="left">
		<g:message code="site.left.label" default="Left" />
		
	</label>
	<g:textArea name="left" cols="60" rows="3" maxlength="5000" value="${siteInstance?.left}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'right', 'error')} ">
	<label for="right">
		<g:message code="site.right.label" default="Right" />
		
	</label>
	<g:textArea name="right" cols="60" rows="3" maxlength="5000" value="${siteInstance?.right}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'footer', 'error')} ">
	<label for="footer">
		<g:message code="site.footer.label" default="Footer" />
		
	</label>
	<g:textArea name="footer" cols="60" rows="3" maxlength="5000" value="${siteInstance?.footer}"/>
</div>

