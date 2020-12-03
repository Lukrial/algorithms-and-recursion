IntList pillars;
int index = 1;

void setup() {
  size(500, 500);
  background(0);
  fill(255);
  pillars = new IntList(10);
  totalPillars(pillars);
  drawPillars(0,pillars);
  println(pillars);
}

void draw() {
}

void totalPillars(IntList p) {
  if (p.size()<10) {
    p.append(p.size()*50);
    totalPillars(p);
  }
}

void drawPillars(int a, IntList p) {
  rect(p.get(a), height, 50, (p.get(a)*-1)-50);
  if (a<9) {
    drawPillars(a+1,p);
  }
}

void keyPressed() {
}
