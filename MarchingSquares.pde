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
      point(i*res, j*res);
    }
  }


  for (int i = 0; i < cols-1; i++) {
    for (int j = 0; j < rows-1; j++) {
      float x = i * res;
      float y = j * res;
      PVector a = new PVector(x + res*0.5, y);
      PVector b = new PVector(x + res, y + res*0.5);
      PVector c = new PVector(x + res*0.5, y + res);
      PVector d = new PVector(x , y + res*0.5);
      int state = getState (
        field[i][j],
        field[i+1][j],
        field[i+1][j+1],
        field[i][j+1],
        );

      stroke(255);
      strokeWeight(1);
      switch (state) {
        case 1:
          line(c,d);
          break;
        case 2:

          break;
        case 3:

          break;
        case 4:

          break;
        case 5:

          break;
        case 6:

          break;
        case 7:

          break;
        case 8:

          break;
        case 9:

          break;
        case 10:

          break;
        case 11:

          break;
        case 12:

          break;
        case 13:

          break;
        case 14: 

          break;
        case 15:

          break;
      }
    }
  }
}

void line(PVector v1, PVector v2) {
  line(v1.x, v1.y, v2.x, v2.y);
}

int getState(int a, int b, int c, int d) {
  return (a*8 + b*4 + c*2 + d*1);
}
