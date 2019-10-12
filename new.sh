set -eu

URL=$1
CONTEST=`echo $URL | sed -E 's/.+\/([^\_]+)\/tasks\/([^\/]+)$/\1/'`
PROBLEM=`echo $URL | sed -E 's/.+\/([^\_]+)\/tasks\/([^\/]+)$/\2/'`

mkdir -p src/$CONTEST

FILE=src/$CONTEST/$PROBLEM.rs
if [ -e $FILE ]; then
    echo "file exists"
else
    cp snippets/tmp.rs $FILE
fi
code $FILE