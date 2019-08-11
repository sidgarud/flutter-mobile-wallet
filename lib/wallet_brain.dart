class BalanceCalculator {
//  BalanceCalculator({
//    this.moneyreceived,
//    this.moneyspent,
//    this.moneyTransferred,
//  });
  int currentBalance;
  int moneyTransferred;
  bool moneyspent;
  bool moneyreceived;
//
//  int balanceCalc() {
//    if (moneyreceived)
//      return (currentBalance + moneyTransferred);
//    else
//      return (currentBalance - moneyTransferred);
//  }

  int add(currentBalance, moneyTransferred) {
    return currentBalance + moneyTransferred;
  }

  int subtract(currentBalance, moneyTransferred) {
    return currentBalance - moneyTransferred;
  }
}
