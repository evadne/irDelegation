#	`IRDelegate`

Easy delegation / bare-bones protocol support for Cappuccino.





##	Will Implement


###	`CPObject+IRDelegation.j`

	+ (IRProtocol) irDelegateProtocol;
	
	- (BOOL) irConformsToProtocol:(IRProtocol);
	- (void) irSetDelegate:(id)inObject;


###	`IRProtocolSelector.j`

	+ (IRProtocolSelector) protocolMethodWithSelector:(SEL)aSelector;
	+ (IRProtocolSelector) protocolMethodWithSelector:(SEL)aSelector optional:(BOOL)optional;


###	`IRProtocol.j`

	+ (IRProtocol) protocolWithSelectors:(IRProtocolSelector)aSelector, ...;




