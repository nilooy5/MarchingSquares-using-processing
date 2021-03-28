float[][] field;
int res = 20;
int cols, rows;

void setup() {
  size(600,400);
  cols = 1 + width/res;
  rows = 1 + width/res;
  field = new float[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      field[i][j] = floor(random(2));
    }
  }
}

void draw() {
  background(127);
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      stroke(field[i][j]*255);
      strokeWeight(res*0.4);
      point(i*res,j*res);
    }
  }
}
