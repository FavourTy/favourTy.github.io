'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"faviconn.png": "1a3fcf1815512c0265ebebe5053f44af",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"manifest.json": "b21f90632d61a479324517af0d4da7da",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"main.dart.js": "8ae44a66178aaceceb68625cf904e3a0",
"version.json": "19583b19daeb8ecb441f90e43b2faad4",
"assets/NOTICES": "8277b99aae95ba6c640d38510531ed37",
"assets/fonts/MaterialIcons-Regular.otf": "8243943dd601cd9e708c95414d9c318b",
"assets/AssetManifest.json": "4fe9ce2f52cb84cf6ef2b20198027d74",
"assets/assets/fonts/Rubik-Light.ttf": "86699cab89559b6f5ffd4887cb5c7a7c",
"assets/assets/fonts/Rubik-Bold.ttf": "627d0e537f4a06a535ae956e4a87837f",
"assets/assets/fonts/Tangerine-Bold.ttf": "8159a553ef417c00bc5c02ccc269dbdd",
"assets/assets/fonts/RubikMoonrocks-Regular.ttf": "95304efd3a56b35ff3dd90b016e23665",
"assets/assets/fonts/Rubik-Medium.ttf": "e785acbf5775e9bec2129f4967a75472",
"assets/assets/fonts/Rubik-Regular.ttf": "46df28800514364ef2766f74386b1bd3",
"assets/assets/fonts/Lobster-Regular.ttf": "c3191f3b933ae0bd46335e178744326e",
"assets/assets/fonts/Tangerine-Regular.ttf": "5bb6e4788f174bafaef61efaf6cee5c0",
"assets/assets/images/home.png": "4704f330e5fcba2bd87d63b58c2b45c7",
"assets/assets/images/linkeldn.png": "b3eba12407542f8e50f3645422a54314",
"assets/assets/images/inbox.png": "a82b2f8fe82f3b4ffc92129d08e08548",
"assets/assets/images/callme.png": "f0b1e617dcbdecd6b61c3b81187766da",
"assets/assets/images/projects.png": "a346c24103352e12059e6cbdb7d7dd8a",
"assets/assets/images/wink.png": "3f7de25db16f2c4a5dcc6c8df58754da",
"assets/assets/images/love.png": "9fc0b354bce5108a97081a67c9d37fb3",
"assets/assets/images/grining.png": "2ebcec2ce7d06941064f37f5c25dc545",
"assets/assets/images/github.png": "ae48d62e1ffe1e30b16045a38eb311aa",
"assets/assets/images/smiley.png": "8b8b7c6c55baf1a686d68b5ca331f92c",
"assets/assets/images/home_img.jpg": "a37b96c4da915aa13c068a0f32d98e31",
"assets/assets/images/chef.png": "96985841efe2e5c30200c8e339cbcdf7",
"assets/assets/images/mail.png": "908af4cf7d44de7ea4d7fd18627186b7",
"assets/assets/images/heart.png": "f2f1d43d11d1ead93f6994b383925887",
"assets/assets/images/toolbox.png": "9d5e8bf95cd18a7c1f163b55dff1132c",
"assets/assets/images/favDash.png": "ab02407310f7ce33858f8f73077ce0cb",
"assets/assets/images/hammer.png": "fd2ed6634a0d19e7056e68a76f76ddb9",
"assets/assets/images/star.png": "88d6b6028efd41c085e99b8683253af0",
"assets/assets/images/about.png": "bcb05248fbb0a96b6ed877d193445076",
"assets/assets/images/twitter.png": "838b2549f387e697b358ef57c2d1cf32",
"assets/FontManifest.json": "156b906eb841e038fa33ca4d044c1cac",
"assets/AssetManifest.bin.json": "af082df5d650b35c275343c3bd0b6003",
"assets/AssetManifest.bin": "d13ecbd5115900029156e5802965377a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/newton_particles/assets/images/newton.png": "263453a5e3f29b069d5ce8c90ae28eaa",
"flutter_bootstrap.js": "265d3b8b964f0201bfbb5bdde9b4c362",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "f2a757cf66a053e63dc877aec20c186e",
"/": "f2a757cf66a053e63dc877aec20c186e"};
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
