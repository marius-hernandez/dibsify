# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "trix", to: "https://cdn.skypack.dev/trix"
pin "@rails/actiontext", to: "https://cdn.skypack.dev/@rails/actiontext"
pin "flowbite", to: "https://ga.jspm.io/npm:flowbite@2.2.0/lib/esm/index.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/dist/esm/index.js"  # Flowbite dependency

pin "flowbite", to: "https://unpkg.com/flowbite@latest/dist/flowbite.js"
