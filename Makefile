
HashTagCountLocal:
	spark-submit \
	--master local[*] \
	--class xi.examples.HashtagCount \
	~/Desktop/SampleCode/SampleCode/target/scala-2.11/SampleCode-assembly-1.0.jar \
	file:///home/jean/Desktop/SampleCode/SampleCode/input/tweet_sample_raw_data.txt \
	file:///home/jean/Desktop/SampleCode/SampleCode/output/hashtag_result_words.tsv

WordCountLocal:
	spark-submit \
	--master local[*] \
	--class xi.examples.WordCount \
	~/Desktop/SampleCode/SampleCode/target/scala-2.11/SampleCode-assembly-1.0.jar \
	file:///home/jean/Desktop/SampleCode/SampleCode/input/tweet_sample_raw_data.txt \
	file:///home/jean/Desktop/SampleCode/SampleCode/output/wordCount_result_words.tsv

ExerciseLocal:
	spark-submit \
	--master local[*] \
	--class xi.examples.Exercise3 \
	~/Desktop/SampleCode/SampleCode/target/scala-2.11/SampleCode-assembly-1.0.jar \
	file:///home/jean/Desktop/SampleCode/SampleCode/input/tweet_sample_raw_data.txt \
	file:///home/jean/Desktop/SampleCode/SampleCode/output/ExerciseLocal_result_words.tsv

