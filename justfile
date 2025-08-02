# Developpement
dev:
  hivemind

# Build production  
build:
  tailwindcss -i assets/css/main.css -o assets/css/style.css -m
  hugo --minify

# Clean
clean:
    rm -rf public/ resources/

# Ajouter un nouveau post/page
new PAGE:
    hugo new content "{{PAGE}}.md"
