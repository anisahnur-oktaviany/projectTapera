<div class="container col-xl-10 col-xxl-8 px-4 py-5">

    <?php if(isset($model['error'])) { ?>
        <div class="row">
            <div class="alert alert-danger" role="alert">
                <?= $model['error'] ?>
            </div>
        </div>
    <?php } ?>

    <div class="row align-items-center g-lg-5 py-5">
        <div class="col-lg-7 text-center text-lg-start">
            <h1 class="display-4 fw-bold lh-1 mb-3">Register</h1>
            <p class="col-lg-10 fs-4">by <a target="_blank" href="#">RKATSite</a></p>
        </div>
        <div class="col-md-10 mx-auto col-lg-5">
            <form class="p-4 p-md-5 border rounded-3 bg-light" method="post" action="/users/register">
                <div class="form-floating mb-3">
                    <input name="direktorat_name" type="text" class="form-control" id="direktorat_name" placeholder="direktorat name" value="<?= $_POST['name'] ?? '' ?>">
                    <label for="direktorat_name">Direktorat Name</label>
                </div>
                <div class="form-floating mb-3">
                    <input name="username" type="text" class="form-control" id="username" placeholder="username" value="<?= $_POST['username'] ?? '' ?>">
                    <label for="username">Username</label>
                </div>
                <div class="form-floating mb-3">
                    <input name="password" type="password" class="form-control" id="password" placeholder="password">
                    <label for="password">Password</label>
                </div>
                <div class="form-floating mb-3">
                    <input name="email" type="email" class="form-control" id="email" placeholder="email" value="<?= $_POST['email'] ?? '' ?>">
                    <label for="email">Email</label>
                </div>
                <button class="w-100 btn btn-lg btn-primary" type="submit">Register</button>
            </form>
        </div>
    </div>
</div>