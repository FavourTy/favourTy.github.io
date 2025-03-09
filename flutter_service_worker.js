'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"index.html": "2ef835aaf1f208a5d9c6ce19f4314d43",
"/": "2ef835aaf1f208a5d9c6ce19f4314d43",
"assets/NOTICES": "716911c840452f9febe97351e1946045",
"assets/assets/images/twitter.png": "838b2549f387e697b358ef57c2d1cf32",
"assets/assets/images/chef.png": "96985841efe2e5c30200c8e339cbcdf7",
"assets/assets/images/home.png": "4704f330e5fcba2bd87d63b58c2b45c7",
"assets/assets/images/inbox.png": "a82b2f8fe82f3b4ffc92129d08e08548",
"assets/assets/images/projects.png": "a346c24103352e12059e6cbdb7d7dd8a",
"assets/assets/images/star.png": "88d6b6028efd41c085e99b8683253af0",
"assets/assets/images/wink.png": "3f7de25db16f2c4a5dcc6c8df58754da",
"assets/assets/images/love.png": "9fc0b354bce5108a97081a67c9d37fb3",
"assets/assets/images/about.png": "bcb05248fbb0a96b6ed877d193445076",
"assets/assets/images/favDash.png": "ab02407310f7ce33858f8f73077ce0cb",
"assets/assets/images/toolbox.png": "9d5e8bf95cd18a7c1f163b55dff1132c",
"assets/assets/images/smiley.png": "8b8b7c6c55baf1a686d68b5ca331f92c",
"assets/assets/images/linkeldn.png": "b3eba12407542f8e50f3645422a54314",
"assets/assets/images/callme.png": "f0b1e617dcbdecd6b61c3b81187766da",
"assets/assets/images/hammer.png": "fd2ed6634a0d19e7056e68a76f76ddb9",
"assets/assets/images/grining.png": "2ebcec2ce7d06941064f37f5c25dc545",
"assets/assets/images/mail.png": "908af4cf7d44de7ea4d7fd18627186b7",
"assets/assets/images/heart.png": "f2f1d43d11d1ead93f6994b383925887",
"assets/assets/images/home_img.jpg": "a37b96c4da915aa13c068a0f32d98e31",
"assets/assets/images/github.png": "ae48d62e1ffe1e30b16045a38eb311aa",
"assets/assets/fonts/Lobster-Regular.ttf": "c3191f3b933ae0bd46335e178744326e",
"assets/assets/fonts/Tangerine-Bold.ttf": "8159a553ef417c00bc5c02ccc269dbdd",
"assets/assets/fonts/Rubik-Regular.ttf": "46df28800514364ef2766f74386b1bd3",
"assets/assets/fonts/Rubik-Light.ttf": "86699cab89559b6f5ffd4887cb5c7a7c",
"assets/assets/fonts/Rubik-Bold.ttf": "627d0e537f4a06a535ae956e4a87837f",
"assets/assets/fonts/Tangerine-Regular.ttf": "5bb6e4788f174bafaef61efaf6cee5c0",
"assets/assets/fonts/Rubik-Medium.ttf": "e785acbf5775e9bec2129f4967a75472",
"assets/assets/fonts/RubikMoonrocks-Regular.ttf": "95304efd3a56b35ff3dd90b016e23665",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "d13ecbd5115900029156e5802965377a",
"assets/fonts/MaterialIcons-Regular.otf": "8243943dd601cd9e708c95414d9c318b",
"assets/FontManifest.json": "156b906eb841e038fa33ca4d044c1cac",
"assets/AssetManifest.bin.json": "af082df5d650b35c275343c3bd0b6003",
"assets/packages/newton_particles/assets/images/newton.png": "263453a5e3f29b069d5ce8c90ae28eaa",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/AssetManifest.json": "4fe9ce2f52cb84cf6ef2b20198027d74",
"version.json": "19583b19daeb8ecb441f90e43b2faad4",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"main.dart.js": "826d48c3cb553511eb5df60001136cd0",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"manifest.json": "0fdc88dd9eb4cdd2af03f05622c91ea0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter_bootstrap.js": "01c6f53b850b4f31608cf11029423a45"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
