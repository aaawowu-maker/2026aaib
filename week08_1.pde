// week08-1 好玩的程式設計 氣球(圖片)
// File-Preference 字型設大 去找氣球照片 balloon.png 半透明圖

void setup() {
  size(500, 500); // 設定視窗大小為 500x500
  
  PImage img; // 圖片宣告 (要把 balloon.png 從檔案總管「拉到」程式裡)
  img = loadImage("balloon.png"); // 呼叫函式、讀入圖片
  
  // 第一個氣球：原始比例縮小顯示
  // image(圖, x, y, 寬, 高);
  image(img, 0, 0, 96, 132); // 看你的圖的大小，依比例調整，縮小
  
  // 第二個氣球：放置在第一個氣球旁邊，且放大兩倍
  image(img, 96, 0, 96*2, 132*2); // 兩倍大的氣球
}

void draw() {
  // 如果需要動畫效果可在此撰寫
}
