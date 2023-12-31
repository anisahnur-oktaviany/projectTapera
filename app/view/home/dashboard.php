<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">

        <?php require_once __DIR__ . '/../sidebar.php'; ?>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">
                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>
                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?= $model['user']['direktorat_name'] ?? '' ?></span>
                                <img class="img-profile rounded-circle" src="/resources/images/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i> Logout </a>
                            </div>
                        </li>
                    </ul>
                </nav>
                <!-- End of Topbar -->
                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Cascading Report</h1>
                    </div>
                    <!-- Content Row -->
                    <div class="row">
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1"> Sasaran Strategis</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
                                        </div>
                                        <div class="dropdown no-arrow">
                                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v text-gray-600"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                                                <div class="dropdown-header">Filter By:</div>
                                                <a class="dropdown-item" href="#">Menjaga Pertumbuhan Yang Berkelanjutan</a>
                                                <a class="dropdown-item" href="#">Penyaluran Pembiayaan Perumahan Yang Optimal</a>
                                                <a class="dropdown-item" href="#">Pelayanan Kepesertaan yang Prima</a>
                                                <a class="dropdown-item" href="#">Pengelolaan Dana Tapera dan OIP yang Kredible</a>
                                                <a class="dropdown-item" href="#">Peran Aktif dalam Ekosistem Pembiayaan Perumahan</a>
                                                <a class="dropdown-item" href="#">Berorientasi pada Layanan Prima</a>
                                                <a class="dropdown-item" href="#">Penguatan Tata Kelola</a>
                                                <a class="dropdown-item" href="#">Pengawasan dan Pengendalian Internal yang kredible</a>
                                                <a class="dropdown-item" href="#">Bisinis Proses yang Seamless. Terintegrasi dan Berbasis Digital</a>
                                                <a class="dropdown-item" href="#">Peningkatan Kapasitas, Kualitas dan Produktifitas SDM</a>
                                                <a class="dropdown-item" href="#">Pengelolaan Keuangan dan Aset yang Optimal</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1"> Program</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
                                        </div>
                                        <div class="dropdown no-arrow">
                                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v text-gray-600"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                                                <div class="dropdown-header">Filter By:</div>
                                                <a class="dropdown-item" href="#">Menjaga Pertumbuhan Yang Berkelanjutan</a>
                                                <a class="dropdown-item" href="#">Penyaluran Pembiayaan Perumahan Yang Optimal</a>
                                                <a class="dropdown-item" href="#">Pelayanan Kepesertaan yang Prima</a>
                                                <a class="dropdown-item" href="#">Pengelolaan Dana Tapera dan OIP yang Kredible</a>
                                                <a class="dropdown-item" href="#">Peran Aktif dalam Ekosistem Pembiayaan Perumahan</a>
                                                <a class="dropdown-item" href="#">Berorientasi pada Layanan Prima</a>
                                                <a class="dropdown-item" href="#">Penguatan Tata Kelola</a>
                                                <a class="dropdown-item" href="#">Pengawasan dan Pengendalian Internal yang kredible</a>
                                                <a class="dropdown-item" href="#">Bisinis Proses yang Seamless. Terintegrasi dan Berbasis Digital</a>
                                                <a class="dropdown-item" href="#">Peningkatan Kapasitas, Kualitas dan Produktifitas SDM</a>
                                                <a class="dropdown-item" href="#">Pengelolaan Keuangan dan Aset yang Optimal</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1"> Kegiatan</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
                                        </div>
                                        <div class="dropdown no-arrow">
                                            <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v text-gray-600"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                                                <div class="dropdown-header">Filter By:</div>
                                                <a class="dropdown-item" href="#">Menjaga Pertumbuhan Yang Berkelanjutan</a>
                                                <a class="dropdown-item" href="#">Penyaluran Pembiayaan Perumahan Yang Optimal</a>
                                                <a class="dropdown-item" href="#">Pelayanan Kepesertaan yang Prima</a>
                                                <a class="dropdown-item" href="#">Pengelolaan Dana Tapera dan OIP yang Kredible</a>
                                                <a class="dropdown-item" href="#">Peran Aktif dalam Ekosistem Pembiayaan Perumahan</a>
                                                <a class="dropdown-item" href="#">Berorientasi pada Layanan Prima</a>
                                                <a class="dropdown-item" href="#">Penguatan Tata Kelola</a>
                                                <a class="dropdown-item" href="#">Pengawasan dan Pengendalian Internal yang kredible</a>
                                                <a class="dropdown-item" href="#">Bisinis Proses yang Seamless. Terintegrasi dan Berbasis Digital</a>
                                                <a class="dropdown-item" href="#">Peningkatan Kapasitas, Kualitas dan Produktifitas SDM</a>
                                                <a class="dropdown-item" href="#">Pengelolaan Keuangan dan Aset yang Optimal</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Content Row -->
                    <div class="row">
                        <!-- Area Chart -->
                        <div class="col-xl-12 col-lg-7">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Direktorat Report</h6>
                                    <div class="dropdown no-arrow">
                                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-ellipsis-v text-gray-600"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                                            <div class="dropdown-header">Filter By:</div>
                                            <a class="dropdown-item" href="#">DIT. KEU & LOGISTIK</a>
                                            <a class="dropdown-item" href="#">DIT. RENSRA</a>
                                            <a class="dropdown-item" href="#">DIT. OPERASI PENGERAHAN</a>
                                            <a class="dropdown-item" href="#">DIT. HCH</a>
                                            <a class="dropdown-item" href="#">DIT. KEPESERTAAN</a>
                                            <a class="dropdown-item" href="#">DIT. TRESURI INVESTASI</a>
                                            <a class="dropdown-item" href="#">DIT. OPEN PEMUPUKAN</a>
                                            <a class="dropdown-item" href="#">DIT. PEMBIAYAAN PERUMAHAN</a>
                                            <a class="dropdown-item" href="#">DIT. TEKNOLOGI INFORMASI</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="myAreaChart"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Content Row -->
                        <div class="row"></div>
                        <!-- /.container-fluid -->
                    </div>
                    <!-- End of Main Content -->
                    <!-- Footer -->
                    <footer class="sticky-footer bg-white">
                        <div class="container my-auto">
                            <div class="copyright text-center my-auto">
                                <span>Copyright &copy; BP Tapera 2023</span>
                            </div>
                        </div>
                    </footer>
                    <!-- End of Footer -->
                </div>
                <!-- End of Content Wrapper -->
            </div>
            <!-- End of Page Wrapper -->
            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>
            <!-- Logout Modal-->
            <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            <a class="btn btn-primary" href="login.html">Logout</a>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="/resources/js/sb-admin-2.min.js"></script>
    <!-- Page level plugins -->
    <script src="/resources/vendor/chart.js/Chart.min.js"></script>
    <!-- Page level custom scripts -->
    <script src="/resources/js/demo/chart-area-demo.js"></script>
    <script src="/resources/js/demo/chart-pie-demo.js"></script>
</body>