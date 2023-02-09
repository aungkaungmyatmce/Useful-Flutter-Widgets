import 'package:flutter/material.dart';

class FaceBookLikeViewSheet extends StatefulWidget {
  const FaceBookLikeViewSheet({Key? key}) : super(key: key);

  @override
  State<FaceBookLikeViewSheet> createState() => _FaceBookLikeViewSheetState();
}

class _FaceBookLikeViewSheetState extends State<FaceBookLikeViewSheet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) {
              return GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  color: Color.fromRGBO(0, 0, 0, 0.001),
                  child: GestureDetector(
                    onTap: () {},
                    child: DraggableScrollableSheet(
                      initialChildSize: 0.4,
                      minChildSize: 0.2,
                      maxChildSize: 0.75,
                      builder: (_, controller) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(25.0),
                              topRight: const Radius.circular(25.0),
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.remove,
                                color: Colors.grey[600],
                              ),
                              Expanded(
                                child: ListView.builder(
                                  controller: controller,
                                  itemCount: 100,
                                  itemBuilder: (_, index) {
                                    return Card(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Text("Element at index($index)"),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Text('Click'),
      ),
    );
  }
}
