import 'package:flutter/material.dart';

class ListProduk extends StatefulWidget {
  const ListProduk({super.key});

  @override
  State<ListProduk> createState() => _ListProdukState();
}

class _ListProdukState extends State<ListProduk> {
  final List dataproduk = [
    'Elegant Black Dress',
    'Casual Denim Jacket',
    'Sporty Running Shoes',
    'Floral Print Blouse',
    'Classic Leather Belt',
    'Slim Fit Chinos',
    'Vintage Sunglasses',
    'Striped Polo Shirt',
    'Bohemian Maxi Skirt',
    'Urban Backpack'
  ];
  final List harga = [
    'Harga: Rp 500.000',
    'Harga: Rp 350.000',
    'Harga: Rp 600.000',
    'Harga: Rp 250.000',
    'Harga: Rp 120.000',
    'Harga: Rp 300.000',
    'Harga: Rp 150.000',
    'Harga: Rp 180.000',
    'Harga: Rp 400.000',
    'Harga: Rp 280.000'
  ];
  final List noproduk = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        backgroundColor: const Color.fromARGB(255, 228, 151, 241),
      ),
      body: ListView.builder(
          itemCount: dataproduk.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
                color: const Color.fromARGB(255, 255, 255, 255),
                elevation: 10,
                shadowColor: const Color.fromARGB(255, 211, 114, 252),
                child: ListTile(
                  title: Text(
                    dataproduk[index],
                    style: const TextStyle(fontSize: 30),
                  ),
                  subtitle: Text(harga[index]),
                  leading: CircleAvatar(
                    child: Text(noproduk[index]),
                  ),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.delete)),
                ));
          }),
    );
  }
}
