<cfif structKeyExists(form, "userName") AND len(trim(form.userName))>
    <!--- Save the name in session --->
    <cfset session.userName = trim(form.userName)>
</cfif>

<!--- Redirect back to index.cfm --->
<cflocation url="index.cfm" addtoken="false">
