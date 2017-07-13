set -e

for i in $(find -type d -maxdepth 1 -mindepth 1|grep -v '.git'); do 
  pwd;
  if test -f $i/sparrow.json; then
    cd $i; 
    item=$(basename $PWD)
    echo $item
    cp /home/melezhik/projects/sparrow-plugin-generator/templ/* . 
    perl -i -p -e "s{%item%}[$item]g" story.bash README.md sparrow.json
    sparrow plg upload
    cd ../; 
  fi

done;

