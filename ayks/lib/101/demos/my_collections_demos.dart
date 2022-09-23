import 'package:flutter/material.dart';

class MyCollectionsDemoView extends StatefulWidget {
  const MyCollectionsDemoView({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemoView> createState() => _MyCollectionsDemoViewState();
}

class _MyCollectionsDemoViewState extends State<MyCollectionsDemoView> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _items = [
      CollectionModel(
          imagePath: 'assets/ıc_removed.png', title: 'Abstract Art', price: 3),
      CollectionModel(
          imagePath: 'assets/ıc_removed.png', title: 'Abstract Art1', price: 3),
      CollectionModel(
          imagePath: 'assets/ıc_removed.png', title: 'Abstract Art2', price: 3),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        padding: _CollectionPadding().paddingSymmetric,
        itemBuilder: (context, index) {
          return _CollectionsCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CollectionsCard extends StatelessWidget {
  const _CollectionsCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: _CollectionPadding().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: _CollectionPadding().paddingTop,
          child: Column(
            children: [
              Expanded(
                  child: Image.asset(
                _model.imagePath,
                fit: BoxFit.fill,
              )),
              Padding(
                padding: _CollectionPadding().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(_model.title), Text('${_model.price} eth ')],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final int price;
  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class _CollectionPadding {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGenel = const EdgeInsets.all(20);
  final paddingSymmetric = const EdgeInsets.symmetric(horizontal: 10);
}
