import 'package:flutter/material.dart';

class MedialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      body: SafeArea(
        child: Stack(
          children: [
            // LIST FEED
            ListView(
              padding: EdgeInsets.only(bottom: 100),
              children: [
                _postCard(),
                _postCard(),
                 _postCard(),
              ],
            ),     
          ],
        ),
      ),
    );
  }
  // POST CARD
  Widget _postCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("../assets/images/avartar1.png"),
            ),
            title: Text(
              "Anna Leo",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Post 12 min ago"),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text("See my new plant"),
          ),

          SizedBox(height: 10),

          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset("../assets/images/post1.png"),
          ),

          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _action(Icons.thumb_up_alt_outlined, "Like"),
                  _action(Icons.mode_comment_outlined, "Comment"),
                  _action(Icons.share_outlined, "Share"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _action(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.black54),
        SizedBox(width: 5),
        Text(text, style: TextStyle(color: Colors.black54)),
      ],
    );
  }
}