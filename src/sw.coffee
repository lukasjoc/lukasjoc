"use-strict"

PRECACHE = "precache-v1"
RUNTIME = "runtime"

PRECACHE_URLS = [
  "index.html"
  "./"
  "main.css"
]

self.addEventListener "install", (event) ->
  event.waitUntil caches.open(PRECACHE)

  .then((cache) ->
    cache.addAll PRECACHE_URLS
    return
  ).then(self.skipWaiting())
  return

self.addEventListener "activate", (event) ->
  currentCaches = [ PRECACHE, RUNTIME ]

  event.waitUntil caches.keys().then((cacheNames) ->
    cacheNames.filter (cacheName) ->
      !currentCaches.includes(cacheName)
      return

  ).then((cachesToDelete) ->
    Promise.all cachesToDelete.map((cacheToDelete) ->
      caches.delete cacheToDelete
    )

  ).then(->
    self.clients.claim()
    return
  )
  return

self.addEventListener "fetch", (event) ->

  if event.request.url.startsWith(self.location.origin)
    event.respondWith caches.match(event.request).then((cachedResponse) ->

      if cachedResponse
        return cachedResponse

      caches.open(RUNTIME).then (cache) ->
        fetch(event.request).then (response) ->
          cache.put(event.request, response.clone()).then ->
            response
    )
  return
