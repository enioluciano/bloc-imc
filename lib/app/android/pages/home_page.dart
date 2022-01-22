import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _heightField(),
          _weightField(),
          _resultInfo(),
          _buttonCalculate(),
        ],
      ),
    );
  }

  Widget _heightField() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: "Altura (cm)",
        ),
        controller: bloc.heightCtrl,
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _weightField() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: "Peso (kg)",
        ),
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
      child: FlatButton(
        color: Theme.of(context).primaryColor,
        child: const Text(
          "Calcular",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () {
          setState(() {
            bloc.calculate();
          });
        },
      ),
    );
  }
}
