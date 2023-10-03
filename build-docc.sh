##!/bin/sh

xcrun xcodebuild docbuild \
	-sdk macosx14.0\
    -scheme A11Y-SC-CPH \
    -destination 'generic/platform=macOS' \
    -derivedDataPath "$PWD/.derivedData"

xcrun docc process-archive \
    transform-for-static-hosting "$PWD/.derivedData/Build/Products/Debug/A11Y-SC-CPH.doccarchive" \
    --hosting-base-path "A11Y-SC-CPH" \
    --output-path ".docs"
