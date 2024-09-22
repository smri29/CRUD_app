import 'package:flutter/material.dart';

class AddNewProduct extends StatefulWidget {
  const AddNewProduct({super.key});

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
  final TextEditingController _productNameTEController = TextEditingController();
  final TextEditingController _productCodeTEController = TextEditingController();
  final TextEditingController _productImageTEController = TextEditingController();
  final TextEditingController _unitPriceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _QuantityTEController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Product'),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildNewProductForm(),
      ),
    );
  }

  Widget _buildNewProductForm() {
    return Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              controller: _productNameTEController,
              decoration: InputDecoration(
                hintText: 'Name',
                labelText: 'Product Name',
              ),
            ),
            TextFormField(
              controller: _productCodeTEController,
              decoration: InputDecoration(
                hintText: 'Code',
                labelText: 'Product Code',
              ),
            ),
            TextFormField(
              controller: _productImageTEController,
              decoration: InputDecoration(
                hintText: 'Image',
                labelText: 'Product Image',
              ),
            ),
            TextFormField(
              controller: _unitPriceTEController,
              decoration: InputDecoration(
                hintText: 'Unit Price',
                labelText: 'Unit Price',
              ),
            ),
            TextFormField(
              controller: _QuantityTEController,
              decoration: InputDecoration(
                hintText: 'Qnty',
                labelText: 'Quantity',
              ),
            ),
            TextFormField(
              controller: _totalPriceTEController,
              decoration: InputDecoration(
                hintText: 'total price',
                labelText: 'Total Price',
              ),
            ),
            const SizedBox(height: 16,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size.fromWidth(double.maxFinite),
              ),
                onPressed: _onTapAddProductButton,
                child: Text('Add Product'),
            )
          ],
        ),
      );
  }

  void _onTapAddProductButton(){

  }

  @override
  void dispose() {
    _productNameTEController.dispose();
    _productCodeTEController.dispose();
    _productImageTEController.dispose();
    _unitPriceTEController.dispose();
    _QuantityTEController.dispose();
    _totalPriceTEController.dispose();
    super.dispose();
  }
}
