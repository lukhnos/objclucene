//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/no/NorwegianAnalyzer.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/no/NorwegianAnalyzer.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder : NSObject

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder)

__attribute__((unused)) static void OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder)

NSString *OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DEFAULT_STOPWORD_FILE_ = @"norwegian_stop.txt";

@implementation OrgApacheLuceneAnalysisNoNorwegianAnalyzer

- (instancetype)init {
  OrgApacheLuceneAnalysisNoNorwegianAnalyzer_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_STOPWORD_FILE_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DEFAULT_STOPWORD_FILE_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.no.NorwegianAnalyzer$DefaultSetHolder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNoNorwegianAnalyzer = { 2, "NorwegianAnalyzer", "org.apache.lucene.analysis.no", NULL, 0x11, 1, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisNoNorwegianAnalyzer;
}

@end

void OrgApacheLuceneAnalysisNoNorwegianAnalyzer_init(OrgApacheLuceneAnalysisNoNorwegianAnalyzer *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisNoNorwegianAnalyzer *new_OrgApacheLuceneAnalysisNoNorwegianAnalyzer_init() {
  OrgApacheLuceneAnalysisNoNorwegianAnalyzer *self = [OrgApacheLuceneAnalysisNoNorwegianAnalyzer alloc];
  OrgApacheLuceneAnalysisNoNorwegianAnalyzer_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNoNorwegianAnalyzer)

@implementation OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder

- (instancetype)init {
  OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder = { 2, "DefaultSetHolder", "org.apache.lucene.analysis.no", "NorwegianAnalyzer", 0xa, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder;
}

@end

void OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder_init(OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder *new_OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder_init() {
  OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder *self = [OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder alloc];
  OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNoNorwegianAnalyzer_DefaultSetHolder)
