<?php

require 'vendor/autoload.php';

$smarty = new Smarty();

$smarty->setTemplateDir('templates/');
$smarty->setCompileDir('templates_c/');
$smarty->assign('name', 'Мир');
$smarty->display('index.tpl');
