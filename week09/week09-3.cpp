//week09-3
#include <stdio.h>

int main()
{
    int a[10];

    // 1. 輸入階段：讀取 10 個整數
    for (int i=0; i<10; i++) {
        scanf("%d", &a[i]);
    }

    // 2. 排序階段：Here!!! You will learn today
    for (int k=0; k<10; k++) {          // 外層迴圈 k
        for (int i=0; i<10-1; i++) {    // 內層迴圈 i (注意上限是 10-1)

            // 如果前一個比後一個小，就進行交換 (大到小排序)
            if (a[i] < a[i+1]) {
                int temp = a[i];       // (綠圈) 先把 a[i] 存入暫存區 temp
                a[i] = a[i+1];         // (藍圈) 把較大的 a[i+1] 覆蓋到 a[i]
                a[i+1] = temp;         // (紅圈) 把暫存的 temp 放回 a[i+1]
            }
        }
    }

    // 3. 輸出階段：列印排序後的結果
    for (int i=0; i<10; i++) {
        printf("%d ", a[i]);
    }

    return 0;
}
