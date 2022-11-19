mkdir -p lib/generated/
protoc --dart_out=lib/generated/ proto/*.proto