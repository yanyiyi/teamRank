PImage[] imgNum = new PImage[10];
PImage[] imgRank = new PImage[10];
int[] imgRankNum = new int[10];
int[] imgRankNumTemp = new int[10];
String answer;
int moveX;
int mainHeight,mainWidth;
int swiftX,swiftY;

void setup(){
    frameRate(30);
    //fullScreen();
    size(1440,900);
    for(int i = 0; i < 10; i++){
    int j = i + 1;
    imgNum[i] = loadImage("n"+ j +".png");
    imgRank[i] = loadImage(j +".png");
    imgRankNum[i]= i;
    imgRankNumTemp[i]= i;
  }
  background(50);
  mainHeight = height/10;
  mainWidth = mainHeight*3;
}

void draw(){
  background(50);
  for(int k = 0; k< 10 ; k++){
   for(int i = 0; i < 10; i++){
      if( imgRankNumTemp[k] != i) tint(255,60);
      image(imgRank[i],i*mainWidth/3,k*mainHeight,mainWidth/3,mainHeight/3);
      noTint();
    }
  } ///// Display Select Zone

  for(int i = 0; i < 10; i++){
    image(imgRank[imgRankNum[i]],width-mainWidth,i*mainHeight,mainWidth,mainHeight);
    image(imgRank[imgRankNumTemp[i]],mainWidth/3*10,i*mainHeight,mainWidth/2,mainHeight/2);
    image(imgNum[i],width-mainWidth,i*mainHeight,mainWidth,mainHeight);
  } 
}
  float sX; 
  float sY;
  
void mouseClicked() {
     sX = (mouseX) / (mainWidth / 3);
     sY = (mouseY) / mainHeight;
     println("No"+ sY+1 + ":" + sX);
     println("No"+ int(sY+1) + ":" + int(sX));
     image(imgRank[int(sX)],mainWidth/3*10,int(sY)*mainHeight,mainWidth/2,mainHeight/2);
     for(int i = 0; i < 10; i++) if(imgRankNumTemp[i] == int(sX)) imgRankNumTemp[i] = imgRankNumTemp[int(sY)];
     imgRankNumTemp[int(sY)] = int(sX);
}

void keyPressed()
{  
  if ( key == ENTER ) {
          for(int i = 0; i < 10; i++){
            imgRankNum[i]= imgRankNumTemp[i];
            image(imgRank[imgRankNum[i]],width-mainWidth,i*mainHeight,mainWidth,mainHeight);
            image(imgNum[i],width-mainWidth,i*mainHeight,mainWidth,mainHeight);
          }
    }
}