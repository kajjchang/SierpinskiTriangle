public void setup() {
	size(500, 500);
	noStroke();
	sierpinski(width / 2, height / 2, Math.min(width, height));
}

public void draw() {
	float count = frameCount % Math.min(width, height);
	background(100);
	translate(count / 2, -count / 2 * sin(PI / 3));
	sierpinski(width / 2, height / 2 - height * (1 - sin(PI / 3)), min(width, height) + count);
}

public void sierpinski(float x, float y, float size) {
	float b = size;
	float h = size * sin(PI / 3);
	if (size <= 10) {
		fill(0);
		triangle(
			x - b / 2, y + h / 2,
			x + b / 2, y + h / 2,
			x, y - h / 2
		);
	} else {
		sierpinski(x - b / 4, y + h / 4, size / 2);
		sierpinski(x + b / 4, y + h / 4, size / 2);
		sierpinski(x, y - h / 4, size / 2);
	}
}
