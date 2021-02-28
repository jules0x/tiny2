<?php

namespace {

use SilverStripe\View\SSViewer;
use SilverStripe\View\Requirements;
use SilverStripe\Core\Config\Config;
use SilverStripe\CMS\Controllers\ContentController;


    class PageController extends ContentController
    {
        private static $allowed_actions = array();

        public function init()
        {
            parent::init();

            $themePath = 'themes/' . Config::inst()->get(SSViewer::class, 'theme');

            Requirements::javascript('themes/default/js/script.min.js');
            Requirements::css('themes/default/css/style.css');
        }
    }
}
