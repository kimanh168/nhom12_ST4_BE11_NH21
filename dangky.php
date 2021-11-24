<?php include "header.php" ?>
<link rel="stylesheet" href="css/login.css">
<div class="login-page">
    <h1>Đăng Kí</h1>
  <div class="form">
  <form method="POST" action="resignter.php">
      <input type="text" name="username" placeholder="name"/>
      <input type="password" name="password" placeholder="password"/>
      <input type="text" name="email" placeholder="Email address"/>
      <input type="text" name="phone" placeholder="Your number phone"/>
      <button type="sumbit" name="dangky">create</button>
      <p class="message">Bạn đã có tài khoản? <a href="login.php">Đăng Nhập</a></p>
    </form>
  </div>
</div>
<?php include "footer.html"?>