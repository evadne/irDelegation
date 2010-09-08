//	IRDelegateProxy.j
//	Evadne Wu at Iridia, 2010





@class IRProtocol;





@implementation IRDelegateProxy : CPObject {
	
	id originalObject;
	IRProtocol delegateProtocol;
	
}





- (void) doesNotRecognizeSelector:(SEL)inSelector {
	
	CPLog(@"Delegate does not recognize selector.");
	
}

@end