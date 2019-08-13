import 'package:flutter/material.dart';

class TextfieldsFocusPage extends StatefulWidget {
  TextfieldsFocusPage({Key key}) : super(key: key);

  _TextfieldsFocusPageState createState() => _TextfieldsFocusPageState();
}

class _TextfieldsFocusPageState extends State<TextfieldsFocusPage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldkey = new GlobalKey<ScaffoldState>();

  TextEditingController _usernameController, _passwordController;
  FocusNode _usernameFocusNode, _passwordFocusNode;

  bool _autovalidate = false;

  String _username, _password;

  @override
  void initState() {
    super.initState();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    _usernameFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
  }

  String validator({flag = 0, value = ""}) {
    if (value.isEmpty) {
      switch (flag) {
        case 0:
          return 'Username is required.';
          break;
        case 1:
          return 'Password is required.';
          break;
        default:
          return "";
      }
    }
    return null;
  }

  void submit() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      debugPrint('username: $_username');
      debugPrint('password: $_password');
      debugPrint('password: ${_usernameController.text}');
      debugPrint('password: ${_passwordController.text}');
      _scaffoldkey.currentState.showSnackBar(SnackBar(
        content: Text("username: $_username, password: $_password"),
      ));
    } else {
      setState(() {
        _autovalidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldkey,
        appBar: AppBar(
          title: Text("TextfieldsFocus"),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text("login", style: TextStyle(fontSize: 32.0)),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        focusNode: _usernameFocusNode,
                        controller: _usernameController,
                        textInputAction: TextInputAction.next,
                        autovalidate: _autovalidate,
                        validator: (value) => validator(flag: 0, value: value),
                        decoration: InputDecoration(
                            labelText: "Username",
                            helperText: "",
                            border: InputBorder.none,
                            // border: OutlineInputBorder(),
                            icon: Icon(Icons.perm_identity),
                            hintText: "enter username please"),
                        onFieldSubmitted: (value) {
                          _usernameFocusNode.unfocus();
                          FocusScope.of(context)
                              .requestFocus(_passwordFocusNode);
                        },
                        onSaved: (value) {
                          _username = value;
                        },
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        focusNode: _passwordFocusNode,
                        controller: _passwordController,
                        textInputAction: TextInputAction.done,
                        autovalidate: _autovalidate,
                        validator: (value) => validator(flag: 1, value: value),
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Password",
                            helperText: "",
                            border: InputBorder.none,
                            // border: OutlineInputBorder(),
                            icon: Icon(Icons.lock_outline),
                            hintText: "enter password please"),
                        onFieldSubmitted: (value) {
                          _passwordFocusNode.unfocus();
                        },
                        onSaved: (value) {
                          _password = value;
                        },
                      ),
                      Container(
                        width: double.infinity,
                        child: RaisedButton(
                          color: Theme.of(context).accentColor,
                          elevation: 0.0,
                          child: Text("loging",
                              style: TextStyle(color: Colors.white)),
                          onPressed: submit,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
