import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uzume_mobile/domain/model/uzume_conn_info_model.dart';
import 'package:uzume_mobile/domain/usecase/uzume_server_usecase.dart';
import 'package:uzume_mobile/domain/usecase/backend_check_usecase.dart';
import 'package:uzume_mobile/presentation/view/conn_info_edit_view.dart';
import 'package:uzume_mobile/presentation/view/main_contents_view.dart';

final _uzumeServerUseCaseProvider = Provider.autoDispose<UzumeServerUseCase>((ref)=>UzumeServerUseCase());
final _connInfoProvider = FutureProvider.autoDispose<UzumeConnInfoModel>((ref) async {
  return await ref.read(_uzumeServerUseCaseProvider).load();
});

final _backendCheckUseCase = Provider.autoDispose<BackendCheckUseCase>((ref)=>BackendCheckUseCase());
final _versionProvider = FutureProvider.autoDispose<String>((ref) async {
  return await ref.read(_backendCheckUseCase).fetchVersion();
});

class StartupView extends ConsumerStatefulWidget {
  const StartupView({Key? key}): super(key: key);

  @override
  ConsumerState<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends ConsumerState<StartupView> {
  Widget toMainContents(String version) {
    if ( version != '0.0.6' ) {
      return Column(
        children: [
          const Text('サポートしていないバックエンドバージョンです'),
          Text('backend version: $version'),
          const Text('expected version: 0.0.6'),
        ],
      );
    }

    Future(() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MainContentsView()),
      );
    });

    return const Text('画面遷移中...');
  }

  @override
  Widget build(BuildContext context) {
    final connInfo = ref.watch(_connInfoProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('uzume'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              UzumeServerUseCase().debugClear();
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            connInfo.when(
              loading: () => const Text('loading...'),
              data: (data) {
                return ref.watch(_versionProvider).when(
                  data: (version) => toMainContents(version),
                  error: (err, stack) => Text('error: $err'),
                  loading: () => Text('connecting to ${data.host}:${data.port}'),
                );
              },
              error: (err, stack) {
                Future(() {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const ConnInfoEditView()),
                  );
                });
                return Text('error: $err');
              },
            ),
          ],
        ),
      ),
    );
  }
}
