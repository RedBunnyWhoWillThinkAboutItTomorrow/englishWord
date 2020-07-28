 import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = " Adjectives";

    List choices = const [
      const Choice(
          title: 'Long',
          description:
          'довгий',
          imglink:
          'https://www.redken.com/~/media/lookbook/albums/hairstyle/dry-styling/triple-dry-after.jpg?h=1040&w=800&la=en&hash=E315E6EF0FEFA35D45731C9DE9440AC86546F4BC'),
      const Choice(
          title: 'Short',
          description:
          'Короткий',
          imglink:
          'https://i.pinimg.com/originals/34/cc/48/34cc480a1d055eabc86926f6a8420eab.jpg'),
      const Choice(
          title: 'Big',
          description:
          'Великий',
          imglink:
          'https://www.rainbowtours.co.uk/upload-files/blog-sections/section-34_175.jpg'),
      const Choice(
          title: 'Small',
          description:
          'Маленький',
          imglink:
          'https://i.pinimg.com/originals/7a/af/0f/7aaf0f1d48f57b7779c0fbcf103c2d0f.jpg'),
      const Choice(
          title: 'Dirty',
          description:
          'Брудний',
          imglink:
          'https://thumbs.dreamstime.com/b/picture-dirty-hands-man-picture-dirty-hands-man-soiled-oil-vaseline-isolated-white-background-145589845.jpg'),
      const Choice(
          title: 'Weak',
          description:
          'Слабкий',
          imglink:
          'https://www.digopaul.com/wp-content/uploads/related_images/2015/09/09/weak_2.jpg'),
      const Choice(
          title: 'Strong',
          description:
          'Сильний',
          imglink:
          'https://purplenails78.com/wp-content/uploads/2019/04/strong.jpeg'),
      const Choice(
          title: 'Beautiful',
          description:
          'Гарний',
          imglink:
          'https://i.pinimg.com/originals/ff/a8/fa/ffa8fa49db03e77c9294019e592b5293.jpg'),
      const Choice(
          title: 'Ugly',
          description:
          'Потворний',
          imglink:
          'https://upload.wikimedia.org/wikipedia/ru/7/77/Stay_Ugly.jpg'),
      const Choice(
          title: 'Slow',
          description:
          'Повільний',
          imglink:
          'https://mytrainr.nl/wp-content/uploads/2018/06/slow_snail.jpg'),
      const Choice(
          title: 'Fast',
          description:
          'Швидкий',
          imglink:
          'https://i.ytimg.com/vi/73V0Y1HL6G8/maxresdefault.jpg'),
      const Choice(
          title: 'Young',
          description:
          'Молодий',
          imglink:
          'https://upload.wikimedia.org/wikipedia/commons/b/bf/Ashley_Young_2018-06-13_1.jpg'),
      const Choice(
          title: 'Old',
          description:
          'Старий',
          imglink:
          'https://content.thriveglobal.com/wp-content/uploads/2019/05/47900764-6F79-4FD2-A0C7-00FD8D7B604C.jpeg'),
      const Choice(
          title: 'Heavy',
          description:
          'Важкий',
          imglink:
          'https://i.pinimg.com/originals/f5/0f/ca/f50fca582af9153d46d91126ede205be.jpg'),
      const Choice(
          title: 'Light',
          description:
          'Лекиий, світлий',
          imglink:
          'https://i.pinimg.com/originals/44/4e/a5/444ea525bf9bec4745a648eefbe538e7.png'),
      const Choice(
          title: 'Thin',
          description:
          'Худий',
          imglink:
          'https://st2.depositphotos.com/7820448/12369/v/950/depositphotos_123693796-stock-illustration-very-thin-man-on-the.jpg'),
      const Choice(
          title: 'Fat',
          description:
          'Товстий',
          imglink:
          'https://www.medlife.com/blog/wp-content/uploads/2017/11/a-fat-man-1200x1094.png'),
      const Choice(
          title: 'Empty',
          description:
          'Порожній',
          imglink:
          'https://www.commonsenseleadership.com/wp-content/uploads/2016/04/empty-cup-1.jpg'),
      const Choice(
          title: 'Full',
          description:
          'Наповнений',
          imglink:
          'https://thumbs.dreamstime.com/z/glass-full-water-pouring-bottle-33083592.jpg'),
      const Choice(
          title: 'Easy',
          description:
          'Легкий',
          imglink:
          'https://4.bp.blogspot.com/-r2pE6AemaLg/T5VSbSNmJLI/AAAAAAAAAs0/FwFg31LGmDo/s1600/kantan_na_kazukomorishita.jpg'),
      const Choice(
          title: 'Difficult',
          description:
          'Складний',
          imglink:
        'https://i0.wp.com/expressingmeaning.net/wp-content/uploads/2017/08/posts-featured-when-difficult-becomes-easy.png?fit=800%2C800&ssl=1'),
    ];

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: new ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(
                        choice: choices[index], item: choices[index]),
                  );
                }))));
  }
}

class Choice {
  final String title;
  final String description;
  final String imglink;

  const Choice({this.title, this.description, this.imglink});
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
        this.choice,
        this.onTap,
        @required this.item,
        this.selected: false})
      : super(key: key);

  final Choice choice;

  final VoidCallback onTap;

  final Choice item;

  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;

    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);

    return Card(
        color: Colors.white,
        child: Column(
          children: [
            new Container(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(choice.imglink)),
            new Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(choice.title, style: Theme.of(context).textTheme.title),
                  Text(choice.description),
                ],
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }
}