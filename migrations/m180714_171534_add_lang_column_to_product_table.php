<?php

use yii\db\Migration;

/**
 * Handles adding product_id to table `product`.
 */
class m180714_171534_add_lang_column_to_product_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('product', 'lang', $this->string()->after('price'));
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('product', 'lang');
    }
}
