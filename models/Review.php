<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "review".
 *
 * @property int $id
 * @property string $published
 * @property string $user_name
 * @property string $user_email
 * @property string $review_text
 * @property int $product_id
 *
 * @property Product $product
 */
class Review extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'review';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
	        [['published'], 'date', 'format' => 'php:Y-m-d'],
	        [['published'], 'default', 'value' => date('Y-m-d')],
            [['review_text'], 'string'],
	        [['review_text', 'user_name', 'user_email'], 'required'],
	        [['user_email'], 'email'],
            [['product_id'], 'integer'],
            [['user_name', 'user_email'], 'string', 'max' => 255],
            [['product_id'], 'exist', 'skipOnError' => true, 'targetClass' => Product::className(), 'targetAttribute' => ['product_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'published' => 'Опубликовано', // label right
            'user_name' => 'Имя',
            'user_email' => 'Email',
            'review_text' => 'Отзыв',
            'product_id' => 'ID продукта',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProduct()
    {
        return $this->hasOne(Product::className(), ['id' => 'product_id']);
    }
}
