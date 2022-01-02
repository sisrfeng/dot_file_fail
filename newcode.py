#!/usr/bin/env python
# -*- coding: utf-8 -*-
import cv2 as cv; import numpy as np ; import json ; import sys; import os
wf_home = os.path.expanduser("~/")
sys.path.append(wf_home)
from dot_file.wf_snippet import *



num = input('your intput')
print(str(num)[-1::-1])
