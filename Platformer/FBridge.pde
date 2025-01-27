class FBridge extends FGameObject {
  FBridge(float x, float y) {
    super();
    setPosition (x, y);
    setName ("LB");
    attachImage(lb);
    setStatic (true);
  }

  void act () {
    if (isTouching("player")) {
      setStatic (false);
      setSensor(true) ;
    }
  }
}
