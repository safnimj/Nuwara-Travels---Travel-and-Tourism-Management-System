
<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
    <div class="profile-sidebar">
       
       
        <div class="clear"></div>
    </div>
    <div class="divider"></div>
    <ul class="nav menu">
    <?php 
        if (isset($_GET['dashboard'])){ ?>
            <li class="active">
                <a href="index.php?dashboard"><em class="fa fa-dashboard">&nbsp;</em>
                    Dashboard
                </a>
            </li>
        <?php } else{?>
            <li>
                <a href="index.php?dashboard"><em class="fa fa-dashboard">&nbsp;</em>
                    Dashboard
                </a>
            </li>
        <?php }
        if (isset($_GET['reservation'])){ ?>
            <li class="active">
            <a href="index.php?reservation"><em class="fa fa-calendar">&nbsp;</em>
                    Reservation
                </a>
            </li>
        <?php } else{?>
            <li>
            <a href="index.php?reservation"><em class="fa fa-calendar">&nbsp;</em>
                    Reservation
                </a>
            </li>
        <?php }
        if (isset($_GET['room_mang'])){ ?>
            <li class="active">
                <a href="index.php?room_mang"><em class="fa fa-bed">&nbsp;</em>
                    Manage Rooms
                </a>
            </li>
        <?php } else{?>
            <li>
            <a href="index.php?room_mang"><em class="fa fa-bed">&nbsp;</em>
                    Manage Rooms
                </a>
            </li>
        <?php }
        if (isset($_GET['staff_mang'])){ ?>
            
        <?php } else{?>
            
        <?php }
        
        if (isset($_GET['complain'])){ ?>
            <li class="active">
                <a href="../admin/dashboard.php"><em class="fa fa-dashboard">&nbsp;</em>
                    Back to Dashboard
                </a>
            </li>
        <?php } else{?>
            <li>
            <a href="../admin/dashboard.php"><em class="fa fa-dashboard">&nbsp;</em>
            Back to Dashboard
                </a>
            </li>
            
        <?php }
        ?>

        <?php
        if (isset($_GET['statistics'])){ ?>
            <li class="active">
                <a href="index.php?statistics"><em class="fa fa-pie-chart">&nbsp;</em>
                    Statistics
                </a>
            </li>
        <?php } else{?>
        
<?php }?>

        
    </ul>
</div><!--/.sidebar-->