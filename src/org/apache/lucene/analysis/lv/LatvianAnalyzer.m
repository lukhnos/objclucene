//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/lv/LatvianAnalyzer.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/lv/LatvianAnalyzer.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder)

__attribute__((unused)) static void OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder)

NSString *OrgApacheLuceneAnalysisLvLatvianAnalyzer_DEFAULT_STOPWORD_FILE_ = @"stopwords.txt";

@implementation OrgApacheLuceneAnalysisLvLatvianAnalyzer

- (instancetype)init {
  OrgApacheLuceneAnalysisLvLatvianAnalyzer_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOPWORD_FILE_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisLvLatvianAnalyzer_DEFAULT_STOPWORD_FILE_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.lv.LatvianAnalyzer$DefaultSetHolder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisLvLatvianAnalyzer = { 2, "LatvianAnalyzer", "org.apache.lucene.analysis.lv", NULL, 0x11, 1, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisLvLatvianAnalyzer;
}

@end

void OrgApacheLuceneAnalysisLvLatvianAnalyzer_init(OrgApacheLuceneAnalysisLvLatvianAnalyzer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisLvLatvianAnalyzer *new_OrgApacheLuceneAnalysisLvLatvianAnalyzer_init() {
  OrgApacheLuceneAnalysisLvLatvianAnalyzer *self = [OrgApacheLuceneAnalysisLvLatvianAnalyzer alloc];
  OrgApacheLuceneAnalysisLvLatvianAnalyzer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisLvLatvianAnalyzer)

@implementation OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder

- (instancetype)init {
  OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder = { 2, "DefaultSetHolder", "org.apache.lucene.analysis.lv", "LatvianAnalyzer", 0xa, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder;
}

@end

void OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder_init() {
  OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder *self = [OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder alloc];
  OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisLvLatvianAnalyzer_DefaultSetHolder)
