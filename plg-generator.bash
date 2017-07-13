set -e

url=$1
author=$2

for i in $(find -type d -maxdepth 1 -mindepth 1|grep -v '.git'); do 
  if test -f $i/sparrow.json; then
    cd $i; 
    item=$(basename $PWD)
    echo $item
    cp -v /home/melezhik/projects/sparrow-plugin-generator/templ/* . 
    perl -i -p -e "s{%item%}[$item]g" story.bash README.md sparrow.json
    perl -i -p -e "s{%url%}[$url]g" story.bash README.md sparrow.json
    perl -i -p -e "s{%author%}[$author]g" story.bash README.md sparrow.json
    echo $item > requirements.txt
    cd ../; 
  fi

done;

