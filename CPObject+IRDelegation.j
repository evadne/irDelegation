//	CPObject+IRDelegation.j
//	Evadne Wu at Iridia, 2010





@implementation CPObject (IRDelegation) 





+ (IRProtocol) irDelegateProtocol {
	
	return nil;
	
}





- (void) irConformsToProtocol:(IRProtocol)inProtocol {
	
	return [inProtocol implementedByObject:self];
	
}





- (void) irSetDelegate:(id)plausibleDelegate {
	
	if (![[self class] irDelegateProtocol]) [CPException
	
	 	raise:CPInternalInconsistencyException
		reason: "Object" + [self description] + " has not specified its delegate protocol in its class."
		
	];
	
	if (![plausibleDelegate irConformsToProtocol:[[self class] irDelegateProtocol]]) [CPException
	
	 	raise:CPInternalInconsistencyException
		reason: "Object" + [plausibleDelegate description] + " does not implement delegate protocol: " + [[[self class] irDelegateProtocol] description]
		
	];
	
	[self setDelegate:plausibleDelegate];
	
}





@end




