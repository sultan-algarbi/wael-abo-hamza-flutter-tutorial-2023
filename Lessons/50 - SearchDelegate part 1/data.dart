import 'package:flutter/material.dart';
import 'package:wael_abo_hamza_tutorial/interfaces.dart';

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
    price: 30,
    image: 'assets/books/01.png',
    author: 'مارتن ريفز',
    category: 'التنمية البشرية',
  ),
  Book(
    title: 'التحفيز الاستراتيجي',
    description:
        'اكتشف كيف يمكن للتحفيز الفعال دعم أهدافك وتحفيزك نحو النجاح في الحياة والعمل',
    price: 25,
    image: 'assets/books/02.png',
    author: 'ربيع أبو شقرا',
    category: 'الإدارة',
  ),
  Book(
    title: 'ابتكر وانطلق',
    description:
        'اطلق العنان لإبداعك وتخيل الحلول الجديدة مع استراتيجيات ملهمة للإبداع والتفوق في المجالات المختلفة',
    price: 80,
    image: 'assets/books/03.png',
    author: 'جيف بيزوس',
    category: 'التسويق',
  ),
  Book(
    title: 'قم بقياس المهام',
    description:
        'تعلم كيفية تحديد وقياس الأهداف بفعالية لتحسين الأداء الشخصي والمهني',
    price: 100,
    image: 'assets/books/04.png',
    author: 'جون دوير',
    category: 'التطوير الشخصي',
  ),
  Book(
    title: 'التنافس في عصر الذكاء الاصنطاعي',
    description:
        'استعد لتحديات المستقبل مع فهم أساسيات التنافسية في زمن التطور التكنولوجي والذكاء الاصطناعي',
    price: 20,
    image: 'assets/books/05.png',
    author: 'كريم لاخاني',
    category: 'التكنولوجيا',
  ),
];
