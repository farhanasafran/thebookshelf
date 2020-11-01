<?php
session_start(); // Start the session.

// If no session value is present, redirect the user:
if (!isset($_SESSION['user_id'])) {

	// Need the functions:
	require ('includes/login_functions.inc.php');
	redirect_user();	

}
$page_title = 'The BookShelf | Welcome!';
include ('includes/header.html');
?>
<h1>Welcome!</h1>
<p>This is a the landing page for our school project, The BookShelf. It is a personal book database.</p>

<?php
include ('includes/footer.html');
?>