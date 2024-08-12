void setup() {
   size(screenWidth, screenHeight);
   background(0);
   textSize(16);  
   fill(255);       
}

void touchMove(TouchEvent touchEvent) {
   noStroke();
   fill(0);
   rect(0, 0, width, height);
   
   fill(100);
   for (int i = 0; i < touchEvent.touches.length; i++) {
      int x = touchEvent.touches[i].offsetX;
      int y = touchEvent.touches[i].offsetY;
      ellipse(x, y, 150, 150);

      
      fill(255);
      text("x: " + x + ", y: " + y, x + 80, y - 80);
   }
}
