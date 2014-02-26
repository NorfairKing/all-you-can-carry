#include <stdio.h>
#include <math.h>

double vlt_eval(int n, double a[n], double x)
{
    double px = a[0];
    int i,j;
    for(i = 1; i < n; i++)
    {
        double t = a[i];
        for(j = 1; j <= i; j++)
        {
            t *= x;
        }
        px += t;
    }
    return px;
}

double horner(int n, double a[n], double x)
{
    double px = a[n-1];
    int i;
    for(i = n-1; i > 0; i--)
    {
        px = px*x + a[i-1];
    }
    return px;
}

int main()
{
    int n = 2;
    double a[n];
    a[0] = 1;
    a[1] = 2;
    double x = 2;
    double px = horner(n,a,x);
    printf("p(x) = %f\n", px);
    
    return 0;
}
