<?php

use yii\bootstrap\ActiveForm;
use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\helpers\Url;
//use kartik\detail\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Product */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Товары'), 'url' => ['/']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Редактировать'), ['update', 'id' => $model->id], ['class' => 'btn btn-default']) ?>
        <?= Html::a(Yii::t('app', 'Изменить фото'), ['set-photo', 'id' => $model->id], ['class' => 'btn btn-default']) ?>
        <?= Html::a(Yii::t('app', 'Удалить'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-default',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <div class="row">
        <div class="col-sm-6">
            <div class="product-images">
                <div class="product-main-img">
                    <img class="img-responsive" src="<?= (!empty($product['photo'])) ? '/uploads/' . $model->photo : '/img/no-photo.png'; ?>" alt="<?= $model->title ?>">
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <h3 class="product-title"><?= $model->title; ?></h3>
            <div class="rating">
                <div class="stars">
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                    <span class="fa fa-star"></span>
                </div>
                <span class="review-no">41 <?= Yii::t('app', 'отзывов'); ?></span>
            </div>
            <p class="product-description">Тут может быть еще информация...</p>
            <h4 class="price"><?= Yii::t('app', 'Цена'); ?>: <span><?= $model->price; ?></span></h4>
            <p class="vote"><strong>91%</strong> покупателям понравился данный продукт! <strong>(87 голосов)</strong></p>
            <p><?= Yii::t('app', 'Категория'); ?>: <b><?= $product->category->title ?></b></p>
            <div class="action">
                <button class="add-to-cart btn btn-default" type="button"><?= Yii::t('app', 'В корзину'); ?></button>
                <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="tab-slider--nav">
            <ul class="tab-slider--tabs">
                <li class="tab-slider--trigger active" rel="tab1"><?= Yii::t('app', 'Описание'); ?></li>
                <li class="tab-slider--trigger" rel="tab2"><?= Yii::t('app', 'Отзывы'); ?></li>
            </ul>
        </div>
        <div class="tab-slider--container">
            <div id="tab1" class="tab-slider--body">
                <p><?= $model->description; ?></p>
            </div>
            <div id="tab2" class="tab-slider--body">
                <div class="product-reviews">
                    <ul id="comments-list" class="comments-list">
	                    <? foreach ($reviews as $review): ?>
                        <li>
                            <div class="comment-main-level">
                                <!-- Avatar -->
                                <div class="comment-avatar"><img src="<?= Yii::getAlias('@web') . '/img/user-comment-default-512.png'; ?>" alt=""></div>
                                <!-- Contenedor del Comentario -->
                                <div class="comment-box">
                                    <div class="comment-head">
                                        <h6 class="comment-name by-author" data-mail="<?= $review['user_email'] ?>"><?= $review['user_name']; ?></h6>
                                        <span><?= $review['published']; ?></span>
                                        <i class="fa fa-reply" title="<?= Yii::t('app', 'Ответить'); ?>"></i>
                                        <i class="fa fa-heart" title="<?= Yii::t('app', 'Мне нравится'); ?>"></i>
                                    </div>
                                    <div class="comment-content">
	                                    <?= $review['review_text']; ?>
                                    </div>
                                    <p class="comment-edit"><a href="<?= Url::to(['review/update', 'id' => $review['id']]) ?>"><?= Yii::t('app', 'Редактировать'); ?></a></p>
                                </div>
                            </div>
                        </li>
	                    <? endforeach; ?>
                    </ul>
	                <?php $form = ActiveForm::begin(); ?>

	                <?= $form->field($reviewModel, 'user_name') ?>

	                <?= $form->field($reviewModel, 'user_email') ?>

	                <?= $form->field($reviewModel, 'review_text') ?>

                    <p><input id="review-product_id" name="product-id" value="<?= $product_id ?>" type="hidden"></p>
                    <p><button type="button" id="add-review"><?= Yii::t('app', 'Оставить отзыв'); ?></button></p>

	                <?php ActiveForm::end(); ?>
                </div>
                </div>

            </div>
        </div>
    </div>
</div>
