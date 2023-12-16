class Account {
  late int accId;
  late String accName;
  late double balance;
  Account(this.accId, this.accName, {this.balance = 500});
  void deposite(double amount) {
    if (amount > 0) {
      print('ฝากเงิน $amount เข้า ID: $accId สำเร็จ');
      balance += amount;
    } else {
      print('จำนวนเงินฝากต้องไม่ติดลบและเป็นศูนย์');
    }
    checkBalance();
  }

  void withdraw(double amount) {
    if (amount > 0 && balance >= amount) {
      print('ถอนเงิน $amount ออกจาก ID: $accId สำเร็จ');
      balance -= amount;
    } else {
      print('จำนวนเงินคงเหลือใน $accId ไม่เพียงพอ');
    }
    checkBalance();
  }

  void checkBalance() {
    print('ยอดเงินคงเหลือ $balance');
  }
}

void main() {
  Account Acc1 = Account(1, 'Labar dor', balance: 1000);
  Account Acc2 = Account(2, 'Dober Man', balance: 2000);
  Acc1.deposite(200);
  Acc2.withdraw(500);
  Acc1.withdraw(10000);
  Acc1.withdraw(500);
  Acc1.checkBalance();
  Acc2.checkBalance();
}
