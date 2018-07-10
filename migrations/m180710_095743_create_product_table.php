<?php

use yii\db\Migration;

/**
 * Handles the creation of table `product`.
 */
class m180710_095743_create_product_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('product', [
            'id' => $this->primaryKey(),
	        'title' => $this->string(),
	        'description' => $this->text(),
	        'photo' => $this->string()->defaultValue(null),
	        'price' => $this->decimal(18, 2),
	        'category_id' => $this->integer(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('product');
    }
}
