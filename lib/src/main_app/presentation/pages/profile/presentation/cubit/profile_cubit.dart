import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:super_baraem_kidergarten/src/core/enums/genaric_enums.dart';
import 'package:super_baraem_kidergarten/src/core/functions/functions.dart';
import 'package:super_baraem_kidergarten/src/core/network/data_state.dart';
import 'package:super_baraem_kidergarten/src/main_app/auth/data/model/login_model.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/profile/data/model/profile_model.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/profile/data/remote.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

@singleton
class ProfileCubit extends Cubit<ProfileState> {
  ProfileDataSource dataSource = ProfileDataSource();
  ProfileCubit() : super(const ProfileState.initial());

  getProfileData() async {
    emit(
      state.copyWith(
        remoteDataStatus: RemoteDataStatus.loading,
        dataFailed: null,
      ),
    );
    final result = await dataSource.getProfileApi();
    if (result is DataSuccess) {
      emit(
        state.copyWith(
          remoteDataStatus: RemoteDataStatus.loaded,
          profileModel: result.data!.results,
        ),
      );
    } else if (result is DataFailed) {
      emit(
        state.copyWith(
          remoteDataStatus: RemoteDataStatus.error,
          dataFailed: result as DataFailed,
        ),
      );
    }
  }

  pickImage() async {
    emit(
      state.copyWith(
        remoteDataStatus: RemoteDataStatus.loading,
        dataFailed: null,
      ),
    );
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      XFile file = XFile(result.files.single.path!);
      compressAndGetFile(file, p.dirname(file.path)).then((value) {
        // dio.FormData data = dio.FormData.fromMap({
        //   "account_img": dio.MultipartFile.fromFileSync(
        //     value!.path,
        //     filename: 'pic.jpg',
        //     contentType: MediaType('image', 'jpg'),
        //   ),
        //   "account_img_old":
        //       Get.put(MainDataGetProvider()).mainData['account']['account_img'],
        // });
        // StudentProfileAPI().editImgProfile(data).then((res) async {
        //   if (res['error'] == false) {
        //     await Auth().getStudentInfo();
        //     EasyLoading.showSuccess("تم تغيير الصورة بنجاح");
        //   } else {
        //     EasyLoading.showError("يوجد خطأ ما");
        //   }
        // });
        // EasyLoading.dismiss();
      });
    } else {
      //  EasyLoading.dismiss();
      // User canceled the picker
    }
  }
}
