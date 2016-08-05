ios-test-server
---------------

XCTestCase does not allow you to execute shell commands (either via posix_spawn or NSTask) so the only way to execute random shell commands is using the duct tape pattern to hit a proxy server.  By that I mean your test makes a regular HTTP call to a small server (this code) running somewhere where the end point executes a command and returns the result.
The messiest part is that with iOS all network calls are asynchronous so you're stuck pushing your assertions into a handler/completion block for your NSURLSessionDataTask.
