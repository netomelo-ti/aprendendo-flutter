import 'package:aprendendo_flutter/views/pages/android/page-views/home/one_page_android.dart';
import 'package:aprendendo_flutter/views/pages/android/page-views/home/three_page_android.dart';
import 'package:aprendendo_flutter/views/pages/android/page-views/home/two_page_android.dart';
import 'package:flutter/material.dart';


class HomePageAndroid extends StatelessWidget {
  const HomePageAndroid({super.key});
  
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> page = ValueNotifier<int>(0);
    final PageController controllerPage = PageController(initialPage: 0);
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Uso de PageView"),
      ),
      body: PageView(
        controller: controllerPage,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          OnePageAndroid(),
          TwoPageAndroid(),
          ThreePageAndroid()
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: page,
        builder: (_, valor, __) => BottomNavigationBar(
        currentIndex: valor,
        onTap: (int target){
          page.value = target;
          //controllerPage.animateToPage(target, duration: const Duration(milliseconds: 650), curve: Curves.easeOutQuad);
          controllerPage.jumpToPage(target);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Posts"),
          BottomNavigationBarItem(icon: Icon(Icons.comment), label: "Comentários"),
          BottomNavigationBarItem(icon: Icon(Icons.check), label: "Tarefas"),
        ]),
      ),
    );
  }
}