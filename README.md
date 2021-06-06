An Experimental Objective-C Port of Lucene 5.x
==============================================

ObjCLucene is an experimental Objective-C port of Lucene. The port is done
by using Google's [j2objc](http://j2objc.org), and the goal is to make the
porting process applicable to subsequent versions of Lucene.

A sample app can be found here:
[LuceneSearchDemo-iOS](https://github.com/lukhnos/LuceneSearchDemo-iOS).

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

* The translated `AnalyzingInfixSuggester` does not produce correct suggestion
  indices. It *reads* indices built elsewhere fine. I don't know why that is
  so. Perhaps some byte ordering or some Java-to-Objective-C nuances
  involved.
* Highlighting is slow in the translated code.

Please see [the Mobile Lucene project](https://github.com/lukhnos/mobilelucene)
for more information.


Building the Xcode Project
--------------------------

To build the Xcode project, set up the J2ObjC dependencies first. If you
haven't installed it, [download version 2.8](https://github.com/google/j2objc/releases/tag/2.8)
from its GitHub releases page. After you have made sure that the command
`j2objc` exists in your `PATH`, run the script:

  ./setup-j2objc.sh

This creates a symlink to where your j2objc lives and enables the project to be
built correctly.
