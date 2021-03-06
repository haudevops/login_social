import 'package:flutter/material.dart';
import 'package:login_social/models/user_model.dart';

class InfoUserPage extends StatefulWidget {
  const InfoUserPage({Key key, this.user}) : super(key: key);

  final UserModel user;

  @override
  _InfoUserPageState createState() => _InfoUserPageState();
}

class _InfoUserPageState extends State<InfoUserPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Stack(
        children: [
          Container(
            padding:
            EdgeInsets.only(left: 15, right: 32, top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 50,
                    width: 50,
                    child: ClipOval(
                      child: Image.network(
                        widget.user.urlImage ?? '',
                        fit: BoxFit.cover,
                      ),
                    )),
                SizedBox(width: 16),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.user.name ?? '',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.user.email ?? 'Mobile Application Developer',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
