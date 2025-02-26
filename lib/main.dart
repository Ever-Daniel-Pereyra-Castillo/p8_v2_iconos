import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ever Daniel Pereyra Castillo'),
          titleTextStyle:
              const TextStyle(color: Color(0xff005e03), fontSize: 20),
          centerTitle: true,
          backgroundColor: const Color(0xffbcffbe),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Ever Daniel Pereyra Castillo Mat: 22308051281282\n\n\n",
                style: TextStyle(color: Color(0xff005e03), fontSize: 18),
              ),
              // Primera fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconWithLabel(
                    icon: Icons.access_alarm,
                    label: 'Tiempo',
                    color: Color(0xffdbc500),
                  ),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithLabel(
                    icon: Icons.thumb_down_alt_sharp,
                    label: 'No me gusta',
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  IconWithLabel(
                    icon: Icons.list,
                    label: 'OPC',
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconWithLabel(
                    icon: Icons.museum,
                    label: 'Home',
                    color: Color(0xff000000),
                  ),
                  SizedBox(width: 20), // Espacio entre los iconos
                  IconWithLabel(
                    icon: Icons.adb_sharp,
                    label: 'Android',
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  IconWithLabel(
                    icon: Icons.apple,
                    label: 'Apple',
                    color: Color(0xff979797),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget personalizado para un icono con subtítulo
class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const IconWithLabel({
    required this.icon,
    required this.label,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: color),
        SizedBox(height: 8), // Espacio entre el icono y el texto
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
