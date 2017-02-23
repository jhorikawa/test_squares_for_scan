int numSquares = 30;
float minSize = 200f;
float maxSize = 300f;

ArrayList<PVector> positions;

void setup(){
  fullScreen();
  
  refresh();
}

void draw(){
  
}

void mousePressed(){
  
}

void keyReleased(){
  if(key == CODED){
    if(keyCode == ESC){
      exit();
    }
  }
  
  if(key == 'r' || key == 'R'){
    refresh();
  }
}

void refresh(){
  background(255);
  
  ArrayList<PVector> positions = new ArrayList<PVector>();
  
  for(int i=0; i<numSquares; i++){
    fill(220);
    noStroke();
    
    boolean doAdd = true;
    PVector newPos = new PVector(random(width - maxSize), random(height - maxSize));
    for(int n=0; n<positions.size(); n++){
      PVector pastPos = positions.get(n);
      
      float dist = newPos.dist(pastPos);
      if(dist < maxSize){
        doAdd = false;
        break;
      }
    }
    
    if(doAdd){
      rect(newPos.x,newPos.y,random(minSize,maxSize), random(minSize, maxSize));
      positions.add(newPos);
    }
    
  }
}