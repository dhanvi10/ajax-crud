 <?php 
$conn = mysqli_connect("localhost","root","","loginsystem");
$limit = 3;
$page ="";
$output = "";
if(isset($_POST['page_id'])){
    $page = $_POST['page_id'];   
}else{
    $page = 1;
}
$offset =   ($page - 1) * $limit;
$sql = "SELECT * FROM student LIMIT {$offset},{$limit}";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0) {
    while ($user = mysqli_fetch_array($result)) {
        echo '<table class="table table-bordered table-striped">  
        <thead>  
        <tr><td class="stud_id">'.$user['id'].'</td>                                
        <td>'.$user['fname'].'</td>                                
        <td>'.$user['lname'].'</td>                                
        <td>'.$user['adress'].'</td>                               
        <td>'.$user['bloodgroup'].'</td>                               
        <td> <a href="#" class="btn btn-dark viewbtn">VIEW</a>                                    
        <a href="#" class="btn btn-dark edit_btn">EDIT</a>                                    
        <a href="#" class="btn btn-dark btndelete">DELETE</a>                                
        </td>                            
        </tr>
        </thead>';
    }
} 
$sql1 = "SELECT * FROM student";
$result1 = mysqli_query($conn, $sql1);
$total_record = mysqli_num_rows($result1);
$total_page = ceil($total_record /  $limit);
if(mysqli_num_rows($result1) > 0){
    echo '<nav aria-label="...">
     <ul class="pagination pagination-lg">';
    for($i = 1; $i<= $total_page; $i++){
    
        // if($i == $page){
        //                   $active = "active";
        //               }else{
        //                   $active = "";
        //               }
         echo "<li class='page-item'><a class='active page-link' id='{$i}' >{$i}</a></li>";
    }

    //                  echo '<a class = "'.$active.'" href="view.php?page='.$i.'" >'.$i.'</a>';
    echo '</ul>';
    echo '</nav>';
    
}
?>
 
 
  

