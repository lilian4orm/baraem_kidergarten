// import 'dart:io';

// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_feather_icons/flutter_feather_icons.dart';
// import 'package:super_baraem_kidergarten/bussines_logic/camera/cubit/camera_cubit_cubit.dart';
// import 'package:super_baraem_kidergarten/utils/extention.dart';
// import 'package:super_baraem_kidergarten/utils/utils.dart';
// import 'package:super_baraem_kidergarten/widgets/tm_button.dart';

// class FDFacePicker extends StatelessWidget {
//   const FDFacePicker({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final query = MediaQuery.of(context);
//     final theme = Theme.of(context);
//     final cameraCubit = context.read<CameraCubit>();

//     if (cameraCubit.state is CameraInitialState) {
//       cameraCubit.ini(cameraIndex: 1, imageFormatGroup: ImageFormatGroup.jpeg);
//     }
//     return BlocConsumer<CameraCubit, CameraCubitState>(
//         listener: (context, state) {
//           kdp(name: "camera cubit listenewr", msg: state, c: "m");
//         },
//         builder: (context, cameraState) => Scaffold(
//               body: Stack(
//                 children: <Widget>[
//                   Container(
//                     color: Colors.white,
//                     height: query.size.height,
//                     width: query.size.width,
//                   ),
//                   Center(
//                     child: cameraState is! CameraPictureTakedState &&
//                             cameraState.cameraData.cameraController != null
//                         ? ClipPath(
//                             clipper: MyCustomClipper(query.size),
//                             child: CameraPreview(
//                                 cameraState.cameraData.cameraController!))
//                         : const SizedBox(
//                             child: Text("unknown_error"),
//                           ),
//                   ),
//                   Positioned(
//                     top: kDefaultPadding,
//                     right: 0,
//                     child: IconButton(
//                       padding: const EdgeInsets.all(30),
//                       icon: const Icon(
//                         FeatherIcons.x,
//                         color: Colors.black,
//                       ),
//                       onPressed: () => Navigator.pop(context),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.center,
//                     child: Container(
//                       width: query.size.width * 0.65,
//                       height: query.size.height * 0.4,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(500),
//                           // border: Border.all(color: tmGray1, width: 5),
//                           boxShadow: const [
//                             BoxShadow(
//                                 color: tmBodyTextColor,
//                                 offset: Offset(0, 0),
//                                 blurRadius: 20,
//                                 blurStyle: BlurStyle.outer)
//                           ]),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Container(
//                       margin: EdgeInsets.symmetric(
//                         vertical: (query.size.height * 0.24),
//                       ),
//                       child: Text(cameraState.cameraData.msg.tr()),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.center,
//                     child: cameraState.cameraData.imageUni8 != null
//                         ? Container(
//                             width: query.size.width * 0.65,
//                             height: query.size.height * 0.4,
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(500),
//                                 boxShadow: const [
//                                   BoxShadow(
//                                       color: tmBodyTextColor,
//                                       offset: Offset(0, 0),
//                                       blurRadius: 20,
//                                       blurStyle: BlurStyle.outer)
//                                 ]),
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(500),
//                               child: Image.file(
//                                 File(cameraState.cameraData.imageUni8!.path),
//                                 fit: BoxFit.contain,
//                               ),
//                             ),
//                           )
//                         : const SizedBox(),
//                   ),
//                 ],
//               ),
//               floatingActionButtonLocation:
//                   FloatingActionButtonLocation.centerFloat,
//               floatingActionButton: cameraState.cameraData.imageUni8 != null
//                   ? AnimatedContainer(
//                       duration: const Duration(milliseconds: 200),
//                       color: Colors.white,
//                       padding: const EdgeInsets.all(10),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             child: TMButton(
//                               title: "اختيار",
//                               onPressed: () {
//                                 Navigator.pop(context,
//                                     cameraState.cameraData.imageUni8!.path);
//                               },
//                             ),
//                           ),
//                           const SizedBox(width: kDefaultPadding),
//                           Expanded(
//                               child: TMButton(
//                             title: "اعادة",
//                             onPressed: () => cameraCubit.reTack(),
//                           ))
//                         ],
//                       ),
//                     )
//                   : FloatingActionButton(
//                       shape: RoundedRectangleBorder(
//                           borderRadius:
//                               BorderRadius.circular(kDefaultBorderRadius)),
//                       backgroundColor: theme.primaryColor,
//                       onPressed: () => cameraCubit.tackPickture(
//                           query.size.width * 0.65,
//                           query.size.height * 0.4,
//                           MediaQuery.of(context),
//                           2,
//                           context: context),
//                       child: const Icon(
//                         Icons.camera,
//                         color: Colors.white,
//                         size: 40,
//                       ),
//                     ),
//             ));
//   }
// }

// class MyCustomClipper extends CustomClipper<Path> {
//   MyCustomClipper(this.size);
//   final Size size;
//   @override
//   Path getClip(Size size1) {
//     print(size);

//     final width = size.width * 0.65;
//     final height = size.height * 0.4;
//     final x = (size.width - width) / 2;
//     final y = (size1.height - height) / 2;
//     final radius = width > height ? height / 2 : width / 2;
//     Path path = Path()
//       ..moveTo(x, y + radius)
//       ..arcToPoint(Offset(x + radius, y), radius: Radius.circular(radius))
//       ..lineTo(x + width - radius, y)
//       ..arcToPoint(Offset(x + width, y + radius),
//           radius: Radius.circular(radius))
//       ..lineTo(x + width, y + height - radius)
//       ..arcToPoint(Offset(x + width - radius, y + height),
//           radius: Radius.circular(radius))
//       ..lineTo(x + radius, y + height)
//       ..arcToPoint(Offset(x, y + height - radius),
//           radius: Radius.circular(radius))
//       ..lineTo(x, y)
//       ..close();

// //  ..moveTo(x, y + radius)
// //       ..arcToPoint(Offset(x + radius, y), radius: Radius.circular(radius))
// //       ..lineTo(x + width - radius, y)
// //       ..arcToPoint(Offset(x + width, y + radius),
// //           radius: Radius.circular(radius))
// //       ..lineTo(x + width, y + height - radius)
// //       ..arcToPoint(Offset(x + width - radius, y + height),
// //           radius: Radius.circular(radius))
// //       ..lineTo(x + radius, y + height)
// //       ..arcToPoint(Offset(x, y - radius), radius: Radius.circular(radius)s)
// //       ..lineTo(x, y+radius)
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
