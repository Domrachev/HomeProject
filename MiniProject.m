#import <Foundation/Foundation.h>
#import "D:\ObjC\program\tree.h"


int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	char Str[255];//Строка которую ввел пользователь
	
	int Op=0;//Количество операций
	int Num=1;//Количество чисел
	int tmp1=0;
	int tmp2=0;
	int n;//длина выражения, которое ввел пользователь
	//NSMutableString *arrOp = [NSMutableString arrayWithCapacity:n];
	//NSMutableArray *arrOp=[NSMutableArray  new];//Массив операндов
	NSMutableArray *arrNum=[NSMutableArray  new];//Массив чисел
	gets(Str);
	
	Node *root = [[Node alloc]init];
	//[root AddOp:'+'];
	//[root AddOp:'*'];
	//[root AddOp:'-'];
    //Node *tmp ;
	//tmp=[[Node alloc]init];
	//[tmp InsertValue: 7];
    //[root InsertValue: 5];
	//tmp->right=[[Node alloc]init];
	//[tmp->right InsertValue: 9];
	//root->right=tmp;
	//int t=root->value;
    //[tmp InsertValue: 1];
    //NSLog(@"tree %i",t);
	
	//NSString *B = [A substringWithRange: range];
	//NSLog(@"%@", secondString);
	//[arrOp appendString:Str[0]];
	//NSLog(@"%c", A[0]);
	//[arrOp addObject:b];
	//[array addObject:[NSNumber numberWithDouble:a]];
	//[array addObject:a];
	//NSLog(@"%d", [arrOp count]);
	//NSLog(@"%@", [array objectAtIndex:0]);
	n=strlen(Str);
	int i;
	//int j;
	//int k=0;
	for( i=0;i<n;i++)
	{
	if(Str[i]=='+'||Str[i]=='-'||Str[i]=='*'||Str[i]=='/')
	{
	[root AddOp:Str[i]];
	Op++;
	Num++;
	}
	}
	//NSLog(@"%@", [arrOp count]);
	//NSLog(@"Chisla%i",Num); 
	//NSLog(@"Operacii%i",Op); 
	//if(root!=nil)
	//NSLog(@"Operacii%i",10);
	
	//NSLog(@"%s",Str); 
	//Node *root = [[Node alloc]init];
    //Node *tmp ;
	//tmp=[[Node alloc]init];
	//[tmp InsertValue: 7];
    //[root InsertValue: 5];
	//tmp->right=[[Node alloc]init];
	//[tmp->right InsertValue: 9];
	//root->right=tmp;
	//char t=root->value;
	//tmp=root->right;
	//char s=tmp->value;
    //[tmp InsertValue: 1];
    //NSLog(@"tree %c",t);
	//NSLog(@"tree %c",s);
	[pool drain];
    return 0;
}