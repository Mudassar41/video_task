import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_assesment/src/components/video_item.dart';
import 'package:task_assesment/src/view_model/media_view_model.dart';
import 'package:task_assesment/src/views/upload_view_sceen.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({Key? key}) : super(key: key);

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  final mediaViewModel = MediaViewModel();

  @override
  void initState() {
    mediaViewModel.setVideos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UploadViewVideoScreen(
                mediaViewModel: mediaViewModel,
                uploadOnly: true,
              ),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Videos'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => mediaViewModel,
        child: Consumer<MediaViewModel>(
          builder: (context, value, child) =>
              mediaViewModel.videosResponse.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            data: (data) => ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => VideoItem(
                videoModel: data[index],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UploadViewVideoScreen(
                              videoModel: data[index],
                              mediaViewModel: mediaViewModel,
                            )),
                  );
                },
              ),
            ),
            empty: () => const Center(child: Text('No Data Found')),
            error: (message) => Center(child: Text(message)),
          ),
        ),
      ),
    );
  }
}
