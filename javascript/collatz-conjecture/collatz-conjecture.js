function steps(n) {
  let counter = 0;

  if (n <= 0) {
    throw new Error('Only positive numbers are allowed');
  }

  while (n !== 1) {
    n = (n % 2 == 0) ? (n / 2) : (n * 3 + 1);
    counter++; 
  }

  return counter;
}

export { steps }
