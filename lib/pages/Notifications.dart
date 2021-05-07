import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_navigation_web/models/NotificationItem.dart';

List<NotificationItem> notificationsList = [
  NotificationItem('Title 1', 'Heelo 1', 1),
  NotificationItem('Title 2', 'Heelo 2', 1),
  NotificationItem('Title 3', 'Heelo 3', 1),
  NotificationItem('Title 5', 'Heelo 4', 1),
];

List<Widget> notificationItens = [
  _ArticleDescription(
      title: 'title',
      subtitle: 'subtitle',
      author: 'author',
      publishDate: 'publishDate',
      readDuration: 'readDuration'),
  _ArticleDescription(
      title: 'title',
      subtitle: 'subtitle',
      author: 'author',
      publishDate: 'publishDate',
      readDuration: 'readDuration'),
  _ArticleDescription(
      title: 'title',
      subtitle: 'subtitle',
      author: 'author',
      publishDate: 'publishDate',
      readDuration: 'readDuration')
];

class _VideoDescription extends StatelessWidget {
  const _VideoDescription({
    key,
    @required this.title,
    @required this.user,
    @required this.viewCount,
  }) : super(key: key);

  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            user,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            '$viewCount views',
            style: const TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }
}

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    key,
    @required this.thumbnail,
    @required this.title,
    @required this.user,
    @required this.viewCount,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String user;
  final int viewCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: thumbnail,
          ),
          Expanded(
            flex: 3,
            child: _VideoDescription(
              title: title,
              user: user,
              viewCount: viewCount,
            ),
          ),
          const Icon(
            Icons.more_vert,
            size: 16.0,
          ),
        ],
      ),
    );
  }
}

class _ArticleDescription extends StatelessWidget {
  _ArticleDescription({
    key,
    @required this.title,
    @required this.subtitle,
    @required this.author,
    @required this.publishDate,
    @required this.readDuration,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            //flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$title',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 2.0)),
                Text(
                  '$subtitle',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            //flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  '$author',
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  '$publishDate - $readDuration',
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black54,
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

class CustomListItemTwo extends StatelessWidget {
  CustomListItemTwo({
    key,
    @required this.thumbnail,
    @required this.title,
    @required this.subtitle,
    @required this.author,
    @required this.publishDate,
    @required this.readDuration,
  }) : super(key: key);

  final Widget thumbnail;
  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1.0,
              child: thumbnail,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                child: _ArticleDescription(
                  title: title,
                  subtitle: subtitle,
                  author: author,
                  publishDate: publishDate,
                  readDuration: readDuration,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      itemExtent: 106.0,
      children: <CustomListItem>[
        CustomListItem(
          user: 'Flutter',
          viewCount: 999000,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          title: 'The Flutter YouTube Channel',
        ),
        CustomListItem(
          user: 'Dash',
          viewCount: 884000,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
          title: 'Announcing Flutter 1.0',
        ),
        CustomListItem(
          user: 'Flutter',
          viewCount: 999000,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          title: 'The Flutter YouTube Channel',
        ),
        CustomListItem(
          user: 'Dash',
          viewCount: 884000,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
          title: 'Announcing Flutter 1.0',
        ),
        CustomListItem(
          user: 'Flutter',
          viewCount: 999000,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          title: 'The Flutter YouTube Channel',
        ),
        CustomListItem(
          user: 'Dash',
          viewCount: 884000,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
          title: 'Announcing Flutter 1.0',
        ),
        CustomListItem(
          user: 'Flutter',
          viewCount: 999000,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          title: 'The Flutter YouTube Channel',
        ),
        CustomListItem(
          user: 'Dash',
          viewCount: 884000,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
          title: 'Announcing Flutter 1.0',
        ),
        CustomListItem(
          user: 'Flutter',
          viewCount: 999000,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          title: 'The Flutter YouTube Channel',
        ),
        CustomListItem(
          user: 'Dash',
          viewCount: 884000,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
          title: 'Announcing Flutter 1.0',
        ),
        CustomListItem(
          user: 'Flutter',
          viewCount: 999000,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          title: 'The Flutter YouTube Channel',
        ),
        CustomListItem(
          user: 'Dash',
          viewCount: 884000,
          thumbnail: Container(
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
          title: 'Announcing Flutter 1.0',
        ),
      ],
    );
  }
}
