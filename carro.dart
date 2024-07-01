class Carro {
  int _portas = 0;
  String _cor = 'branco';
  int _anoFabricacao = 0; // Adicionando o ano de fabricação
  final List<DateTime> _revisoes =
      []; // Lista para armazenar as datas das revisões

  Carro(String cor, int portas, int anoFabricacao) {
    _cor = cor;
    _portas = portas;
    _anoFabricacao = anoFabricacao;
  }

  String resumo() {
    int quantidadeRevisoes = _revisoes.length;
    return 'Meu carro é $_cor e tem $_portas portas. '
        'Já foram realizadas $quantidadeRevisoes revisões.';
  }

  int calcularIdade() {
    // Obtendo o ano atual
    int anoAtual = DateTime.now().year;
    // Calculando a idade do carro
    int idade = anoAtual - _anoFabricacao;
    return idade;
  }

  void revisao(DateTime dataRevisao) {
    _revisoes.add(dataRevisao);
  }

  List<DateTime> get revisoes => _revisoes;
}
