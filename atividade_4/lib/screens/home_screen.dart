import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/task_provider.dart';
import '../widgets/widget.dart';

class HomeScreen extends ConsumerStatefulWidget {
	const HomeScreen({super.key});

	@override
	ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
	final TextEditingController _taskController = TextEditingController();

	@override
	void dispose() {
		_taskController.dispose();
		super.dispose();
	}

	void _addTask() {
		final title = _taskController.text.trim();
		if (title.isEmpty) {
			return;
		}

		ref.read(taskProvider.notifier).addTask(title);
		_taskController.clear();
	}

	@override
	Widget build(BuildContext context) {
		final tasks = ref.watch(taskProvider);

		return Scaffold(
			appBar: AppBar(
				title: const Text('Lista de Tarefas'),
			),
			body: Padding(
				padding: const EdgeInsets.all(16),
				child: Column(
					children: [
						Row(
							children: [
								Expanded(
									child: TextField(
										controller: _taskController,
										decoration: const InputDecoration(
											hintText: 'Digite uma tarefa',
											border: OutlineInputBorder(),
										),
										onSubmitted: (_) => _addTask(),
									),
								),
								const SizedBox(width: 8),
								ElevatedButton(
									onPressed: _addTask,
									child: const Text('Adicionar'),
								),
							],
						),
						const SizedBox(height: 16),
						Expanded(
							child: tasks.isEmpty
									? const Center(
											child: Text('Nenhuma tarefa cadastrada.'),
										)
									: ListView.builder(
											itemCount: tasks.length,
											itemBuilder: (context, index) {
												final task = tasks[index];
												return TaskItem(
													task: task,
													onToggle: () => ref
															.read(taskProvider.notifier)
															.toggleTask(task),
													onRemove: () => ref
															.read(taskProvider.notifier)
															.removeTask(task),
												);
											},
										),
						),
					],
				),
			),
		);
	}
}
