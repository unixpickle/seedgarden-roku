# seedgarden-roku

This is an experimental Roku client for [seedgarden](https://github.com/unixpickle/seedgarden). This was the first (and probably last) Roku app I've created. I knew nothing about BrightScript before today, but I was able to hack something scrappy and functional together in a matter of hours.

# What it does

The app shows a list of downloads (by name) on the first page. You can scroll up and down using the arrow keys on the remote, and select a download. The list will then show all of the files within the download. Once you select one of these files, a video player will pop up that is set to stream the given file. This obviously only works if the file is a valid video format that supports streaming, such as an mp4 container with an H.264 video stream.

# Installation

First, enable [developer mode](https://developer.roku.com/docs/developer-program/getting-started/developer-setup.md) on your Roku device.

Now, you can install arbitrary `.zip` files on your Roku device. To compile this app into a zip file, run

```
bash make_zip.sh some.domain.com
```

Here, replace `some.domain.com` with the domain or IP address of your Seedgarden instance. This will create a file called `app.zip` in the current directory which you can upload to your device.
