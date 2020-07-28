# garmintimelapse

Garmin VIRB timelapse sorting script - this works but is rather crude.

Watch the [YouTube video](https://www.youtube.com/watch?v=0yfcaXUsMeg) for an explainer... or read the [blog post](https://ceruleanfilms.co.uk/blog/garmin).

## How it works

1. The first script takes the “DCIM” folder as the chosen folder and moves the contents of each subfolder into a new folder called “Flattened Files”.
2. The next script takes the “Flattened Files” folder as the chosen folder and moves the timelapse sequence images into new subfolders. After this process you then have to move the first file as it has a different naming structure (e.g. VIRB0678.jpg vs the other files which will be VIRB0678-150.jpg). It will leave any standalone photos or video files in the “Flattened Files” folder.
