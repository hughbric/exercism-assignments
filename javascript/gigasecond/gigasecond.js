const gigasecond = (dateIn) => {
  const gigasecond = Math.pow(10, 9) * 1000;
  return new Date(dateIn.getTime() + gigasecond);
}

export { gigasecond }
