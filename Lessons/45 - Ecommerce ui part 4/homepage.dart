import 'package:flutter/material.dart';
import 'package:wael_abo_hamza_tutorial/interfaces.dart';
import 'package:wael_abo_hamza_tutorial/itemdetails.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Category> categories = [
    Category(
      icon: Icons.history,
      title: 'التاريخ',
    ),
    Category(
      icon: Icons.book,
      title: 'الرواية',
    ),
    Category(
      icon: Icons.people,
      title: 'العلوم الإنسانية',
    ),
    Category(
      icon: Icons.cloud,
      title: 'العلوم الشرعية',
    ),
    Category(
      icon: Icons.stairs,
      title: 'التنمية البشرية',
    ),
    Category(
      icon: Icons.policy,
      title: 'علوم سياسية',
    ),
  ];

  List<Book> books = [
    Book(
      title: 'آلة الخيال',
      description:
          'دليل يساعد الشركات على إعمال خيالها بحثاً عن طرق جديدة قوية لتحقيق النجاح',
      price: 1000,
      image: 'assets/books/01.png',
    ),
    Book(
      title: 'التحفيز الاستراتيجي',
      description:
          'اكتشف كيف يمكن للتحفيز الفعال دعم أهدافك وتحفيزك نحو النجاح في الحياة والعمل',
      price: 200,
      image: 'assets/books/02.png',
    ),
    Book(
      title: 'ابتكر وانطلق',
      description:
          'اطلق العنان لإبداعك وتخيل الحلول الجديدة مع استراتيجيات ملهمة للإبداع والتفوق في المجالات المختلفة',
      price: 500,
      image: 'assets/books/03.png',
    ),
    Book(
      title: 'قم بقياس المهام',
      description:
          'تعلم كيفية تحديد وقياس الأهداف بفعالية لتحسين الأداء الشخصي والمهني',
      price: 300,
      image: 'assets/books/04.png',
    ),
    Book(
      title: 'التنافس في عصر الذكاء الاصنطاعي',
      description:
          'استعد لتحديات المستقبل مع فهم أساسيات التنافسية في زمن التطور التكنولوجي والذكاء الاصطناعي',
      price: 400,
      image: 'assets/books/05.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        elevation: 20,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'المفضلة',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'السلة',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'الحساب',
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'بحث',
                        border: InputBorder.none,
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.menu),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              margin: const EdgeInsets.only(top: 30),
              child: const Text(
                'التصنيفات',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 115,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(categories[index].icon, size: 40),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            categories[index].title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: const Text(
                'الكتب الجديدة',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.53,
                ),
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemDetails(book: books[index]),
                        ),
                      );
                    },
                    child: Card(
                      borderOnForeground: false,
                      clipBehavior: Clip.none,
                      surfaceTintColor: Colors.transparent,
                      shape: InputBorder.none,
                      shadowColor: Colors.transparent,
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                            ),
                            child: Expanded(
                              child: Image.asset(
                                books[index].image,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  books[index].title,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '${books[index].description.substring(0, 60)}...',
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '\$${books[index].price}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
