import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/foundation.dart';
import 'mainController.dart';
import 'dependency_injection.dart';
import 'usecase/fetch_news_use_case.dart';
import 'usecase/fetch_attractions_use_case.dart';
import 'usecase/fetch_activity_use_case.dart';
import 'usecase/fetch_calendar_use_case.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'component/webviewPage.dart';
import 'vo/news_vo.dart';
import 'vo/attractions_vo.dart';
import 'vo/activity_vo.dart';
import 'vo/calendar_vo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await S.load(Locale('zh', 'TW'));

  DependencyInjection.init();
  Get.put(MainController(
    Get.find<FetchNewsUseCase>(),
    Get.find<FetchAttractionsUseCase>(),
    Get.find<FetchActivityUseCase>(),
    Get.find<FetchCalendarUseCase>(),
  ));

  if (defaultTargetPlatform == TargetPlatform.android) {
    WebViewPlatform.instance = AndroidWebViewPlatform();
  } else if (defaultTargetPlatform == TargetPlatform.iOS) {
    WebViewPlatform.instance = WebKitWebViewPlatform();
  } else {
    throw UnsupportedError("WebView not support");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: S.of(context)?.home_title ?? '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: MyHomePage(title: S.of(context)?.home_title ?? ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final MainController mainController = Get.find<MainController>();

  void _changeLanguage(String languageCode) async {
    mainController.fetchAll(languageCode);
    if (languageCode == 'zh-tw') {
      await S.load(Locale('zh', 'TW'));
      Get.updateLocale(Locale('zh', 'TW'));
    } else {
      await S.load(Locale(languageCode));
      Get.updateLocale(Locale(languageCode));
    }
  }

  Widget _buildLoadingOverlay() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(S.of(context)?.home_title ?? ''),
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () async {
              String selectedLanguage = await showDialog<String>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(S.of(context)?.select_language ?? ''),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text('中文'),
                            onTap: () {
                              Navigator.pop(context, 'zh-tw');
                            },
                          ),
                          ListTile(
                            title: Text('English'),
                            onTap: () {
                              Navigator.pop(context, 'en');
                            },
                          ),
                          ListTile(
                            title: Text('日本語'),
                            onTap: () {
                              Navigator.pop(context, 'ja');
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ) ?? 'zh-tw';
              _changeLanguage(selectedLanguage);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildListViewSection(S.of(context)?.news_title ?? '', mainController.list_news, mainController.isLoadingNews),
            _buildListViewSection(S.of(context)?.attractions_title ?? '', mainController.list_attractions, mainController.isLoadingAttractions),
            _buildListViewSection(S.of(context)?.activity_title ?? '', mainController.list_activity, mainController.isLoadingActivity),
            _buildListViewSection(S.of(context)?.calendar_title ?? '', mainController.list_calendar, mainController.isLoadingCalendar),
          ],
        ),
      ),
    );
  }

  Widget _buildListViewSection(String title, RxList<dynamic> data, RxBool isLoading) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Obx(() {
            if (isLoading.value) {
              return SizedBox(
                height: 150,
                child: _buildLoadingOverlay(),
              );
            }
            return SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  if (data[index] is NewsVo) {
                    return _buildNewsCard(data[index]);
                  } if (data[index] is AttractionsVo) {
                    return _buildAttractionsCard(data[index]);
                  } if (data[index] is ActivityVo) {
                    return _buildActivityCard(data[index]);
                  } if (data[index] is CalendarVo) {
                    return _buildCalendarCard(data[index]);
                  }
                  return Container();
                },
              ),
            );
          })
        ],
      ),
    );
  }

  Widget _buildNewsCard(NewsVo news) {
    return _buildGenericCard(
      title: news.title,
      description: news.description,
      url: news.url,
    );
  }

  Widget _buildAttractionsCard(AttractionsVo attractions) {
    return _buildGenericCard(
      title: attractions.title,
      description: attractions.description,
      url: attractions.url,
      imageUrl: attractions.image,
    );
  }

  Widget _buildActivityCard(ActivityVo activity) {
    return _buildGenericCard(
      title: activity.title,
      description: activity.description,
      url: activity.url,
    );
  }

  Widget _buildCalendarCard(CalendarVo calendar) {
    return _buildGenericCard(
      title: calendar.title,
      description: calendar.description,
      url: calendar.url,
    );
  }

  Widget _buildGenericCard({
    required String title,
    required String description,
    required String url,
    String? imageUrl,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap ?? () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WebViewPage(url: url)),
        );
      },
      child: Container(
        width: 300,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              if (imageUrl != null && imageUrl.isNotEmpty)
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.broken_image, size: 60, color: Colors.white70);
                    },
                  ),
                ),
              if (imageUrl != null && imageUrl.isNotEmpty) SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
