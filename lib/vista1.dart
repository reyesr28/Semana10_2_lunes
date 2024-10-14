import 'package:flutter/material.dart';

class vista1 extends StatefulWidget {
  const vista1({super.key});

  @override
  State<vista1> createState() => _vista1State();
}

class _vista1State extends State<vista1> {

  final N1=TextEditingController();
  final N2=TextEditingController();
  String res='';
  late int uno,dos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controles de Formulario'),
        backgroundColor: Colors.lightBlueAccent,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [

            Center(
              child: Text('Calculadora',style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
            ),

            TextFormField(
              controller: N1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Ingrese Numero 1: ',
                  labelText: 'Numero1',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            TextFormField(
              controller: N2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Ingrese Numero 2: ',
                labelText: 'Numero 2',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
                onPressed: (){
                  uno=int.parse(N1.text);
                  dos=int.parse(N2.text);
                  int s=uno+dos;
                  setState(() {
                    res='$s';
                  });
                },
                child: Text('Suma'),
            ),

            SizedBox(
              height: 20,
            ),

            Text('Resultado: $res')

          ],
        ),
      ),

    );
  }
}
