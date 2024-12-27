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
          const SizedBox(height: 20),
          const Expanded(child: RequisicionesTable()),
        ],
      ),
    );
  }
}

class RequisicionesTable extends StatelessWidget {
  const RequisicionesTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        headingRowColor: MaterialStateProperty.resolveWith(
          (states) => const Color.fromRGBO(253, 210, 29, 1),
        ),
        dataRowColor: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.selected)
              ? Colors.grey[200]
              : Colors.white,
        ),
        columnSpacing: 20,
        border: TableBorder.all(
          color: Colors.grey,
          width: 1,
          borderRadius: BorderRadius.circular(5),
        ),
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'ID',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Colaborador',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Comentarios',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Tipo',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Fecha de Registro',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Seguimiento',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'Detalles',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text('0001')),
              DataCell(Text('Juan Pérez')),
              DataCell(Text('Revisión requerida')),
              DataCell(Text('Material')),
              DataCell(Text('2024-12-01')),
              DataCell(Text('En Proceso')),
              DataCell(Text('Ver Detalles')),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text('0002')),
              DataCell(Text('María Gómez')),
              DataCell(Text('Aprobado')),
              DataCell(Text('Servicio')),
              DataCell(Text('2024-12-05')),
              DataCell(Text('Completado')),
              DataCell(Text('Ver Detalles')),
            ],
          ),
        ],
      ),
    );
  }
}
