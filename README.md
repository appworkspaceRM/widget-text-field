# flutter_application_16

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# TextField Widget

TextField merupakan salah satu jenis form field berbentuk text yang terdapat di flutter. text field sendiri berguna untuk melakukan input sebuah text ke dalam sebuah field dimana kita bisa mengambil sebuah nilai yang di masukan oleh user melalui inputan sebuah field text.

- Fitur
    
    pada text field banyak sekali properti atau name argument yang dapat digunakan, berikut properti atau name argument yang dapat digunakan:
    
    - autocorrect : memerlukan boolean true atau false dengan default true, digunakan untuk membenarkan penulisan yang salah dalam bahasa inggris.
    - autofocus : memerlukan boolean true atau false dengan default false, autofocus akan melakukan fokus untuk mengisi pada textfield.
    - enableSuggestion : memerlukan boolean true atau false dengan default true, enableSuggestion digunakan untuk pengguna android mirip dengan autocorrect ini digunakan untuk suggestion kalimat.
    - enableInteractiveSelection : memerlukan boolean true atau false dengan default true, digunakan untuk fitur cut, copy dan paste text atau lainya.
    - enabled : memerlukan boolean true atau false dengan default true, digunakan untuk fitur disabled dari sebuah form atau text field agar tidak bisa diubah.
    - obsecureText : memerlukan boolean true atau false dengan default false, digunakan untuk fitur password atau hidden text yang digunakan untuk menyembunyikan sebuah text.
    - obsecureCharacter : memerlukan string dengan default ‘pointer atau .’. digunakan untuk memodifikasi character hidden menjadi apapun contoh *,-,= dll dan hanya memiliki 1 karakter.
    - keyboardType : memerlukan Widget TextInputType dengan enum seperti email, datetime, phone, number, name, values, visiblePassword, digunakan untuk menampilkan keyboard type sesuai TextInputType yang dipilin contoh TextInputType.number maka akan di pilih keyboard dengan number.
    - readOnly : memerlukan boolean true atau false dengan default false, digunakan untuk featur hanya untuk memabaca tidak bisa untuk mengedit tidak bisa muncul keyboard.
    
    ```dart
    import 'package:flutter/material.dart';
    
    void main(List<String> args) {
      runApp(const MyApp());
    }
    
    class MyApp extends StatelessWidget {
      const MyApp({super.key});
    
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          home: Stack(
            children: [
              Image.network(
                "https://picsum.photos/id/2/200/300",
                height: MediaQuery.of(
                  context,
                ).size.height,
                width: MediaQuery.of(
                  context,
                ).size.width,
                fit: BoxFit.cover,
              ),
              Scaffold(
                backgroundColor: Colors.transparent.withOpacity(
                  0.0,
                ),
                appBar: AppBar(
                  title: const Text(
                    'TEXT FIELD',
                  ),
                ),
                body: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(
                      20.0,
                    ),
                    child: TextField(
                      autocorrect: false,
                      autofocus: true,
                      enableSuggestions: true,
                      enableInteractiveSelection: true,
                      enabled: true,
                      obscureText: true,
                      obscuringCharacter: '*',
                      keyboardType: TextInputType.number,
                      readOnly: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'TEXT FIELD',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    }
    ```

- Dekorasi
    
    pada text field dapat melakukan sebuah style dari sebuah textfield agar sesaui dengan apa yang diinginkan, dekorasi sendiri memiliki berbagai properti yang bisa digunakan untuk style.
    
    - decoration : memerlukan widget InputDecoration, merupakan sebuah properti dari widget TextFiled yang digunakan untuk styling dari sebuah text field.
    - showCursor : memrlukan boolean true atau false dengan default true, digunakan untuk memunculkan cursor pada text field untuk mengetahui posisi dari sebuah cursor.
    - cursorColor : memerlukan Widget Color, digunakan untuk mengubah warna default color pada cursor text field
    - cursorWidth : memerlukan double, digunakan untuk mengatur ketebalan atau lebar dari cursor.
    - cursorHeight : memerlukan double, digunakan untuk mengatur tinggi dari cursor
    - cursorRadis : memerlukan Widget Radius dengan enum, digunakan untuk mengatur sudut dari cursor
    - textAlign : memrlukan Widget TextAlign, digunakan untuk mengatur posisi cursor, left, right dan center.
    - textAlignVertical : memerlukan widget TextAlignVertical dengan enum, digunakan untuk mengatur posisi text secara vertical dan berpengaruh hanya sedikit pada posisi top, center, atau bottom.
    - textCapitalization : memerlukan widget TextCapitalization dengan enum, digunakan untuk capital dari text.
    - style : memerlukan widget TextStyle, digunakan untuk style pada text didalam TextFiled.
    
    InputDecoration memiliki berbagai properti atau named argument yang bisa digunakan untuk membuat styling seperti:
    
    - icon : memerlukan Widget Icon, digunakan untuk memberikan sebuah icon diluar text input untuk menandai secara visual bahwa text field ini untuk apa.
    - border : memerlukan input border, biasanya menggunakan OutlineInputBorder(), agaer memiliki garis tepi untuk text field.
    - prefixIcon : memerlukan Widget Icon, digunakan untuk memberikan sebuah icon didalam text input untuk menandai secara visual bahwa text field ini untuk apa.
    - prefixText : memerlukan string, digunakan untuk memberikan sebuah text didalam text input untuk menandai secara text bahwa text field ini untuk apa.
    - hintText : memerlukan string, digunakan untuk description sebuah text field dan bukan merupakan sebuah value dari text field tersebut.
    - labelText : memerlukan string, digunakan untuk mendescripsikan dari sebuah text field dan akan di pindahkan ke atas text field dan bukan value dari text field tersebut.
    - hintStyle : memerlukan widget TextStyle, digunakan untuk style pada hint text didalam decoaration text field.
    - labelStyle :  memerlukan widget TextStyle, digunakan untuk style pada label text didalam decoration text field.
    - focusBorder : memerlukan InputBorder, digunakan untuk style pada saat fokus pada bagian text field.
    - enabledBorder : memerlukan InputBorder, digunakan untuk style pada saat bagian text field enabled true.
    - sufixIcon : memerlukan Widget IconButton, digunakan untuk memerikan icon di depan text field.
    
    ```dart
    import 'package:flutter/material.dart';
    
    void main(List<String> args) {
      runApp(const MyApp());
    }
    
    class MyApp extends StatelessWidget {
      const MyApp({super.key});
    
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
                body: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(
                      20.0,
                    ),
                    child: TextField(
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
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }
    }
    
    ```
- Control
    
    pada control text field digunakan untuk mengambil nilai value berdasarkan control dari sebuah text field dengan menggunakan properti atau named argument pada TextField yang memerlukan TextEditingController yang didalamnya memiliki properti atau named argument text yang akan menampung value dari text field yang akan di isi.
    
    - controller : memerlukan widget TextEditingController untuk menampung sebuah value.
    - onChange : memerlukan function yang akan mengembalikan sebuah string.
    - onSubmit : memerlukan function, onSubmit akan sering digunakan untuk mengambil value ketika di submit.
    - onEditingComplete : memerlukan function, digunakanuntuk mengambil vlaue ketika sudah selesai memasukan value pada text field, value on editing akan diambil terlebih dahulu sebelum onSubmit.
    
    ```dart
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
    
    ```
![code-snapshot](https://github.com/appworkspaceRM/widget-text-field/assets/135511281/5d812518-85c6-46ad-b97a-63a54370145b)
