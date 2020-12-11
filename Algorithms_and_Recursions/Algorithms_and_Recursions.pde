IntList pillars;

void setup() {
  size(500, 500);
  background(110);
  fill(255);
  pillars = new IntList();
  totalPillars(pillars);
  pillars=shuffled(pillars,0);
}

void draw() {
  clear();
  drawPillars(0, pillars);
  pillars=sortingHat(pillars);
}

void keyPressed() {
  
}


void totalPillars(IntList p) {
  if (p.size()<10) {
    p.append(p.size()*50);
    totalPillars(p);
  }
}

IntList shuffled(IntList p, int index) {
  int r = (int) random(0,p.size());
  IntList r2 = new IntList();
  r2.append(p);
  int indexValue = p.get(index);
  r2.set(r,indexValue);
  r2.set(index, p.get(r));
  index++;
  if(p.size()>index){
    return shuffled(r2,index);
  } else {
    return r2;
  }
}

void drawPillars(int a, IntList p) {
  rect(a*50, height, 50, (p.get(a)*-1)-50);
  if (a<9) {
    drawPillars(a+1, p);
  }
}

IntList sortingHat(IntList p){
  if(p.size()==2){
    if(p.get(0)>p.get(1)){
      int largest = p.get(0);    
      p.remove(0);
      p.append(largest);
  }
    return p;
  } else {
    IntList p2;
    p2 = new IntList();
    p2=p.copy();
    int first = p.get(0);
    p2.remove(0);
    p2=sortingHat(p2);
    if(first<p2.get(0)){
      IntList p3;
      p3 = new IntList();
      p3.append(first);
      p3.append(p2);
      p=p3;
    } else {
      IntList p3;
      p3 = new IntList();
      p3.append(p2);
      p3.append(first);
      p=sortingHat(p3);
    }
    return p;
  }
}
