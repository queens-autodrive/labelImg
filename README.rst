LabelImg
========

LabelImg is a graphical image annotation tool.

It is written in Python and uses Qt for its graphical interface.

This fork of the library has been streamlined for usage by Queen's University Autodrive.

Installation
------------

Windows
^^^^^^^

Install `Git Bash <https://git-scm.com/downloads/>`__ if not already 

Install `Python <https://www.python.org/downloads/windows/>`__ if not already (Python Version >= 3.6)

Quick Setup
^^^^^^^^^^^
- Open git bash and clone repository in desired directory.

.. code:: shell

    git clone https://github.com/queens-autodrive/labelImg.git


- change directory into repository and run setup script.

.. code:: shell

    cd labelImg
    ./buildscripts/win-setup.sh

Usage
-----

Steps (YOLO)
^^^^^^^^^^^^
1. Change directory into repository root (``/labelImg``)
2. Launch labelImg (``python labelImg.py``)
3. Open image folder #TODO figure out image repo git lfs?
4. on left toolbar click "PascalVOC" button to switch to YOLO format. #TODO remove other options
5. click 'Create RectBox' 
6. Click and release left mouse to select a region to annotate the rectbox
7. You can use right mouse to drag the rect box to copy or move it

This will create a txt file of YOLO format in the same folder as the image, with the same filename.

Notes:
~~~~~~
- You can refer to the below hotkeys to speed up your workflow.

- During annotation **DO NOT ENTER NEW CLASS LABELS** 
    - Your label list must not change existing labels in the middle of processing a set of images as previous annotations will not be updated.
    - To propose additional class labels, please submit a pull request to update "data/predefined_classes.txt"


Hotkeys
~~~~~~~

+--------------------+--------------------------------------------+
| Ctrl + u           | Load all of the images from a directory    |
+--------------------+--------------------------------------------+
| Ctrl + r           | Change the default annotation target dir   |
+--------------------+--------------------------------------------+
| Ctrl + s           | Save                                       |
+--------------------+--------------------------------------------+
| Ctrl + d           | Copy the current label and rect box        |
+--------------------+--------------------------------------------+
| Ctrl + Shift + d   | Delete the current image                   |
+--------------------+--------------------------------------------+
| Space              | Flag the current image as verified         |
+--------------------+--------------------------------------------+
| w                  | Create a rect box                          |
+--------------------+--------------------------------------------+
| d                  | Next image                                 |
+--------------------+--------------------------------------------+
| a                  | Previous image                             |
+--------------------+--------------------------------------------+
| del                | Delete the selected rect box               |
+--------------------+--------------------------------------------+
| Ctrl++             | Zoom in                                    |
+--------------------+--------------------------------------------+
| Ctrl--             | Zoom out                                   |
+--------------------+--------------------------------------------+
| ↑→↓←               | Keyboard arrows to move selected rect box  |
+--------------------+--------------------------------------------+


License
~~~~~~~
`Free software: MIT license <https://github.com/tzutalin/labelImg/blob/master/LICENSE>`_

Citation: Tzutalin. LabelImg. Git code (2015). https://github.com/tzutalin/labelImg
