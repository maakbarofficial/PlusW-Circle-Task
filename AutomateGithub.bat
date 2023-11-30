USERNAME= "maakbarofficial"
TOKEN="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"

mkdir test

cd test

echo "This is created with Bash Script"

touch test.py

echo "This is test line in py file done automatically"

git config credential.helper store

echo "https://$USERNAME:$TOKEN@github.com" > ~/.git-credentials

git add .

git commit -m "Bash Script Automation"

git push origin main