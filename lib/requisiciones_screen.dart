import 'package:flutter/material.dart';

class RequisicionesScreen extends StatelessWidget {
  const RequisicionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 131, 0, 1),
                  Color.fromRGBO(253, 210, 29, 1),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/img/Logo-NIO.png',
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/img/sistemas_perfil.jpeg'),
                  ),
                ],
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          ),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Lista de Requisiciones',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    //ACCION DEL PRIMER BOTON
                    //print('FORMULARIO DE CREACION DE REQUISICION DE MATERIAL');
                  },
                  icon: const Icon(Icons.note_add, color: Colors.white),
                  label: const Text(
                    'Requisición de Material',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  ),
                ),
                const SizedBox(width: 10),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    //ACCION DEL SEGUNDO BOTON
                    //print('FORMULARIO DE CREACION DE REQUISICION DE SERVICIO');
                  },
                  icon: const Icon(Icons.note_add, color: Colors.white),
                  label: const Text('Requisición de Servicio',
                      style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
