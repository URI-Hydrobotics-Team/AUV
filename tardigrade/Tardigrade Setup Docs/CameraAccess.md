### Seeing Camera Feed (Simulator)

There's an amazing tool called rqt_image_view. RQt being Ros Qt, Qt is a UI library that can be made using either python or alternatively via it's own independent software. We will likely be using RQT for designing our surface control system. rqt_image_view takes the already independent library ImageView and places directly into the RQT framework. 

ROS Page: http://wiki.ros.org/rqt_image_view 

You may need to install the rqt_image_view itself.

```bash
sudo apt install ros-(ros distro)-rqt-image-view #in my case ros-noetic-rqt-image-view
```

Some problems may arise if you have PyQt5 or PyQt5-sip already installed. I stupidly thought that by using pip3 for ROS only, pip3.10 for work, and pip for general stuff (outside ROS and work) would atleast containerize all my libraries DON'T ASSUME THAT. I suggest you go through each primary version of pip you have and running ```pip(version) uninstall PyQt5``` & ```pip(version) uninstall PyQt5-sip```. You may also need to remove PyQt4 and PyQt4-sip incase they are also installed. RQT can also be ran using PySide2 so don't worry about the dependency.

Moving forward.

to view our camera, we can first run in a terminal, ```rqt``` you should see an application, if you get an error warning to "Abort" as there is no roscore running, click Abort and repeat this step after launching. 

You may now launch via the terminal if not already.

After opening we need to open our camera topic. Select Plugins->Visualization->Image View. Then set the topic, there are multiple choices, I'd suggest compressed though. Now you should see your cameras vision. 