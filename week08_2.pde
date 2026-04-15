// week08-2 會跟著 mouse 移動的氣球
// Ctrl-N 新視窗

PImage img; // 圖片宣告 (要再拉一次 balloon.png 到程式裡)
int x, y;   // 變數宣告，用來存儲氣球的座標

void setup() {
  size(500, 500); // 視窗大小
  img = loadImage("balloon.png"); // 讀入圖片
}

void draw() {
  background(255); // 白色背景 (如果不加這行，氣球移動會留下殘影)
  
  // 計算座標，讓滑鼠大致位在氣球的中心或底部位置
  x = mouseX - 96/2; // x 座標 (變數設定)
  y = mouseY - 132;   // y 座標
  
  // 照著座標畫氣球
  image(img, x, y, 96, 132); 
  
  // 另一種直接寫法：
  // image(img, mouseX-96/2, mouseY-132, 96, 132); // 跟著 mouse 跑的氣球
}

// 注意，要再拉一次 balloon.png 到程式裡
