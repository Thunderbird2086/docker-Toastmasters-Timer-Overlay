# docker-Toastmasters-Timer-Overlay
Docker for Toastmasters Timer Overlay

## Build
    docker create --name=tm-timer-overlay  \
      thunderbird2086/toastmasters-timer-overlay

## Run
    docker run \
      --name 'TM-Timer-Overlay' \
      --net 'bridge' \
      -p '<your port>:8888/tcp' \
      -d thunderbird2086/toastmasters-timer-overlay

## Usage 
1. Run docker
2. Open browser and connect timer web site for example
   ```
        http://localhost:8888
   ```
   or
   ```
        http://<container ip>:<your port>
   ```
   - Hot keys
     - `1` or `g` : Green
     - `2` or `y` : Yellow
     - `3` or `r` : Red
1. Open OBS Studio
1. Setup your video in OBS
    1. Sources -> Add -> Video Capture Device
    1. Click the image and resize and move it to your liking
1. Add Browser Capture
    1. Sources -> Add -> Browser
    1. Paste the copied link
1. Start VirtualCam
    1. (Top Bar) -> Tools -> VirtualCam -> Start
1. Change your Video Source to OBS-Camera
    In Zoom: Settings -> Video -> Camera -> OBS-Camera
