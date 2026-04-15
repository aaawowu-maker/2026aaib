// week08-4 很多會飛的氣球
// 修改自 week08-3 會飛的氣球

PImage img; // 圖片宣告 (要再拉一次 balloon.png 到程式裡)
float []x = new float[100]; // Java 的陣列，儲存 100 顆氣球的 x 座標
float []y = new float[100]; // 儲存 100 顆氣球的 y 座標
float []s = new float[100]; // 儲存 100 顆氣球的大小倍率
int N = 0; // 現在畫面上已經有多少個氣球
float s2 = 0.1; // 正在「充氣中」的那顆氣球的大小

void setup() {
  size(500, 500); // 視窗大小
  img = loadImage("balloon.png"); // 讀入圖片
}

void draw() {
  background(255); // 白色背景
  
  if (mousePressed) {
    s2 *= 1.05; // 氣球越乘越大 (這裡改為 1.05 倍，速度較慢好控制)
    // 繪製正在充氣中的氣球
    image(img, mouseX-(96*s2)/2, mouseY-(132*s2), 96*s2, 132*s2);
  } else {
    s2 = 0.1; // 沒按滑鼠時，將充氣倍率重設回 0.1，準備下一顆
  }
  
  // 利用 for 迴圈畫出所有已經放手的氣球
  for (int i=0; i<N; i++) { 
    image(img, x[i], y[i], 96 * s[i], 132 * s[i]);
    if (y[i] > -200) y[i] -= 1; // 如果氣球還沒飛出視窗太遠，就持續往上飄
  }
}

// 注意，要再拉一次 balloon.png 到程式裡

void mouseReleased() {
  // 當滑鼠放開時，把這顆氣球的資料存入陣列的第 N 個位置
  s[N] = s2; 
  x[N] = mouseX - (96*s2)/2; 
  y[N] = mouseY - (132*s2);
  N++; // 氣球數量加 1，下次放手就會存到下一個格子
}
