// import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;
// import 'package:googleapis_auth/auth_io.dart' as auth;
// import 'package:firebase_messaging/firebase_messaging.dart';
// import '../constants.dart';

// class NotificationsHelper {
//   // creat instance of fbm
//   final _firebaseMessaging = FirebaseMessaging.instance;

//   // initialize notifications for this app or device
//   Future<void> initNotifications() async {
//     // await _firebaseMessaging.requestPermission();
//     // // get device token
//     // String? deviceToken = await _firebaseMessaging.getToken();
//     // DeviceToken = deviceToken;
//     // print(
//     //     "===================Device FirebaseMessaging Token====================");
//     // print(deviceToken);
//     // print(
//     //     "===================Device FirebaseMessaging Token====================");
//   }

//   // handle notifications when received
//   void handleMessages(RemoteMessage? message) {
//     // if (message != null) {
//     //   // navigatorKey.currentState?.pushNamed(NotificationsScreen.routeName, arguments: message);
//     //   showToast(
//     //       text: 'on Background Message notification',
//     //       state: ToastStates.SUCCESS);
//     // }
//   }

//   // handel notifications in case app is terminated
//   void handleBackgroundNotifications() async {
//     FirebaseMessaging.instance.getInitialMessage().then((handleMessages));
//     FirebaseMessaging.onMessageOpenedApp.listen(handleMessages);
//   }

//   Future<String?> getAccessToken() async {
//     final serviceAccountJson = {
//       "type": "service_account",
//       "project_id": "com-awfaroffers-app-dev",
//       "private_key_id": "d078f6e4012156adcdeb5b2d442c012e9e1ae07e",
//       "private_key":
//           "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCTpwf00mX/NxjG\nmPoxCPhNxN4zoJwlaiz4VzRS0ktDjnmCSkGnSGGoH9i3+6ZUIQ3P0Pqh0LmIAHS3\nwKYP4RjlT3Y8nP6NwJijQIDH6mll33pO+/kDigeRQiznJuZKAEgHsZ+toiN+i1W7\nofp4rNW+gIvS2ZeB1p60lrCmrtXC26n0k+VQFDbvRWAZsi//Yp9f3J9PSDyRt5os\nnpAsJmFbK9/fVaX6Nj4u6pjIcitW2TRf8KKX/j/Tr+ptO9xjo2RNSLafUAuHBLRs\nR27RQe2IBAJ7LUoIOYjTp9kYaGpqm5a5qSnyvZXi0xj6tSTHlFwduv+2I1wwUjW5\nyNpoaS3tAgMBAAECggEAF/aMkcUA1UAPpxGmT0V9qP95sYbQOLlH5aEfho6HNQZf\nPZBIIfpbERJkFY4Ds1Uu/OqVdqQdrE8oojbjrKGTbQntrk4reP2IODyMegWXB/fS\nTZXS1up0qnRDPdugFeQATLFc8Szmlk/OQPa7pBCm2vVZXAXA80tN9BCdyFuJKUfG\nkkkjH6nNVDVIzQqBtgWCq6TBm1jXjKqKH9ChupsMJBTiZfZ9NJFeJuXiKxmhcIi9\nCynk6quTAdG6RtICORcotYOiv6YDZxmzZxC+ERW7go8Q1W5mq5ZktYTJOGDm+aGQ\nrupjYF6u30Qdz403mK0Ec7nM+jIAueb0+1ALbEUkaQKBgQDN4nXYlFM2rHJ1j1eW\nsxF6ccRX58sgd5yTjr1BH+7UvebUTE6fj9aaO+8weptI+hfBr3O45X7n0ZXgGhVh\n3rxh1J9kl9x6RVBmO8o3C+9njcJXRQRkjDLhcpdM+WvL8RaLgX9PnlhcvrSbFi20\nN/Qealzjb/fTpZAh8d2jnZyMqQKBgQC3l+E7AQ+zGk7BTZRHfPdkyt9FuRUl1mkP\nt9mbEyd1oCzmGmd4VLvwN1w1uvD6zNCfFJEawnYPoWBTDx6VQcu9G31McDdEquNE\n70QCceMjL9ZlwW1gEPkjXu9HW+hWtpfHmuQsU0ZX5WDjppyg6VbK4aO2SIqR/Dgh\ndRwrg7R9pQKBgHb5lwBBNpUxsjMdUpBTipYniD8EQ+3PMTxUECnCOlHWK74jGow6\notkeKWrqbzIM1A2pRkZi2KM+Ck4mxJR6EoK2TCXlXBOMWpm5k3GcBAzjbprf11oD\naqO9hJGG0TRZbZ3Qh7GK36U4z0WP23l5nCi3blZALgawdkonat1SB1WBAoGAN3Bn\nlPe3E/Bnw7t3gTbdRdR1I4rGNgzO4O41ibx49+4MYNesUwvTTLCK6bavuixK+x6s\nypXaLNIgUjSIma2qpko8xe5E4jlwM4rE0LAvVJrHdSa5rn6xnNq4CqZYPIcawi2l\npTToUvZzEYtoVLbhfJYyZ4L0RS0SjhfdD87Pm/kCgYB6em0Q6eByNUXYN0HSBv+S\nI2VXPojg33vXJq5n+BuJGTTwmEiDRY0763lz8xyS8P8SxN99gPijYWSO0/EHD+mX\nIZz1BTWUDQt+LstqObijwBkYkRiEEp88aWt1IYiP83Yt5cxgYoNiu2plmMTYxYsX\nwq1Y36brX7N23ZAT/OTJEA==\n-----END PRIVATE KEY-----\n",
//       "client_email":
//           "firebase-adminsdk-phk66@com-awfaroffers-app-dev.iam.gserviceaccount.com",
//       "client_id": "108659002384729555737",
//       "auth_uri": "https://accounts.google.com/o/oauth2/auth",
//       "token_uri": "https://oauth2.googleapis.com/token",
//       "auth_provider_x509_cert_url":
//           "https://www.googleapis.com/oauth2/v1/certs",
//       "client_x509_cert_url":
//           "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-phk66%40com-awfaroffers-app-dev.iam.gserviceaccount.com",
//       "universe_domain": "googleapis.com"
//     };

//     List<String> scopes = [
//       "https://www.googleapis.com/auth/userinfo.email",
//       "https://www.googleapis.com/auth/firebase.database",
//       "https://www.googleapis.com/auth/firebase.messaging"
//     ];

//     try {
//       http.Client client = await auth.clientViaServiceAccount(
//           auth.ServiceAccountCredentials.fromJson(serviceAccountJson), scopes);

//       auth.AccessCredentials credentials =
//           await auth.obtainAccessCredentialsViaServiceAccount(
//               auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
//               scopes,
//               client);

//       client.close();
//       print(
//           "Access Token:=================== ${credentials.accessToken.data}"); // Print Access Token
//       return credentials.accessToken.data;
//     } catch (e) {
//       print("Error getting access token: $e");
//       return null;
//     }
//   }

//   Map<String, dynamic> getBody({
//     required String fcmToken,
//     required String title,
//     required String body,
//     required String userId,
//     String? type,
//   }) {
//     return {
//       "message": {
//         "token": fcmToken,
//         "notification": {
//           "title": title,
//           "body": body,
//         },
//         "android": {
//           "notification": {
//             "notification_priority": "PRIORITY_MAX",
//             "sound": "default"
//           }
//         },
//         "apns": {
//           "payload": {
//             "aps": {"content_available": true}
//           }
//         },
//         "data": {
//           "type": type,
//           "id": userId,
//           "click_action": "FLUTTER_NOTIFICATION_CLICK"
//         }
//       }
//     };
//   }

//   Future<void> sendNotifications({
//     required String fcmToken,
//     required String title,
//     required String body,
//     required String userId,
//     String? type,
//   }) async {
//     try {
//       var serverKeyAuthorization = await getAccessToken();

//       // change your project id
//       const String urlEndPoint =
//           "https://fcm.googleapis.com/v1/projects/(YourProjectId)/messages:send";

//       Dio dio = Dio();
//       dio.options.headers['Content-Type'] = 'application/json';
//       dio.options.headers['Authorization'] = 'Bearer $serverKeyAuthorization';

//       var response = await dio.post(
//         urlEndPoint,
//         data: getBody(
//           userId: userId,
//           fcmToken: fcmToken,
//           title: title,
//           body: body,
//           type: type ?? "message",
//         ),
//       );

//       // Print response status code and body for debugging
//       print('Response Status Code: ${response.statusCode}');
//       print('Response Data: ${response.data}');
//     } catch (e) {
//       print("Error sending notification: $e");
//     }
//   }
// }
