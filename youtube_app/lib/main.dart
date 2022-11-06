import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          leading: const Icon(
            Icons.smart_display,
            color: Colors.red,
            size: 32,
          ),
          title: const Text(
            'FakeYouTube',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // TODO: impl
              },
              icon: const Icon(Icons.search),
              color: Colors.grey,
            ),
            IconButton(
              onPressed: () {
                // TODO: impl
              },
              icon: const Icon(Icons.more_vert),
              color: Colors.grey,
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.asset(
                    'images/metron.jpg',
                    width: 72,
                    height: 72,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'FakeYouTuber',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              // TODO: impl
                            },
                            style: ButtonStyle(
                              padding:
                                  MaterialStateProperty.all(EdgeInsets.zero),
                              minimumSize: MaterialStateProperty.all(Size.zero),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.smart_display,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  '登録する',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'チャンネル登録者数 100万人',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VideoDetail(),
                        ),
                      );
                    },
                    contentPadding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                    leading: Image.asset(
                      'images/shockeye.jpg',
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '【Flutter超入門】 $index',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              '100万回再生',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              '1日前',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        // TODO: impl
                      },
                      icon: const Icon(Icons.more_vert),
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
