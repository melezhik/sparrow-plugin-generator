item=$1
url=$2
author=$3


cp -v /home/melezhik/projects/sparrow-plugin-generator/templ/* . 
perl -i -p -e "s{%item%}[$item]g" story.bash README.md sparrow.json
perl -i -p -e "s{%url%}[$url]g" story.bash README.md sparrow.json
perl -i -p -e "s{%author%}[$author]g" story.bash README.md sparrow.json

