import 'package:flutter/material.dart';
import 'package:news_app/src/services/news_service.dart';
import 'package:news_app/src/widgets/news_list.dart';
import 'package:provider/provider.dart';

class Tab1Screen extends StatefulWidget {
   
	const Tab1Screen({Key? key}) : super(key: key);

	@override
	State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> with AutomaticKeepAliveClientMixin{
	@override
	Widget build(BuildContext context) {

		final headlines = Provider.of<NewsService>(context).headlines;
		// NewsList(news: headlines),
		return Scaffold(
			body: ( headlines.length <= 0)
				? const Center( child: CircularProgressIndicator() )
				: NewsList(news: headlines)
		);
	}

	@override
	bool get wantKeepAlive => true;
}