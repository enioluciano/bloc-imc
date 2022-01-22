import 'package:flutter/cupertino.dart';
import 'package:imc/app/bloc/imc_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = ImcBloc();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text('IMC')),
      child: SafeArea(
          child: Column(
        children: [
          _heightField(),
          _weightField(),
          _resultInfo(),
          _buttonCalculate(),
        ],
      )),
    );
  }

  Widget _heightField() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: CupertinoTextField(
        placeholder: "Altura (cm)",
        controller: bloc.heightCtrl,
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _weightField() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: CupertinoTextField(
        placeholder: "Peso (kg)",
        controller: bloc.weightCtrl,
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _resultInfo() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        bloc.result,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buttonCalculate() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: CupertinoButton.filled(
        child: const Text("Calcular"),
        onPressed: () {
          setState(() {
            bloc.calculate();
          });
        },
      ),
    );
  }
}
