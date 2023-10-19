public interface Visitor {
  void visitRectangle(Rectangle rect);
  void visitTriangle(Triangle tri);
}

///// RendererVisitor

public class RendererVisitor implements Visitor {
  public void visitRectangle(Rectangle rect) {
    colorMode(HSB, 255, 100, 100);

    noStroke();
    fill(random(190, 220), random(86, 100), random(86, 100));

    rectMode(CENTER);
    rect(rect.position.x, rect.position.y, rect.width, rect.height);
  }

  public void visitTriangle(Triangle tri) {
    colorMode(HSB, 255, 100, 100);

    noStroke();
    fill(random(40), random(86, 100), random(86, 100));

    PVector dir = tri.velocity.normalize(null);

    PVector a = PVector.add(PVector.mult(dir, tri.size), tri.position);
    PVector b = PVector.add(PVector.mult(new PVector(-dir.y, dir.x), tri.size / 2.0), tri.position);
    PVector c = PVector.add(PVector.mult(new PVector(dir.y, -dir.x), tri.size / 2.0), tri.position);

    beginShape();
    vertex(a.x, a.y);
    vertex(b.x, b.y);
    vertex(c.x, c.y);
    endShape(CLOSE);
  }
}
