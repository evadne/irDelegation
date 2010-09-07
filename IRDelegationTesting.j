//	IRDelegationTesting.j
//	Evadne Wu at Iridia, 2010

@import <Foundation/CPObject.j>
	
	
	
	
	
@implementation IRDelegationTesting : CPObject {
	
	id _delegate @accessors(property=delegate);

}

+ (IRProtocol) irDelegateProtocol {
	
	return [IRProtocol protocolWithSelectorsAndOptionalFlags:
	
		@selector(pownce), true,
		@selector(nip), false
	
	];
	
}

@end