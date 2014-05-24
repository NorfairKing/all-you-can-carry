#include <stdio.h>
#include <math.h>

void vkvgl_1(double b, double c, double results[2])
{
    double D = sqrt(pow(b/2,2)-c);
    results[0] = (- b/2) + D;
    results[1] = (- b/2) - D;
}

void vkvgl_2(double b, double c, double results[2])
{
    double D = sqrt(pow(b/2,2) - c);
    results[0] = fabs(b/2) + D;
    if (b > 0)
    {
        results[0] = - results[0];
    }
    results[1] = c / results[0];
}

int main()
{
    double b = 1;
    double c = 0;
    double results[2];
    vkvgl_2(b,c,results);
    printf("x1 = %f\n", results[0]);
    printf("x2 = %f\n", results[1]);
    
    return 0;
}
