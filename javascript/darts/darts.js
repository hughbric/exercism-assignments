const OUTER_RADIUS = 10;
const MIDDLE_RADIUS = 5;
const INNER_RADIUS = 1;

function distanceFromCenter(x, y) {
  return Math.sqrt((x * x) + (y * y));
}

function solve(x, y) {
  const distance = distanceFromCenter(x, y);
  
  if (distance > OUTER_RADIUS) {
    return 0;
  } else if (distance > MIDDLE_RADIUS) {
    return 1;
  } else if (distance > INNER_RADIUS) {
    return 5;
  } else {
    return 10;
  }
}

export { solve };
