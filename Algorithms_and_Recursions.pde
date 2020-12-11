IntList pillars;
int index = 1;

void setup() {
  size(500, 500);
  background(110);
  fill(255);
  pillars = new IntList();
  totalPillars(pillars);
  shuffled(pillars);
  drawPillars(0, pillars);
}

void draw() {
}

void keyPressed() {
}


void totalPillars(IntList p) {
  if (p.size()<10) {
    p.append(p.size()*50);
    totalPillars(p);
  }
}

void shuffled(IntList p) {
  p.shuffle();
}

void drawPillars(int a, IntList p) {
  println(pillars);
  rect(a*50, height, 50, (p.get(a)*-1)-50);
  if (a<9) {
    drawPillars(a+1, p);
  }
}
