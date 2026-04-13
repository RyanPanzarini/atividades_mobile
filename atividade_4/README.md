# Trabalho 4 - Aplicacao de Lista de Tarefas com Gestao de Estado

## Descricao da aplicacao
Este projeto implementa uma aplicacao To-Do List em Flutter.

O usuario pode:
- adicionar uma nova tarefa;
- visualizar a lista de tarefas;
- marcar tarefa como concluida;
- remover tarefa da lista.

## Gestao de estado com Riverpod
A aplicacao utiliza `flutter_riverpod` para controlar o estado global da lista de tarefas.

Estrutura usada:
- `lib/models/task.dart`: modelo da tarefa (titulo e status `isDone`);
- `lib/providers/task_provider.dart`: `StateNotifier<List<Task>>` com regras de negocio (`addTask`, `toggleTask`, `removeTask`);
- `lib/screens/home_screen.dart`: interface principal que observa o estado com `ref.watch(taskProvider)`;
- `lib/widgets/widget.dart`: widget reutilizavel para exibir cada item da lista.

A lista e o status de conclusao sao atualizados em tempo real na interface conforme o provider altera o estado.

## Requisitos tecnicos atendidos
- Flutter;
- `ListView.builder` para renderizar a lista de tarefas;
- Riverpod para gestao de estado;
- separacao entre interface, widgets e logica de estado.

## Como executar
1. Abra a pasta `atividade_4` no terminal.
2. Execute:

```bash
flutter pub get
flutter run
```

## Prints ou GIFs de funcionamento
Adicionar nesta secao os registros visuais da aplicacao em execucao.

Exemplo de organizacao sugerida:
- `assets/prints/tela_inicial.png`
- `assets/prints/adicionando_tarefa.png`
- `assets/prints/tarefa_concluida.png`
- `assets/prints/removendo_tarefa.png`

Se preferir GIF:
- `assets/prints/demonstracao.gif`

