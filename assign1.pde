PImage bg1Img;
PImage bg2Img;
PImage enemyImg;
PImage fighterImg;
PImage hpImg;
PImage treasureImg;
int x, y, z, w, h, d, k, g;

void setup () {
  size(640,480) ; 
  bg1Img =loadImage("img/bg1.png");
  bg2Img =loadImage("img/bg2.png");
  enemyImg =loadImage("img/enemy.png");
  fighterImg =loadImage("img/fighter.png");
  hpImg =loadImage("img/hp.png");
  treasureImg =loadImage("img/treasure.png");
  x =0;
  y =floor(random(389));
  z =floor(random(389));
  w =floor(random(200));
  h =floor(random(389));
  d =floor(random(599));
  k =0; 
}

void draw() {
  background(255);
  x +=3;
  x %=640;
  k +=1;
  k %=1280;
  image(bg2Img,k+640,0);
  image(bg1Img,k,0);
  image(bg2Img,k-640,0);
  image(bg1Img,k-1280,0);
  image(enemyImg,x,y+30);
  image(fighterImg,589,z+30);
  image(treasureImg,d,h+30);
  colorMode(RGB);
  fill(255,0,0);
  rect(6,0,w,28);
  image(hpImg,0,0);
  
}
