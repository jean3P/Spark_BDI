package xi.examples

import org.apache.spark.rdd.RDD
import org.apache.spark.{SparkConf, SparkContext}


object HashtagCount {

  def main(args: Array[String]): Unit = {
    val conf = new SparkConf()
      .setAppName("WordCount Reduce by Key")

    val sc = new SparkContext(conf)

    val tweetsPath = args(0)
    val outputDataset = args(1)

    //Read the Text file
    val tweetsRaw: RDD[String] = sc.textFile(tweetsPath)

    //Start to count words (using reduceByKey)
    val wordCounts:RDD[(String, Int)] = tweetsRaw.
      flatMap(line => line.split("\\s+")).
      //Filter by hashtag
      filter(line => line.startsWith("#")).
      //Hint: reduce on a collection of pairs
      map { case word => (word, 1)}.
      //counting function
      reduceByKey( (a, b) => a + b)

    //ordering function
    val sortedCounts = wordCounts
      //descendingly
      .sortBy{case (_, count) => -count}
      .map{case (word, count) => s"$word\t$count"}

    sortedCounts.saveAsTextFile(outputDataset)

  } //main

}


