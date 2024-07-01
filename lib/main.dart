import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _myController = TextEditingController();

  String hasil = "Hasil Inputan";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          // Image.network(
          //   "https://picsum.photos/id/2/200/300",
          //   height: MediaQuery.of(
          //     context,
          //   ).size.height,
          //   width: MediaQuery.of(
          //     context,
          //   ).size.width,
          //   fit: BoxFit.cover,
          // ),
          Scaffold(
            // backgroundColor: Colors.transparent.withOpacity(
            //   0.0,
            // ),
            appBar: AppBar(
              title: const Text(
                'TEXT FIELD',
              ),
            ),
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(
                  20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(hasil),
                    TextField(
                      autocorrect: false,
                      autofocus: true,
                      enableSuggestions: true,
                      enableInteractiveSelection: true,
                      enabled: true,
                      // obscureText: true,
                      // obscuringCharacter: '*',
                      // keyboardType: TextInputType.number,
                      // readOnly: true,
                      showCursor: true,
                      cursorColor: Colors.amber,
                      cursorWidth: 10.0,
                      cursorHeight: 25,
                      cursorRadius: Radius.circular(20),
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      textCapitalization: TextCapitalization.characters,
                      style: TextStyle(
                        color: Colors.amber,
                      ),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Colors.amber,
                          size: 25,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.amber,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.amber,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.amber,
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.amber,
                        ),
                        prefixText: 'NAME: ',
                        hintText: 'Enter your name',
                        labelText: 'TEXT FIELD',
                        hintStyle: TextStyle(
                          color: Colors.amber,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.amber,
                        ),
                        suffixIcon: IconButton(
                          onPressed: null,
                          icon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                      controller: _myController,
                      onChanged: (value) {
                        setState(() {
                          hasil = value;
                        });
                      },
                      onSubmitted: (value) {},
                      onEditingComplete: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
