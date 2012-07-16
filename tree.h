#import <Foundation/Foundation.h>
@interface Node : NSObject
{
    Node *left;
    Node *right;
	int Num;
    char Op;
}
-(id)init;
-(char)getop;
- (Node*) AddOp:(char)iOp;
//-(void) AddNum:(int)_Num;
@end
