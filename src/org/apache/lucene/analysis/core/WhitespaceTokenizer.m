//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/WhitespaceTokenizer.java
//

#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "org/apache/lucene/analysis/core/WhitespaceTokenizer.h"
#include "org/apache/lucene/analysis/util/CharTokenizer.h"
#include "org/apache/lucene/util/AttributeFactory.h"

@implementation OrgApacheLuceneAnalysisCoreWhitespaceTokenizer

- (instancetype)init {
  OrgApacheLuceneAnalysisCoreWhitespaceTokenizer_init(self);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  OrgApacheLuceneAnalysisCoreWhitespaceTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  return self;
}

- (jboolean)isTokenCharWithInt:(jint)c {
  return !JavaLangCharacter_isWhitespaceWithInt_(c);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "WhitespaceTokenizer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeFactory:", "WhitespaceTokenizer", NULL, 0x1, NULL, NULL },
    { "isTokenCharWithInt:", "isTokenChar", "Z", 0x4, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCoreWhitespaceTokenizer = { 2, "WhitespaceTokenizer", "org.apache.lucene.analysis.core", NULL, 0x11, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCoreWhitespaceTokenizer;
}

@end

void OrgApacheLuceneAnalysisCoreWhitespaceTokenizer_init(OrgApacheLuceneAnalysisCoreWhitespaceTokenizer *self) {
  OrgApacheLuceneAnalysisUtilCharTokenizer_init(self);
}

OrgApacheLuceneAnalysisCoreWhitespaceTokenizer *new_OrgApacheLuceneAnalysisCoreWhitespaceTokenizer_init() {
  OrgApacheLuceneAnalysisCoreWhitespaceTokenizer *self = [OrgApacheLuceneAnalysisCoreWhitespaceTokenizer alloc];
  OrgApacheLuceneAnalysisCoreWhitespaceTokenizer_init(self);
  return self;
}

void OrgApacheLuceneAnalysisCoreWhitespaceTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneAnalysisCoreWhitespaceTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory) {
  OrgApacheLuceneAnalysisUtilCharTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
}

OrgApacheLuceneAnalysisCoreWhitespaceTokenizer *new_OrgApacheLuceneAnalysisCoreWhitespaceTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneUtilAttributeFactory *factory) {
  OrgApacheLuceneAnalysisCoreWhitespaceTokenizer *self = [OrgApacheLuceneAnalysisCoreWhitespaceTokenizer alloc];
  OrgApacheLuceneAnalysisCoreWhitespaceTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCoreWhitespaceTokenizer)
