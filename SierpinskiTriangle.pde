public void setup() {
	size(500, 500);
	frameRate(10);
	noStroke();
	sierpinski(width / 2, height / 2, Math.min(width, height));
}

public void draw() {
	sierpinski(width / 2, height / 2, Math.min(width, height) + frameCount * 12);
}

public void sierpinski(float x, float y, float size) {
	float b = size;
	float h = size * sin(PI / 3);
	if (size <= 5) {
		fill(sin(frameCount) * 255, cos(frameCount) * 255, 255);
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
