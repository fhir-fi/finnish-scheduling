rm -rf temp/
./_genonce.sh
java -jar input-cache/publisher.jar -go-publish -source $(pwd) -web https://hl7.fi/fhir -registry $(pwd)/../ig-registry/fhir-ig-list.json -history $(pwd)/../fhir-ig-history-template/ -templates $(pwd)/../history-template-fhir-fi -temp $(pwd)/temp
