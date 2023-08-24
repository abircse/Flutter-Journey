import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyPaginationActivity extends StatefulWidget {
  const MyPaginationActivity({super.key});

  @override
  State<MyPaginationActivity> createState() => _MyPaginationActivityState();
}

class _MyPaginationActivityState extends State<MyPaginationActivity> {
  List<dynamic> productList = [];
  int page = 1;
  int limit = 15;
  ScrollController scrollController = ScrollController();
  bool isLoadMore = false;

  fetchProducts() async {
    //final url = Uri.parse("https://randomuser.me/api/?page=$page&results=$limit");
    final url = Uri.parse("https://www.cbnbd.com/wp-json/wp/v2/posts?_embed&page=$page&per_page=20");

    final response = await http.get(url);
    final body = response.body;
    final json = jsonDecode(body);

    if (response.statusCode == 200) {
      setState(() {
        productList = productList + json;
      });
    }
  }

  @override
  void initState() {
    if(isLoadMore) return;
    fetchProducts();
    scrollController.addListener(() async {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {

        setState(() {
        isLoadMore = true;
        });

        page = page + 1;
        print("Called: $page");
        await fetchProducts();

        setState(() {
          isLoadMore = false;
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 220, 220),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          controller: scrollController,
          itemCount: isLoadMore ? productList.length + 1 : productList.length,
          itemBuilder: (context, index) {
            if (index >= productList.length) {
              return const Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(child: CircularProgressIndicator()),
              );
            } else {
              final product = productList[index];
              return Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(product['jetpack_featured_media_url'])),
                    title: Text(product['title']['rendered']),
                    subtitle: Text(product['excerpt']['rendered']),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
