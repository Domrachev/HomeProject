#import <Foundation/Foundation.h>
//#import "D:\ObjC\program\tree.m"
@interface Node : NSObject
{
    Node *left;
    Node *right;
	int Num;
    char Op;
}
-(id)Init;
-(Node*) AddOp:(char)iOp;
-(void) AddNum:(int)_Num:;
@end
