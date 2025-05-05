<?php

require 'vendor/autoload.php';

use Smarty\Smarty;
$smarty = new Smarty();

$smarty->setTemplateDir('templates');
$smarty->setCompileDir('templates_c');
$smarty->setCacheDir('cache');
$smarty->setConfigDir('configs');

session_start();

if (empty($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}

$smarty->assign('csrf_token', $_SESSION['csrf_token']);
$smarty->assign('isArchitecture', 1);
$smarty->assign('title', "Architecture and design");

$smarty->display('architecture.tpl');