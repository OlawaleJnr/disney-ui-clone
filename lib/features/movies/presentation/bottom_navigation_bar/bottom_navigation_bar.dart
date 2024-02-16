import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:disney_plus/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class DisneyPlusBottomNavigationBar extends StatelessWidget {
  const DisneyPlusBottomNavigationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Divider(color: Colors.white12, height: 0.5, thickness: 0.5),
        BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: AppLocalizations.of(context).home,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              label: AppLocalizations.of(context).search,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.download),
              label: AppLocalizations.of(context).downloads,
            ),
            BottomNavigationBarItem(
              icon: const CircleAvatar(
                radius: Sizes.p16,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.cyan,
                ),
              ),
              label: AppLocalizations.of(context).profile,
            ),
          ],
          elevation: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          unselectedItemColor: Colors.white.withOpacity(0.5),
        ),
      ],
    );
  }
}