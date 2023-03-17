<?php

$conn = mysqli_connect("localhost","root","","loginsystem");

if(isset($_POST['cheking_add'])){
     $fname = $_POST['fname'];
     $lname = $_POST['lname'];
     $add = $_POST['add'];
     $bgrp = $_POST['bgrp'];

     $qry = "INSERT INTO student(fname,lname,adress,bloodgroup) VALUES ('$fname','$lname','$add','$bgrp')";
        $query_run = mysqli_query($conn,$qry);
}



if(isset($_POST['checking_search'])){
$search = $_POST['search'];
$query = "SELECT * FROM student WHERE student.id LIKE '%{$search}%' OR student.fname LIKE '%{$search}%' OR student.lname LIKE '%{$search}%' OR student.adress LIKE '%{$search}%' OR student.bloodgroup LIKE '%{$search}%'";
$query_run = mysqli_query($conn,$query);
// $result_array = [];
if (mysqli_num_rows($query_run) > 0) {
    while ($user = mysqli_fetch_array($query_run)) {
        
        // echo $user['id']."<br/>";
        // echo $user['fname']."<br/>";
        // echo $user['lname']."<br/>";
        // echo $user['adress']."<br/>";
        // echo $user['bloodgroup']."<br/>";
echo '<tr><td class="stud_id">'.$user['id'].'</td>                                
        <td>'.$user['fname'].'</td>                                
        <td>'.$user['lname'].'</td>                                
        <td>'.$user['adress'].'</td>                               
        <td>'.$user['bloodgroup'].'</td>                               
        <td> <a href="#" class="btn btn-dark viewbtn">VIEW</a>                                    
        <a href="#" class="btn btn-dark edit_btn">EDIT</a>                                    
        <a href="#" class="btn btn-dark btndelete">DELETE</a>                                
        </td>                            
        </tr>';
   }
 } 

// if(mysqli_num_rows($query_run) > 0)
// {
//     foreach($query_run as $row)
//     {
//         array_push($result_array, $row);
//     }
//     header('Content-type: application/json');
//     echo json_encode($result_array);
// }
// else
// {
//     echo $return = "<h4>No Record Found</h4>";
// }

}

if(isset($_POST['cheking_update'])){
    $stud_id = $_POST['stud_id'];
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $add = $_POST['add'];
    $bgrp = $_POST['bgrp'];

    $sql = "UPDATE student SET fname = '{$fname}', lname = '{$lname}', adress = '{$add}', bloodgroup = '{$bgrp}' WHERE id = '{$stud_id}'";
    $query_run = mysqli_query($conn,$sql);

}

if(isset($_POST['checking_view']))
{
    $stud_id = $_POST['stud_id'];
    $result_array = [];

    $query = "SELECT * FROM student WHERE id='$stud_id' ";
    $query_run = mysqli_query($conn, $query);

    if(mysqli_num_rows($query_run) > 0)
    {
        foreach($query_run as $row)
        {
            array_push($result_array, $row);
        }
        header('Content-type: application/json');
        echo json_encode($result_array);
    }
    else
    {
        
        echo $return = "No Record Found.!";
    }
}

if(isset($_POST['checking_delete']))
{
$id = $_POST['stud_id'];
		$delete = "DELETE FROM student WHERE id = '$id'";
        $query_run= mysqli_query($conn, $delete);
}
if(isset($_POST['checking_edit']))
{
    $stud_id = $_POST['stud_id'];
    $result_array = [];

    $query = "SELECT * FROM student WHERE id='$stud_id' ";
    $query_run = mysqli_query($conn, $query);

    if(mysqli_num_rows($query_run) > 0)
    {
        foreach($query_run as $row)
        {
            array_push($result_array, $row);
        }
        header('Content-type: application/json');
        echo json_encode($result_array);
    }
    else
    {
        echo $return = "No Record Found.!";
    }
}
?>