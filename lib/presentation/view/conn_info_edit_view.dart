import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uzume_mobile/domain/model/uzume_conn_info_model.dart';
import 'package:uzume_mobile/domain/usecase/uzume_server_usecase.dart';
import 'package:uzume_mobile/presentation/view/startup_view.dart';

final _uzumeServerUseCaseProvider = Provider.autoDispose<UzumeServerUseCase>((ref)=>UzumeServerUseCase());
final _connInfoProvider = FutureProvider.autoDispose<UzumeConnInfoRawModel>((ref) async {
  return await ref.read(_uzumeServerUseCaseProvider).fetchRaw();
});

class ConnInfoEditView extends ConsumerStatefulWidget {
  const ConnInfoEditView({Key? key}): super(key: key);

  @override
  ConsumerState<ConnInfoEditView> createState() => _ConnInfoEditViewState();
}

class _ConnInfoEditViewState extends ConsumerState<ConnInfoEditView> {
  String _host = '';
  String _port = '';

  void _submit() async {
    debugPrint('submit');
    await ref.read(_uzumeServerUseCaseProvider).store(host: _host, port: int.parse(_port)).then((result) {
      debugPrint('stored: $result');
      // TODO: エラーハンドリング
      Future(() {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const StartupView()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('uzume'),
        centerTitle: true,
      ),
      body: Center(
        child: ref.watch(_connInfoProvider).when(
          loading: () => const Text('loading...'),
          data: (connInfo) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: TextEditingController(text: connInfo.host),
                  decoration: InputDecoration(
                    labelText: 'host',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  maxLines: 1,
                  autofocus: true,
                  onChanged: (value) { _host = value; },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: TextEditingController(text: connInfo.port.toString()),
                  decoration: InputDecoration(
                    labelText: 'port',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  maxLines: 1,
                  autofocus: true,
                  onChanged: (value) { _port = value; },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: _submit,
                    child: const Text('設定'),
                  ),
                ),
              ),
            ],
          ),
          error: (error, stack) => Text('error: $error'),
        ),
      ),
    );
  }
}
