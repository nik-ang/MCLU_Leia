
class LED_Light
{
  public boolean is_on = false;
  public int[] LED_RGB;
  
  LED_Light()
  {
    this.LED_RGB = new int[3];
    set_color(255, 255, 255);
  }
  
  public void set_color(int r, int g, int b)
  {
    this.LED_RGB[0] = r;
    this.LED_RGB[1] = g;
    this.LED_RGB[2] = b;
  }
  
  public void set_color(int[] rgb)
  {
    for (int i = 0; i < 3; i++)
    {
      this.LED_RGB[i] = rgb[i];
    }
  }
    
  public void display(int size)
  {
    fill(color(LED_RGB[0], LED_RGB[1], LED_RGB[2]));
    stroke(120);
    box(size);
    
  }
    
}
