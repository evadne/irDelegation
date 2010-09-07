#	`IRDelegate`

Easy delegation / bare-bones protocol support for Cappuccino.





#	Implements


##	`CPObject+IRDelegation.j`

	+ (IRProtocol) irDelegateProtocol;
	
	- (BOOL) irConformsToProtocol:(IRProtocol)inProtocol;
	- (void) irSetDelegate:(id)inObject;


##	`IRProtocol.j`

	+ (IRProtocol) protocolWithSelectors:(SEL)aSelector, ...;
	+ (IRProtocol) protocolWithSelectorsAndOptionalFlags:(id)anObject, ...;
		
	- (BOOL) implementedByObject:(id)inObject;




#	Usage

Create object (reference: `IRDelegationTesting.j`) and create an ivar :
	
	id _delegate @accessors(property=delegate);

And implement a class method:

	+ (IRProtocol) irDelegateProtocol {

		return [IRProtocol protocolWithSelectorsAndOptionalFlags:

			@selector(pownce), true,
			@selector(nip), false

		];

	}
	
where the returned protocol will be used by `IRDelegation`.  `@import` the main wrapper file, `IRDelegation.j`, anywhere you’ll use `irSetDelegate:`, and call it.




