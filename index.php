<?php

require 'config.php';
require 'vendor/autoload.php';
use Smarty\Smarty;
$smarty = new Smarty();

session_start();

if (isset($_GET['lang'])) {
    $_SESSION['lang'] = $_GET['lang'];
    $redirectUrl = strtok($_SERVER["REQUEST_URI"], '?'); // Удаляет query string
    header("Location: $redirectUrl", true, 302);
    exit;
}

$lang = $_SESSION['lang'] ?? 'en';
$t = include __DIR__ . "/lang/{$lang}.php";
$smarty->assign('lang', $lang);
$smarty->assign('t', $t);

$smarty->setTemplateDir('templates');
$smarty->setCompileDir('templates_c');
$smarty->setCacheDir('cache');
$smarty->setConfigDir('configs');
$smarty->caching = 0;
$smarty->registerPlugin("modifier", "sprintf", "sprintf");


if (empty($_SESSION['csrf_token'])) {
    $_SESSION['csrf_token'] = bin2hex(random_bytes(32));
}



$smarty->assign('csrf_token', $_SESSION['csrf_token']);
$smarty->assign('isHome', 1);
$smarty->assign('url', $url);


$smarty->display('index.tpl');