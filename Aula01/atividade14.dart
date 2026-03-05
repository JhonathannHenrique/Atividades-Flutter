abstract class Veiculo {
  void acelerar();
}

class Carro implements Veiculo {
  @override
  void acelerar() => print('Carro pisando no pedal...');
}

class Moto implements Veiculo {
  @override
  void acelerar() => print('Moto girando o manete...');
}

void main() {
  List<Veiculo> veiculos = [Carro(), Moto()];
  veiculos.forEach((v) => v.acelerar());
}