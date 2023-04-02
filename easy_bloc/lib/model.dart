import 'dart:convert';
import 'package:easy_bloc/assets/colors.dart';
import 'package:easy_bloc/productRepozitor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Product {
  int id;
  String name;
  List images;
  String content;
  Map subcategory;
  Map category;
  Product({
    required this.id,
    required this.name,
    required this.images,
    required this.content,
    required this.subcategory,
    required this.category,
  });

  Product copyWith({
    int? id,
    String? name,
    String? content,
    List? images,
    Map? subcategory,
    Map? category,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      content: content ?? this.content,
      images: images ?? this.images,
      subcategory: subcategory ?? this.subcategory,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'content': content,
      'images': images,
      'subcategory': subcategory,
      'category': category,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
        id: map['id'] as int,
        name: map['name'] as String,
        content: map['content'] as String,
        images: map['images'] as List,
        subcategory: map['subcategory'] as Map,
        category: map['category'] as Map);
  }

  @override
  String toString() =>
      'Product(id: $id, name: $name, images:$images,content : $content,subcategory : $subcategory,category : $category)';

  @override
  bool operator ==(covariant Product other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.images == images &&
        other.content == content &&
        other.subcategory == subcategory &&
        other.category == category;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}

class GridModel extends StatefulWidget {
  const GridModel({
    Key? key,
    required this.images,
    required this.name,
  }) : super(key: key);
  final List images;
  final String name;

  @override
  State<GridModel> createState() => _GridModelState();
}

class _GridModelState extends State<GridModel> {
  @override
  Widget build(BuildContext context) {
    var vm = RepositoryProvider.of<ProductRepo>(context);
    return SizedBox(
      width: 140,
      height: 180,
      child: Column(
        children: [
          SizedBox(
            width: 140,
            height: 160,
            child: PageView.builder(
              itemCount: widget.images.length,
              controller: PageController(viewportFraction: 1),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int itemIndex) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://easy-back.herokuapp.com${widget.images[itemIndex]['image']}'),
                    ),
                  ),
                );
              },
            ),
          ),
          Flexible(
            child: Text(
              widget.name,
              style: TextStyle(
                color: AppColors.background == Colors.black
                    ? Colors.white
                    : Colors.black,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}




class Grid extends StatefulWidget {
  Grid({
    Key? key,
    required this.products,
  }) : super(key: key);
  List products;
  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: widget.products.length,
            itemBuilder: (BuildContext context, int itemIndex) {
              return SizedBox(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: GridModel(
                        images: widget.products[itemIndex].images,
                        name: widget.products[itemIndex].name,
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
