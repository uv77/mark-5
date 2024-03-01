import 'package:flutter/material.dart';
import '../style.dart';
import 'wk_account_page.dart';
import 'wk_message_page.dart';
import 'wk_home_page.dart';

class WorkerJobHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Job History',
          style: AppStyles.appBarTitle,
        ),
        backgroundColor: AppStyles.appBarColor,
      ),
      body: Center(
        child: Text(
          'Job history will be displayed here.',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'WJobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'WMessages',
            //  backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'WJob History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'WProfile',
          ),
        ],
        selectedItemColor: AppStyles.appBarColor,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        onTap: (index) {
          if (index == 0) {
            // Navigate to the WorkerHomePage when the job icon is tapped
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => WorkerHomePage()),
            );
          }
          if (index == 1) {
            // Navigate to the WorkerMessagePage when the message icon is tapped
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => WorkerMessagePage()),
            );
          }
          if (index == 3) {
            // Navigate to the WorkerAccountPage when the profile icon is tapped
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => WorkerAccountPage()),
            );
          }
        },
      ),
    );
  }
}
