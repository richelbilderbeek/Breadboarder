PImage plaatje;

PVector x;

void draw_horizontal(final float y)
{
  //There are ten series
  for (int j=0; j != 10; ++j)
  {
    final float x_offset = 24.0 + ((float)j * 43.1);
    //Series of five
    for (int i = 0; i != 5; ++i)
    {
      final float x = x_offset + ((float)i * 7.5);
      ellipse(x, y, 6, 6);
    }
  }
}

void draw_vertical(final float y_offset)
{
  //There are 65 series
  for (int j=0; j != 65; ++j)
  {
    final float x = 10.0 + ((float)j * 6.96);
    //Series of five
    for (int i = 0; i != 5; ++i)
    {
      //35
      final float y = y_offset + ((float)i * 7.5);
      ellipse(x, y, 6, 6);
    }
  }
}

void draw_lower_ground()
{
  draw_horizontal(137.0);   
}

void draw_lower_power()
{
  draw_horizontal(143.0);
}

void draw_upper_power()
{
  draw_horizontal(7.0);
}

void draw_upper_ground()
{
  draw_horizontal(13.0);   
}



void setup() {
  size(468, 151);
  plaatje = loadImage("Breadboard2.png");
}

void draw() {
  background(0);
  image(plaatje, 0, 0);
  draw_lower_ground();
  draw_lower_power();
  draw_upper_ground();
  draw_upper_power();
  draw_vertical(35.0);
  draw_vertical(85.0);
}