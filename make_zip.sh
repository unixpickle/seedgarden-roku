if [ $# -ne 1 ]; then
    echo 'Usage: make_zip.sh <base domain>' >&2
    exit 1
fi

BASE_DOMAIN=$1
OUTPUT_PATH=./app.zip

rm -rf .out_dir
mkdir .out_dir

cp -r manifest source images components .out_dir
sed -i "s/BASE_DOMAIN/$BASE_DOMAIN/g" .out_dir/components/*.xml

rm -rf $OUTPUT_PATH
zip -r $OUTPUT_PATH .out_dir/*
rm -rf .out_dir
