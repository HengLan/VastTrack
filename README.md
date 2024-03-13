# VastTrack: Vast Category Visual Object Tracking

<img src="https://github.com/HengLan/VastTrack/blob/main/assets/VastTrack.png" width="110%">

**Figure:** We introduce [**VastTrack**](https://arxiv.org/abs/2403.03493), a new large-scale benchmark that aims to facilitate general single object tracking with abundant object categories (over **2.1K classes**) and videos (**over 50K sequences**). Here display partial target trajectory in a video. <em>Please notice that, only a very small part of categories and videos are demonstrated</em>.

[VastTrack: Vast Category Visual Object Tracking](https://arxiv.org/abs/2403.03493) <br>
Liang Peng<sup>\*</sup>, Junyuan Gao<sup>\*</sup>, Xinran Liu<sup>\*</sup>, Weihong Li<sup>\*</sup>, Shaohua Dong<sup>\*</sup>, Zhipeng Zhang, Heng Fan<sup>$\dagger$</sup>, Libo Zhang<sup>$\dagger$</sup> <br> (<sup>\*</sup>: equal contribution; <sup>$\dagger$</sup>equal advising)<br>
[[`Paper`](https://arxiv.org/abs/2403.03493)] [[`Matlab Code`](https://github.com/HengLan/VastTrack/tree/main/MatlabEvaluationToolkit)] [[`Python Code`](https://github.com/HengLan/VastTrack/tree/main/PythonEvaluationToolkit)]

## Attractive Properties of VastTrack

* **Vast Object Category**
    - VastTrack contains **2,115 object classes**, largely surpassing object categories of existing benchmarks
* **Larger Scale**
    - VastTrack comprises **50,610** videos with 4.2**M** frames, making it so far the **largest** regarding video number
* **Rich Linguistic Description**
    - VastTrack provides a linguistic description for each sequence, collecting **more than 50K** language descriptions
* **High-quality and Dense Annotation**
    - As always, VastTrack offers high-quality per-frame bounding box annotations for all the video sequences

## Dataset Download
For each video in VastTrack, we provide bounding box annotations, complete occlusion and out-of-view labels, as well as linguistic descriptions. The format of the bounding box is as follows: [x, y, width, height]. (Our training set is divided into 82 parts of compressed packages, with the category corresponding to each compressed package specified in a JSON file.) The test set consists of 15 parts of compressed packages.


You can download  it through the following two methods:


```
part-num.zip
├── class1
│   └── video
│       ├── imgs
│       ├── nlp.txt
│       └── Groundtruth.txt
└── class2
    └── video
        ├── imgs
        ├── nlp.txt
        └── Groundtruth.txt
```




OneDrive: 

Train
https://1drv.ms/f/s!AnWdA-LZ-BEt5W9kQtMU8nB19qpy?e=IYm3eF

Baidu Cloud Drive:

Train:
Link: https://pan.baidu.com/s/1ov-4PkKWsmiM_QZLL7pZQw?pwd=glze
Extraction code: glze



**More details will be coming ... stay tuned**
