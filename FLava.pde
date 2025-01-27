class FLava extends FGameObject {

  int frame1;
  
  FLava(float x, float y) {
    super();
    setPosition (x, y);
    setName ("lava");
    setStatic (true);
  }


  void act () {
    if(frameCount % 8 == 0) show();
  }
  void show(){
    attachImage(gif[frame1]);
    frame1++;
    if (frame1 == numberOfFrames) frame1 = 0;
  }
} 
