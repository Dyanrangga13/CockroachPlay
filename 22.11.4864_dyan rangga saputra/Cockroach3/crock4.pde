
void mouseClicked() {
  if(mouseButton == LEFT) {
    boolean hit = false;
    
    
    for(int i = coks.size() - 1; i >= 0; i--) {
      if(coks.get(i).isHit(mouseX, mouseY)) {
        coks.remove(i);
        hit = true;
      }
    }
    
    // Mainkan efek suara hanya jika ada Cocroach yang terkena
    if (hit) {
      soundFX.play();
    }
  }
}
