//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/eu/BasqueAnalyzer.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/eu/BasqueAnalyzer.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder)

__attribute__((unused)) static void OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder)

NSString *OrgApacheLuceneAnalysisEuBasqueAnalyzer_DEFAULT_STOPWORD_FILE_ = @"stopwords.txt";

@implementation OrgApacheLuceneAnalysisEuBasqueAnalyzer

- (instancetype)init {
  OrgApacheLuceneAnalysisEuBasqueAnalyzer_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOPWORD_FILE_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisEuBasqueAnalyzer_DEFAULT_STOPWORD_FILE_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.eu.BasqueAnalyzer$DefaultSetHolder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisEuBasqueAnalyzer = { 2, "BasqueAnalyzer", "org.apache.lucene.analysis.eu", NULL, 0x11, 1, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisEuBasqueAnalyzer;
}

@end

void OrgApacheLuceneAnalysisEuBasqueAnalyzer_init(OrgApacheLuceneAnalysisEuBasqueAnalyzer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisEuBasqueAnalyzer *new_OrgApacheLuceneAnalysisEuBasqueAnalyzer_init() {
  OrgApacheLuceneAnalysisEuBasqueAnalyzer *self = [OrgApacheLuceneAnalysisEuBasqueAnalyzer alloc];
  OrgApacheLuceneAnalysisEuBasqueAnalyzer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisEuBasqueAnalyzer)

@implementation OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder

- (instancetype)init {
  OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder = { 2, "DefaultSetHolder", "org.apache.lucene.analysis.eu", "BasqueAnalyzer", 0xa, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder;
}

@end

void OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder_init() {
  OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder *self = [OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder alloc];
  OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisEuBasqueAnalyzer_DefaultSetHolder)
