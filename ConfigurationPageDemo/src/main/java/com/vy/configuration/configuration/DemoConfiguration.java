package com.vy.configuration.configuration;

import aQute.bnd.annotation.metatype.Meta;

@Meta.OCD(  
        id = "com.proliferay.configuration.DemoConfiguration"
    )
public interface DemoConfiguration {
	 @Meta.AD(required = false)
	    public String textData();
	 
}
