import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List taskList = [
    ['Estudar para o exame', false],
    ['Comprar mantimentos', false],
    ['Ler um livro', false],
    ['Lavar a roupa', false],
    ['Fazer exercício físico', false],
    ['Organizar a casa', false],
    ['Preparar uma apresentação', false],
    ['Responder e-mails', false],
    ['Fazer um curso online', false],
    ['Cuidar das plantas', false],
    ['Assistir a um filme', false],
    ['Planejar a viagem', false],
    ['Fazer um orçamento', false],
    ['Escrever um artigo', false],
    ['Preparar um jantar especial', false]
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      taskList[index][1] = !taskList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8DDA4),
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: const Text(
              'Tasks',
              style: TextStyle(),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.archive_outlined,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return TaskTiles(
                  taskName: taskList[index][0],
                  isChecked: taskList[index][1],
                  onChanged: (value) => checkBoxChanged(value, index),
                );
              },
              childCount: taskList.length,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFF9A03F),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TaskTiles extends StatefulWidget {
  final String taskName;
  final bool isChecked;
  final Function(bool?)? onChanged;

  const TaskTiles(
      {super.key,
      required this.taskName,
      required this.isChecked,
      required this.onChanged});

  @override
  State<TaskTiles> createState() => _TaskTilesState();
}

class _TaskTilesState extends State<TaskTiles> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(1.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color(0xFFF9A03F),
            ),
            child: Row(
              children: [
                Checkbox(
                  value: widget.isChecked,
                  onChanged: widget.onChanged,
                  activeColor: const Color(0xFF9D4006),
                ),
                Text(
                  widget.taskName,
                  style: TextStyle(
                      decoration: widget.isChecked ? TextDecoration.lineThrough : TextDecoration.none),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
