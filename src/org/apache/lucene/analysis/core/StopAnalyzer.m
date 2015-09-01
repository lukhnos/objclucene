//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/StopAnalyzer.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/core/LowerCaseTokenizer.h"
#include "org/apache/lucene/analysis/core/StopAnalyzer.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisCoreStopAnalyzer)

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisCoreStopAnalyzer_ENGLISH_STOP_WORDS_SET_;

@implementation OrgApacheLuceneAnalysisCoreStopAnalyzer

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName {
  OrgApacheLuceneAnalysisTokenizer *source = [new_OrgApacheLuceneAnalysisCoreLowerCaseTokenizer_init() autorelease];
  return [new_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(source, [new_OrgApacheLuceneAnalysisCoreStopFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(source, stopwords_) autorelease]) autorelease];
}

- (instancetype)init {
  OrgApacheLuceneAnalysisCoreStopAnalyzer_init(self);
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisCoreStopAnalyzer class]) {
    {
      id<JavaUtilList> stopWords = JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ @"a", @"an", @"and", @"are", @"as", @"at", @"be", @"but", @"by", @"for", @"if", @"in", @"into", @"is", @"it", @"no", @"not", @"of", @"on", @"or", @"such", @"that", @"the", @"their", @"then", @"there", @"these", @"they", @"this", @"to", @"was", @"will", @"with" } count:33 type:NSString_class_()]);
      OrgApacheLuceneAnalysisUtilCharArraySet *stopSet = [new_OrgApacheLuceneAnalysisUtilCharArraySet_initWithJavaUtilCollection_withBoolean_(stopWords, NO) autorelease];
      JreStrongAssign(&OrgApacheLuceneAnalysisCoreStopAnalyzer_ENGLISH_STOP_WORDS_SET_, OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(stopSet));
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisCoreStopAnalyzer)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x4, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ENGLISH_STOP_WORDS_SET_", NULL, 0x19, "Lorg.apache.lucene.analysis.util.CharArraySet;", &OrgApacheLuceneAnalysisCoreStopAnalyzer_ENGLISH_STOP_WORDS_SET_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCoreStopAnalyzer = { 2, "StopAnalyzer", "org.apache.lucene.analysis.core", NULL, 0x11, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCoreStopAnalyzer;
}

@end

void OrgApacheLuceneAnalysisCoreStopAnalyzer_init(OrgApacheLuceneAnalysisCoreStopAnalyzer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisCoreStopAnalyzer *new_OrgApacheLuceneAnalysisCoreStopAnalyzer_init() {
  OrgApacheLuceneAnalysisCoreStopAnalyzer *self = [OrgApacheLuceneAnalysisCoreStopAnalyzer alloc];
  OrgApacheLuceneAnalysisCoreStopAnalyzer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCoreStopAnalyzer)
