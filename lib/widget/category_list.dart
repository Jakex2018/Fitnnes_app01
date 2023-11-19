import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectIndex = 0;
  List categories =['All' ,'Pull','Push','Core'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      height: 50,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10,),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            setState(() {
              selectIndex = index; 
            });
          },
          child: Container(
            alignment: Alignment.center,
            padding:const EdgeInsets.symmetric(horizontal:30),
            margin: EdgeInsets.only(left: 0 ,top: 5,
              right: index == categories.length -1 ? 10: 0),
            decoration: BoxDecoration(
              border: index == selectIndex ?Border.all(color: Colors.white,width: 3):const Border(bottom: BorderSide.none),
              borderRadius: BorderRadius.circular(15)
            ),
            child:Text(categories[index],style: TextStyle(color: index== selectIndex? Colors.white:Colors.green),),
          ),
        ),
      ),
    );
  }
}