// week10-4.cpp A035
#include <stdio.h>

int main()
{
    int a[100];

    // 第一步：讀取 100 個整數
    for (int i = 0; i < 100; i++) {
        scanf("%d", &a[i]);
    }

    // 第二步：選擇排序法 (Selection Sort)
    for (int i = 0; i < 100; i++) {
        for (int j = i + 1; j < 100; j++) {
            if (a[i] > a[j]) { // 如果左邊比右邊大，就交換（從小到大排序）
                int temp = a[i];
                a[i] = a[j];
                a[j] = temp;
            }
        }
    }

    // 第三步：印出結果，並控制每 10 個數字換一行
    for (int i = 0; i < 100; i++) {
        printf(" %d", a[i]);
        // 如果印到第 10, 20... 個數字（索引為 9, 19...），就換行
        // 但最後一個數字 (i=99) 之後不需要多加一個換行（視題目需求而定）
        if (i % 10 == 9 && i != 99) printf("\n");
    }

    return 0;
}
