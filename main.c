#include <stdio.h>

void close(int col,int *c1,int *c2) {
	int res=col/51;
	*c1=res;
	if(col-res*51>res*51+25-col && res<5) res++;
	*c2=res;
}

int main(int argc,char** argv) {
	int rx,gx,bx;
	char buf[1024];
	while(scanf("#%02x%02x%02x - ",&rx,&gx,&bx)==3) {
		int r1,g1,b1;
		int r2,g2,b2;
		close(rx,&r1,&r2);
		close(gx,&g1,&g2);
		close(bx,&b1,&b2);
		int res1=r1*36+g1*6+b1+16;
		int res2=r2*36+g2*6+b2+16;
		printf("\x1b[38;2;%d;%d;%dm#%02x%02x%02x ",rx,gx,bx,rx,gx,bx);
		printf("\x1b[38;5;%dm %d ",res1,res1);
		printf("\x1b[38;5;%dm %d",res2,res2);
		fgets(buf,sizeof(buf),stdin);
		printf("\x1b[38;2;%d;%d;%dm - %s",rx,gx,bx,buf);
	}
}
