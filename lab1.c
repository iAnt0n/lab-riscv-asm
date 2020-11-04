
#include <stdio.h>

#define M 2
#define N 4

int sum_of_positive(int m, int n, int matrix[m][n]) {
    int sum = 0;
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            int current = matrix[i][j];
            if (current >= 0) {
                sum = sum+current;
            }
        }
    }
    return sum;
}

void fill_matrix(int m, int n, int matrix[m][n]) {
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            scanf("%d", &matrix[i][j]);
        }
    }
}


int main() {
    int matrix[M][N];
    fill_matrix(M, N, matrix);
    printf("%d\n", sum_of_positive(M, N, matrix));
    return 0;
}
