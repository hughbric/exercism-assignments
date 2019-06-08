function Triangle(a, b, c) {
  this.a = a;
  this.b = b;
  this.c = c;
}

Triangle.prototype.kind = function() {
  if (this.a + this.b <= this.c || this.a + this.c <= this.b ||this.b + this.c <= this.a) {
    throw new Error('Triangle violates triangle inequality');
  }

  if (this.a === this.b && this.a === this.c) {
    return 'equilateral';
  }

  if (this.a === this.b || this.a === this.c || this.b === this.c) {
    return 'isosceles';
  } else {
    return 'scalene';
  }
}

export { Triangle };
