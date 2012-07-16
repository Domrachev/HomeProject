#import <Foundation/Foundation.h>
#import "tree.h"

int main (int argc,  char ** argv) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	extern char *optarg;
	int oc;
	int Number=1;
	unsigned long lengthOfExpression;
	Node *root = [[Node alloc]init];
	char *optString = "i:";
	char *optOfArg;
	NSLog(@ "zaidu");	
	while ((oc = getopt (argc, argv, optString)) != -1)
	
    {
      switch (oc)
        {
        case 'i':
			optOfArg = optarg;
			lengthOfExpression=strlen(optOfArg);
			int q;
			int j=0;
			for( q=0;q<lengthOfExpression;q++)
			{
				if(optOfArg[q]=='+'||optOfArg[q]=='-'||optOfArg[q]=='*'||optOfArg[q]=='/')
				{	
					root=[root AddOp:optOfArg[q]];
					Number++;
				}
			}
                
                
			q=0;
			int tmp1=0;
			int tmp2=0;
			int p;
			int k;
			int *ArrI=(int *)malloc(Number*sizeof(int));
			char *Arr;
			while(q!=lengthOfExpression)
			{
				if(optOfArg[q]=='+'||optOfArg[q]=='-'||optOfArg[q]=='*'||optOfArg[q]=='/'||q==lengthOfExpression-1)
				{	
					k=tmp2-tmp1;
					if(q==(lengthOfExpression-1))
						k++;
					Arr=(char*)malloc(k*sizeof(char));
					for(p=0;p<k;p++)
					{
						Arr[p]=optOfArg[tmp1];
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
				q++;
			}
			NSLog(@ "zaidu");
			for(q=0;q<Number;q++)
			{	
				//[root AddNum: ArrI[q]];
			}
			free(ArrI);
			break;
        }
    }
	[pool drain];
    return 0;
}