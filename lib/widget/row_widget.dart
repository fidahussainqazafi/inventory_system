import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 200,
      color: Colors.white.withOpacity(.5),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  color: Colors.deepPurple,
                ),
                width: 330,
                height: 50,
                child: Center(
                  child: Text(
                    'Alex Smith',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )


            ],
          ),
          SizedBox(height: 10,),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text('Total'),

                  Text('\$230'),

                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(

              children: [

                Text('1 X'),
                SizedBox(width: 10,),
                Icon(Icons.watch),
                SizedBox(width: 20,),
                Text('Apple Watch',style: TextStyle(color: Colors.black),)

              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(

              children: [

                Text('1 X'),
                SizedBox(width: 10,),
                Icon(Icons.gite),
                SizedBox(width: 20,),
                Text('Naked Band',style: TextStyle(color: Colors.black),)

              ],
            ),
          ),
        ],
      ),
    );
  }
}
