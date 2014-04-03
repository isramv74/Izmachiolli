<%@ page import="izmachiolli.Site" %>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'header', 'error')} ">
	<label for="header">
		<g:message code="site.header.label" default="Header" />
		
	</label>
	<g:textArea name="header" cols="80" rows="3" maxlength="5000" value="${siteInstance?.header}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'headerHeight', 'error')} ">
    <label for="headerHeight">
        <g:message code="site.headerHeight.label" default="Header Height" />

    </label>
    <g:field name="headerHeight" type="number" size="3" value="${siteInstance.headerHeight}"/> %
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'left', 'error')} ">
	<label for="left">
		<g:message code="site.left.label" default="Left" />
		
	</label>
	<g:textArea name="left" cols="80" rows="3" maxlength="5000" value="${siteInstance?.left}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'leftWidth', 'error')} ">
    <label for="leftWidth">
        <g:message code="site.leftWidth.label" default="Left Width" />

    </label>
    <g:field name="leftWidth" type="number" value="${siteInstance.leftWidth}"/>%
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'right', 'error')} ">
	<label for="right">
		<g:message code="site.right.label" default="Right" />
		
	</label>
	<g:textArea name="right" cols="80" rows="3" maxlength="5000" value="${siteInstance?.right}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'rightWidth', 'error')} ">
    <label for="rightWidth">
        <g:message code="site.rightWidth.label" default="Right Width" />

    </label>
    <g:field name="rightWidth" type="number" value="${siteInstance.rightWidth}"/> %
</div>
<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'footer', 'error')} ">
	<label for="footer">
		<g:message code="site.footer.label" default="Footer" />
		
	</label>
	<g:textArea name="footer" cols="80" rows="3" maxlength="5000" value="${siteInstance?.footer}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'footerHeight', 'error')} ">
    <label for="footerHeight">
        <g:message code="site.footerHeight.label" default="Footer Height" />

    </label>
    <g:field name="footerHeight" type="number" size="3" value="${siteInstance.footerHeight}"/> %
</div>