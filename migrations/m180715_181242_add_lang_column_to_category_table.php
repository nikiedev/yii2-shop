<?php

use yii\db\Migration;

/**
 * Handles adding lang to table `category`.
 */
class m180715_181242_add_lang_column_to_category_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
	    $this->addColumn('category', 'lang', $this->string()->after('description'));
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
	    $this->dropColumn('category', 'lang');
    }
}
