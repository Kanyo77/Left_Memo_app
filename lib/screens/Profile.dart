import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                // CONTENT
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        _avatar(),
                        SizedBox(height: 15),
                        _form(),
                        SizedBox(height: 15),
                        _albumButton(),
                        SizedBox(height: 15),
                        _grid(),
                        SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // AVATAR
  Widget _avatar() {
    return Stack(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage("../assets/images/avartar1.png"),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.edit, size: 16, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget _form() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: _input("First Name")),
              SizedBox(width: 10),
              Expanded(child: _input("Last Name")),
            ],
          ),
          SizedBox(height: 10),
          _input("Email"),
          SizedBox(height: 10),
          _input("Phone Number", prefix: "+84"),
        ],
      ),
    );
  }

  Widget _input(String hint, {String? prefix}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixText: prefix != null ? "$prefix " : null,
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Widget _albumButton() {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.photo),
      label: Text("Albums"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[300],
        foregroundColor: Colors.black,
        elevation: 0,
      ),
    );
  }

  Widget _grid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.local_florist, color: Colors.white54),
          );
        },
      ),
    );
  }
}
