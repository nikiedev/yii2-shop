<?php

/* @var $this yii\web\View */

$this->title = 'Simple Yii2 Shop';
?>
<div class="site-index">

    <div class="jumbotron">
        <h1>Simple Yii2 Shop Example</h1>

        <p class="lead">This is not a full working shop, it's only a simple implementation for acquaintance.</p>

    </div>

    <div class="body-content">

        <div class="row">
            <div class="col-lg-4">
                <h2 class="text-center">Products</h2>
                <div class="clearfix">
                    <a href="/product"><img class="img-responsive col-sm-8 col-sm-offset-2" src="<?= Yii::getAlias('@web') . '/img/'; ?>home-product.png" alt="home product"></a>
                </div>
                <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p class="text-center"><a class="btn btn-default" href="/product">Read more &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <h2 class="text-center">Categories</h2>
                <div class="clearfix">
                    <a href="/category"><img class="img-responsive col-sm-8 col-sm-offset-2" src="<?= Yii::getAlias('@web') . '/img/'; ?>home-category.png" alt="home category"></a>
                </div>
                <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p class="text-center"><a class="btn btn-default" href="/category">Read more &raquo;</a></p>
            </div>
            <div class="col-lg-4">
                <h2 class="text-center">Reviews</h2>
                <div class="clearfix">
                    <a href="/review"><img class="img-responsive col-sm-8 col-sm-offset-2" src="<?= Yii::getAlias('@web') . '/img/'; ?>home-review.png" alt="home review"></a>
                </div>
                <p class="text-center">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                <p class="text-center"><a class="btn btn-default" href="/review">Read more &raquo;</a></p>
            </div>
        </div>

    </div>
</div>
