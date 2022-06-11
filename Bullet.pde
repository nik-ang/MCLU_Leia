class Bullet
{
  private int[] position; //x, y, z
  public boolean shot = false;

  public void update()
  {
    if (this.shot)
    {
      if (this.position[2] < 7)
        this.position[2]++;
      else
        this.shot = false;
    }
  }
}
