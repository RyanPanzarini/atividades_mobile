import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskItem extends StatelessWidget {
	final Task task;
	final VoidCallback onToggle;
	final VoidCallback onRemove;

	const TaskItem({
		super.key,
		required this.task,
		required this.onToggle,
		required this.onRemove,
	});

	@override
	Widget build(BuildContext context) {
		return Card(
			child: ListTile(
				leading: Checkbox(
					value: task.isDone,
					onChanged: (_) => onToggle(),
				),
				title: Text(
					task.title,
					style: TextStyle(
						decoration:
								task.isDone ? TextDecoration.lineThrough : TextDecoration.none,
						color: task.isDone ? Colors.grey : null,
					),
				),
				trailing: IconButton(
					onPressed: onRemove,
					icon: const Icon(Icons.delete, color: Colors.red),
					tooltip: 'Remover tarefa',
				),
			),
		);
	}
}
