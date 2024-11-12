
ArrayList<Cokroach> coks;
PImage img;
SoundFile soundFX; 
int lastSpawnTime = 0; 
int spawnInterval = 5000; 
void setup() {
  size(800, 800);
  coks = new ArrayList<Cokroach>();
  img = loadImage("kecoa.png");
  soundFX = new SoundFile(this, "duar.mp3"); 
}

void draw() {
  background(255);

  
  if (millis() - lastSpawnTime > spawnInterval) {
    float randomX = random(width);
    float randomY = random(height);
    coks.add(new Cokroach(img, randomX, randomY));
    lastSpawnTime = millis(); 
  }

 
  for(Cokroach c : coks) {
    c.live();
  }

  
  fill(51);
  textSize(16);
  text("nums: " + coks.size(), 50, 750); 
}
