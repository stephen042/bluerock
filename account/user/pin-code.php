<?php
$pageName = "Pin Code";
require_once("layouts/header.php");
include("./userPinfunction.php");
?>

<div id="content" class="main-content">
    <div class="layout-px-spacing">
        <div class="row layout-top-spacing">
            <div class="col-md-8 offset-md-2 mt-5">
                <div class="card component-card">
                    <div class="card-body">
                        <div class="user-profile">
                            <div class="row">
                                <div class="col-md-12">
                                    <h3 class="text-center">HELLO <?= ucwords($fullName) ?> Verify Transaction With Your 6 digits Pin Code</h3>

                                </div>
                            </div>
                            <form method="post">
                                <div class="row">
                                    <div class="col-md-12">
                                        <?php if (!empty($pinError)) : ?>
                                            <div class="alert alert-danger">
                                                <?= htmlspecialchars($pinError) ?>
                                            </div>
                                        <?php endif; ?>
                                    </div>
                                </div>
                                <div class="col-md-12 ">
                                    <div class="form-group">
                                        <div class="input-group ">
                                            <input type="hidden" name="name-of-transfer" id="" value="<?= $_SESSION['name-of-transfer'] ?>">
                                            <input type="number" class="form-control" name="pinCode" placeholder="Pin Code" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 ">
                                    <div class="form-group ">
                                        <button class="btn btn-primary col-12" type="submit" name="pinCode-submit">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>

            <?php
            include_once("layouts/footer.php");

            ?>