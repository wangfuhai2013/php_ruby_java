<?php
include("../config.php");
$mysqli = new mysqli($CONFIG['db_host'],$CONFIG['db_user'],$CONFIG['db_password'],$CONFIG['db_name']);
if ($mysqli->connect_errno) {
   // echo "Failed to connect to MySQL: " . $mysqli->connect_error;
}
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
	<title>网站检测APP管理后台</title>	
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link href="/assets/css/custom.css" rel="stylesheet">

  </head>

  <body data-spy="scroll" data-target=".subnav" data-offset="50">
	  <!-- Navbar
		      ================================================== -->
		      <div class="navbar navbar-fixed-top">
		        <div class="navbar-inner">
					
  		          <div class="container">
  					  <a class="brand" href="/index.php">网站检测APP</a>
  		              <ul class="nav">
  		                <li class="">
  		                  <a href="/admin/index.php">后台首页</a>
  		                </li>
  		                <li class="">
  		                  <a href="/admin/feedback_list.php">用户反馈</a>
  		                </li>
  		                <li class="active">
  		                  <a href="/admin/check_history.php">版本检查</a>
  		                </li>
  		              </ul>
  		          </div>
  		        </div>
  		      </div>

		  
		  <div class="container">
		
		      <header class="jumbotron subhead" id="overview">
		         <p class="lead">版本检查历史</p>   
		      </header>
			  
<table class="table table-striped table-bordered table-condensed">
  <thead>
    <tr>
      <th>id</th>
      <th>uuid</th>
  	  <th>应用版本</th>
  	  <th>系统版本</th>
  	  <th>系统类型</th>
	  <th>客户IP</th>
  	  <th>网络类型</th>
  	  <th>检查方式</th>
  	  <th>检查时间</th>
    </tr>
  </thead>
  <tbody>
	  <?php
	  $sql = "SELECT * FROM `checkversion` order by created_date desc LIMIT 30 ";
	  $res = $mysqli->query($sql);
	  while ($row = $res->fetch_assoc()) {
	  ?>
    <tr>				
      <td><?php echo $row['id']; ?></td>
      <td><?php echo $row['uuid']; ?></td>
	  <td><?php echo $row['app_ver']; ?></td>
	  <td><?php echo $row['sys_ver']; ?></td>
	  <td><?php echo $row['sys_model']; ?></td>
	  <td><?php echo $row['client_ip']; ?></td>
	  <td><?php echo $row['network_type'] =='1'? 'WiFi':'2G/3G' ; ?></td>
	  <td><?php echo $row['is_manually'] =='1'? '人工':'自动' ; ?></td>

	  <td><?php echo $row['created_date']; ?></td>
    </tr>
	<?php
      }
	?>
  </tbody>
</table>

       <footer class="footer">
         <p class="pull-right"><a href="#">回到顶端</a></p>
         <p>Copyright &copy; 2013 checksite.me, All Rights Reserved </p>
       </footer>

     </div><!-- /container -->
	 
  <script src="/assets/js/jquery.js"></script>
  <script src="/assets/js/bootstrap.min.js"></script>
  
</body>
</html>