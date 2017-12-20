#!/bin/bash
#
# MovieQA
# 29.03.2016

# Burst tarballs if argument is not empty
BURST=$1

### Download text stories
echo "************* MovieQA *************"
echo "Downloading text-answering stories"
echo "***********************************"
read -p 'Press [Enter] to continue...'

# mkdir story
# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/text-plot -O story/plot.tar.gz
# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/text-splitplot -O story/splitplot.tar.gz
# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/text-script -O story/script.tar.gz
# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/text-subtt -O story/subtt.tar.gz

# if [ ! -z $BURST ]; then
#     # Burst everything and go back
#     cd story
#     tar -xf plot.tar.gz
#     tar -xf splitplot.tar.gz
#     tar -xf script.tar.gz
#     tar -xf subtt.tar.gz
#     cd ..

# else
#     echo "************* MovieQA *************"
#     echo "Please burst the tarballs in 'MOVIEQA_BASE/story/' yourself!"
#     echo "***********************************"
#     echo
# fi


# ### Download video files
# echo "************* MovieQA *************"
# echo "Downloading video clips"
# echo "***********************************"
# read -p 'Press [Enter] to continue...'

# mkdir story/video_clips


# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0212720 -O story/video_clips/tt0212720.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt2024544 -O story/video_clips/tt2024544.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1781769 -O story/video_clips/tt1781769.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0307987 -O story/video_clips/tt0307987.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0105414 -O story/video_clips/tt0105414.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0096446 -O story/video_clips/tt0096446.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0095953 -O story/video_clips/tt0095953.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0137523 -O story/video_clips/tt0137523.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0121765 -O story/video_clips/tt0121765.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0139134 -O story/video_clips/tt0139134.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0289879 -O story/video_clips/tt0289879.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1229822 -O story/video_clips/tt1229822.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0109446 -O story/video_clips/tt0109446.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0120737 -O story/video_clips/tt0120737.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0144084 -O story/video_clips/tt0144084.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0112740 -O story/video_clips/tt0112740.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0411061 -O story/video_clips/tt0411061.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0250494 -O story/video_clips/tt0250494.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0087469 -O story/video_clips/tt0087469.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0120915 -O story/video_clips/tt0120915.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0118971 -O story/video_clips/tt0118971.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0167261 -O story/video_clips/tt0167261.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0449088 -O story/video_clips/tt0449088.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1568346 -O story/video_clips/tt1568346.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0493464 -O story/video_clips/tt0493464.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0256415 -O story/video_clips/tt0256415.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0421715 -O story/video_clips/tt0421715.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0251127 -O story/video_clips/tt0251127.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt2310332 -O story/video_clips/tt2310332.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0458525 -O story/video_clips/tt0458525.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0383574 -O story/video_clips/tt0383574.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0083866 -O story/video_clips/tt0083866.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1343092 -O story/video_clips/tt1343092.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1270798 -O story/video_clips/tt1270798.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0412019 -O story/video_clips/tt0412019.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0476964 -O story/video_clips/tt0476964.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0455824 -O story/video_clips/tt0455824.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0119822 -O story/video_clips/tt0119822.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1907668 -O story/video_clips/tt1907668.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0379786 -O story/video_clips/tt0379786.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0245238 -O story/video_clips/tt0245238.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0118842 -O story/video_clips/tt0118842.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0099487 -O story/video_clips/tt0099487.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1598822 -O story/video_clips/tt1598822.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0328107 -O story/video_clips/tt0328107.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0270980 -O story/video_clips/tt0270980.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0367882 -O story/video_clips/tt0367882.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0118715 -O story/video_clips/tt0118715.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0097165 -O story/video_clips/tt0097165.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt2278388 -O story/video_clips/tt2278388.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1205489 -O story/video_clips/tt1205489.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0443706 -O story/video_clips/tt0443706.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0097576 -O story/video_clips/tt0097576.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0129387 -O story/video_clips/tt0129387.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1058017 -O story/video_clips/tt1058017.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1371111 -O story/video_clips/tt1371111.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0866439 -O story/video_clips/tt0866439.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1276104 -O story/video_clips/tt1276104.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1483013 -O story/video_clips/tt1483013.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0106918 -O story/video_clips/tt0106918.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1535970 -O story/video_clips/tt1535970.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0090756 -O story/video_clips/tt0090756.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1142988 -O story/video_clips/tt1142988.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0167260 -O story/video_clips/tt0167260.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0343818 -O story/video_clips/tt0343818.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1201607 -O story/video_clips/tt1201607.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0099674 -O story/video_clips/tt0099674.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0375679 -O story/video_clips/tt0375679.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1951264 -O story/video_clips/tt1951264.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0305711 -O story/video_clips/tt0305711.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1170358 -O story/video_clips/tt1170358.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0286106 -O story/video_clips/tt0286106.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0478311 -O story/video_clips/tt0478311.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0110912 -O story/video_clips/tt0110912.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1104001 -O story/video_clips/tt1104001.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0499549 -O story/video_clips/tt0499549.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1706593 -O story/video_clips/tt1706593.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0206634 -O story/video_clips/tt0206634.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0120586 -O story/video_clips/tt0120586.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0167404 -O story/video_clips/tt0167404.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0111161 -O story/video_clips/tt0111161.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0385752 -O story/video_clips/tt0385752.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0240772 -O story/video_clips/tt0240772.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0372784 -O story/video_clips/tt0372784.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0295297 -O story/video_clips/tt0295297.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1981115 -O story/video_clips/tt1981115.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0076759 -O story/video_clips/tt0076759.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0816436 -O story/video_clips/tt0816436.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0086879 -O story/video_clips/tt0086879.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0120611 -O story/video_clips/tt0120611.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0903624 -O story/video_clips/tt0903624.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0240890 -O story/video_clips/tt0240890.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0780571 -O story/video_clips/tt0780571.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1504320 -O story/video_clips/tt1504320.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0330373 -O story/video_clips/tt0330373.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0333780 -O story/video_clips/tt0333780.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0898367 -O story/video_clips/tt0898367.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0250797 -O story/video_clips/tt0250797.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0780504 -O story/video_clips/tt0780504.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0970416 -O story/video_clips/tt0970416.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0147800 -O story/video_clips/tt0147800.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0096895 -O story/video_clips/tt0096895.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0790636 -O story/video_clips/tt0790636.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0290002 -O story/video_clips/tt0290002.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0114814 -O story/video_clips/tt0114814.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0113243 -O story/video_clips/tt0113243.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0099685 -O story/video_clips/tt0099685.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1045658 -O story/video_clips/tt1045658.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1385826 -O story/video_clips/tt1385826.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt2267998 -O story/video_clips/tt2267998.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0467406 -O story/video_clips/tt0467406.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0166924 -O story/video_clips/tt0166924.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0388795 -O story/video_clips/tt0388795.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1478338 -O story/video_clips/tt1478338.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0212338 -O story/video_clips/tt0212338.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0120338 -O story/video_clips/tt0120338.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1114677 -O story/video_clips/tt1114677.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0373889 -O story/video_clips/tt0373889.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0080684 -O story/video_clips/tt0080684.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0086190 -O story/video_clips/tt0086190.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0359950 -O story/video_clips/tt0359950.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0119396 -O story/video_clips/tt0119396.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0433400 -O story/video_clips/tt0433400.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0816692 -O story/video_clips/tt0816692.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0317198 -O story/video_clips/tt0317198.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1499658 -O story/video_clips/tt1499658.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0926084 -O story/video_clips/tt0926084.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1190080 -O story/video_clips/tt1190080.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0241527 -O story/video_clips/tt0241527.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1345836 -O story/video_clips/tt1345836.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0475394 -O story/video_clips/tt0475394.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0218967 -O story/video_clips/tt0218967.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0125439 -O story/video_clips/tt0125439.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0357413 -O story/video_clips/tt0357413.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0325980 -O story/video_clips/tt0325980.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0443453 -O story/video_clips/tt0443453.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0109830 -O story/video_clips/tt0109830.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0074285 -O story/video_clips/tt0074285.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt0454848 -O story/video_clips/tt0454848.tar

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/tt1454029 -O story/video_clips/tt1454029.tar


if [ ! -z $BURST ]; then
    # Burst everything and go back
    cd story/video_clips
    for video in *; do
        tar -xf $video
    done
    cd ../..

else
    echo "************* MovieQA *************"
    echo "Please burst the tarballs yourself!"
    echo "***********************************"
    echo
fi


# ### Download video meta-data 
# echo "************* MovieQA *************"
# echo "Downloading video meta-data"
# echo "***********************************"
# read -p 'Press [Enter] to continue...'

# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/matidx -O story/matidx.tar.gz
# wget http://movieqa.cs.toronto.edu/dl_data/4f6c4562d8984932bf25a11aeaf8f77c/shot_boundaries -O story/shot_boundaries.tar.gz


# ### Ready!
# echo "************* MovieQA *************"
# echo "Your copy of the story sources is downloaded, good luck!"
# echo "***********************************"

