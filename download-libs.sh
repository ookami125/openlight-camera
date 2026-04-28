#!/usr/bin/env bash
# Downloads third-party library JARs to replace library smali files.
# Run this from the project root: bash download-libs.sh
set -euo pipefail

LIBS="$(cd "$(dirname "$0")" && pwd)/libs"
mkdir -p "$LIBS"

ok()  { echo "  OK  $1"; }
fail(){ echo "  FAIL $1"; }

dl_jar() {
    local name="$1" url="$2"
    if wget -q -O "$LIBS/$name" "$url"; then
        ok "$name"
    else
        fail "$name ($url)"
    fi
}

dl_aar() {
    local name="$1" url="$2"
    local tmp
    tmp=$(mktemp /tmp/aar.XXXXXX)
    if wget -q -O "$tmp" "$url"; then
        if unzip -p "$tmp" classes.jar > "$LIBS/$name"; then
            ok "$name"
        else
            fail "$name (unzip failed)"
        fi
    else
        fail "$name ($url)"
    fi
    rm -f "$tmp"
}

echo "=== Downloading Maven Central JARs ==="
dl_jar "gson-2.8.9.jar"           "https://repo1.maven.org/maven2/com/google/code/gson/gson/2.8.9/gson-2.8.9.jar"
dl_jar "glide-3.8.0.jar"          "https://repo1.maven.org/maven2/com/github/bumptech/glide/glide/3.8.0/glide-3.8.0.jar"
dl_jar "wire-runtime-2.2.0.jar"   "https://repo1.maven.org/maven2/com/squareup/wire/wire-runtime/2.2.0/wire-runtime-2.2.0.jar"
dl_jar "okio-1.15.0.jar"          "https://repo1.maven.org/maven2/com/squareup/okio/okio/1.15.0/okio-1.15.0.jar"
dl_jar "commons-io-2.6.jar"       "https://repo1.maven.org/maven2/commons-io/commons-io/2.6/commons-io-2.6.jar"

echo ""
echo "=== Downloading Android Support Library AARs (Google Maven, v26.1.0) ==="
BASE="https://dl.google.com/dl/android/maven2/com/android/support"
dl_jar  "support-annotations.jar"        "$BASE/support-annotations/26.1.0/support-annotations-26.1.0.jar"
dl_aar  "support-v4.jar"                 "$BASE/support-v4/26.1.0/support-v4-26.1.0.aar"
dl_aar  "appcompat-v7.jar"               "$BASE/appcompat-v7/26.1.0/appcompat-v7-26.1.0.aar"
dl_aar  "design.jar"                     "$BASE/design/26.1.0/design-26.1.0.aar"
dl_aar  "recyclerview-v7.jar"            "$BASE/recyclerview-v7/26.1.0/recyclerview-v7-26.1.0.aar"
dl_aar  "cardview-v7.jar"                "$BASE/cardview-v7/26.1.0/cardview-v7-26.1.0.aar"
dl_aar  "support-v13.jar"                "$BASE/support-v13/26.1.0/support-v13-26.1.0.aar"
dl_aar  "transition.jar"                 "$BASE/transition/26.1.0/transition-26.1.0.aar"
dl_aar  "animated-vector-drawable.jar"   "$BASE/animated-vector-drawable/26.1.0/animated-vector-drawable-26.1.0.aar"
dl_aar  "support-vector-drawable.jar"    "$BASE/support-vector-drawable/26.1.0/support-vector-drawable-26.1.0.aar"
dl_aar  "multidex.jar"                   "https://dl.google.com/dl/android/maven2/com/android/support/multidex/1.0.3/multidex-1.0.3.aar"
dl_aar  "constraint-layout.jar"          "https://dl.google.com/dl/android/maven2/com/android/support/constraint/constraint-layout/1.1.3/constraint-layout-1.1.3.aar"

echo ""
echo "=== Downloading HockeyApp ==="
if wget -q -O /tmp/hockey.aar "https://repo1.maven.org/maven2/net/hockeyapp/android/HockeySDK/5.2.0/HockeySDK-5.2.0.aar"; then
    unzip -p /tmp/hockey.aar classes.jar > "$LIBS/hockeyapp-SDK.jar" && ok "hockeyapp-SDK.jar"
    rm -f /tmp/hockey.aar
else
    echo "  SKIP hockeyapp (not on Maven Central - keeping as smali)"
fi

echo ""
echo "=== Result ==="
ls -lh "$LIBS/"
