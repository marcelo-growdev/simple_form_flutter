import 'package:flutter/material.dart';
import 'package:simple_form_flutter/entities/address.dart';
import 'package:simple_form_flutter/entities/user.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _fromKey = GlobalKey<FormState>();
  final _user = User(address: Address());

  void _alertDialog(User user) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('Dados: ${user.name}'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Nome:'),
                  Text('${user.name}'),
                  Text('Email:'),
                  Text('${user.email}'),
                  Text('CPF:'),
                  Text('${user.cpf}'),
                  Text('Endereço:'),
                  Text('${user.address.toString()}'),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de cadastro'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _fromKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  cursorColor: Colors.red,
                  decoration: InputDecoration(
                    labelText: 'Seu nome',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  onSaved: (value) {
                    _user.name = value;
                  },
                ),
                SizedBox(height: 15),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  onSaved: (value) {
                    _user.email = value;
                  },
                ),
                SizedBox(height: 15),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'CPF',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  onSaved: (value) {
                    _user.cpf = value;
                  },
                ),
                SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'CEP',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        onSaved: (value) {
                          _user.address.zipCode = value;
                        },
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        onPressed: () {
                          print('Buscando');
                        },
                        child: Text('Buscar CEP'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Rua',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        onSaved: (value) {
                          _user.address.publicPlace = value;
                        },
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Número',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        onSaved: (value) {
                          _user.address.number = value;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Bairro',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        onSaved: (value) {
                          _user.address.neighborhood = value;
                        },
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Cidade',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        onSaved: (value) {
                          _user.address.city = value;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'UF',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        onSaved: (value) {
                          _user.address.state = value;
                        },
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'País',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        onSaved: (value) {
                          _user.address.country = value;
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        onPressed: () {
                          print('Limpando');
                        },
                        child: Text('Limpar'),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      flex: 3,
                      child: RaisedButton(
                        onPressed: () {
                          setState(() {
                            _fromKey.currentState.save();
                          });
                          _alertDialog(_user);
                        },
                        child: Text('Cadastrar'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
