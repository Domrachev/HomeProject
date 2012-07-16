#import <Foundation/Foundation.h>
#import "D:\ObjC\program\tree.m"

int main (int argc,  char ** argv) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	extern char *optarg;
	int oc;
	//int Op=0;//operations
	int Num=1;//number
	int n;//length expression
	Node *root = [[Node alloc]init];
	
	char *optstring = "i:";
	char *b_opt_arg;
		
	while ((oc = getopt (argc, argv, optstring)) != -1)
	
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
					root=[root AddOp:b_opt_arg[i]];
					Num++;
				}
			}
			
			i=0;
			int tmp1=0;
			int tmp2=0;
			int p;
			int k;
			int *ArrI=(int *)malloc(Num*sizeof(int));
			char *Arr;
			while(i!=n)
			{
				if(b_opt_arg[i]=='+'||b_opt_arg[i]=='-'||b_opt_arg[i]=='*'||b_opt_arg[i]=='/'||i==n-1)
				{	
					k=tmp2-tmp1;
					if(i==(n-1))
						k++;
					Arr=(char*)malloc(k*sizeof(char));
					for(p=0;p<k;p++)
					{
						Arr[p]=b_opt_arg[tmp1];
						tmp1++;
					}
					ArrI[j]=atoi(Arr);
					j++;
					free(Arr);
					Arr=nil;
					tmp2++;
					tmp1=tmp2;
				}
				else
				{	
					tmp2++;	
				}
				i++;
			}
			NSLog(@ "zaidu");
			for(i=0;i<Num;i++)
			{	
				[root AddNum: ArrI[i]];
			}
			free(ArrI);
			break;
        }
    }
	[pool drain];
    return 0;
}