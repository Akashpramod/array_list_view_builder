import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  final List<String> imageUrls = [
    'https://th.bing.com/th/id/OIP.gliyjHYjQD6TFPEaSmZ0rQHaEo?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.Z2m9R7Qbep24w5ivzu4HkgHaHd?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.4db8FSykvVhnJtG7Jun7AAHaEK?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/R.43af0a872c4946484c752e65289f67cb?rik=mQFOR0c2cglssQ&riu=http%3a%2f%2fwallpaperscrate.com%2fwp-content%2fuploads%2f2015%2f03%2fHD-Bike-Wallpaper.jpg&ehk=WL0pwM4npO9cYcfI0WRTa1NZWpjCg0VKuaj4%2b1glQTg%3d&risl=&pid=ImgRaw&r=0'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Array_List_View_builder', textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
  itemCount: imageUrls.length,
  itemBuilder: (context, index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(height: 300, width: 35,
        child: ListTile(
          title:(Image.network(imageUrls[index])),
        ),
      ),
    );
  },
)
    );
  }
}