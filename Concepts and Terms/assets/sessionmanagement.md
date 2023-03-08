<h3>so what are cookies and sessions</h3>

example 
lets take an example that we login to a bank website with usernmae and password.
The username and password then go to the bank server to validate and if its valid we are promt to the balance page
but between this the server validates the username and password and provide us with a cookie with a session_id which is randomly generated. The server than keeps the session_id with the cookie in is database. After getting the session_id the browser in the client side also saves it in the file system.
If we move to another page the browser sends the cookie with session_id to the server and ther server validates the session_id in its database.
There are long-lived session and short lived session. These are implemented explicitly
Whenever a person logs out the session_id in the server side is no longer valid

 <img src="http://etutorials.org/shared/images/tutorials/tutorial_44/wda2_1001.gif">