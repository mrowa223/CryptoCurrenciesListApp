
3 lesson

Добавил в pubspec:
dependencies:
flutter_svg: ^2.0.10+1 для использования svg

assets:
assets/svg

Отобразил svg биткойна используя
leading:  
 ListTile(
leading: SvgPicture.asset(
"assets/svg/bitcoin.svg",
height: 30,
width: 30,
),)

Познакомился в subtitle, trailing
trailing: trailing: Icon(Icons.arrow_back)
Notes\img\trailing.png

Познакомился с ListView.separated:
Отличие ListView.separate от ListTile => делит элементы линией как hr
Notes\img\image.png
ListView.separated(
separatorBuilder: (context, index) => Divider(),
itemCount: 10,
itemBuilder: ((context, index) => ListTile(
leading: SvgPicture.asset(
"assets/svg/bitcoin.svg",
height: 30,
width: 30,
),
title: Text('Bitcoin', style: theme.textTheme.bodyMedium),
subtitle:
Text('20000\$', style: theme.textTheme.labelSmall),
trailing: Icon(Icons.arrow_back),
))),

Выносить все стили в themeData:
Использовать темы:
    final theme = Theme.of(context);
    -----
     title: Text('Bitcoin', style: theme.textTheme.bodyMedium),
        subtitle:
                        Text('20000\$', style: theme.textTheme.labelSmall),
     