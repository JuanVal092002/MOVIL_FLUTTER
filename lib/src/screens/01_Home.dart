// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.lightBlue[400],
//         foregroundColor: Colors.white,
//         title: Padding(
//           padding: const EdgeInsets.only(top: 8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text("Mercado Libre"),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/login');
//                 },
//                 child: Text("Iniciar Sesion"),
//                 style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   backgroundColor: Colors.white,
//                   foregroundColor: Colors.lightBlue[400],
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/registro');
//                 },
//                 child: Text("Registrarse"),
//                 style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   backgroundColor: Colors.white,
//                   foregroundColor: Colors.lightBlue[400],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(8.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                         prefixIcon: Icon(Icons.search),
//                         hintText: 'Buscar',
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(20.0),
//                             borderSide: BorderSide.none),
//                         filled: true,
//                         fillColor: Colors.grey[200]),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.production_quantity_limits_rounded)),
//                 IconButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, '/perfil');
//                     },
//                     icon: Icon(Icons.person)),
//                 IconButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, '/users');
//                     },
//                     icon: Icon(Icons.supervised_user_circle_outlined))
//               ],
//             ),
//             SizedBox(height: 12),
//             Expanded(
//               child: GridView.builder(
//                 padding: EdgeInsets.all(10),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 3,
//                 ),
//                 itemCount: categories.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return GestureDetector(
//                     onTap: () {},
//                     child: Card(
//                       color: Colors.lightBlue[400],
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(categories[index]["icono"],
//                               size: 40.0, color: Colors.white),
//                           SizedBox(height: 5.0),
//                           Text(
//                             categories[index]['titulo'],
//                             textAlign: TextAlign.center,
//                             style:
//                                 TextStyle(fontSize: 12.0, color: Colors.white),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.white,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home, size: 30.0, color: Colors.lightBlue[400]),
//             label: 'Inicio',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopify_outlined,
//                 size: 30.0, color: Colors.lightBlue[400]),
//             label: 'Compra',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.exit_to_app,
//                 size: 30.0, color: Colors.lightBlue[400]),
//             label: 'Salir',
//           ),
//         ],
//       ),
//     );
//   }
// }

// final List<Map<String, dynamic>> categories = [
//   {'codigo': '001', 'icono': Icons.home, 'titulo': 'Hogar y muebles'},
//   {'codigo': '002', 'icono': Icons.phone_android, 'titulo': 'Celulares'},
//   {'codigo': '003', 'icono': Icons.checkroom, 'titulo': 'Ropa y accesorios'},
//   {'codigo': '004', 'icono': Icons.computer, 'titulo': 'Computación'},
//   {'codigo': '005', 'icono': Icons.kitchen, 'titulo': 'Electro Hogar'},
//   {'codigo': '006', 'icono': Icons.sports_soccer, 'titulo': 'Deportes'},
//   {'codigo': '007', 'icono': Icons.build, 'titulo': 'Herramientas'},
//   {'codigo': '008', 'icono': Icons.brush, 'titulo': 'Belleza'},
//   {'codigo': '009', 'icono': Icons.tv, 'titulo': 'Electrónica y audio'},
//   {'codigo': '010', 'icono': Icons.fastfood, 'titulo': 'Alimentos y bebidas'},
//   {'codigo': '011', 'icono': Icons.pets, 'titulo': 'Animales y mascotas'},
// ];

import 'package:flutter/material.dart';
import 'package:flutter_application_api/src/controllers/consultarCategorias.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[400],
        foregroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Mercado Libre"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text("Iniciar Sesión"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.lightBlue[400],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/registro');
                },
                child: Text("Registrarse"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.lightBlue[400],
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Buscar',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.grey[200]),
                  ),
                ),
                SizedBox(width: 10),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/categories');
                    },
                    icon: Icon(Icons.category_outlined)),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/products');
                    },
                    icon: Icon(Icons.production_quantity_limits_rounded)),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/perfil');
                    },
                    icon: Icon(Icons.person)),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/users');
                    },
                    icon: Icon(Icons.supervised_user_circle_outlined))
              ],
            ),
            SizedBox(height: 12),
            Expanded(
              child: FutureBuilder<List<Categorie>>(
                future:
                    consultarCategoria(), // Consumir la función que llama al API
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(child: Text('No hay categorías disponibles'));
                  } else {
                    final categories = snapshot.data!;
                    return GridView.builder(
                      padding: EdgeInsets.all(10),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            // Lógica para manejar el clic en una categoría
                          },
                          child: Card(
                            color: Colors.lightBlue[400],
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 5.0),
                                Text(
                                  categories[index].nombre,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30.0, color: Colors.lightBlue[400]),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopify_outlined,
                size: 30.0, color: Colors.lightBlue[400]),
            label: 'Compra',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app,
                size: 30.0, color: Colors.lightBlue[400]),
            label: 'Salir',
          ),
        ],
      ),
    );
  }
}
