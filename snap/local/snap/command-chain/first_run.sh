#!/bin/bash

# Create the data directory
if [ ! -d $SNAP_DATA/data ]; then
  mkdir $SNAP_DATA/data
fi

# Create a directory for storing SSL files in the data directory
if [ ! -d $SNAP_DATA/ssl ]; then
  mkdir $SNAP_DATA/ssl
fi

# Copy the settings file to the data directory
if [ ! -f $SNAP_DATA/.env ]; then
  cp $SNAP/etc/env.template $SNAP_DATA/.env
fi

# Create symlink for .env
if [ ! -f $SNAP_DATA/env ]; then
  ln -s $SNAP_DATA/.env $SNAP_DATA/env
fi
