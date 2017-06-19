<?php

//configuration settings
require 'includes/config.php';

//initialisation
require 'includes/bootstrap.php';

// head
$templateParser->assign('myTitle', $title);
$templateParser->display('head.tpl');


// menu
$templateParser->display('menu.tpl');

$action = isset($_GET['page']) ? $_GET['page'] : 'home';

switch ($action) {
    case 'home':
        $templateParser->display('home.tpl');
        break;
    case 'login':
        $templateParser->display('login.tpl');
        break;
    case 'registreer':
        $templateParser->display('registreer.tpl');
        break;
    case 'nieuws':
        require_once ('model/nieuws.php');
        $templateParser->assign('nieuws_list', $nieuws_list);
        $templateParser->display('nieuws.tpl');
        break;
    case 'albums':
        require_once ('model/albums.php');
        $templateParser->assign('album_list', $album_list);
        $templateParser->display('albums.tpl');
        break;
    case 'shop':
        require_once ('model/shop.php');
        $templateParser->assign('shop_list', $shop_list);
        $templateParser->display('shop.tpl');
        break;
}


// footer
require_once ('model/footer.php');
$templateParser->assign('footer', $footer);
$templateParser->display('footer.tpl');

?>
