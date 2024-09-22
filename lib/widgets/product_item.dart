import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      //tileColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),//this is called blending
      tileColor: Colors.lightGreen,
      title: Text('Product Name'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Prodct Code: CODE'),
          Text('Price: \$120'),
          Text('Quantity: 2'),
          Text('Total Price: \$240'),
          Divider(),
          ButtonBar(
            children: [
              TextButton.icon(
                onPressed: (){},
                icon: Icon(Icons.edit),
                label: Text('Edit'),
              ),
              TextButton.icon(
                onPressed: (){},
                icon: Icon(Icons.delete, color: Colors.red,),
                label: Text('Delete', style: TextStyle(
                  color: Colors.red,
                ),),
              ),
            ],
          ),
        ],
      ),

    );
  }
}