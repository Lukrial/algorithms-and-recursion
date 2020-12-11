IntList pillars;
int index = 1;

void setup() {
  size(500, 500);
  background(110);
  fill(255);
  pillars = new IntList();
  totalPillars(pillars);
  shuffleList(pillars);
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

public static void shuffleList(IntList p) { //first part of shuffle function
  int n = p.size();
  Random random = new Random();
  random.nextInt();
  for (int i = 0; i < n; i++) {
    int change = i + random.nextInt(n - i);
    swap(p, i, change);
  }
}

private static void swap(IntList p, int i, int change) { //second part of shuffle function
  int helper = p.get(i);
  p.set(i, p.get(change));
  p.set(change, helper);
}

void drawPillars(int a, IntList p) {
  println(pillars);
  rect(a*50, height, 50, (p.get(a)*-1)-50);
  if (a<9) {
    drawPillars(a+1, p);
  }
}
