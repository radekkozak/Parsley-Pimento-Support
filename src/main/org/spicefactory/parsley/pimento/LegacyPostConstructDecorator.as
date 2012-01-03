/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.spicefactory.parsley.pimento {

import org.spicefactory.parsley.core.processor.InitPhase;
import org.spicefactory.parsley.core.builder.processor.MethodInvocationProcessor;
import org.spicefactory.parsley.core.builder.ObjectDefinitionBuilder;
import org.spicefactory.parsley.core.builder.ObjectDefinitionDecorator;

[Metadata(name="PostConstruct", types="method")]
/**
 * Represents a Metadata, MXML or XML tag that can be used on methods that should be invoked after
 * the object has been created and fully configured.
 * 
 * @author Jens Halm
 */
public class LegacyPostConstructDecorator implements ObjectDefinitionDecorator {


	[Target]
	/**
	 * The name of the method.
	 */
	public var method:String;
	
	
	/**
	 * @inheritDoc
	 */
	public function decorate (builder:ObjectDefinitionBuilder) : void {
		builder
			.method(method)
			.process(new MethodInvocationProcessor([]))
			.initIn(InitPhase.init());
	}
	
	
}
}
