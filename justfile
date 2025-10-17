dev:
  hivemind

build:
  tailwindcss -i assets/css/main.css -o assets/css/style.css -m
  hugo --minify

clean:
    rm -rf public/ resources/

new PAGE:
    hugo new content "{{PAGE}}.md"

stage:
  just build
  rsync -avz --delete public/ augustine:/var/www/preview.alias-asso.fr/

publish:
  just build
  rsync -avz --delete public/ augustine:/var/www/alias-asso.fr/


new-activity NAME:
    hugo new content "activities/{{NAME}}.md"

new-service NAME:
    hugo new content "services/{{NAME}}.md"
