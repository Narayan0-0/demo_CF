<cfoutput>
    <h2>Welcome to My CFML 1st Code!!!!!! </h2>

    <!--- <p>Current Date and Time: #now()#</p>
    <p>Application Start Time: #application.started#</p> --->

    
    <cfif structKeyExists(session, "userName")>
        <p>Hello, #encodeForHTML(session.userName)#!</p>
    </cfif>

    <form action="submit.cfm" method="post">
        <label for="userName">Enter your name:</label>
        <input type="text" name="userName" id="userName" required>
        <input type="submit" value="Submit">
    </form>
</cfoutput>
