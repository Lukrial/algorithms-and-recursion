IntList pillars;
int index = 1;

void setup(){
  size(500,500);
  pillars = new IntList(10);
  totalPillars(pillars);
  println(pillars);
}

void draw(){
}

void totalPillars(IntList p){
  if(p.size()<10){
    p.append(p.size()*50);
    totalPillars(p);
  }
}

void drawPillars(IntList p){
  if(p.size()<10){
  }
}

void keyPressed(){
  
}
