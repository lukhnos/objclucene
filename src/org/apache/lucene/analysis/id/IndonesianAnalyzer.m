//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/id/IndonesianAnalyzer.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/id/IndonesianAnalyzer.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder)

__attribute__((unused)) static void OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder)

NSString *OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DEFAULT_STOPWORD_FILE_ = @"stopwords.txt";

@implementation OrgApacheLuceneAnalysisIdIndonesianAnalyzer

- (instancetype)init {
  OrgApacheLuceneAnalysisIdIndonesianAnalyzer_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOPWORD_FILE_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DEFAULT_STOPWORD_FILE_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.id.IndonesianAnalyzer$DefaultSetHolder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisIdIndonesianAnalyzer = { 2, "IndonesianAnalyzer", "org.apache.lucene.analysis.id", NULL, 0x11, 1, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisIdIndonesianAnalyzer;
}

@end

void OrgApacheLuceneAnalysisIdIndonesianAnalyzer_init(OrgApacheLuceneAnalysisIdIndonesianAnalyzer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisIdIndonesianAnalyzer *new_OrgApacheLuceneAnalysisIdIndonesianAnalyzer_init() {
  OrgApacheLuceneAnalysisIdIndonesianAnalyzer *self = [OrgApacheLuceneAnalysisIdIndonesianAnalyzer alloc];
  OrgApacheLuceneAnalysisIdIndonesianAnalyzer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisIdIndonesianAnalyzer)

@implementation OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder

- (instancetype)init {
  OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder = { 2, "DefaultSetHolder", "org.apache.lucene.analysis.id", "IndonesianAnalyzer", 0xa, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder;
}

@end

void OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder_init() {
  OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder *self = [OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder alloc];
  OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisIdIndonesianAnalyzer_DefaultSetHolder)
