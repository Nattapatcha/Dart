class Car {
  late String brand;
  late String model;
  late int cc;
  late String color;
  Car(this.brand, this.model, this.cc, this.color);
  void start() {
    print('รถ $brand กำลังเคลื่อนที่');
  }

  void stop() {
    print('รถ $brand หยุดแล้ว');
  }

  void changeGear(int gear) {
    if (gear >= 1 && gear <= 5) {
      print('เปลี่ยนเป็นเกียร์ $gear แล้ว');
    } else if (gear == 'R') {
      print('เปลี่ยนเป็นเกียร์ถอยหลังแล้ว');
    } else {
      print('ไม่สามารถใช้งานเกียร์ $gear ได้');
    }
  }
}

void main() {
  Car car1 = Car('honda', 'civic', 2500, 'rainbow');
  Car car2 = Car('Ford', 'ranger', 5500, 'Gray');
  Car car3 = Car('Hundai', 'skyliner', 3500, 'turtoise');
  Car car4 = Car('chevrolet', 'Trailblazer', 25000, 'Brown');
  car1.start();
  car2.start();
  car3.stop();
  car4.changeGear(8);
  car1.changeGear(5);
}
