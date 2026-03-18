import 'package:flutter/material.dart';

void main() => runApp(const MiZoologicoApp());

class MiZoologicoApp extends StatelessWidget {
  const MiZoologicoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // --- BARRA SUPERIOR CON COLOR #88E788 ---
        appBar: AppBar(
          title: const Text('Zoológico - Tarjetas'),
          backgroundColor: const Color(0xFF88E788), // Color verde solicitado
          foregroundColor: Colors.black, // Letras negras para contraste
          elevation: 2,
        ),
        body: SingleChildScrollView( // Permite hacer scroll si hay muchas tarjetas
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // 1. TARJETA DEL TIGRE
              _crearTarjetaAnimal(
                'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/t.jpg',
                'Tigre',
                'Tigre siberiano',
                const Color(0xFFFFDBBB),
              ),
              const SizedBox(height: 10),

              // 2. TARJETA DEL LOBO
              _crearTarjetaAnimal(
                'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/l.webp',
                'Lobo',
                'Lobo Ártico',
                const Color(0xFFD3D3D3),
              ),
              const SizedBox(height: 10),

              // 3. TARJETA DE LA JIRAFA
              _crearTarjetaAnimal(
                'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/j.jfif',
                'Jirafa',
                'Jirafa reticulada',
                const Color(0xFFFFF9C4), // Color amarillento suave
              ),
              const SizedBox(height: 10),

              // 4. TARJETA DEL HIPOPÓTAMO
              _crearTarjetaAnimal(
                'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/h.jpg',
                'Hipopotamo',
                'Hipopótamo pigmeo',
                const Color(0xFFE1BEE7), // Color lila suave
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Función para no repetir código y crear tarjetas fácilmente
  Widget _crearTarjetaAnimal(String url, String titulo, String subtitulo, Color fondo) {
    return Card(
      color: fondo,
      clipBehavior: Clip.antiAlias, // Para que la imagen respete los bordes redondeados
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          // Imagen
          SizedBox(
            height: 85,
            width: 120,
            child: Image.network(url, fit: BoxFit.cover),
          ),
          // Textos
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(titulo, style: const TextStyle(fontSize: 18, color: Colors.black)),
                  Text(subtitulo, 
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black)
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}