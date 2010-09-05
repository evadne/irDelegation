#	`IRDelegate`

Easy delegation / bare-bones protocol support for Cappuccino.





##	Will Implement


###	`CPObject+IRDelegation.j`

	+ (IRProtocol) irDelegateProtocol;
	
	- (BOOL) irConformsToProtocol:(IRProtocol)inProtocol;
	- (void) irSetDelegate:(id)inObject;


###	`IRProtocol.j`

	+ (IRProtocol) protocolWithSelectors:(IRProtocolSelector)aSelector, ...;
	+ (IRProtocol) protocolWithSelectorsAndFlags:(IRProtocolSelector)aSelector, (BOOL)isOptional, ...;
	
	- (BOOL) implementedByObject:(id)inObject;




