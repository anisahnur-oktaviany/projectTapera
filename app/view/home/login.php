<div class="container">
    <!-- Outer Row -->
    <div class="row justify-content-center">
        <div class="col-xl-5 col-lg-5 col-md-5">
            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <?php if(isset($model['error'])) { ?>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="alert alert-danger" role="alert">
                                    <?= $model['error'] ?>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                </div>
                                <form action="/users/login" class="user" method="post">
                                    <div class="form-group">
                                        <input type="username" class="form-control form-control-user" name="uname" placeholder="Enter Username...">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user" name="pass" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                            <input type="checkbox" class="custom-control-input" id="customCheck">
                                            <label class="custom-control-label" for="customCheck">Remember Me</label>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-user btn-block" name="login"> Login </button>
                                </form>
                                <hr />
                            </div>
                        </div>
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
</div>