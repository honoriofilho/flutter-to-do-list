# Meu Primeiro Projeto em Flutter

Este repositório contém um aplicativo de lista de tarefas (To-Do List) desenvolvido em Flutter. Criado como uma prática de aprendizado e experimentação, o projeto visa explorar e aplicar conceitos de desenvolvimento, como gerenciamento de estado, widgets e interações básicas do usuário.

## Funcionalidades

- **Marcar Tarefas como Concluídas:** O usuário pode marcar tarefas como concluídas, o que atualiza o estado da tarefa e a interface.
- **Interface Intuitiva:** Utiliza widgets personalizados para criar uma experiência de usuário agradável e responsiva.

## Uso de Slivers

Neste projeto, o conceito de `Slivers` foi utilizado para criar uma interface de usuário fluida e eficiente. Slivers são widgets que podem se comportar de maneiras variadas quando rolam. Aqui estão alguns exemplos de como foram usados:

### Exemplo de Código

```dart
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do List"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Minhas Tarefas'),
              background: Image.network(
                'https://example.com/background-image.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Tarefa ${index + 1}'),
                  trailing: Checkbox(
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
```

### Explicação

- **`SliverAppBar`:** Um tipo de `Sliver` que proporciona uma barra de aplicativo que pode se expandir e recolher à medida que o usuário rola a lista.
- **`SliverList`:** Permite criar uma lista de itens que pode rolar, adaptando-se ao espaço disponível.

## Como Executar

1. **Clone o Repositório:**

   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
   ```

2. **Navegue até o Diretório do Projeto:**

   ```bash
   cd seu-repositorio
   ```

3. **Instale as Dependências:**

   ```bash
   flutter pub get
   ```

4. **Execute o Projeto:**

   ```bash
   flutter run
   ```

## Contribuições

Sinta-se à vontade para fazer um fork deste repositório e enviar pull requests com melhorias ou correções. Este projeto é destinado exclusivamente para fins educacionais e pode servir como base para novos aprendizados em Flutter.
