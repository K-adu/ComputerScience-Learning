<h3> Create a dummy webcam and make it act like the real one</h3>

First of all avoid intefering with module files in linux it might be hard to recover from the damage

Write a script instead or use a dummy module

<h4> so first of all you will need 2 tools to perform tthis</h4>

first one is ffmpeg which enables us to stream the video we want as the webcam feed.
```
sudo apt install ffmpeg

```

Second one is v4l2loopback which allows us to create a virtual video device

```
sudo apt install v4l2loopback-dkms
```

<h4> now check the original video module you have</h4>

to perform this you can use the command
```
ls /dev/video*
```
this will list all the video module you have right now

you can check which one is your webcam using

```
ffplay /dev/videoX
```
where X is the module no

<h4> adding the virtual module to kernel</h4>

 we can use the command <b>modprobe</b> to perform the task
 modprobe is used to to add a loadable kernel module to the Linux kernel or to remove a loadable kernel module from the kernel
 
 ```
 sudo modprobe v4l2loopback
 ```
 now check if the module is loaded
 

```
ls /dev/video*
```
now you will see a extra module loaded in the kernel which it the virtual camera module

<h4>to add a video in the virtual cam</h4>


<h5>Desktop to virtual cam</h5>
 
 ```
 ffmpeg -f x11grab -framerate 15 -video_size 1280x720 -i :0.0 -f v4l2 /dev/video0
 ```
Video file (MP4) to virtual camera
```
ffmpeg -re -i input.mp4 -map 0:v -f v4l2 /dev/videoX
```
Image to virtual camera
```
ffmpeg -re -loop 1 -i input.jpg -vf format=yuv420p -f v4l2 /dev/videoX
```
Preview with ffplay
```
ffplay /dev/videoX   #where X represent virtual cam
```
