ArrayList<Particle> particles = new ArrayList<Particle>();

RendererVisitor renderer = new RendererVisitor();

PVector getRandomPosition() {
  return new PVector(random(width), random(height));
}

Rectangle createRandomRectangle() {
  PVector position = getRandomPosition();
  PVector velocity = new PVector();
  
  return new Rectangle(position, velocity, random(12, 22), random(12, 22));
}

Triangle createRandomTriangle() {
  PVector position = getRandomPosition();
  PVector velocity = PVector.mult(PVector.random2D(), random(1.5, 3.0));
  
  return new Triangle(position, velocity, random(6, 20));
}

void setup() {
  size(800, 800);

  // Init the particles
  for (int i = 0; i < 100; i++) {
    particles.add(createRandomRectangle());
    particles.add(createRandomTriangle());
  }
}

void draw() {
  background(255);

  randomSeed(10000);

  // Render the particles
  for (Particle part : particles) {
    part.accept(renderer);
  }
}
