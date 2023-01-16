# CQ500-segmentation
This repository includes segmented images based on the CQ500 dataset by Qure.ai. You can access the full dataset [here](http://headctstudy.qure.ai/dataset).
The data included by me in this repo are just the segments as color values in png files. These are based on all the scans, where a consensus by all three radiologists, that a haemmorhage is present, was met. Of those scans one or two slices were selected, processed ans segmented. Please note, that I am a medical engineer and not a radiologist and the segmentation may not be accurate.

## Processing
For easy processing, a matlab-script is included, which can convert a folder of dcm-files to a 256 by 256 pixel png image each. The file will be windowed to a width of 80 and center of 40. Those scans then can be used with my included scans.

## Segments
The numbers in the file names are first the scan-number and secondly the file-slice-number. Please note, that the actual slice number and the one from a slice can differ, for easier sorting I have choosen the one from the file-name and not the one shown when the slice is displayed in a DICOM viewer.
The segmentation colors are as follows: black for void (including the headrest), white for bones, green for brain, red for hemorrhage, blue for ventricles, yellow for others (skin, eyes, etc.). These colors are always extreme values (e.g. for yellow it is (255, 255, 0).

## Example
I used this data to train a [Pix2Pix](https://github.com/junyanz/pytorch-CycleGAN-and-pix2pix) model. The results after different epochs of training can be found in the image below.

<img src="https://github.com/dont-ask-why/CQ500-segmentation/blob/main/CT-CQ500-Epochs.png" alt="Different Epochs of the Trained Data" width="500"/>
