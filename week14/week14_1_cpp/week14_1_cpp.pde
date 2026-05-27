// week14-1 好玩的打地鼠，結合 week13-1 week10-1
// 修改自 week13-1 再加上 week10-1 的 void mousePressed()
// File -> Preferences 字型放大一些
PImage img; // 外面宣告變數 (可讓別人裡面使用)
void setup() { // 設定
  size(300, 400); // 視窗大小
  img = loadImage("gopher.png"); // 把 gopher.png 圖檔 拉到程式裡
}

void mousePressed() {
  int i = mouseY / 100, j = mouseX / 100; // 左手 i 對 Y 座標, 右手 j 對 X 座標
  if (a[i][j] > 0) { // 如果地鼠還在
    a[i][j] = -120; // 放 2 秒的大叉叉 (-120 幀 = 2 秒)
  }
}

int [][] a = { {0, 0, 0}, {0, 0, 0}, {0, 0, 0} }; // 地鼠有沒有冒出來
void draw() {
  background(#FFFFFF); // 淡黃色背景
  fill(#FFFFF2);
  if (frameCount % 60 == 0) { // 每 60 frames (1秒) 冒出一隻地鼠
    int i = int(random(3)), j = int(random(3));
    a[i][j] = 60; // 由亂數決定地鼠，站起來 60 frames (1秒)
  }
  for (int i=0; i<3; i++) { // 左手 i
    for (int j=0; j<3; j++) { // 右手 j
      float x = j * 100, y = i * 100 + 100; // 推算座標，小心 y 在下 100 (留白色板台)
      // if (i==0 && j==0) y += mouseY; // 暫時實驗用的，看到畫面壞了
      if (a[i][j] > 0) { // 如果有地鼠
        a[i][j] -= 1; // 生命的倒數計時
        y = y - 100 * sin(a[i][j] * PI / 60); // 小心 y 對應 sin()
        image(img, x, y, 100, 100);
      }
      else if (a[i][j] < 0) { // 死掉的地鼠 (被打中)
        y = 100; // 固定在原本的高度 (或代表你的聰明設定)
        rect(x, y, 100, 100);
        line(x, y, x + 100, y + 100); // 畫大叉叉的第一條線
        line(x + 100, y, x, y + 100); // 畫大叉叉的第二條線
        a[i][j] += 1; // 負數慢慢加回 0
      }
    }
  }
}
