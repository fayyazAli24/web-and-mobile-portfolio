import 'package:flutter/material.dart';

import '../../constants.dart';
import 'knowledgeText.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
          child: Text("Knowledges",style: Theme.of(context).textTheme.titleSmall,),
        ),
        KnowledgeText(text: "flutter,dart"),
        KnowledgeText(text: "Android,java,kotlin"),
        KnowledgeText(text: "Git knowledge"),
      ],
    );
  }
}
