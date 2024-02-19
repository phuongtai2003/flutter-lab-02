import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exercise05 extends StatefulWidget {
  const Exercise05({super.key});

  @override
  State<Exercise05> createState() => _Exercise05State();
}

class _Exercise05State extends State<Exercise05> {
  bool _enableCustomTheme = false;
  bool _useFingerprint = false;
  bool _lockAppOnBackground = false;
  bool _changePassword = false;
  bool _enableNotifications = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.blue,
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Common',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  _buildCommonItem(
                      CupertinoIcons.globe, 'Language', 'English', true),
                  _buildCommonItem(
                      CupertinoIcons.cloud, 'Environment', 'Production', true),
                  _buildCommonItem(CupertinoIcons.device_phone_portrait,
                      'Platform', 'Default', true),
                  _buildItemRadio(
                    CupertinoIcons.paintbrush,
                    'Enable custom theme',
                    (bool value) {
                      setState(() {
                        _enableCustomTheme = value;
                      });
                    },
                    _enableCustomTheme,
                    false,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Common',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  _buildCommonItem(CupertinoIcons.phone, 'Phone', '', true),
                  _buildCommonItem(CupertinoIcons.mail, 'Email', '', true),
                  _buildCommonItem(Icons.logout, 'Sign out', '', false),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Security',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  _buildItemRadio(
                    CupertinoIcons.device_phone_portrait,
                    'Lock App in Background',
                    (value) {
                      setState(() {
                        _lockAppOnBackground = value;
                      });
                    },
                    _lockAppOnBackground,
                    true,
                  ),
                  _buildItemRadio(
                    CupertinoIcons.lock,
                    'Use fingerprint',
                    (value) {
                      setState(() {
                        _useFingerprint = value;
                      });
                    },
                    _useFingerprint,
                    false,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Allow application to access stored fingerprint IDs',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Security',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  _buildItemRadio(
                    Icons.security,
                    'Change password',
                    (value) {
                      setState(() {
                        _changePassword = value;
                      });
                    },
                    _changePassword,
                    true,
                  ),
                  _buildItemRadio(
                    CupertinoIcons.bell,
                    'Enable notifications',
                    (value) {
                      setState(() {
                        _enableNotifications = value;
                      });
                    },
                    _enableNotifications,
                    false,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCommonItem(
      IconData icon, String title, String subtitle, bool? showDivider) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 16,
        ),
        Icon(
          icon,
          color: Colors.black.withOpacity(0.6),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ],
              ),
              showDivider == true
                  ? Divider(
                      color: Colors.black.withOpacity(0.2),
                      height: 20,
                      thickness: 1,
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildItemRadio(
    IconData icon,
    String title,
    Function(bool) onChanged,
    bool value,
    bool? showDivider,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: 16,
        ),
        Icon(
          icon,
          color: Colors.black.withOpacity(0.6),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  Row(
                    children: [
                      CupertinoSwitch(
                        value: value,
                        onChanged: onChanged,
                        activeColor: Colors.green,
                        trackColor: Colors.black.withOpacity(0.6),
                        thumbColor: Colors.white,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ],
              ),
              showDivider == true
                  ? Divider(
                      color: Colors.black.withOpacity(0.2),
                      height: 20,
                      thickness: 1,
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ],
    );
  }
}
