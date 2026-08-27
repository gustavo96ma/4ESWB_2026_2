# Programação para Dispositivos Móveis — 4º ESW B — 2026/2

Repositório com o material desenvolvido em sala nas aulas de Programação para Dispositivos Móveis do segundo semestre de 2026.

Professor: Me. Gustavo Meneghetti Arcolezi
Instituição: UNICIVE — Maringá/PR

## Como usar este repositório

Cada pasta corresponde à data de uma aula, no formato `DD-MM`. Dentro dela está o código como ele ficou ao fim do encontro, sem edições posteriores.

Para rodar os projetos você precisa do SDK do Dart e, nos projetos Flutter, do SDK do Flutter instalado. Confira sua instalação com `flutter doctor` antes de abrir qualquer projeto — a maior parte dos problemas que aparecem no começo do semestre é ambiente mal configurado, não erro de código.

Nos projetos Dart puro, entre na pasta e rode:

```bash
dart run
```

Nos projetos Flutter, entre na pasta e rode:

```bash
flutter pub get
flutter run
```

## Aulas

### 10-08 — `hello_world`: primeiro programa em Dart

Projeto inicial da disciplina. Estrutura de um pacote Dart (`pubspec.yaml`, pasta `bin/`, ponto de entrada `main`), execução pelo terminal e primeiros contatos com a sintaxe da linguagem.

### 11-08 — `gourmet`: programação orientada a objetos em Dart

Exercício de modelagem de um domínio de cozinha. As classes são:

- `Ingrediente` — descrição, unidade de medida e categoria.
- `Prato` — descrição, tempo de preparo e a lista de ingredientes que o compõem.
- `Cheff` — quem prepara o prato, através do método `prepararPrato`.

O exercício exercita composição: um `Prato` não herda de `Ingrediente`, ele *contém* uma lista de ingredientes. Essa distinção entre "é um" (herança) e "tem um" (composição) é a decisão de modelagem mais frequente que vocês vão enfrentar, e errá-la produz hierarquias de classes que ninguém consegue manter depois.

### 17-08 — Exercício avaliativo em sala

Atividade avaliativa feita durante a aula, sobre o conteúdo de orientação a objetos do projeto `gourmet`. Não há código desta data no repositório: a entrega foi individual de cada aluno.

### 18-08 — `galinha`: primeiro app Flutter

Transição do Dart puro para o Flutter. Criação do projeto, estrutura de pastas (`lib/`, `web/`, `pubspec.yaml`), o ponto de entrada `main.dart` e a árvore de widgets. A tela principal já sai do `main.dart` para `lib/screens/home_page.dart`, e montamos a `Granja GraciOvos` com `Scaffold`, `AppBar`, `Center`, `SizedBox` e `TextButton`.

### 24-08 — `galinha`: segunda tela e navegação

O app ganha a `ParadoxPage` em `lib/screens/paradox_page.dart` e a navegação a partir da home com `Navigator.of(context).push` e `MaterialPageRoute`. A nova tela traz um `TextFormField` ainda sem controlador — ele é só o campo na tela, sem nada lendo o que o usuário digita.

### 25-08 — `galinha`: entrada de dados e refinamento visual

Fechamento do ciclo do projeto. A `ParadoxPage` passa a usar um `TextEditingController` ligado ao `TextFormField`, e o botão "Enviar Resposta" finalmente lê o que foi digitado através de `_controller.text`. No visual, entraram `ClipOval` com `Image.network`, `InputDecoration` com `OutlineInputBorder` arredondado, ícone no campo e o tema âmbar na `AppBar`.

O controlador é a peça que faltava na aula anterior: sem ele o campo aceita texto, mas o código não tem como recuperá-lo. Vale notar que, em um app de produção, um `TextEditingController` precisa ser descartado no `dispose()` de um `StatefulWidget` para não vazar memória — aqui ele vive em um `StatelessWidget` porque o objetivo era isolar o conceito de leitura do campo.

## Referências

- [Documentação oficial do Dart](https://dart.dev/guides)
- [Documentação oficial do Flutter](https://docs.flutter.dev/)
- [Flutter — Catálogo de widgets](https://docs.flutter.dev/ui/widgets)
