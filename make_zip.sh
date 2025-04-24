# Compile the code into a zip to upload to a Roku device.
# Pass the argument <base domain> to specify the domain of
# your seedgarden server.

if [ $# -ne 1 ]; then
    echo 'Usage: make_zip.sh <base domain>' >&2
    exit 1
fi

BASE_DOMAIN=$1
OUTPUT_PATH=./app.zip

rm -rf .out_dir
mkdir .out_dir

cp -r manifest source images components .out_dir
if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i "" "s/BASE_DOMAIN/$BASE_DOMAIN/g" .out_dir/components/*.xml
else
  sed -i "s/BASE_DOMAIN/$BASE_DOMAIN/g" .out_dir/components/*.xml
fi

rm -rf $OUTPUT_PATH
cd .out_dir
zip -r ../$OUTPUT_PATH *
cd -
rm -rf .out_dir
