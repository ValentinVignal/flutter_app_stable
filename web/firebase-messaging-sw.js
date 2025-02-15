// Please see this file for the latest firebase-js-sdk version:
// https://github.com/firebase/flutterfire/blob/master/packages/firebase_core/firebase_core_web/lib/src/firebase_sdk_version.dart
importScripts("https://www.gstatic.com/firebasejs/10.7.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/10.7.0/firebase-messaging-compat.js");

firebase.initializeApp({
    apiKey: 'AIzaSyBM5cvP2Z-8m3sYl1uHZvHxw1cAt96y_Vc',
    appId: '1:402930455357:web:0ec51d2855ff7d6e146b54',
    messagingSenderId: '402930455357',
    projectId: 'push-notifications-cb0f9',
    authDomain: 'push-notifications-cb0f9.firebaseapp.com',
    storageBucket: 'push-notifications-cb0f9.firebasestorage.app',
    measurementId: 'G-B650Y6YE5G',
});

const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
  console.log("onBackgroundMessage", message);
});