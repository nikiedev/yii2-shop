<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\LinkPager;
use yii\helpers\Url;

$this->title = 'Products';

?>

<div class="product-index">
    <h2 class="title-category hidden-xs col-sm-3">Категории</h2>
    <h2 class="title-product hidden-xs col-sm-9">Товары</h2>
    <ul class="category-list col-xs-12 col-sm-3">
	    <?php foreach ($categories as $category): ?>
        <li class="category">
            <div class="panel-block">
            <a href="<?= Url::toRoute(['category/view', 'id' => $category['id']]) ?>"><?= $category['title']; ?></a>
            </div>
        </li>
        <?php endforeach; ?>
    </ul>
    <ul class="product-list-basic col-xs-12 col-sm-9">
	    <?php foreach ($products as $product): ?>
        <?php //$lang_data = $product->getDataProducts();  ?>
        <li class="col-sm-4">
        <div class="panel-block">
            <a href="<?= Url::toRoute(['product/view', 'id' => $product['id']]) ?>" class="product-photo">
                <img src="<?= '/uploads/' . $product['photo']; ?>" height="130" alt="iPhone 6" />
            </a>
            <h2><a href="<?= Url::toRoute(['product/view' , 'id' => $product['id']]) ?>"><?= $product['title']; ?></a></h2>
            <a href="<?= Url::toRoute(['product/update', 'id' => $product['id']]) ?>" class="product-edit">Редактировать</a>
            <div class="product-rating">
                <div>
                        <span class="product-stars" style="width: 60px" >
                            <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                        </span>
                </div>

                <span><a href="#"><?= rand(80,150); ?> reviews</a></span>
            </div>
            <p class="product-description"><?= mb_strimwidth($product['description'], 0, 180, '...'); ?>
            <a class="intro-link" href="<?= Url::toRoute(['product/view' , 'id' => $product['id']]); ?>"> <?= Yii::t('app', 'читать далее') ?></a></p>
            <button><?= Yii::t( 'app', 'В корзину'); ?></button>
            <p class="product-price"><?= $product['price']; ?></p>
        </div>
        </li>
	    <? endforeach; ?>
    </ul>
</div>

