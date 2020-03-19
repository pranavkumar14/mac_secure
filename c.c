#include<stdio.h>

int main(){
    int n;
    scanf("%d",&n);
    int arr[n];
    for(int i=0;i<n;i++){
        scanf("%d",&arr[i]);
    }
    int a,maxx=0;
    for(int i=0;i<n;i++){
        a=maxx+arr[i];
        printf("%d",a);
        maxx=maxx>a?maxx:a;
       if(i<n-1) printf(" ");
    }
}