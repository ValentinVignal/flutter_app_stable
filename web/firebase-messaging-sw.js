// Please see this file for the latest firebase-js-sdk version:
// https://github.com/firebase/flutterfire/blob/master/packages/firebase_core/firebase_core_web/lib/src/firebase_sdk_version.dart
importScripts("https://www.gstatic.com/firebasejs/10.7.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/10.7.0/firebase-messaging-compat.js");

firebase.initializeApp({
  apiKey: 'AIzaSyD5rspsJVUOk9JIYjWvYzC9sMg946DINZ4',
  appId: '1:758202431270:web:cd41819c67e344e1f533e7',
  messagingSenderId: '758202431270',
  projectId: 'connectcarechatbot',
  authDomain: 'connectcarechatbot.firebaseapp.com',
  storageBucket: 'connectcarechatbot.firebasestorage.app',
  measurementId: 'G-10WP41DBCB',
});

const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
  console.log("onBackgroundMessage", message);
});