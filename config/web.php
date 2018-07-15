<?php

$params = require __DIR__ . '/params.php';
$db = require __DIR__ . '/db.php';

$config = [
    'id' => 'basic',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
    ],
    'sourceLanguage' => 'ru',

    'modules' => [
	    'languages' => [
		    'class' => 'klisl\languages\Module',
		    //Языки используемые в приложении
		    'languages' => [
			    'English' => 'en',
			    'Русский' => 'ru',
		    ],
		    'default_language' => 'ru', //основной язык (по-умолчанию)
		    'show_default' => false, //true - показывать в URL основной язык, false - нет
	    ],
    ],
    'components' => [
        'request' => [
            // !!! insert a secret key in the following (if it is empty) - this is required by cookie validation
            'cookieValidationKey' => 'af-klToN_GxFVsmI9zUYAWygYyv2sJkC',
            'baseUrl' => '', //убрать frontend/web
            'class' => 'klisl\languages\Request'
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'user' => [
            'identityClass' => 'app\models\User',
            'enableAutoLogin' => true,
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db' => $db,

        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'enableStrictParsing' => true,
            'class' => 'klisl\languages\UrlManager',
            'rules' => [
	            'languages' => 'languages/default/index', //для модуля мультиязычности
	            //далее создаем обычные правила
	            '/' => 'product/index',
	            '<action:(login|logout|language|about|signup)>' => 'site/<action>',
	            '<action:(product|category|review)>' => '<action>',
	            'product/<id:\d+>' => 'product/view',
	            'product/update/<id:\d+>' => 'product/update',
	            'product/update/set-photo/<id:\d+>' => 'product/set-photo',
	            'product/update/set-category/<id:\d+>' => 'product/set-category',
	            'product/delete/<id:\d+>' => 'product/delete',
	            'review/index' => 'review/index',
	            'review/view/<id:\d+>' => 'review/view',
	            'review/update/<id:\d+>' => 'review/update',
	            'review/create' => 'review/create',
	            'review/delete/<id:\d+>' => 'review/delete',
	            'category' => 'category/index',
	            'category/view/<id:\d+>' => 'category/view',
	            'category/create' => 'category/create',
	            'category/update/<id:\d+>' => 'category/update',
	            'category/delete/<id:\d+>' => 'category/delete',
            ],
        ],
//        'assetManager' => [
//	        'bundles' => [
//		        'yii\web\JqueryAsset' => [
//			        'js'=>[]
//		        ],
//		    ]
//        ]
    ],
    'params' => $params,
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];
}

return $config;
