int sec;
PImage[] images;
int N = 0;

void setup() {
  size(800, 1000);

  images = new PImage[5];
  images[0] = loadImage("Spiderman.jpg");
  images[1] = loadImage("Flower.jpg");
  images[2] = loadImage("Youtube.jpg");
  images[3] = loadImage("CityLogo.jpg");
  images[4] = loadImage("Java.jpg");
  images[0].resize(800, 800);
  images[1].resize(800, 800);
  images[2].resize(800, 800);
  images[3].resize(800, 800);
  images[4].resize(800, 800);

  frameRate(10);
}

void draw() {

  background(255);
  fill(0);  

  if (key == '1') {
    float circles = mouseX/20;
    float circleSize = width/circles;

    for (int x = 0; x < width; x++) {
      for (int y = 0; y < 79; y++) {

        noStroke();
        color c = images[N].get(x * int(circleSize), int (y * circleSize));
        float size = map(brightness(c), 0, 255, 20, 0);

        ellipse(x * circleSize, y * circleSize, size, size);
      }
    }
  }

  if (key == '2') {
    float circles = mouseX/10;
    float circleSize = width/circles;

    for (int x = 0; x < width; x ++) {
      for (int y = 0; y < 79; y++) {

        noStroke();
        color c = images[N].get(x * int(circleSize), int (y * circleSize));
        float size = map(c, 0, 255, 10, 10);
        fill(c);

        ellipse(x * circleSize, y * circleSize, size, size);
      }
    }
  }

  if (key == '3') {
    float rects= mouseX/10;
    float rectSize = width/rects;

    for (int x = 0; x < width; x++) {
      for (int y = 0; y < height; y++) {

        noStroke();
        color c = images[N].get(x * int(rectSize), int (y * rectSize));
        float size = map(brightness(c), 0, 255, 15, 0);
        rect(x * rectSize, y * rectSize, size, size );
      }
    }
  }

  if (key == '4') {


    float rects= mouseX/10;
    float rectSize = width/rects;

    for (int x = 0; x < width; x++) {
      for (int y = 0; y < 79; y++) {

        noStroke();
        color c = images[N].get(x * int(rectSize), int (y * rectSize));
        fill(c);
        float size = map(c, 0, 255, 10, 0);
        rect(x * rectSize, y * rectSize, size, size );
      }
    }
  }

  fill(255);
  stroke(0, 0, 255);
  rect(0, 800, 800, 200); // backgound (hide all shapes that are not inside of a 800,800)

  if (key == 'g') 
  { 
    float rects= random(700, 800)/10;
    float rectSize = width/rects;

    for (int x = 0; x < width; x++) 
    {
      for (int y = 0; y < random(79); y++) 
      {
       
        noStroke();
        color c = images[3].get(x * int(rectSize), int (y * rectSize));
        fill(c);
        float size = map(c, 0, 255, 10, 0);
        rect(x * rectSize, y * rectSize, size, size );
     
      }

      gameLayout("University", "City Uni logo", "Java logo" , "#TeamRadu");

      if (mouseY > 850 && mouseX < 350  &&  mouseY < 900 && mouseX > 100 && mousePressed == true) {
        fill(255, 0, 0);
        rect(100, 850, 250, 50);
      } else if (mouseY > 850 && mouseX < 700  &&  mouseY < 900 && mouseX > 450 && mousePressed == true) {
        fill(0, 255, 0);
        rect(450, 850, 250, 50);
      } else if (mouseY > 920 && mouseX < 350  &&  mouseY < 970 && mouseX > 100 && mousePressed == true) {
        fill(255, 0, 0);
        rect(100, 920, 250, 50);
      } else if (mouseY > 920 && mouseX < 700  &&  mouseY < 970 && mouseX > 450 && mousePressed == true) {
        fill(255, 0, 0);
        rect(450, 920, 250, 50);
      }
    }
  }
}
void mousePressed() {
  if (dist(0, 0, mouseX, mouseY) < 1000) {
    if (N < 4) {
      N++;
    } else {
      N =0;
    }
  }
}

void gameLayout( String x, String x1, String x2, String x3) {
  fill(255);
  stroke(0, 0, 255);
  rect(0, 800, 800, 200); // backgound


  rect(100, 850, 250, 50); // botton upleft
  rect(450, 850, 250, 50); // botton uprigt
  rect(100, 920, 250, 50); // botton downleft
  rect(450, 920, 250, 50); // botton downleft


  fill(0);
  textSize(30);
  text(x, 170, 885);
  text(x1, 470, 885);
  text(x2, 170, 955);
  text(x3, 470, 955);
}
