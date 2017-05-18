## Viola Jones

One of the most successful applications of boosting was the **viola jones face detector**, which was the state of the art method when it was introduced, and is still used by OpenCV to detect and track human faces. The viola jones detector combines two insights, which allow it to run very quickly (in real time or better).

Consider applying an (already-trained), adaboost classifier. We are computing the sum of many individual classifiers, with decreasing weights. The viola jones detector unrolls this loop - by looking at the running total after applying each of the base classifiers, it can tell is the sum is headed towards saying “yes” or “no” to detecting a face. If it seems that there is not a face here, it can exit the loop early. Viola jones is applied to many patches from a larger image, looking for faces with a patch. Making the classifier faster by early termination of the loop allowed the detector to save time and test more patches. 
