import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kick_start/providers/auth_provider.dart';
import 'package:kick_start/providers/team_provider.dart';
import 'package:kick_start/screens/auth_screen.dart';
import 'package:kick_start/screens/team_details.dart';
import 'package:kick_start/screens/wrapper.dart';
import 'package:provider/provider.dart';

import './providers/countries_provider.dart';
import './providers/leagues_provider.dart';
import './providers/active_fixture_provider.dart';
import './providers/players_provider.dart';
import './providers/standings_provider.dart';
import './providers/fixtures_provider.dart';

import './screens/pick_country_screen.dart';
import './screens/pick_league_screen.dart';
import './screens/home_screen.dart';
import './screens/fixture_details.dart';
import './screens/league_details_screen.dart';

void main() {
  // Provider.debugCheckInvalidValueType = null;
 /* SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);*/
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  final CountriesProvider _countriesProvider = CountriesProvider();
  final LeaguesProvider _leaguesProvider = LeaguesProvider();
  final StandingsProvider _standingsProvider = StandingsProvider();
  final AuthProvider _authProvider = AuthProvider();

  final FixturesProvider _fixturesProvider = FixturesProvider();
  final ActiveFixtureProvider _activeFixtureProvider = ActiveFixtureProvider();

  final TeamProvider _teamProvider = TeamProvider();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => _authProvider,
        ),
        ChangeNotifierProvider(
          create: (_) => _countriesProvider,
        ),
        ChangeNotifierProvider(
          create: (_) => _leaguesProvider,
        ),
        ChangeNotifierProvider(
          create: (_) => _standingsProvider,
        ),
        ChangeNotifierProvider(
          create: (_) => _fixturesProvider,
        ),
        ChangeNotifierProvider(
          create: (_) => _activeFixtureProvider,
        ),
        ChangeNotifierProvider(
          create: (_) => _teamProvider,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          textTheme: TextTheme(
            subtitle1: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            bodyText1: TextStyle(
              color: Colors.black54,
              fontSize: 20,
            ),
            bodyText2: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        initialRoute: Wrapper.routeName,
        routes: {
          Wrapper.routeName: (context) => Wrapper(),
          AuthScreen.routeName: (context) => AuthScreen(),
          PickCountryScreen.routeName: (context) => PickCountryScreen(),
          PickLeagueScreen.routeName: (context) => PickLeagueScreen(),
          HomePage.routeName: (context) => HomePage(),
          LeagueDetailsScreen.routeName: (context) => LeagueDetailsScreen(),
          FixtureDetails.routeName: (context) => FixtureDetails(),
          TeamDetails.routeName: (context) => TeamDetails(),
          PlayerDetails.routeName: (context) => PlayerDetails(),
        },
      ),
    );
  }
}
