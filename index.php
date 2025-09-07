<?php 
  include_once("myclass.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>DE Academy School</title>
<!--Tailwindcss for Sample AI assistant -->
<script src="https://cdn.tailwindcss.com"></script>
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="../plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="../plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="../plugins/summernote/summernote-bs4.min.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <?php include ('nav.php'); ?>

        <!-- AI Assistant Floating Button -->
        <div class="fixed bottom-8 right-8 z-50">
            <button id="ai-assistant" class="w-16 h-16 rounded-full bg-gradient-to-r from-indigo-600 to-purple-600 shadow-xl flex items-center justify-center text-white transform hover:scale-110 transition-all duration-200">
                <i class="fas fa-robot text-2xl"></i>
            </button>
        </div>
        
        <!-- Expanded AI Assistant Panel (Hidden by default) -->
        <div id="ai-panel" class="hidden fixed bottom-24 right-8 w-80 bg-white rounded-xl shadow-2xl border border-gray-200 z-50 p-4">
            <div class="flex justify-between items-center mb-3">
                <h3 class="font-bold text-indigo-800">DE Academy AI Assistant</h3>
                <button id="close-ai" class="text-gray-400 hover:text-gray-600">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <div class="bg-indigo-50 rounded-lg p-3 mb-3">
                <p class="text-sm text-indigo-800">How can I help you today?</p>
            </div>
            <div id="ai-messages" class="max-h-64 overflow-y-auto mb-3"></div>
            <div class="flex">
                <input type="text" id="ai-input" placeholder="Ask something..." class="flex-1 border border-gray-300 rounded-l-lg px-4 py-2 focus:outline-none focus:ring-2 focus:ring-indigo-200">
                <button id="ai-send" class="bg-indigo-600 text-white px-4 py-2 rounded-r-lg hover:bg-indigo-700">
                    <i class="fas fa-paper-plane"></i>
                </button>
            </div>
        </div>
  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard </h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-secondary">
              <div class="inner">
                <!-- <h3>21</h3> -->
               <?php
                 $i = 1;
                 $sql = $con->query("SELECT * FROM students");
                 $rowCount = mysqli_num_rows($sql);
                 
                 echo "<h3> $rowCount </h3>";
                 
                  ?>
                <p>Students</p>
              </div>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-secondary">
              <div class="inner">
                <h3> ₦ 110,600,000</h3>

                <p>Assigned Fee</p>
              </div>
              
              
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-secondary">
              <div class="inner">
                <h3>₦ 47,000</h3>

                <p>Revived Payments</p>
              </div>
              
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-secondary">
              <div class="inner">
                <!-- <h3>32</h3> -->
                <?php
                 $i = 1;
                 $sql = $con->query("SELECT * FROM teachers");
                 $rowCount = mysqli_num_rows($sql);
                 
                 echo "<h3> $rowCount </h3>";
                 
                  ?>

                <p>Subject Teachers</p>
              </div>
              
            </div>
          </div>
          <!-- ./col -->
        </div>
        
        <div class="row">
          
          <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-info elevation-1"><i class="fas fa-cog"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">Classes/Arms</span>
                        <!-- <span class="info-box-number guardians">0</span> -->
                        <?php
                          $i = 1;
                          $sql = $con->query("SELECT * FROM class");
                          $sql2 = $con->query("SELECT * FROM arm");
                          $rowCount = mysqli_num_rows($sql);
                          $rowCount2 = mysqli_num_rows($sql2);
                          
                          echo "<span class='info-box-number guardians'> $rowCount / $rowCount2 </span>";
                 
                       ?>
                    </div>
                </div>
          </div>
          <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-thumbs-up"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">Subjects</span>
                        <!-- <span class="info-box-number guardians">13</span> -->
                        <?php
                          $i = 1;
                          $sql = $con->query("SELECT * FROM subject");
                          $rowCount = mysqli_num_rows($sql);
                          
                          echo "<span class='info-box-number guardians'> $rowCount </span>";
                 
                       ?>
                    </div>
                </div>
          </div>
          <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-success elevation-1"><i class="fas fa-shopping-cart"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">Guardians</span>
                        <!-- <span class="info-box-number guardians">14</span> -->
                        <?php
                          $sql = $con->query("SELECT * FROM guardian");
                          $rowCount = mysqli_num_rows($sql);
                          
                          echo "<span class='info-box-number guardians'> $rowCount </span>";
                 
                       ?>
                    </div>
                </div>
          </div>
          <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-text">Staffs</span>
                        <!-- <span class="info-box-number guardians">11</span> -->
                        <?php
                          $i = 1;
                          $sql = $con->query("SELECT * FROM staff");
                          $rowCount = mysqli_num_rows($sql);
                          
                          echo "<span class='info-box-number guardians'> $rowCount </span>";
                 
                       ?>
                    </div>
                </div>
          </div>

          </div>
        </div>
        <!-- /.row -->
        <!-- Main row -->
        <div class="row">
          <!-- Left col -->
          <div class="col-12 col-sm-6 col-md-8">

            <div class="card card-success">
                <div class="card-header">
                  <h3 class="card-title">Bar Chart</h3>
  
                  <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                      <i class="fas fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-tool" data-card-widget="remove">
                      <i class="fas fa-times"></i>
                    </button>
                  </div>
                </div>
                <div class="card-body">
                  <div class="chart">
                    <canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                  </div>
                </div>
                <!-- /.card-body -->
              </div>
          </div>
          <!-- /.Left col -->
          <!-- right col (We are only adding the ID to make the widgets sortable)-->
          
          <!-- right col -->
          <div class="card col-12 col-sm-6 col-md-4">
                  <div class="card-header">
                    
                    <h3 class="card-title">Students</h3>
                    <span> <i class="fa fa-users"></i> </span>

                    <div class="card-tools">
                     
                      <button type="button" class="btn btn-tool" data-card-widget="collapse">
                        
                      </button>
                      <button type="button" class="btn btn-tool" data-card-widget="remove">
                       
                      </button>
                    </div>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body p-0">
                    <ul class="users-list clearfix">
                      <li>
                        <img src="../dist/img/user.png" alt="User Image">
                        <a class="users-list-name" href="#">Alexander Pierce</a>
                        <span class="users-list-date">Today</span>
                      </li>
                      <li>
                        <img src="../dist/img/user.png" alt="User Image">
                        <a class="users-list-name" href="#">Norman</a>
                        <span class="users-list-date">Yesterday</span>
                      </li>
                      <li>
                        <img src="../dist/img/user.png" alt="User Image">
                        <a class="users-list-name" href="#">Jane</a>
                        <span class="users-list-date">12 Jan</span>
                      </li>
                      <li>
                        <img src="../dist/img/user.png" alt="User Image">
                        <a class="users-list-name" href="#">John</a>
                        <span class="users-list-date">12 Jan</span>
                      </li>
                      <li>
                        <img src="../dist/img/user.png" alt="User Image">
                        <a class="users-list-name" href="#">Alexander</a>
                        <span class="users-list-date">13 Jan</span>
                      </li>
                      <li>
                        <img src="../dist/img/user.png" alt="User Image">
                        <a class="users-list-name" href="#">Sarah</a>
                        <span class="users-list-date">14 Jan</span>
                      </li>
                      <li>
                        <img src="../dist/img/user.png" alt="User Image">
                        <a class="users-list-name" href="#">Nora</a>
                        <span class="users-list-date">15 Jan</span>
                      </li>
                      <li>
                        <img src="../dist/img/user.png" alt="User Image">
                        <a class="users-list-name" href="#">Nadia</a>
                        <span class="users-list-date">15 Jan</span>
                      </li>
                    </ul>
                    <!-- /.users-list -->
                  </div>
                  <!-- /.card-body -->
                  <div class="card-footer text-center">
                    <a href="javascript:">View All Users</a>
                  </div>
                  <!-- /.card-footer -->
                </div>
        </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include ('footer.php'); ?>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
   <!-- script for Sample AI assistant functionality-->
<script>

      // AI Assistant toggle
        document.getElementById('ai-assistant').addEventListener('click', function() {
            const aiPanel = document.getElementById('ai-panel');
            aiPanel.classList.toggle('hidden');
        });
        
        document.getElementById('close-ai').addEventListener('click', function() {
            document.getElementById('ai-panel').classList.add('hidden');
        });
        
          // Sample AI assistant functionality
        document.getElementById('ai-send').addEventListener('click', function() {
            const input = document.getElementById('ai-input');
            const messagesContainer = document.getElementById('ai-messages');
            
            if (input.value.trim() !== '') {
                // Add user message
                const userMsg = document.createElement('div');
                userMsg.className = 'text-right mb-2';
                userMsg.innerHTML = `<div class="inline-block bg-indigo-600 text-white rounded-lg px-3 py-2">${input.value}</div>`;
                messagesContainer.appendChild(userMsg);
                
                // Simulate AI response
                setTimeout(() => {
                    const aiMsg = document.createElement('div');
                    aiMsg.className = 'text-left mb-2';
                    aiMsg.innerHTML = `<div class="inline-block bg-gray-200 text-gray-800 rounded-lg px-3 py-2">Here's the information you requested about student performance trends...</div>`;
                    messagesContainer.appendChild(aiMsg);
                    
                    // Scroll to bottom
                    messagesContainer.scrollTop = messagesContainer.scrollHeight;
                }, 800);
                
                // Clear input
                input.value = '';
                
                // Scroll to bottom
                messagesContainer.scrollTop = messagesContainer.scrollHeight;
            }
        });
                // Allow pressing Enter to send message
        document.getElementById('ai-input').addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                document.getElementById('ai-send').click();
            }
        });       
</script>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="../plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="../plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="../plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="../plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="../plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="../plugins/moment/moment.min.js"></script>
<script src="../plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="../plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../dist/js/pages/dashboard.js"></script>
</body>
</html>
