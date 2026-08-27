void main() {
  print('Hello world!');

  int numero = 1;
  print(numero);

  bool logico = true;
  print(logico);

  num numeroDecimal = 0.7;
  print(numeroDecimal);

  String texto = 'aloou, boa noite!';
  print(texto);

  double numerico = 0.9;
  print(numerico);

  Map<String, bool> hash = {'key1': false, 'key2': true};
  print(hash);

  final vetor = ['valor1', '11', 'valor3'];
  vetor.add('9');
  print(vetor);
  print(vetor.runtimeType);

  // comentário

  for (var i = 0; i < 80; i++) {
    print(i);
  }

  for (var elemento in vetor) {
    print(elemento);
  }

  int i = 0;
  while (i < vetor.length) {
    print(vetor[i]);
    i++;
  }

  // positional argument ou named argument
  print(primeiraFuncao(content: 'JOELMA', value: '11'));

  // diferenca entra `var` e `final`
  String exemplo = 'exemplo';
  print(exemplo);
  exemplo = 'mudei o exemplo';
  exemplo = 'allouuu';

  late final String? exemplo99 = null;
  // nullable
  print(geleca(argumento: exemplo99));

  final Calipso objeto = Calipso(artista: ['Joelma', 'Chimbinha']);

  objeto.artista;
  print(objeto.isArtist(candidate: 'Chimbinha'));
}

String primeiraFuncao({required String content, required String value}) {
  return '$content + $value';
}

String geleca({required String? argumento}) {
  return '$argumento + UAU';
}

class Calipso {
  final List<String> artista;

  Calipso({required this.artista});

  bool isArtist({required String candidate}) {
    print('cadidato: $candidate');
    print('artista: $artista');
    return artista.contains(candidate);
  }
}
