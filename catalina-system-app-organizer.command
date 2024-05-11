#!/usr/bin/env bash

if sudo mount -uw /; then
    echo "Mounted root partition as R/W."
else
    echo "Couldn't mount root partition as R/W. You may need to disable SIP or adjust its values."
    exit
fi

cd /System/Applications

sudo mkdir -p Media
sudo mv "Books.app" Media
sudo mv "Image Capture.app" Media
sudo mv "Music.app" Media
sudo mv "Photo Booth.app" Media
sudo mv "Photos.app" Media
sudo mv "Podcasts.app" Media
sudo mv "Preview.app" Media
sudo mv "QuickTime Player.app" Media

sudo mkdir -p Productivity
sudo mv "Calendar.app" Productivity
sudo mv "Contacts.app" Productivity
sudo mv "FaceTime.app" Productivity
sudo mv "Mail.app" Productivity
sudo mv "Messages.app" Productivity
sudo mv "Notes.app" Productivity
sudo mv "Reminders.app" Productivity
sudo mv "TextEdit.app" Productivity

sudo mv "Automator.app" Utilities
sudo mv "FindMy.app" Utilities
sudo mv "Font Book.app" Utilities
sudo mv "Home.app" Utilities
sudo mv "System Preferences.app" Utilities
sudo mv "Time Machine.app" Utilities

sudo chflags hidden "Calculator.app"
sudo chflags hidden "Chess.app"
sudo chflags hidden "Dictionary.app"
sudo chflags hidden "Launchpad.app"
sudo chflags hidden "Maps.app"
sudo chflags hidden "Mission Control.app"
sudo chflags hidden "News.app"
sudo chflags hidden "Siri.app"
sudo chflags hidden "Stickies.app"
sudo chflags hidden "Stocks.app"
sudo chflags hidden "TV.app"
sudo chflags hidden "VoiceMemos.app"

cd Utilities

sudo chflags hidden "Audio MIDI Setup.app"
sudo chflags hidden "Bluetooth File Exchange.app"
sudo chflags hidden "ColorSync Utility.app"
sudo chflags hidden "Grapher.app"
sudo chflags hidden "VoiceOver Utility.app"