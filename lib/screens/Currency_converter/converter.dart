import 'dart:convert';

import 'package:calculator/Core/domain/entity/post.dart';
import 'package:calculator/Core/domain/entity/valute.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Core/domain/api_clients/api_clients.dart';

class Currency_conver extends StatefulWidget {
  @override
  State<Currency_conver> createState() => _Currency_converState();
}

class _Currency_converState extends State<Currency_conver> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build\
    var _future;
    var x;
    x = ApiClient();
    _future = x.fetchPost();
    @override
    void initState() {
      x = ApiClient();
      _future = x.fetchPost();
      super.initState();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: FutureBuilder<Post>(
          future: _future,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.Date);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
