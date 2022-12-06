package xi.examples

import org.apache.spark.rdd.RDD
import org.apache.spark.{SparkConf, SparkContext}

object WordCount{

  def main(args: Array[String]): Unit = {
    val conf = new SparkConf()
      .setAppName("WordCount Reduce by Key")

    val sc = new SparkContext(conf)

    val tweetsPath = args(0)
    val outputDataset = args(1)

    //Read the Text file
    val tweetsRaw: RDD[String] = sc.textFile(tweetsPath)

    //Start to count words (using reduceByKey)
    val wordCounts: RDD[(String, Int)] = tweetsRaw.
      flatMap(line => line.split("\\s+")).
      //Hint: reduce on a collection of pairs
      map { case word => (word, 1) }.
      //counting function
      reduceByKey((a, b) => a + b)

        wordCounts.saveAsTextFile(outputDataset)

  } //main
}