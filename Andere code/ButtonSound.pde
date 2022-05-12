import processing.serial.*;
import ddf.minim.*;
 
Serial myPort;
Minim minim;
AudioPlayer player;
byte arbitraryCode = 97;
 
void setup()
{
  myPort = new Serial(this, Serial.list() [0], 9600);
  minim = new Minim(this);
  
  player = minim.loadFile("laser.wav");
}
 
void draw() {
  while (myPort.available() > 0) {
    int inByte = myPort.read();
    if (inByte == arbitraryCode) {
      player.rewind();
      player.play();
    }
  }
}
