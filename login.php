<?php include "header.php" ?>
<link rel="stylesheet" href="css/login.css">
<div class="login-page">
  <div class="form">
    <form class="register-form" method="POST" action="resignter.php">
      <input type="text" name="username" placeholder="name"/>
      <input type="password" name="password" placeholder="password"/>
      <input type="text" name="email" placeholder="Email address"/>
      <input type="text" name="phone" placeholder="Your number phone"/>
      <button type="sumbit" name="dangky">create</button>
      <p class="message">Bạn đã có tài khoản? <a href="#">Đăng Nhập</a></p>
    </form>
    <form class="login-form" >
      <input type="text" placeholder="username" name="name"/>
      <input type="password" placeholder="password"/>
      <button>Đăng Nhập</button>
      <p class="message">Bạn chưa có tài khoản? <a href="#">Đăng Kí</a></p>
    </form>
  </div>
</div>
<?php include "footer.html"?>