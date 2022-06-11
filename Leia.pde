
class Leia
{
  
  private PVector position;
  private LED_Light[][][] LED_Grid;
  private int LED_distance;
  private int LED_box_size;

 
  private Player player;
  

  Leia()
  {
    this.LED_Grid = new LED_Light[8][8][8];
    for (int i = 0; i < 8; i++)
      for (int j = 0; j < 8; j++)
        for (int k = 0; k < 8; k++)
          this.LED_Grid[i][j][k] = new LED_Light();
    
    this.LED_distance = 40;
    this.LED_box_size = 20;

    this.position = new PVector();
    this.position.x = width/2;
    this.position.y = height/2;
    this.position.z = 0;
    
    this.player = new Player();
  }
  
  public void reset_grid()
  {
    for (int i = 0; i < 8; i++)
      for (int j = 0; j < 8; j++)
        for (int k = 0; k < 8; k++)
          this.LED_Grid[i][j][k].is_on = false;
  }

  public void display_player()
  {
    int[] player_color = {255, 0, 255}; 
    //center
    this.LED_Grid[this.player.position[0]][this.player.position[1]][0].is_on = true;
    this.LED_Grid[this.player.position[0]][this.player.position[1]][0].set_color(player_color);
    
    //sides
    this.LED_Grid[this.player.position[0] + 1][this.player.position[1]][0].is_on = true;
    this.LED_Grid[this.player.position[0] + 1][this.player.position[1]][0].set_color(player_color);
    this.LED_Grid[this.player.position[0] - 1][this.player.position[1]][0].is_on = true;
    this.LED_Grid[this.player.position[0] - 1][this.player.position[1]][0].set_color(player_color);
    
    //up and down
    this.LED_Grid[this.player.position[0]][this.player.position[1] + 1][0].is_on = true;
    this.LED_Grid[this.player.position[0]][this.player.position[1] + 1][0].set_color(player_color);
    this.LED_Grid[this.player.position[0]][this.player.position[1] - 1][0].is_on = true;
    this.LED_Grid[this.player.position[0]][this.player.position[1] - 1][0].set_color(player_color);
    
  }
  


  public void display()
  {
    translate(4 * LED_distance,  - 4 * LED_distance, 3 * LED_distance);
    noFill();
    stroke(255);
    box(8 * this.LED_distance);
    translate(- 4 * LED_distance, 4 * LED_distance, - 3 * LED_distance);
    
    reset_grid();
    
    display_player();
    
    for (int i = 0; i < 8; i ++)
    {
      for (int j = 0; j < 8; j++)
      {
        for (int k = 0; k < 8; k++)
        {
          if (LED_Grid[i][j][k].is_on)
          {
            LED_Grid[i][j][k].display(this.LED_box_size);
          }
          translate(0, 0, this.LED_distance);
        }
        translate(0, - this.LED_distance, - 8 * this.LED_distance);
      }
      translate(this.LED_distance, 8 * this.LED_distance, 0);
    }
  }

  public void putPixel(int[] coordinates)
  {
    
  }
}
