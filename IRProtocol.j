//	IRProtocol.j
//	Evadne Wu at Iridia, 2010
	




@implementation IRProtocol : CPObject {
	
	CPArray _selectors;
	CPArray _optionalSelectors;
	
}





+ (IRProtocol) protocolWithSelectors:(SEL)aSelector, ... {
	
	var 	i = 2,
		protocolObject = [[[self class] alloc] init],
		selectorCount = arguments.length;

	for (; i < selectorCount; ++i) [protocolObject _addSelector:arguments[i]];

	return protocolObject;
		
}





+ (IRProtocol) protocolWithSelectorsAndOptionalFlags:(id)anObject, ... {
	
	if (arguments.length % 2 !== 0) [CPException
	
	 	raise:CPInvalidArgumentException
		reason:"Selector-flag pair mismatched. (" + arguments.length + " arguments passed)"
		
	];

	self = [[[self class] alloc] init]; if (!self) return nil;

	var i = 2; for (; i < arguments.length; i += 2) {

		var selector = arguments[i];
		if (selector === nil) break;
		
		var optionalFlag = !!(arguments[i + 1]);
		optionalFlag ? [self _addOptionalSelector:selector] : [self _addSelector:selector];

	}

	return self;
	
}





- (IRProtocol) init {
	
	self = [super init]; if (!self) return nil;
	
	_selectors = [[CPArray alloc] init];
	_optionalSelectors = [[CPArray alloc] init];
	
	return self;
	
}





- (void) _addSelector:(SEL)theSelector {
	
	[_selectors addObject:theSelector];
	
}

- (void) _addOptionalSelector:(SEL)theSelector {

	[_optionalSelectors addObject:theSelector];
	
}





- (BOOL) implementedByObject:(id)inObject {
	
	if ([_selectors count] == 0) return true;
	
	for (var i = 0; i < [_selectors count]; i++)
	if (![inObject respondsToSelector:_selectors[i]])
	return false;
	
	return true;
	
}





- (CPString) description {
	
	return [super description] + " — " + "Required: " + (
		
		(_selectors.length == 0) ? "<Empty>" : _selectors.join(", ")
	
	) + "; Optional: " + (
	
		(_optionalSelectors.length == 0) ? "<Empty>" : _optionalSelectors.join(", ")	
		
	);
	
}





@end









