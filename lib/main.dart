import 'package:flutter/material.dart';
import 'package:clippy_flutter/clippy_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

var bgColor = Color(0xFF0d193a);
var buttonColor = Color(0xFF1b335d);
var appBarColor = Color(0xFF12294B);

var blueGradient1 = Color(0xff52b2f0);
var blueGradient2 = Color(0xff4968d3);

var pinkGradient1 = Color(0xfffc6d86);
var pinkGradient2 = Color(0xfffed0d1);

var profileImage =
    "https://cdn0.iconfinder.com/data/icons/avatars-3/512/avatar_smart_guy-512.png";

var profileImage2 =
    "https://images.unsplash.com/photo-1547649984-dde5d4f09dc3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80";

var slack =
    "https://upload.wikimedia.org/wikipedia/commons/7/76/Slack_Icon.png";

var sketch =
    "https://www.sketchapp.com/images/pages/press/sketch-press-kit/app-icons/sketch-mac-icon@2x.png";

var photoshop =
    "https://res.cloudinary.com/teepublic/image/private/s--eBKO7euf--/t_Preview/b_rgb:191919,c_limit,f_jpg,h_630,q_90,w_630/v1496321771/production/designs/1639261_1.jpg";

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: BottomAppBar(
        color: bgColor,
        notchMargin: 12.0,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 80.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: blueGradient1,
                  size: 32.0,
                ),
                Icon(
                  Icons.shuffle,
                  color: Colors.grey,
                  size: 32.0,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Arc(
                height: 30.0,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    blueGradient1,
                    blueGradient2,
                  ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30.0),
                    ProfileSection(),
                    SizedBox(height: 32.0),
                    HeaderText(title: "Trending"),
                    SizedBox(height: 8.0),
                    MainListView(),
                    SizedBox(height: 16.0),
                    HeaderText(title: "Featured"),
                    SizedBox(height: 8.0),
                    GradientListView(),
                    SizedBox(height: 16.0),
                    HeaderText(title: "Recent Blogs"),
                    SizedBox(height: 8.0),
                    BlogSection()
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class BlogSection extends StatelessWidget {
  const BlogSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: buttonColor.withOpacity(0.8),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profileImage2),
            ),
            title: Text('Top 10 Productive Apps',
                style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Alexa Roy',
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
            trailing: Text('3 hrs ago',
                style: TextStyle(color: Colors.white.withOpacity(0.6))),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profileImage2),
            ),
            title: Text('Top 10 Productive Apps',
                style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Alexa Roy',
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
            trailing: Text('3 hrs ago',
                style: TextStyle(color: Colors.white.withOpacity(0.6))),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profileImage2),
            ),
            title: Text('Top 10 Productive Apps',
                style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Alexa Roy',
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
            trailing: Text('3 hrs ago',
                style: TextStyle(color: Colors.white.withOpacity(0.6))),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profileImage2),
            ),
            title: Text('Top 10 Productive Apps',
                style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Alexa Roy',
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
            trailing: Text('3 hrs ago',
                style: TextStyle(color: Colors.white.withOpacity(0.6))),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profileImage2),
            ),
            title: Text('Top 10 Productive Apps',
                style: TextStyle(color: Colors.white)),
            subtitle: Text(
              'Alexa Roy',
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
            trailing: Text('3 hrs ago',
                style: TextStyle(color: Colors.white.withOpacity(0.6))),
          ),
        ],
      ),
    );
  }
}

class GradientListView extends StatelessWidget {
  const GradientListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          GradientCard(
            title: 'Productivity',
            subTitle: '102 Products',
            colors: [pinkGradient1, pinkGradient2],
          ),
          GradientCard(
            title: 'Design',
            subTitle: '23 Products',
            colors: [blueGradient1, blueGradient2],
          ),
          GradientCard(
            title: 'Productivity',
            subTitle: '102 Products',
            colors: [pinkGradient1, pinkGradient2],
          ),
          GradientCard(
            title: 'Design',
            subTitle: '23 Products',
            colors: [blueGradient1, blueGradient2],
          ),
        ],
      ),
    );
  }
}

class MainListView extends StatelessWidget {
  const MainListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          ItemCard(
            image: slack,
            name: "Slack",
            subTitle: "Business",
            upvote: '1650',
          ),
          ItemCard(
            image: sketch,
            name: "Sketch",
            subTitle: "Design Tools",
            upvote: '712',
          ),
          ItemCard(
            image: photoshop,
            name: "Photoshop",
            subTitle: "Photoshop",
            upvote: '982',
          ),
          ItemCard(
            image: slack,
            name: "Slack",
            subTitle: "Business",
            upvote: '120',
          ),
          ItemCard(
            image: sketch,
            name: "Sketch",
            subTitle: "Design Tools",
            upvote: '712',
          ),
          ItemCard(
            image: photoshop,
            name: "Photoshop",
            subTitle: "Photoshop",
            upvote: '982',
          ),
          ItemCard(
            image: slack,
            name: "Slack",
            subTitle: "Business",
            upvote: '120',
          ),
        ],
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  final String title;
  HeaderText({this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Today',
          style: TextStyle(
            color: Colors.white,
            fontSize: 42.0,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(profileImage),
          ),
        )
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final name;
  final image;
  final subTitle;
  final upvote;

  ItemCard({this.name, this.image, this.subTitle, this.upvote});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(4.0),
        ),
        height: 160.0,
        width: 140.0,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 8.0,
            ),
            Container(
              width: 50.0,
              height: 50.0,
              child: Image.network(image),
            ),
            Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              subTitle,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.6), fontSize: 12.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.green,
                        size: 14.0,
                      ),
                      Text(
                        upvote,
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GradientCard extends StatelessWidget {
  final title;
  final subTitle;
  final colors;
  GradientCard({this.title, this.subTitle, this.colors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 100.0,
        width: 240.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            gradient: LinearGradient(
              colors: colors,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32.0)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: Text(
                  subTitle,
                  style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
