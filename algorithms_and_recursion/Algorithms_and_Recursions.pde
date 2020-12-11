IntList pillars;
int index = 1;

void setup() {
  size(500, 500);
  background(110);
  fill(255);
  pillars = new IntList();
  totalPillars(pillars);
  //shuffled(0, pillars);
  drawPillars(0,pillars);
  println(pillars);
  
}

void draw(){
}

void keyPressed(){
}


void totalPillars(IntList p) {
  if (p.size()<10) {
    p.append(p.size()*50);
    totalPillars(p);
  }
}

void drawPillars(int a, IntList p){
  p.shuffle();
  rect(p.get(a),height,50,(p.get(a)*-1)-50);
   if (a<9) {
     drawPillars(a+1,p);
   }
}

/*IntList shuffled(int in, IntList p){
  int a;
  int s = int (random(in+1,10));
  
  if(in<9){
    
  }
}*/
