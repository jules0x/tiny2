<?php

use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;
use SilverStripe\AssetAdmin\Forms\UploadField;

class SiteConfigExtension extends DataExtension
{

	private static $db = array(
		'GACode' => 'Text',
		'GTMCode' => 'Text'
	);

	private static $has_one = array(
		'DefaultSocialImage' => Image::class
	);

	public function updateCMSFields(FieldList $fields)
	{

		// Analytics
		$fields->addFieldsToTab('Root.Analytics', array(
			TextField::create('GoogleAnalyticsCode', 'Google analytics code')
		));

		// Social meta fallback value
		$fields->addFieldsToTab('Root.Social', array(
			UploadField::create('DefaultSocialImage')
		));
	}
}
