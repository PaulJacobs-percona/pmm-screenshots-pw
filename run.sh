#! env bash
#
# Wrapper script for auto screen capture using Puppeteer
#
# Default values are defined in defaults.json
# Environment variables override settings in defaults.json
#
# USAGE
#
# run.sh [--list] [--full] [--debug] [--uid=<dashboard UID>[,]]
#
#   --list: print a list of dashboard UIDs in the specified dashboards file
#           (SNAP_DASHBOARDS_FILE or its default) then exit.
#
#   --full: Also snap container panels unconstrained by default viewport
#          (SNAP_IMG_WIDTH x SNAP_IMG_HEIGHT). Note: This option doubles
#           the total time for snapping.
#
#   --uid: When empty or unset, snaps all PMM dashboards.
#          To snap specific dashboards, use a single option with a comma-separated list, or
#          multiple options each with a UID.
#          All entries in file specified by SNAP_DASHBOARDS_FILE (or its default) with
#          matching uid will be snapped, including any panel/component entries.
#
#   --debug: Prints various operating parameters. Default: 'debug' in defaults file (false)

set -a

## Default values file.
# Default: ./cfg/defaults.json (defined in config.js)
# SNAP_DEFAULTS_FILE=

## PMM Server credentials
# Username.
# Default: 'user' field in defaults file ("admin")
# SNAP_USER=
# Password.
# Default: 'pass' field in defaults file ("admin")
# SNAP_PASS=

## Image base directory.
# Default: 'img_dir' in defaults file ("./images")
# Note: Within this directory, images are saved to a directory named:
# <server config 'name' field>/${SNAP_IMG_WIDTH}x${SNAP_IMG_HEIGHT}/
# E.g. "./images/pmmdemo/1280x720x1/"
# (See snap() in utils.js for subdirectory and file naming.)
# SNAP_IMG_DIR="images/$(date +%Y%m%d)/"

## Log in and snap the login screen.
# Default: 'log_in' field in defaults file (true)
# SNAP_LOG_IN=false

## Server config file.
# Default: 'config_file' in defaults file ("./cfg/server-pmmdemo.json")
# SNAP_SRV_CFG_FILE=./cfg/server-test.json
# SNAP_SRV_CFG_FILE=./cfg/server-local.json

## Dashboard definitions file.
# Default: 'dashboards_file' in defaults file ("./cfg/dashboards-pmm2.json")
# SNAP_DASHBOARDS_FILE=./cfg/dashboards-pmm1.json
# SNAP_DASHBOARDS_FILE=./cfg/dashboards-pmm2-video.json

## Snap viewport.
# Default: 'img_width' and 'img_height' in defaults file (1280, 1280)
# Note: Can be overridden per dashboard or per step (see pmm-qan entries in dashboards file)
# SNAP_IMG_WIDTH=1280
# SNAP_IMG_HEIGHT=720

## JPG Quality (% value).
# Default: 'jpg_quality' in defaults file (75)
# SNAP_JPG_QUALITY=100

## Image filetype (.jpg or .png).
# Default: .jpg (from 'img_ext' in defaults file)
# SNAP_IMG_EXT=.png

## Add zero-padded 3-digit snap sequence number prefix to image filename.
# Default: 'img_seq' in defaults file (false)
# SNAP_IMG_SEQ=true

## Secondary image filename prefix.
# Default: 'img_pfx' in defaults file ("PMM")
# SNAP_IMG_PFX=''

## Headless mode. Whether to hide browser while snapping.
# Default: 'headless' in defaults file (true)
# SNAP_HEADLESS=false

## Slow-motion delay. How many milliseconds between each step.
# Useful with SNAP_HEADLESS mode
# Default: 'slowmo' in defaults file (0)
#SNAP_SLOW_MO=500

node main.js --unhandled-rejections=strict "$@"
