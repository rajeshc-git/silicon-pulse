#!/usr/bin/env bash
# ==============================================================================
# SiliconPulse DMG Packaging Script
# ==============================================================================
set -euo pipefail

APP_NAME="SiliconPulse"
VERSION="1.0.0"
DMG_NAME="${APP_NAME}-v${VERSION}.dmg"
BUILD_DIR="${BUILD_DIR:-.build/release}"
DIST_DIR="dist"
TMP_DMG_DIR="/tmp/${APP_NAME}_dmg_staging"

echo "⚡️ Packaging ${APP_NAME} v${VERSION} into DMG..."

# Create clean staging directory
rm -rf "${TMP_DMG_DIR}" "${DIST_DIR}/${DMG_NAME}"
mkdir -p "${TMP_DMG_DIR}" "${DIST_DIR}"

# Check for .app bundle
if [ -d "${BUILD_DIR}/${APP_NAME}.app" ]; then
    echo "📦 Copying ${BUILD_DIR}/${APP_NAME}.app to staging..."
    cp -R "${BUILD_DIR}/${APP_NAME}.app" "${TMP_DMG_DIR}/"
elif [ -d "${APP_NAME}.app" ]; then
    echo "📦 Copying ${APP_NAME}.app to staging..."
    cp -R "${APP_NAME}.app" "${TMP_DMG_DIR}/"
else
    echo "ℹ️ Note: Target ${APP_NAME}.app not found in ${BUILD_DIR}. Ensure app bundle is built."
fi

# Create /Applications symlink for drag-and-drop install
ln -s /Applications "${TMP_DMG_DIR}/Applications"

# Create disk image using native hdiutil
echo "💽 Generating APFS / UDZO disk image..."
hdiutil create -volname "${APP_NAME}" \
               -srcfolder "${TMP_DMG_DIR}" \
               -ov -format UDZO \
               "${DIST_DIR}/${DMG_NAME}"

# Cleanup
rm -rf "${TMP_DMG_DIR}"

echo "✅ DMG generated successfully at ${DIST_DIR}/${DMG_NAME}"
if [ -f "${DIST_DIR}/${DMG_NAME}" ]; then
    echo "🔒 SHA256 Checksum:"
    shasum -a 256 "${DIST_DIR}/${DMG_NAME}"
fi
