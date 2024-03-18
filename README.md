# <p align="center">VastTrack: Vast Category Visual Object Tracking</p>


<p align="center"> [**VastTrack: Vast Category Visual Object Tracking**](https://arxiv.org/abs/2403.03493) </p> <br>
Liang Peng<sup>\*</sup>, Junyuan Gao<sup>\*</sup>, Xinran Liu<sup>\*</sup>, Weihong Li<sup>\*</sup>, Shaohua Dong<sup>\*</sup>, Zhipeng Zhang, Heng Fan<sup>$\dagger$</sup>, Libo Zhang<sup>$\dagger$</sup> <br> (\*: equal contribution; $\dagger$: equal advising)<br>
[[`arXiv`](https://arxiv.org/abs/2403.03493)] [[`Matlab Code`](https://github.com/HengLan/VastTrack/tree/main/MatlabEvaluationToolkit)] [[`Python Code`](https://github.com/HengLan/VastTrack/tree/main/PythonEvaluationToolkit)]

<br>

<img src="https://github.com/HengLan/VastTrack/blob/main/assets/VastTrack.png" width="110%">

**Figure:** We introduce [**VastTrack**](https://arxiv.org/abs/2403.03493), a new large-scale benchmark that aims to facilitate general single object tracking with abundant object categories (over **2.1K classes**) and videos (**over 50K sequences**). Here display partial target trajectory in a video. <em>Please notice that, only a very small part of categories and videos are demonstrated</em>.

## :sparkles:Highlights

* **Vast Object Category**
    - VastTrack contains **2,115 object classes**, largely surpassing object categories of existing benchmarks
* **Larger-scale Benchmark**
    - VastTrack comprises **50,610** videos with 4.2**M** frames, making it the **largest** regarding video number
* **Rich Linguistic Description**
    - VastTrack provides a linguistic description for each sequence, collecting **more than 50K** descriptions
* **High-quality and Dense Annotation**
    - VastTrack offers **manual per-frame** annotations for all videos, building a **high-quality** platform for tracking

## :camera:Samples
<img src="https://github.com/HengLan/VastTrack/blob/main/assets/samples.png" width="110%">

**Figure:** Visualization of several annotation examples along with the linguistic descriptions in the proposed VastTrack.

## :triangular_flag_on_post:Benchmarking
### :small_blue_diamond:Overall Evaluation SOTA Trackers
<img src="https://github.com/HengLan/VastTrack/blob/main/assets/overallres.png" width="110%">

**Figure:** Overall evaluation of representative SOTA trackers from different years on VastTrack using PRE/NPRE/SUC.

### :small_blue_diamond:Attribute-based Evaluation
<img src="https://github.com/HengLan/VastTrack/blob/main/assets/sucattres.png" width="110%">

**Figure:** Attribute-based evaluation of different tracking algorithms on VastTrack using SUC (more in the [paper](https://arxiv.org/abs/2403.03493)).

### :small_blue_diamond:Qualitative Evaluation 
<img src="https://github.com/HengLan/VastTrack/blob/main/assets/vistrackingres.png" width="110%">

**Figure:** Qualitative results of eight representative trackers on different sequences containing different challenges.

#### More experimental results with analysis can be found in the [paper](https://arxiv.org/abs/2403.03493).

## :globe_with_meridians:Downloading VastTrack

### :small_blue_diamond:Organization

Due to the large data size, we split VastTrack into multiple `Zip` files. Each file has the following organization:
```
part-1.zip
├── class-1
│   └── video-1
│       ├── imgs
│       ├── nlp.txt
│       └── Groundtruth.txt
│   └── video-2
│       ├── imgs
│       ├── nlp.txt
│       └── Groundtruth.txt
|       ...
└── class-2
|   ...
part-2.zip
├── class-k
|   ...
...
```
You need to download all the zips files using the provided links below for a full version of VastTrack.

### :small_blue_diamond:Format of Each Video Sequence
In each video folder, we provide the frames of the video in the `imgs/` sub-folder, bounding box annotations in the `Groundtruth.txt` file, and linguistic description in the `nlp.txt` file. The format of the bounding box is as follows: `[x, y, width, height]`.

### :small_blue_diamond:Downloading Links
Below are the downloading links of VastTrack. We offer two ways, `OneDrive` and `Baidu Cloud Drive`, to download the data.

* **OneDrive**
  - The downloading link for the **`training set`** is [here](https://1drv.ms/f/s!AnWdA-LZ-BEt5W9kQtMU8nB19qpy?e=IYm3eF).
  - The downloading link for the **`test set`** is here (to be uploaded).

* **Baidu Cloud Drive**
  - The downloading link for the **`training set`** is [here](https://pan.baidu.com/s/1ov-4PkKWsmiM_QZLL7pZQw?pwd=glze) (you may need the extraction code: `glze`).
  - The downloading link for the **`test set`** is here (to be uploaded).

**Note:** The training set of VastTrack contains 82 Zip files in total, and the category corresponding to each compressed package is specified in a JSON file. The test set consists of 15 Zip packages.

## :straight_ruler:Evaluation Toolkit
We provide two variats of evaluation toolkit for Matlab and Python users.
* [Matlab Evaluation Toolkit](https://github.com/HengLan/VastTrack/tree/main/MatlabEvaluationToolkit)
* [Python Evaluation Toolkit](https://github.com/HengLan/VastTrack/tree/main/PythonEvaluationToolkit)

## :memo:License
The video sequences in VastTrack are collected from [YouTube](https://www.youtube.com/) (under Creative Commons Attribution 4.0 License) as it is currently the largest the video platform and many videos come from the real world. We provide VastTrack for **non-commercial research purposes only** and are not responsible for the content of these videos.

## :balloon:Citation
If you find our VastTrack useful, please consider giving it a star and citing it. Thanks!
```
@article{peng2024vasttrack,
  title={VastTrack: Vast Category Visual Object Tracking},
  author={Peng, Liang and Gao, Junyuan and Liu, Xinran and Li, Weihong and Dong, Shaohua and Zhang, Zhipeng and Fan, Heng and Zhang, Libo},
  journal={arXiv preprint arXiv:2403.03493},
  year={2024}
}
```
