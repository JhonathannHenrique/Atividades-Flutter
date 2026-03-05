class ContaBancaria {
  String titular;
  double saldo;
  ContaBancaria(this.titular, this.saldo);

  void depositar(double v) => saldo += v;
  void sacar(double v) => saldo -= v;
}

class ContaPoupanca extends ContaBancaria {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  void aplicarRendimento(double taxa) => saldo += saldo * taxa;
}

void main() {
  var cp = ContaPoupanca('Jhonathan', 1000);
  cp.aplicarRendimento(0.05);
  print('Saldo após rendimento: ${cp.saldo}');
}