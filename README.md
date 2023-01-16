# CQ500-segmentation
This repository includes segmented images based on the CQ500 dataset by Qure.ai. You can access the full dataset [here](http://headctstudy.qure.ai/dataset).
The data included is just the segments. These are based on all the scans, where a consensus by all three radiologists, that a haemmorhage is present, was met. Of those scans one or two slices were selected, processed ans segmented. Please note, that I am a medical engineer and not a radiologist and the segmentation may not be accurate.

# Processing
For easy processing, a matlab-script is included, which can convert a folder of dcm-files to a 256 by 256 pixel png image each. The file will be windowed to a width of 80 and center of 40.

# Segments
The numbers in the file names are named the scan-number first and the file-slice-number second. Please note, that the actual slice number and the one from a slice can differ, for easier sorting I have choosen the one from the file-name and the one shown when the slice is displayed in a DICOM viewer.
The segmentation colors are as follows: black for void (including the headrest), white for bones, green for brain, red for hemorrhage, blue for ventricles, yellow for others (skin, eyes, etc.).
