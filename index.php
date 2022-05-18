<?php 

include_once"User/Models/connectGiasu.php";
	use PHPMailer\PHPMailer\PHPMailer;
        use PHPMailer\PHPMailer\Exception;
$db=new Database();
$db->connect();

if(isset($_GET['controller'])) {
	$controller = $_GET['controller'];
} else {
	$controller='';
}

switch ($controller) {
	case 'gia-su': {
		require_once('User/Controllers/giasu/index.php');
		break;
	}
	case 'trangchu': {
		require_once('User/Views/index.php');
		break;
	}
	case 'admin': {
		require_once('Admin/Controllers/admin/index.php');
		break;
	}
	case 'phuhuynh': {
		require_once('User/Controllers/phuhuynh/index.php');
	 	break; 
	}
	case 'view_user': {
		require_once('User/Controllers/view_user.php');
		break;
	}
		
	default: {
		
	}	
}

 ?>

