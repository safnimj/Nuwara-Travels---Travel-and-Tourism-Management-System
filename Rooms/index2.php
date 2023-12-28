<?php
include_once "db.php";
session_start();

include_once "header.php";



if (isset($_GET['room_mang'])){
    include_once "room_mang.php";
}

elseif (isset($_GET['reservation2'])){
    include_once "reservation2.php";
}
elseif (isset($_GET['staff_mang'])){
    include_once "staff_mang.php";
}
elseif (isset($_GET['add_emp'])){
    include_once "add_emp.php";
}
elseif (isset($_GET['complain'])){
    include_once "complain.php";
}
elseif (isset($_GET['statistics'])){
    include_once "statistics.php";
}
elseif (isset($_GET['emp_history'])){
    include_once "emp_history.php";
}
else{
    include_once "room_mang.php";
}

include_once "footer.php";