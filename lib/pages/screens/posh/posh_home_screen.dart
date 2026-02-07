import 'package:flutter/material.dart';
import '../../routes/app_routes.dart';
import '../../widgets/posh_tile.dart';
import '../../widgets/primary_button.dart';

class PoshHomeScreen extends StatelessWidget {
  const PoshHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final w = media.size.width;
    final h = media.size.height;

    // Base design reference (example: 375x812 iPhone)
    final scaleW = w / 375;
    final scaleH = h / 812;
    final scale = scaleW < scaleH ? scaleW : scaleH;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 22 * scale),
          color: Colors.black,
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Posh Policy',
          style: TextStyle(color: Colors.black, fontSize: 18 * scale),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16 * scale),
        child: Column(
          children: [
            Image.asset(
              'assets/images/posh_home.png',
              height: 180 * scale,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 12 * scale),
            Text(
              'Learn about our guidelines and standards for a respectful and a safe workplace.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14 * scale),
            ),
            SizedBox(height: 20 * scale),
            PoshTile(
              title: 'Verbal Harassment',
              onTap: () => Navigator.pushNamed(context, AppRoutes.verbal),
            ),
            PoshTile(
              title: 'Physical Harassment',
              onTap: () => Navigator.pushNamed(context, AppRoutes.physical),
            ),
            PoshTile(
              title: 'Visual / Digital Harassment',
              onTap: () => Navigator.pushNamed(context, AppRoutes.visual),
            ),
            PoshTile(
              title: 'Workplace Definition',
              onTap: () => Navigator.pushNamed(context, AppRoutes.workplace),
            ),
            PoshTile(
              title: 'Upload Evidence',
              onTap: () => Navigator.pushNamed(context, AppRoutes.upload),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 48 * scale,
              child: const PrimaryButton(title: 'Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
