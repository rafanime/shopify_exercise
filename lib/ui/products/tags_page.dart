import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopify/ui/products/cubit/tags_cubit.dart';
import 'package:shopify/ui/products/products_page.dart';

class TagsPage extends StatelessWidget {
  static String routeName = "TagsPage";

  const TagsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TagsCubit, TagsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('Tags List Page')),
          body: state.maybeWhen(
            orElse: () => const Center(child: CircularProgressIndicator()),
            loaded: (_, tags) {
              return Wrap(
                direction: Axis.vertical,
                children: tags.keys
                    .map((tag) => GestureDetector(
                        onTap: () => Navigator.pushNamed(
                              context,
                              ProductsPage.routeName,
                              arguments: tags[tag],
                            ),
                        child: _tagTile(tag)))
                    .toList(),
              );
            },
          ),
        );
      },
    );
  }

  Widget _tagTile(String tag) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Center(
        child: Text(
          tag,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
