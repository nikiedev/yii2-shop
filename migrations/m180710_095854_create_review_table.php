<?php

use yii\db\Migration;

/**
 * Handles the creation of table `review`.
 */
class m180710_095854_create_review_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('review', [
            'id' => $this->primaryKey(),
            'published' => $this->date(),
            'user_name' => $this->string(),
            'user_email' => $this->string()->defaultValue(null),
            'review_text' => $this->text(),
	        'product_id' => $this->integer(),
        ]);

	    // creates index for column `article_id`
	    $this->createIndex(
		    'idx_product_id',
		    'review',
		    'product_id'
	    );
	    // add foreign key for table `article`
	    $this->addForeignKey(
		    'fk_product_id',
		    'review',
		    'product_id',
		    'product',
		    'id',
		    'CASCADE'
	    );
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('review');
    }
}
