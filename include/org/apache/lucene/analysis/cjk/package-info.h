//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/cjk/package-info.java
//

/*!
 @brief Analyzer for Chinese, Japanese, and Korean, which indexes bigrams.
 This analyzer generates bigram terms, which are overlapping groups of two adjacent Han, Hiragana, Katakana, or Hangul characters. 
 <p>
  Three analyzers are provided for Chinese, each of which treats Chinese text in a different way. 
 <ul>
   <li>ChineseAnalyzer (in the analyzers/cn package): Index unigrams (individual Chinese characters) as a token.
   <li>CJKAnalyzer (in this package): Index bigrams (overlapping groups of two adjacent Chinese characters) as tokens.
   <li>SmartChineseAnalyzer (in the analyzers/smartcn package): Index words (attempt to segment Chinese text into words) as tokens. 
 </ul>
  
  Example phrase： "我是中国人" 
 <ol>
   <li>ChineseAnalyzer: 我－是－中－国－人</li>
   <li>CJKAnalyzer: 我是－是中－中国－国人</li>
   <li>SmartChineseAnalyzer: 我－是－中国－人</li>
  </ol>
 */
#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCjkPackage_info")
#ifdef RESTRICT_OrgApacheLuceneAnalysisCjkPackage_info
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCjkPackage_info 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisCjkPackage_info 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisCjkPackage_info

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisCjkPackage_info")
