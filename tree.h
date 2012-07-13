#import <Foundation/Foundation.h>
@interface Node : NSObject
{
    Node *left;
    Node *right;
    char value;
}
-(id)Init;
-(void) InsertValue: (char) ivalue;
-(void) AddOp:(char)Op;

@end

@implementation Node
-(id)init
{
value=nil;
right=nil;
left=nil;
}
-(void) InsertValue: (char) ivalue
{
    value = ivalue;
}
-(void)AddOp:() Op
{	if(value==nil)
	{value=Op;
	NSLog(@"Operacii%i",1);
	return;
	}
	
	Node *tmp1=self;
	Node *tmp2=[[Node alloc]init];
	[tmp2 InsertValue: Op];
	if(Op=='-'||Op=='+')
	{NSLog(@"Operacii%i",2);
		self=tmp2;
		self->left=tmp1;
	}
	else
	{NSLog(@"Operacii%i",3);
		self->right=tmp2;
	}
		
}
@end