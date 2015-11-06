<?php namespace KP;

use Illuminate\Foundation\Application;

class KPApplication extends Application  
{
	public function publicPath()  
	{
	    return $this->basePath.DIRECTORY_SEPARATOR.'public_html';
	}
}