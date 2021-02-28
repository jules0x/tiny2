<?php

namespace {

use SilverStripe\Assets\Image;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\TextareaField;
use SilverStripe\AssetAdmin\Forms\UploadField;

    class Page extends SiteTree
    {
        private static $db = array(
            'Intro' => 'Text',
            'SocialDescription' => 'Varchar(200)'
        );

        private static $has_one = array(
            'SocialImage' => Image::class
        );

        public function getCMSFields()
        {
            $fields = parent::getCMSFields();

            $fields->addFieldsToTab('Root.Main', array(
                TextareaField::create('Intro')
            ), 'Content');

            $fields->addFieldsToTab('Root.Social', array(
                TextareaField::create('SocialDescription'),
                $socialImage = UploadField::create('SocialImage')
            ));

            $socialImage->setFolderName('Social');

            return $fields;
        }

        public function CurrentYear()
        {
            return date('Y');
        }
    }
}
