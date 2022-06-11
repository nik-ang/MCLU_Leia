
Leia leia = new Leia();

void setup() {
  size(1500, 900, P3D);
  lights();
  frameRate(20);
  background(0);

  //camera(width/2, height/2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  //camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);


  for (int i = 0; i < 8; i++)
    for (int j = 0; j < 8; j++)
      for (int k = 0; k < 8; k++)
      {
        leia.LED_Grid[i][j][k].is_on = true;
        leia.LED_Grid[i][j][k].set_color(255, 255, 255);
      }
}

void keyTyped()
{
  if (key == 'd' || key == 'D')
    if (leia.player.position[0] < 6) leia.player.position[0]++;

  if (key == 'a' || key == 'A')
    if (leia.player.position[0] > 2) leia.player.position[0]--;

  if (key == 'w' || key == 'W')
    if (leia.player.position[1] < 6) leia.player.position[1]++;

  if (key == 's' || key == 'S')
    if (leia.player.position[1] > 2) leia.player.position[1]--;
}

//Interrupthandler
void draw() {
  background(0);
  //camera(600, 600, 500, leia.position.x + 4 * leia.LED_distance, leia.position.y + 4 * leia.LED_distance, leia.position.z, 0, 0, -1);
  camera(600 + mouseX, 600 + mouseY, 500, leia.position.x + 4 * leia.LED_distance, leia.position.y + 4 * leia.LED_distance, leia.position.z, 0, 0, -1);
  leia.display();
}
