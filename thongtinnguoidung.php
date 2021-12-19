<?php include('header.php'); ?> 
<link type="text/css" rel="stylesheet" href="css/fish.css"/>
<div class="chiii">
	<h1>Thông Tin Người Dùng</h1>
</div>

<div id="form">

<div class="fish" id="fish"></div>
<div class="fish" id="fish2"></div>
<?php 
    if(isset($_SESSION['user'])):
    $getUserBy = $user -> getUserBy($_SESSION['user']);
    foreach($getUserBy as $value): 
?>
<form id="waterform" method="post">

<div class="formgroup" id="name-form">
    <label for="name">Your name*</label>
    <input type="text" id="name" name="name" value="<?php echo $value['fullname'] ?>"/>
</div>

<div class="formgroup" id="email-form">
    <label for="email">Your e-mail*</label>
    <input type="email" id="email" name="email" value="<?php echo $value['email'] ?>" />
</div>
<div class="formgroup" id="email-form">
    <label for="diachi">Your Address*</label>
    <input type="text" id="diachi" name="diachi" value="<?php echo $value['address'] ?>" />
</div>
<div class="formgroup" id="message-form">
    <label for="message">Your Phone Number</label>
    <input type="text" id="phone" name="phone" value="<?php echo $value['phone'] ?>"/>
</div>
	<input type="submit" value="Cập Nhật!" />
</form>
<?php endforeach; endif; ?>
</div>
<script src="js/fish.js"></script>