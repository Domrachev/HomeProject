#import "D:\ObjC\program\tree.h"
@implementation Node
-(id)init
{
	Num=nil;
	Op=nil;
	right=nil;
	left=nil;
}
-(void)AddNum:(int) _Num
{	
	Node*tmp=self;
	while(tmp!=nil)
	{	
		if(tmp->left->Op!=nil&&tmp->left->Num==nil)
			tmp=tmp->left;
		else
			if(tmp->right->Op!=nil&&tmp->right->Num==nil)
				tmp=tmp->right;
		
	}
	tmp=[[Node alloc] init];
	tmp->Num=_Num;
}
-(Node*)AddOp:(char)iOp
{	
	if(Op==nil)
	{	
		Op=iOp;
		return self;
	}
	Node *tmp1=self;
	Node *tmp2=[[Node alloc]init];
	tmp2->Op=iOp;
	Node *tmp3;
	if(iOp=='-'||iOp=='+')
	{	
		tmp2->left=self;
		return tmp2;
	}
	else
	{
		if(tmp1->Op=='+'||tmp1->Op=='-'&&tmp1->right==nil)
	{	
		tmp1->right=tmp2;
		return self;
	}
	if(tmp1->Op=='+'||tmp1->Op=='-'&&tmp1->right!=nil)
	{
		tmp3=tmp1->right;
		tmp1->right=tmp2;
		tmp2->left=tmp3;
		return self;
	}
	if(tmp1->Op=='/'||tmp1->Op=='*')
		tmp2->left=tmp1;
		return tmp2;
	}	
}

@end
