public abstract class Particle {
  public PVector position;
  public PVector velocity;

  public abstract void accept(Visitor visit);

  public Particle(PVector position, PVector velocity) {
    this.position = position;
    this.velocity = velocity;
  }
}

///// Rectangle

public class Rectangle extends Particle {
  public float width;
  public float height;

  public Rectangle(PVector position, PVector velocity, float width, float height) {
    super(position, velocity);

    this.width = width;
    this.height = height;
  }

  public void accept(Visitor visitor) {
    visitor.visitRectangle(this);
  }
}

///// Triangle

public class Triangle extends Particle {
  public float size;

  public Triangle(PVector position, PVector velocity, float size) {
    super(position, velocity);

    this.size = size;
  }

  public void accept(Visitor visitor) {
    visitor.visitTriangle(this);
  }
}
