An Experimental Objective-C Port of Lucene 5.x
==============================================

ObjCLucene is an experimental Objective-C port of Lucene. The port is done
by using Google's [j2objc](http://j2objc.org), and the goal is to make the
porting process applicable to subsequent versions of Lucene.

Currently an Xcode project is provided to build the static library of all
the translated Lucene packages:

* lucene-analyzers-common (but without those that need `BreakIterator`)
* lucene-core
* lucene-highlighter
* lucene-join
* lucene-memory
* lucene-misc (but no `org.apache.lucene.store.*`)
* lucene-queries
* lucene-queryparser
* lucene-sandbox
* lucene-suggest

The resulting library is huge and may not be suitable for making apps intended
for the App Store.

This should be considered an experimental project, and there are a number of
issues that I've already found:

* There are some small leaks in reading and searching with the index. I've
  already fixed some of them, but there are still some leaks that will require
  further investigation.
* There are more leaks to be fixed in index writers.
* The translated `AnalyzingInfixSuggester` does not produce correct suggestion
  indices. It *reads* indices built elsewhere fine. I don't know why that is
  so. Perhaps some byte ordering or some Java-to-Objective-C nuances
  involved.
* Highlighting is slow in the translated code.

Please see [the Mobile Lucene project](https://github.com/lukhnos/mobilelucene)
for more information.


Building the Xcode Project
--------------------------

To build the Xcode project, make sure that you have j2objc installed in
`vendor/j2objc`. You can run the script `setup-j2objc.sh` to do that for you.
