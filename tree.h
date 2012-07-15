#import <Foundation/Foundation.h>
@interface Node : NSObject
{
    Node *left;
    Node *right;
	int Num;
    char Op;
}
-(id)Init;
-(void) InsertOp: (char) iOp;
-(void) InsertNum:(int) _Num : (Node*) root;
-(void) AddOp:(char)iOp;
-(void) AddNum:(int)_Num;

@end

@implementation Node
-(id)init
{
	Num=nil;
	Op=nil;
	right=nil;
	left=nil;
}
-(void) InsertNum: (int) _Num
{
    Num = _Num;
}

-(void) InsertOp:(char)iOp
{
    Op=iOp;
}
-(void)AddNum:(int) _Num : (Node*) root
{
	if( root==nil )
	{//NSLog(@ "zashel %i",0);
	Node*tmp=[[Node alloc]init];
	tmp->Op=nil;
	tmp->Num=_Num;
	tmp->left=nil;
	tmp->right=nil;
	return;	
	}
	//if(root->Op!=nil)
	NSLog(@ "root op %c",root->Op);
	if(root->left->Num!=nil)
	NSLog(@ "root left pusto");
	if(root->left->Num==nil&&root->Op!=nil)
		{
		NSLog(@ "zashel %i",2);
		[root AddNum: _Num: root->left];
		}
		NSLog(@ "proebalsya1");
	if(root->right->Num==nil&&root->Op!=nil)
		{NSLog(@ "zashel %i",3);
		[root AddNum: _Num: root->right];
		}
		NSLog(@ "proebalsya2");
}
-(void)AddOp:(char)iOp
{	if(Op==nil)
	{	//NSLog(@ "proebalsya1");
		Op=iOp;
		return;
	}
	//NSLog(@ "proebalsya2");
	Node *tmp1=self;
	Node *tmp2=[[Node alloc]init];
	[tmp2 InsertOp: iOp];
	
	if(iOp=='-'||iOp=='+')
	{	NSLog(@ "proebalsya - +");
		tmp2->left=tmp1;
		self=tmp2;
		//left=tmp1;
		//NSLog(@ "%c",self->Op);
		//NSLog(@ "%c",self->left->Op);
	}
	else
	{	//NSLog(@ "proebalsya inache");
		right=tmp2;
	}
	//NSLog(@ "%c",Op);
	return;
}

@end