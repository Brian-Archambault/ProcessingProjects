int x = 500;      //100,213
int y = 500;
int delta = 1;
int z = 1;

void setup() {
 size(1000,1000); 
 background(0);
 fill(255,0,0);

}

void draw() {
 // noStroke();
 strokeWeight(0);
 //stroke(255,255,255);
 
 // background(255);
 if (x > width/2 && y > height/2) {
  rect(x,y,z,z);
  rect(height - y, width - x,z,z);
  rect(width - x,height-y,z,z);
  rect(x,height - y,z,z);
  rect(width - x,y,z,z);
  rect(height - y,x,z,z);
  rect(y,width - x,z,z);
  rect(y,x,z,z); }
  
  y = y + int(random(0,5));
  x = x + int(random(0,5));
  if (x > width/2) {x = x - 2;} else {x = x + 2;}
  if (y > height/2) {y = y - 2;} else {y = y + 2;}
  
  
  if (x > width) {x = 0; randomfill();}
  if (x < 0) {x = width; randomfill();}
  if (y < 0) {y = height-10; randomfill();}
  if (y > height) {y = 0; randomfill();}
  if (delta > 100) {delta = 0; randomfill();}
}

void randomfill() {
  fill(random(0,255),random(0,255),random(0,255));
}



void keyPressed() {
  
  if (key == CODED) {
    if (keyCode == UP) {
      y = y - delta;
    }
    if (keyCode == LEFT) {
      x = x - delta;
    }
    if (keyCode == RIGHT) {
      x = x + delta;
    }
    if (keyCode == DOWN) {
      y = y + delta;
    }
    delta = 8;
  }
  
  
}
