import 'package:flutter/material.dart';
import 'package:payflow/shared/widgets/divider_widget/divider_widget_vertical.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  const SetLabelButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: "Inserir código do boleto",
              onPressed: () {
                print("AAAAAAA");
              },
            ),
          ),
          DividerVertical(),
          Expanded(
            child: LabelButton(
              label: "Adicionar da galeria",
              onPressed: () {
                print("AAAAAAA");
              },
            ),
          ),
        ],
      ),
    );
  }
}
