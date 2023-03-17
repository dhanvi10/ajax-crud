<?php
$conn = mysqli_connect("localhost","root","","loginsystem");

$query = "SELECT * FROM student";
$query_run = mysqli_query($conn, $query);
$result_array = [];

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
    echo $return = "<h4>No Record Found</h4>";
}
// $server = "localhost";
// $user = "root";
// $pass ="";
// $db = "loginsys";

// $conn = mysqli_connect($server, $user, $pass, $db);
// if(!$conn){
//     echo "df";
// }

// $sql = "SELECT * FROM stuudent";
// $result = mysqli_query($conn,$sql);
// $output = "";
// if(mysqli_num_rows($result) > 0 ){
//     $output = '<table border = "1px" width = "100%" >
//     <tr class="th">
//     <th>ID</th>
//     <th>NAME</th>
//     <th>MOBILENO</th>
//     <th>ADDRESS</th>
//     <th>BLOOD GROUP </th>
//     <th>EDIT  </th>
//     <th>DELETE </th>


//     </tr>';

//     while($row= mysqli_fetch_assoc($result)){
//         $output .= "<tr>
//         <td>{$row["id"]}</td>
//         <td>{$row["stuname"]}</td>
//         <td>{$row["mobileno"]}</td>
//         <td>{$row["adress"]}</td>
//         <td>{$row["bloodgroup"]}</td>
//         <td>EDIT</td>
//         <td>DELETE</td>
//         </tr>";
//     }
//     $output .= "</table>";
//     mysqli_close($conn);
//     echo $output;
// }else{
//     echo "not found"
// ;}
?>