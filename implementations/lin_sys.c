#include <stdio.h>


void transform_a(int n, double a[n][n], double l, int i, int j)
{
    // Rj = Rj-lRi
    int k;
    for (k = 0; k < n; k++){
        a[j][k] = a[j][k] - l*a[i][k];
    }      
}

void transform_b(int n, double b[n], double l, int i, int j)
{
    b[j] = b[j] - l*b[i];
}

void eliminate(int n, double a[n][n], double b[n], double x[n])
{
    int i,j;
    double m_ji;
    for (i = 0; i < n; i++){
        for (j = i + 1; j < n; j++){
            m_ji = a[j][i] / a[i][i];
            transform_a(n, a, m_ji, i, j);
            transform_b(n, b, m_ji, i, j);
        }
    }
}

/*
  Solve an upper-triangular square matrix representing a system of linear equations Ax = b
  n: the dimension of the matrix
  a: the matrix A
  b: the vector B
  c: the vector x
 */
void solve_trian(int n, double a[n][n], double b[n], double x[n]) 
{
  int i,k;
  for (i = n-1; i >= 0; i--)
    {
      x[i] = b[i];
      for (k = i + 1; k < n; k++)
        {
          x[i] -= a[i][k] * x[k];
        }
      x[i] /= a[i][i];
    }
}

void gaus_1(int n, double a[n][n], double b[n], double x[n])
{
    eliminate(n,a,b,x);
    solve_trian(n,a,b,x);
}


void inVector(int n, double vector[])
{
  int k;
  for (k = 0; k < n; k++)
    {
      scanf("%lf", &vector[k]);
    }
}

void inMatrix(int n, double matrix[n][n])
{
  int i, j;
  for (i = 0; i < n; i++)
    {
      inVector(n, matrix[i]);
    }
}

void outVector(int n, double vector[n])
{
  int k;
  printf("[");
  printf("%.8lf", vector[0]);
  for (k = 1; k < n; k++)
    {
      printf(", %.8lf", vector[k]);
    }
  puts("]");
}

void outMatrix(int n, double matrix[n][n]){
  int i, j;
  for (i = 0; i < n; i++)
    {
      outVector(n, matrix[i]);
    }
}


int main()
{
  printf("Input problem dimension: \n");
  int n;
  // Read dimension of array
  scanf("%d", &n);

  double a[n][n];
  double b[n];

  printf("input matrix A\n");
  inMatrix(n,a);
  printf("input vector b\n");
  inVector(n,b);

  double x[n];

  gaus_1(n,a,b,x);

  printf("vector x=\n");
  outVector(n,b);

  return 0;
}
