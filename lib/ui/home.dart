import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}
//
class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              //main drawer account Name Holder
              accountName: new Text(
                'Username: Cyrus Mwangi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.9,
                ),
              ),
              //main drawer email address holder
              accountEmail: new Text(
                'Email: cyrus@gbt.co.ke',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.9,
                ),
              ),
              //main drawer profile picture
              currentAccountPicture: new GestureDetector(
                onTap: () => debugPrint('Current profile Picture'),
                child: new CircleAvatar(
                  backgroundImage: new AssetImage('images/profile.jpg'),
                ),
              ),
              //other account pictures in the drawer
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () => debugPrint('Current profile Picture'),
                  child: new CircleAvatar(
                    backgroundImage: new AssetImage('images/finance/bank.png'),
                  ),
                ),
                new GestureDetector(
                  onTap: () => debugPrint('Current profile Picture'),
                  child: new CircleAvatar(
                    backgroundImage:
                        new AssetImage('images/finance/analysis.png'),
                  ),
                ),
                new GestureDetector(
                  onTap: () => debugPrint('Current profile Picture'),
                  child: new CircleAvatar(
                    backgroundImage: new AssetImage('images/budget.png'),
                  ),
                ),
              ],
              //drawer top image background photo
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new AssetImage('images/backimage.jpg'),
                ),
              ),
            ),
            //container holding the menus for the drawer
            new Container(
              margin: const EdgeInsets.all(5.0),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(15.0),
                color: Colors.blueAccent.shade700,
              ),
              height: 54.0,
              child: new ListView(
                children: <Widget>[
                  new ListTile(
                    title: new Text(
                      'My Profile',
                      style: TextStyle(fontSize: 15.9, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(5.0),
              height: 54.0,
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(15.0),
                color: Colors.blueAccent.shade700,
              ),
              child: new ListView(
                children: <Widget>[
                  new ListTile(
                    title: new Text(
                      'My Finances',
                      style: TextStyle(
                        fontSize: 15.9,
                        color: Colors.white,
                      ),
                    ),
                    trailing: Icon(
                      Icons.monetization_on,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(5.0),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(15.0),
                color: Colors.blueAccent.shade700,
              ),
              height: 54.0,
              child: new ListView(
                children: <Widget>[
                  new ListTile(
                    title: new Text(
                      'My Budget',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.9,
                      ),
                    ),
                    trailing: Icon(
                      Icons.account_balance_wallet,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(5.0),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(15.0),
                color: Colors.blueAccent.shade700,
              ),
              height: 54.0,
              child: new ListView(
                children: <Widget>[
                  new ListTile(
                    title: new Text(
                      'My Shopping List',
                      style: TextStyle(fontSize: 15.9, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(5.0),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(15.0),
                color: Colors.blueAccent.shade700,
              ),
              height: 54.0,
              child: new ListView(
                children: <Widget>[
                  new ListTile(
                    title: new Text(
                      'My Income',
                      style: TextStyle(fontSize: 15.9, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.control_point,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(5.0),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(15.0),
                color: Colors.blueAccent.shade700,
              ),
              height: 54.0,
              child: new ListView(
                children: <Widget>[
                  new ListTile(
                    title: new Text(
                      'My Expenses',
                      style: TextStyle(fontSize: 15.9, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.expand_more,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(5.0),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(15.0),
                color: Colors.blueAccent.shade700,
              ),
              height: 54.0,
              child: new ListView(
                children: <Widget>[
                  new ListTile(
                    title: new Text(
                      'Logout',
                      style: TextStyle(fontSize: 15.9, color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: new AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        centerTitle: true,
        title: new Text(
          'Budget',
          style: TextStyle(
            fontSize: 20.9,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),
            onPressed: () => debugPrint('Searching'),
          ),
          new IconButton(
            icon: Icon(Icons.message),
            onPressed: () => debugPrint('Inbox'),
          ),
          new IconButton(
            icon: Icon(Icons.share),
            onPressed: () => debugPrint('Sharing App'),
          ),
          new IconButton(
            icon: Icon(Icons.close),
            onPressed: () => debugPrint('Logout'),
          ),
        ],
      ),
  //body functionalities of the application
      body: new Container(
        margin: const EdgeInsets.all(15.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(6.0),
          color: Colors.blueGrey[100],
        ),
        child: new ListView(
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  margin: const EdgeInsets.all(10.0),
                  height: 100.0,
                  width: 100.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(15.0),
                    color: Colors.blueGrey.shade400,
                    image: new DecorationImage(
                      image: new AssetImage('images/finance/bank.png'),
                    ),
                  ),
                ),
                new Container(
                  margin: const EdgeInsets.all(10.0),
                  height: 100.0,
                  width: 100.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(15.0),
                    color: Colors.blueGrey.shade400,
                  ),
                ),
                new Container(
                  margin: const EdgeInsets.all(10.0),
                  height: 100.0,
                  width: 100.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(15.0),
                    color: Colors.blueGrey.shade400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text('Home')),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.report_problem), title: new Text('Report')),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.cloud), title: new Text('Backup')),
        ],
      ),
    );
  }
}
