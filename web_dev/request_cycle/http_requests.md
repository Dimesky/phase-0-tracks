1. 100 - 'Continue': Client should continue with it's request since the initial part has been received and has not been rejected. The server must send a final response after this request has been completed.

101 - 'Switching Protocols': The server will switch protocols if there is an advantage to doing so like switching to a newer version of http.

200 - 'OK': Request has succeeded. There is more information that is returned with the response that is dependent upon the method used to make the request;
	GET - something corresponding to the requested resource is sent with response
	HEAD - header fields corresponding with requested resource is sent with response without message body
	POST - something containing or describing the actions result
	TRACE - something containing the request message as received by the end server

400 - 'Bad Request': Request could not be understood by the server due to syntax that was incorrect - the client shouldn't repeat the request without modifying first in some way.

401 - 'Unauthorized': The request requires the authentication of the user - the client may repeat the request but only with a suitable authorization header field.

403 - 'Forbidden': Even though the server understood the request, it is unwilling/refusing to fulfill it. The request should not be repeated.

404 - 'Not Found': The server has not found anything matching the Request-URI

415 - 'Unsupported Media Type': The entity of the request is in a media format not supported by the requested resource for the requested method.

500 - 'Internal Server Error': The server encountered an unexpected issue which prevented it from fulfilling the request

502 - 'Bad Gateway': The server while acting as a proxy or gateway received an invalid response from the upstream server it accessed while attempting to fulfill the request.

2. What is the difference between a GET request and a POST request? When might each be used?

	- The difference between a GET and POST request is that the 'GET' request requests data from a specified resource, whereas a 'POST' request submits data to be processed by a specified resource. A GET request might be used when trying to access data on a server like webpage data (HTML or CSS), while a POST request might be utilized if form data is filled out and needs to be sumbitted to the server to be processed.

3. A cookie is a small piece of data sent by a web server and stored in a user's web browser. Cookies can remember information pertaining to the state of the user's interaction with a website like user information or data entered into the visiting site. Authentication cookies help to determine whether a user is logged in or not and which account they are logged in with.