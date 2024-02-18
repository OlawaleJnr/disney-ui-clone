import 'package:disney_plus/components/movie_cover.dart';
import 'package:disney_plus/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class MovieBox extends StatelessWidget {
  const MovieBox({ 
    Key? key, 
    required this.title, 
    required this.movies 
  }) : super(key: key);

  final String title;
  final List<String> movies;

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p4),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.grey, 
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        const SizedBox(height: Sizes.p10),
        Container(
          height: 180,
          margin: const EdgeInsets.symmetric(horizontal: Sizes.p4),
          child: ListView(
            shrinkWrap: true,
            addAutomaticKeepAlives: true,
            scrollDirection: Axis.horizontal,
            children: movies.map((cover) => MovieCover(image: cover)).toList()
          ),
        ),
      ],
    );
  }
}
