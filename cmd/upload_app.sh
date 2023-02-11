#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cd "$parent_path"

export $(grep -v '^#' .env | xargs)

host=https://wsports.app/api/v1/app
file=../build/app/outputs/flutter-apk/app-release.apk

cd ".."
flutter clean
flutter pub get
flutter build apk --release

cd "cmd"
curl -v -H "Authorization: Bearer $JWT" -F "file=@$file" $host