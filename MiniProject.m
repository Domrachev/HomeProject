#import <Foundation/Foundation.h>
#import "D:\ObjC\program\tree.h"


int main (int argc,  char ** argv) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	extern char *optarg;
	int oc;
	//int Op=0;//Количество операций
	int Num=1;//Количество чисел
	//int n;//длина выражения, которое ввел пользователь
	Node *root = [[Node alloc]init];
	Node *tmp=root;
	char *optstring = "i:";
	char *b_opt_arg;
	[tmp AddOp:'-'];
	tmp=root;
	[tmp AddOp:'+'];
	//[root AddOp:'/'];
	
	NSLog(@ "root- %c", tmp->Op);
	/*while ((oc = getopt (argc, argv, optstring)) != -1)
	//oc = getopt (argc, argv, optstring);
    {
      switch (oc)
        {
        case 'i':
			b_opt_arg = optarg;
			int n=strlen(b_opt_arg);
			int i;
			int j=0;
			for( i=0;i<n;i++)
			{
				if(b_opt_arg[i]=='+'||b_opt_arg[i]=='-'||b_opt_arg[i]=='*'||b_opt_arg[i]=='/')
				{	
					[root AddOp:b_opt_arg[i]];
					Num++;
					
				}
			}
			
			NSLog(@ "Operandi %c",root->Op);
			*/
			//NSLog(@ "%c",s);
			//NSLog(@ "%i",Num);
			/*
			i=0;
			int tmp1=0;
			int tmp2=0;
			int p;
			int k;
			int *ArrI=(int *)malloc(Num);
			char *Arr;
			while(i!=n+1)
			{	NSLog(@ "zashel%i",i);
				if(b_opt_arg[i]=='+'||b_opt_arg[i]=='-'||b_opt_arg[i]=='*'||b_opt_arg[i]=='/'||i==n)
				{	NSLog(@ "sozdal v if");
					k=tmp2-tmp1;
					Arr=(char*)malloc(k);
					for(p=0;p<k;p++)
					{	
						Arr[p]=b_opt_arg[tmp1];
						tmp1++;
					}
					ArrI[j]=atoi(Arr);
					NSLog(@ "%i",ArrI[j]);
					j++;
					free(Arr);
					tmp1++;
					tmp2++;
					NSLog(@ "vishel iz  if");
				}
				else
				{	
					tmp2++;	
				}
				i++;
			}
			NSLog(@ "sozdal massiv");
			NSLog(@ "root op %c",root->Op);
			for(i=0;i<Num;i++)
				{
				NSLog(@ "zashel v main%i",i+1);
				//Node *tmp=root;
				[root AddNum: ArrI[i]: root];
				}
			free(ArrI);
		*/	
		//	break;
        //}
   // }
	
	[pool drain];
    return 0;
}