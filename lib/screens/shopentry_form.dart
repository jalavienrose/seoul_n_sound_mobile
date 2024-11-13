import 'package:flutter/material.dart';
import 'package:seoul_n_sound/widgets/left_drawer.dart';

class ShopEntryFormPage extends StatefulWidget {
  const ShopEntryFormPage({super.key});

  @override
  State<ShopEntryFormPage> createState() => _ShopEntryFormPageState();
}

class _ShopEntryFormPageState extends State<ShopEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _amount = 0;
  int _rating = 0;
  String _description = "";
  int _price = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: const Center(
         child: Text(
           'Add your product',
         ),
       ),
       backgroundColor: Theme.of(context).colorScheme.primary,
       foregroundColor: Colors.white,
     ),
     drawer: const LeftDrawer(),
     body: Form(
       key: _formKey,
       child: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(
                     decoration: InputDecoration(
                       hintText: "Product name",
                       labelText: "Product name",
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5.0),
                       ),
                     ),
                     onChanged: (String? value) {
                       setState(() {
                         _name = value!;
                       });
                     },
                     validator: (String? value) {
                       if (value == null || value.isEmpty) {
                         return "Product name can't be empty!";
                       }
                       if (value.length < 4) {
                         return "Product name must have at least 4 characters!";
                       }
                       if (value.length > 30) {
                         return "Product name must not exceed 50 characters!";
                       }
                       return null;
                     },
                   ),
                 ),
                 Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Amount",
                        labelText: "Amount",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _amount = int.tryParse(value!) ?? 0;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Amount can't be empty!";
                        }
                        if (int.tryParse(value) == null) {
                          return "Amount must be a number!";
                        }
                        else if (int.tryParse(value)! <= 0) {
                          return "Amount can't be less than 0!";
                        }
                        return null;
                      },
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(
                     decoration: InputDecoration(
                       hintText: "Description",
                       labelText: "Description",
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5.0),
                       ),
                     ),
                     onChanged: (String? value) {
                       setState(() {
                         _description = value!;
                       });
                     },
                     validator: (String? value) {
                       if (value == null || value.isEmpty) {
                         return "Description can't be empty!";
                       }
                       if (value.length < 4) {
                         return "Description must have at least 4 characters!";
                       }
                       if (value.length > 150) {
                         return "Description must not exceed 150 characters!";
                       }
                       return null;
                     },
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextFormField(
                     decoration: InputDecoration(
                       hintText: "Rating",
                       labelText: "Rating",
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(5.0),
                       ),
                     ),
                     onChanged: (String? value) {
                       setState(() {
                         _rating = int.tryParse(value!) ?? 0;
                       });
                     },
                     validator: (String? value) {
                       if (value == null || value.isEmpty) {
                         return "Rating can't be empty!";
                       }
                       if (int.tryParse(value) == null) {
                         return "Rating must be a number!";
                       }
                       else if (int.tryParse(value)! <= 0) {
                         return "Rating can't be less than 0!";
                       }
                       return null;
                     },
                   ),
                 ),
                 Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Price",
                        labelText: "Price",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _price = int.tryParse(value!) ?? 0;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Price can't be empty!";
                        }
                        if (int.tryParse(value) == null) {
                          return "Price must be a number!";
                        }
                        else if (int.tryParse(value)! <= 0) {
                          return "Price can't be less than 0!";
                        }
                        return null;
                      },
                    ),
                  ),
               Align(
                 alignment: Alignment.bottomCenter,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(
                     style: ButtonStyle(
                       backgroundColor: WidgetStateProperty.all(
                           Theme.of(context).colorScheme.primary),
                     ),
                     onPressed: () {
                       if (_formKey.currentState!.validate()) {
                         showDialog(
                             context: context,
                             builder: (context) {
                               return AlertDialog(
                                 title: const Text('Product successfully added!'),
                                 content: SingleChildScrollView(
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text('Product name: $_name'),
                                       Text('Price: $_price'),
                                       Text('Amount: $_amount'),
                                       Text('Rating: $_rating'),
                                       Text('Description: $_description'),
                                     ],
                                   ),
                                 ),
                                 actions: [
                                   TextButton(
                                     child: const Text('OK'),
                                     onPressed: () {
                                       Navigator.pop(context);
                                       _formKey.currentState!.reset();
                                     },
                                   ),
                                 ],
                               );
                             },
                           );
                       }
                     },
                     child: const Text(
                       "Save",
                       style: TextStyle(color: Colors.white),
                     ),
                   ),
                 ),
               ),
             ],
           ),
       ),
     ),
   );
  }
}