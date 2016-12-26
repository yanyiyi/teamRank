PImage[] imgNum = new PImage[10];
PImage[] imgRank = new PImage[10];
int[] imgRankNum = new int[10];
int[] imgRankNumTemp = new int[10];
String answer;
void setup(){
  fullScreen();
  for(int i = 0; i < 10; i++){
  int j = i + 1;
  imgNum[i] = loadImage("n"+ j +".png");
  imgRank[i] = loadImage(j +".png");
  imgRankNum[i]= i;
  }
  background(50);
}

void draw(){
    background(50);
  for(int k = 0; k< 10 ; k++){
   for(int i = 0; i < 10; i++){
      int j = i + 1;
      if( imgRankNumTemp[k] != i) tint(255,60);
      image(imgRank[i],20+i*120,33+k*100,100,33);
      noTint();
    }
  } ///// Display Select Zone
  
  
  
  for(int i = 0; i < 10; i++){
    int j = i + 1;
    image(imgRank[imgRankNum[i]],width-300,i*100);
    image(imgRank[imgRankNumTemp[i]],120*10+20,20+i*100,150,50);
    
  }
  
  for(int i = 0; i < 10; i++){
    int j = i + 1;
    image(imgNum[i],width-295,i*100);
  }

}
  float sX; 
  float sY;  
void mouseClicked() {
     sX = (mouseX-20) / 120;
     sY = (mouseY-33) / 100;
    println("No"+ int(sY+1) + ":" + int(sX));
    image(imgRank[int(sX)],120*10+20,20+int(sY)*100,150,50);
    imgRankNumTemp[int(sY)] = int(sX);
}


void keyPressed()
{
  
  
  if ( key == ENTER ) {
    
          for(int i = 0; i < 10; i++){
           imgRankNum[i]= imgRankNumTemp[i];
            int j = i + 1;
            image(imgRank[imgRankNum[i]],width-300,i*100);
  }
  
   for(int i = 0; i < 10; i++){
    int j = i + 1;
      image(imgNum[i],width-295,i*100);
    } 
    
    
  }
}