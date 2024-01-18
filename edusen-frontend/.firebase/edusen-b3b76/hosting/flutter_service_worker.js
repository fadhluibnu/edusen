'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"index.html": "481a4f7f7f85cfe0d6c1682d8cf9122e",
"/": "481a4f7f7f85cfe0d6c1682d8cf9122e",
"assets/AssetManifest.bin": "a6d6a21605f2eee77ffdcbe499a50929",
"assets/NOTICES": "537f640ce470513a5419424b7f142151",
"assets/assets/images/guitar.png": "af2502c4d17dc9bd0eb71f950e44b3d6",
"assets/assets/images/product-management-basic.png": "d63c7ef3f32b1a27e71ca21d1d1bb7a0",
"assets/assets/images/person-in-section7.png": "d397fb1c3364f2f3657f7f4d3ca1c520",
"assets/assets/images/vesctorslide1.png": "87a4a786572641c87a7054c1f99aa423",
"assets/assets/images/skill-share.png": "04aa62c6f7f790939cdcb1324e82333e",
"assets/assets/images/logoedusen.png": "9574177d69ac35b0976c3a1ed50e554b",
"assets/assets/images/front-end-developer.png": "e67fd6849de01e1f8e15b8a444d645a6",
"assets/assets/images/udemy.png": "cba25c4f5a636622a3c7428999ecd54d",
"assets/assets/images/idf-fundation.png": "562e6e7dbb081d0f9c4ae00bec032de6",
"assets/assets/images/copywriter.png": "373a5787ea73c1fce84d2530f1e83659",
"assets/assets/images/image-header.png": "1144ea8c7ea55cce898cf2f715241a49",
"assets/assets/images/music-vocal.png": "80297990cbc3583c73caf00c7f47dfe7",
"assets/assets/images/image120.jpg": "669b9d77544007b5b9cd6d60ab229409",
"assets/assets/images/coursera.png": "5a953cae8b53c32cc04a281f21d66c5a",
"assets/assets/images/person-in-section6.png": "6897d8d2e6c811f11fcf78fbf799e1be",
"assets/assets/images/back-end-developer.png": "73c3066d8308b9ca347edf960664cfb9",
"assets/assets/images/back-person-section-6.png": "702ceb27778794bfaf7485b944e024c3",
"assets/assets/images/educational-tech-section-2.jpeg": "00f77dd31aa938a5e5a9ad053c43f7cd",
"assets/assets/images/google.png": "3f81a6250e6c6a4190080d0dc7585413",
"assets/assets/icons/acheivment/fonts/Acheivment.ttf": "fd9b4bd0ae8e1bda01b9b94788782ac0",
"assets/assets/icons/MyFlutterApp.ttf": "1380ef42af39fe88d21deb67b6a20764",
"assets/assets/icons/togas/fonts/Togas.ttf": "6673fb441c025578002c2bfc6b4fe37e",
"assets/AssetManifest.bin.json": "70b9da6d8d521e3f4be43e4ad4ee0dc5",
"assets/fonts/MaterialIcons-Regular.otf": "02495554ad488a2d0795d18a10821791",
"assets/fonts/poppins/PoppinsRegular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/fonts/poppins/PoppinsExtraBold.ttf": "d45bdbc2d4a98c1ecb17821a1dbbd3a4",
"assets/fonts/poppins/PoppinsExtraBoldItalic.ttf": "8afe4dc13b83b66fec0ea671419954cc",
"assets/fonts/poppins/PoppinsBoldItalic.ttf": "19406f767addf00d2ea82cdc9ab104ce",
"assets/fonts/poppins/PoppinsThin.ttf": "9ec263601ee3fcd71763941207c9ad0d",
"assets/fonts/poppins/PoppinsItalic.ttf": "c1034239929f4651cc17d09ed3a28c69",
"assets/fonts/poppins/PoppinsMediumItalic.ttf": "cf5ba39d9ac24652e25df8c291121506",
"assets/fonts/poppins/PoppinsSemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/fonts/poppins/PoppinsThinItalic.ttf": "01555d25092b213d2ea3a982123722c9",
"assets/fonts/poppins/PoppinsBold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/fonts/poppins/PoppinsMedium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/fonts/poppins/PoppinsSemiBoldItalic.ttf": "9841f3d906521f7479a5ba70612aa8c8",
"assets/AssetManifest.json": "3be4e30ee81097192fa17c5d5b699a35",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/FontManifest.json": "2e86f6ac38773d0188091b3e747fa3ca",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"main.dart.js": "9b8b679585bd3a2be2c19c6efb3c1449",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"version.json": "35ab1a6627f0e886b798849f708cc3f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"manifest.json": "c6b9e042e2cd47beb89195a43ddbb3b2"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
