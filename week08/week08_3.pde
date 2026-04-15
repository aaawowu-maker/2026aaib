// week08-3 會飛的氣球
// 修改自 week08-2 會跟著 mouse 移動的氣球

PImage img; // 圖片宣告 (要再拉一次 balloon.png 到程式裡)
float x, y; // 變數宣告
float s = 0.1; // 氣球的大小倍率

void setup() {
  size(500, 500); // 視窗大小
  img = loadImage("balloon.png"); // 讀入圖片
}

void draw() {
  background(255); // 白色背景
  
  if (mousePressed) {
    s *= 1.1; // 按住滑鼠時，氣球會不斷變大
    // 讓氣球跟著滑鼠跑
    image(img, mouseX - (96*s)/2, mouseY - (132*s), 96*s, 132*s);
  } else {
    // 放開滑鼠後，氣球依照最後記錄的座標繪製，並保持變大後的大小
    image(img, x, y, 96*s, 132*s); 
    y--; // 關鍵：讓 y 座標不斷減少，氣球就會往上飛走
  }
}

// 注意，要再拉一次 balloon.png 到程式裡

void mouseReleased() {
  // 當滑鼠放開的那一瞬間，記錄下當時氣球的座標位置
  x = mouseX - (96*s)/2; // x 座標 (變數設定)
  y = mouseY - (132*s);   // y 座標
}
