//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/snowball/package-info.java
//

/*!
 @brief <code>org.apache.lucene.analysis.TokenFilter</code> and <code>org.apache.lucene.analysis.Analyzer</code>
  implementations that use Snowball
  stemmers.
 <p>
  This project provides pre-compiled version of the Snowball stemmers
  based on revision 500 of the Tartarus Snowball repository,
  together with classes integrating them with the Lucene search engine. 
 </p>
  <p>
  A few changes has been made to the static Snowball code and compiled stemmers: 
 </p>
  <ul>
    <li>Class SnowballProgram is made abstract and contains new abstract method stem() to avoid reflection in Lucene filter class SnowballFilter.</li>
    <li>All use of StringBuffers has been refactored to StringBuilder for speed.</li>
    <li>Snowball BSD license header has been added to the Java classes to avoid having RAT adding ASL headers.</li>
  </ul>
  <p>
  See the Snowball <a href="http://snowball.tartarus.org/">home page</a> for more information about the algorithms. 
 </p>
   
 <p>
  <b>IMPORTANT NOTICE ON BACKWARDS COMPATIBILITY!</b>
  </p>
  <p>
  An index created using the Snowball module in Lucene 2.3.2 and below
  might not be compatible with the Snowball module in Lucene 2.4 or greater. 
 </p>
  <p>
  For more information about this issue see:
  https://issues.apache.org/jira/browse/LUCENE-1142 
 </p>
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSnowballPackage_info")
#ifdef RESTRICT_OrgApacheLuceneAnalysisSnowballPackage_info
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSnowballPackage_info 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisSnowballPackage_info 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisSnowballPackage_info

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisSnowballPackage_info")
