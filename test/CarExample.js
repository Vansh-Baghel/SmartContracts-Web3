// Car example
class Car {
  park() {
    return "stopped";
  }
  drive() {
    return "start";
  }
}

describe("CarFunctions", () => {
  it("Can park here", () => {
    const carParking = new Car();
    carParking.park();
  });

  it("Parking done, ride car", () => {
    const carRide = new Car();
    carRide.drive();
  });
});
