import 'package:flutter/material.dart';
import 'package:todoapp/screens/add_new_product.dart';
import '../widgets/product_item.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          itemCount: 20,
            itemBuilder: (context, index){
            return const ProductItem();
            },
          separatorBuilder: (context, index){
            return const SizedBox(height: 16,);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return const AddNewProduct();
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


