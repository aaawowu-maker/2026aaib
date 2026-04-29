// week10-5.cpp SOIT106_ADVANCE_001
#include <stdio.h>

int main()
{
    int N;
    scanf("%d", &N); // 輸入一個數字 N

    int ans = 0, N2 = N; // ans 用來存反轉後的數字，N2 用來備份原始數字

    while ( N > 0 ) {
        // printf("%d", N % 10 ); // (被註解掉) 測試印出個位數

        // 反轉邏輯：原本的結果乘以 10 往左移一位，再加上 N 的個位數
        ans = ans * 10 + N % 10;

        // printf("N:%d ans:%d\n", N, ans); // (被註解掉) 觀察過程

        N = N / 10; // 去掉 N 的最後一位數字
    }

    // 印出結果：原數字 + 反轉數字 = 總和
    printf("%d+%d=%d\n", N2, ans, N2 + ans);

    return 0;
}
