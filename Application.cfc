component {

    // --- Application Settings ---
    this.name = "My Awesome App";
    this.applicationTimeout = createTimeSpan(30, 0, 0, 0); // 30 days
    this.sessionManagement = true;
    this.sessionTimeout = createTimeSpan(0, 1, 0, 0); // 1 hour
    this.setClientCookies = true;

    // --- Application Start ---
    function onApplicationStart() {
        application.started = now();
        return true;
    }

    function onApplicationEnd(struct applicationScope) {
        // Optional: cleanup logic
    }

    // --- Session Start/End ---
    function onSessionStart() {
        session.started = now();
    }

    function onSessionEnd(struct sessionScope, struct applicationScope) {
        // Optional: cleanup logic
    }

    // --- Request Lifecycle ---
    function onRequestStart(string targetPage) {
        return true;
    }

    function onRequest(string targetPage) {
        include targetPage;
    }

    function onRequestEnd() {
        // Optional: close resources, etc.
    }

    // --- CFC Direct Calls (Remote Access) ---
    function onCFCRequest(string cfcname, string method, struct args) {
        return;
    }

    // --- Error Handling ---
    function onError(any exception, string eventName) {
        // Simple error output for development
        writeDump(var=exception, label="Application Error");
    }

    // --- Handle Aborted Requests ---
    function onAbort(string targetPage) {
        // Optional: handle <cfabort> scenarios
    }

    // --- Missing Template Handler ---
    function onMissingTemplate(string targetPage) {
        writeOutput("<h2>Missing Template: #encodeForHTML(targetPage)#</h2>");
        return true;
    }

}