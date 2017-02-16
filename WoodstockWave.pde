//Patrick Potter
//2/16/17
//Woodstock Wave
int count;
int num = 40; //number of circles
int r = 255;
float arcStart= PI;
float arcEnd = TWO_PI;
float maxArcEnd = TWO_PI;
float movement = 0.0;
float speed = PI/2000; // speed of wave
void setup()
{
  size(500, 500);
  noFill();
}
void draw()
{
  count = 0;
  background(14, 57, 26);
  stroke(r);
  while (count <= num) {
    int i = count * 10; // amount of spaces between
    arcEnd = map(sin(movement + (maxArcEnd / num * count)), -1, 1, arcStart, maxArcEnd);
    arc(width/2, height/2, i, i, arcStart, arcEnd);
    count = count + 1;
    movement = movement + speed;
  }
}
