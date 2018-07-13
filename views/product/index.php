<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\LinkPager;
use yii\helpers\Url;

$this->title = 'Products';

?>

<div class="product-index">
    <ul class="product-list-basic">
	    <? foreach ($products as $product): ?>
        <li>
            <a href="<?= Url::toRoute(['product/view', 'id' => $product['id']]) ?>" class="product-photo">
                <img src="<?= Yii::getAlias('@web') . 'uploads/' . $product['photo']; ?>" height="130" alt="iPhone 6" />
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
            <p class="product-description"><?= $product['description']; ?></p>

            <button>Buy Now!</button>
            <p class="product-price"><?= $product['price']; ?></p>

        </li>
	    <? endforeach; ?>
    </ul>
</div>
