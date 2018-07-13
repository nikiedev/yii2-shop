<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Product */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="article-form">

	<?php $form = ActiveForm::begin(); ?>

	<?= $form->field($model, 'photo')->fileInput(['maxlength' => true]) ?>

	<div class="form-group">
		<?= Html::submitButton('Submit', ['class' => 'btn btn-success']) ?>
	</div>

	<?php ActiveForm::end(); ?>

</div>
