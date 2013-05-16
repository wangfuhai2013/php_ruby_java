<?php
include("config.php");
$mysqli = new mysqli($CONFIG['db_host'],$CONFIG['db_user'],$CONFIG['db_password'],$CONFIG['db_name']);
if ($mysqli->connect_errno) {
   // echo "Failed to connect to MySQL: " . $mysqli->connect_error;
}
$sql = "SELECT `Post`.`id`, `Post`.`title`, `Post`.`body`, `Post`.`created`, `Post`.`modified` FROM `test`.`posts` AS `Post` WHERE 1 = 1";
$result = $mysqli->query($sql);
//print_r($posts);
?>
<?php
include("header.php");
?>
<h1>Blog posts</h1>
<table>
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Created</th>
    </tr>
    <?php while($post = $result->fetch_assoc()): ?>
    <tr>
        <td><?php echo $post['id']; ?></td>
        <td><a href="/posts/view/<?php echo $post['id'];?>"><?php echo $post['title'];?></a>
        </td>
        <td><?php echo $post['created']; ?></td>
    </tr>
    <?php endwhile; ?> 
    <?php unset($post) ?>
</table>
<?php
include("footer.php");
?>
