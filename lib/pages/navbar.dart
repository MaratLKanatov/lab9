import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  Widget getListItem(String text, String imagePath) {
    return ListTile(title: Container(
      child: Row(children: [
        Padding(padding: const EdgeInsets.only(
          right: 15), 
          child: Padding(padding: EdgeInsets.only(bottom: 15), child: ImageIcon(
            AssetImage(imagePath),
            color: Colors.black,
            size: 32,
          ),),),
        Text(text, style: const TextStyle(
          fontWeight: FontWeight.bold, 
          fontSize: 18,)),
      ],
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      ), padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),),
      onTap: () => {},); 
  }

  Widget getListItem2(String text, IconData icon) {
    return ListTile(title: Container(
      child: Row(children: [
        Padding(padding: const EdgeInsets.only(
          right: 15), 
          child: Padding(padding: EdgeInsets.only(bottom: 15), child: Icon(icon),),),
        Text(text, style: const TextStyle(
          fontWeight: FontWeight.bold, 
          fontSize: 18,)),
      ],
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      ), padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),),
      onTap: () => {},); 
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const Padding(padding: EdgeInsets.all(20), child: Text('Test Company', style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ), textAlign: TextAlign.center,),),
          Padding(padding: const EdgeInsets.all(20), child: Text('       Aty Zhoni', style: TextStyle(
            color: Colors.grey[700], 
            fontWeight: FontWeight.w900, 
            fontSize: 25),),),
          Divider(color: Colors.grey[800],),
          getListItem('Продажа билетов', 'images/ticket_img64x57.png'),
          getListItem('Список\nадминистраторов', 'images/administrator-icon.png'),   
          getListItem('Автобусы', 'images/ticket_img64x57.png'),
          getListItem('Статистика', 'images/ticket_img64x57.png'),
          getListItem('Пассажиры', 'images/ticket_img64x57.png'),
          getListItem('Расписание', 'images/ticket_img64x57.png'),
          getListItem('История', 'images/ticket_img64x57.png'),
          getListItem('Настройка', 'images/ticket_img64x57.png'),
        ],),
    );
  }
}