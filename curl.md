https://gist.github.com/subfuzion/08c5d85437d5d4f00e58

curl -v -F 'filetoupload=@test_load.tar.gz' -F 'title=test_load.tar.gz' http://localhost:3010/upload

curl -v -H "Content-type: application/zip" -X POST https://uploads.github.com/repos/dynawo/dynawo/releases/18115209/assets\?name=test.zip
