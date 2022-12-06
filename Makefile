#ExtractTweetTextLocal:
#	spark-submit \
#	--master local[*] \
#	--class xi.examples.ExtractTweetText \
#	~/SampleCode-assembly-1.0.jar \
#	file:///home/alberto/mock_tweets \
#	file:///home/alberto/mock_tweets_result.tsv


#ExtractTweetText:
#		spark-submit \
#		--master yarn \
#		--deploy-mode cluster \
#		--num-executors 50 \
#		--driver-memory 1g \
#		--executor-memory 1g \
#		--class xi.examples.ExtractTweetText \
#		~/SampleCode-assembly-1.0.jar \
#		/user/ruslan/ruslan/all_tweets_no_gps \
#		allTweetsText_15Feb_1.gz


#HashTagCountLocal:
#	spark-submit \
#	--master local[*] \
#	--class xi.examples.HashtagCount \
#	~/Desktop/SampleCode/SampleCode/target/scala-2.11/SampleCode-assembly-1.0.jar \
#	file:///home/jean/Desktop/SampleCode/SampleCode/input/tweet_sample_raw_data.txt \
#	file:///home/jean/Desktop/SampleCode/SampleCode/output/hashtag_result_words.tsv

#WordCountLocal:
#	spark-submit \
#	--master local[*] \
#	--class xi.examples.WordCount \
#	~/Desktop/SampleCode/SampleCode/target/scala-2.11/SampleCode-assembly-1.0.jar \
#	file:///home/jean/Desktop/SampleCode/SampleCode/input/tweet_sample_raw_data.txt \
#	file:///home/jean/Desktop/SampleCode/SampleCode/output/wordCount_result_words.tsv

ExerciseLocal:
	spark-submit \
	--master local[*] \
	--class xi.examples.Exercise3 \
	~/Desktop/SampleCode/SampleCode/target/scala-2.11/SampleCode-assembly-1.0.jar \
	file:///home/jean/Desktop/SampleCode/SampleCode/input/tweet_sample_raw_data.txt \
	file:///home/jean/Desktop/SampleCode/SampleCode/output/ExerciseLocal_result_words.tsv

#WordCount:
#	spark-submit \
#    --master yarn \
#    --deploy-mode cluster \
#    --num-executors 5 \
#    --driver-memory 1g \
#    --executor-memory 1g \
#    --class xi.examples.HelloSpark \
#    ~/SampleCode-assembly-1.0.jar \
#    file:///home/alberto/mock_tweets \
#    file:///home/alberto/mock_tweets_words.tsv
#

#Cache:
#	spark-submit \
#    --master yarn \
#    --deploy-mode cluster \
#    --num-executors 50 \
#    --driver-memory 1g \
#    --executor-memory 1g \
#    --class xi.examples.Caching \
#    ~/SampleCode-assembly-1.0.jar \
#    /user/ruslan/ruslan/all_tweets_no_gps \
#    tweetsICare/tweetText


#Shell:
#	spark-shell \
#	--master yarn \
#	--deploy-mode client \
#	--num-executors 3 \
#	--driver-memory 1g \
#	--executor-memory 1g

#ToParquet:
#	spark-submit \
#	--master yarn \
#	--deploy-mode client \
#	--num-executors 50 \
#	--driver-memory 1g \
#	--executor-memory 1g \
#	--class xi.examples.ToParquet \
#	~/SampleCode-assembly-1.0.jar \
#	/user/ruslan/ruslan/all_tweets_no_gps \
#	allTweetsText_15Feb_1.parquet
