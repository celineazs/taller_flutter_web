import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 

List<String> noteContents = [
  'Crear repositorio en GitHub',
  'Crear el diseño para una página de notas.',
  'Enviar repositorio a moodle.',
  'Diseñar una página web de notas, para organizar tus tiempo.', 
  'Enviar las tareas del taller para el dia 29 de noviembre, unico día.',
];

void main() {
  runApp(const MyNotesApp());
}

class MyNotesApp extends StatelessWidget {
  const MyNotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Bienvenid@ a tus notas',
                    style: GoogleFonts.lora(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '¡Organiza tu vida en tiempos!',
                    style: GoogleFonts.lora(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
              children: [
                Expanded(
                flex: 1,
                child: Card(
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.pink[100],
                  child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                      'Mis notas',
                      style: GoogleFonts.lora(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                      ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 241, 132, 169),
                      child: const Icon(Icons.school, color: Colors.white),
                      ),
                      title: Text(
                      'Mostrar todo',
                      style: GoogleFonts.lora(color: Colors.white),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                      backgroundColor: Colors.pink,
                      child: const Icon(Icons.lightbulb, color: Colors.white),
                      ),
                      title: Text(
                      'Ideas',
                      style: GoogleFonts.lora(color: Colors.white),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 241, 132, 169),
                      child: const Icon(Icons.edit, color: Colors.white),
                      ),
                      title: Text(
                      'Por hacer',
                      style: GoogleFonts.lora(color: Colors.white),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                      backgroundColor: Colors.pink,
                      child: const Icon(Icons.check_circle, color: Colors.white),
                      ),
                      title: Text(
                      'Terminado',
                      style: GoogleFonts.lora(color: Colors.white),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 241, 132, 169),
                      child: const Icon(Icons.archive, color: Colors.white),
                      ),
                      title: Text(
                      'Archivado',
                      style: GoogleFonts.lora(color: Colors.white),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                      backgroundColor: Colors.pink,
                      child: const Icon(Icons.delete, color: Colors.white),
                      ),
                      title: Text(
                      'Eliminado',
                      style: GoogleFonts.lora(color: Colors.white),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 241, 132, 169),
                      child: const Icon(Icons.person, color: Colors.white),
                      ),
                      title: Text(
                      'Cuenta',
                      style: GoogleFonts.lora(color: Colors.white),
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      
                    ),
                    ],
                  ),
                  ),
                ),
                ),
                    Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return GridView.count(
                        crossAxisCount: constraints.maxWidth > 800 ? 3 : constraints.maxWidth > 600 ? 2 : 1,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        children: List.generate(noteContents.length, (index) {
                          return Card(
                          color: Colors.pink[50],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                              index == 0
                                ? 'GitHub'
                                : index == 1
                                ? 'Figma'
                                : index == 2
                                  ? 'NextJS'
                                  : index == 3
                                  ? 'Flutter'
                                  : 'Urgente',
                              style: GoogleFonts.lora(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink,
                              ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                              noteContents[index],
                              style: GoogleFonts.lora(
                                fontSize: 12,
                                color: Colors.pink[800],
                              ),
                              ),
                              const Spacer(),
                              Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.pink,
                                ),
                                child: Text(
                                  'Eliminar',
                                  style: GoogleFonts.lora(),
                                ),
                                ),
                                const SizedBox(width: 4),
                                ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.pink,
                                ),
                                child: Text(
                                  'Editar',
                                  style: GoogleFonts.lora(color: Colors.white),
                                ),
                                ),
                              ],
                              ),
                            ],
                            ),
                          ),
                          );
                        }),
                        );
                      },
                      ),
                    ),
                    ),
                  ],
                  ),
                ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
          },
          label: Text(
            'Agregar',
            style: GoogleFonts.lora(color: Colors.white),
          ),
          icon: const Icon(Icons.add, color: Colors.white),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
