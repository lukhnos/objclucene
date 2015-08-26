//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/function/ValueSourceScorer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/MultiFields.h"
#include "org/apache/lucene/queries/function/FunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSourceScorer.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/util/Bits.h"

@interface OrgApacheLuceneQueriesFunctionValueSourceScorer () {
 @public
  jint doc_;
  id<OrgApacheLuceneUtilBits> liveDocs_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesFunctionValueSourceScorer, liveDocs_, id<OrgApacheLuceneUtilBits>)

@implementation OrgApacheLuceneQueriesFunctionValueSourceScorer

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
       withOrgApacheLuceneQueriesFunctionFunctionValues:(OrgApacheLuceneQueriesFunctionFunctionValues *)values {
  OrgApacheLuceneQueriesFunctionValueSourceScorer_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(self, reader, values);
  return self;
}

- (OrgApacheLuceneIndexIndexReader *)getReader {
  return reader_;
}

- (void)setCheckDeletesWithBoolean:(jboolean)checkDeletes {
  self->checkDeletes_ = (checkDeletes && [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader_)) hasDeletions]);
}

- (jboolean)matchesWithInt:(jint)doc {
  return (!checkDeletes_ || [((id<OrgApacheLuceneUtilBits>) nil_chk(liveDocs_)) getWithInt:doc]) && [self matchesValueWithInt:doc];
}

- (jboolean)matchesValueWithInt:(jint)doc {
  return YES;
}

- (jint)docID {
  return doc_;
}

- (jint)nextDoc {
  for (; ; ) {
    doc_++;
    if (doc_ >= maxDoc_) return doc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
    if ([self matchesWithInt:doc_]) return doc_;
  }
}

- (jint)advanceWithInt:(jint)target {
  doc_ = target - 1;
  return [self nextDoc];
}

- (jfloat)score {
  return [((OrgApacheLuceneQueriesFunctionFunctionValues *) nil_chk(values_)) floatValWithInt:doc_];
}

- (jint)freq {
  return 1;
}

- (jlong)cost {
  return maxDoc_;
}

- (void)dealloc {
  RELEASE_(reader_);
  RELEASE_(values_);
  RELEASE_(liveDocs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexIndexReader:withOrgApacheLuceneQueriesFunctionFunctionValues:", "ValueSourceScorer", NULL, 0x4, NULL, NULL },
    { "getReader", NULL, "Lorg.apache.lucene.index.IndexReader;", 0x1, NULL, NULL },
    { "setCheckDeletesWithBoolean:", "setCheckDeletes", "V", 0x1, NULL, NULL },
    { "matchesWithInt:", "matches", "Z", 0x1, NULL, NULL },
    { "matchesValueWithInt:", "matchesValue", "Z", 0x1, NULL, NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "advanceWithInt:", "advance", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "score", NULL, "F", 0x1, "Ljava.io.IOException;", NULL },
    { "freq", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "reader_", NULL, 0x14, "Lorg.apache.lucene.index.IndexReader;", NULL, NULL, .constantValue.asLong = 0 },
    { "doc_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDoc_", NULL, 0x14, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "values_", NULL, 0x14, "Lorg.apache.lucene.queries.function.FunctionValues;", NULL, NULL, .constantValue.asLong = 0 },
    { "checkDeletes_", NULL, 0x4, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "liveDocs_", NULL, 0x12, "Lorg.apache.lucene.util.Bits;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesFunctionValueSourceScorer = { 2, "ValueSourceScorer", "org.apache.lucene.queries.function", NULL, 0x1, 11, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesFunctionValueSourceScorer;
}

@end

void OrgApacheLuceneQueriesFunctionValueSourceScorer_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneQueriesFunctionValueSourceScorer *self, OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneQueriesFunctionFunctionValues *values) {
  OrgApacheLuceneSearchScorer_initWithOrgApacheLuceneSearchWeight_(self, nil);
  self->doc_ = -1;
  JreStrongAssign(&self->reader_, reader);
  self->maxDoc_ = [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) maxDoc];
  JreStrongAssign(&self->values_, values);
  [self setCheckDeletesWithBoolean:YES];
  JreStrongAssign(&self->liveDocs_, OrgApacheLuceneIndexMultiFields_getLiveDocsWithOrgApacheLuceneIndexIndexReader_(reader));
}

OrgApacheLuceneQueriesFunctionValueSourceScorer *new_OrgApacheLuceneQueriesFunctionValueSourceScorer_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(OrgApacheLuceneIndexIndexReader *reader, OrgApacheLuceneQueriesFunctionFunctionValues *values) {
  OrgApacheLuceneQueriesFunctionValueSourceScorer *self = [OrgApacheLuceneQueriesFunctionValueSourceScorer alloc];
  OrgApacheLuceneQueriesFunctionValueSourceScorer_initWithOrgApacheLuceneIndexIndexReader_withOrgApacheLuceneQueriesFunctionFunctionValues_(self, reader, values);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesFunctionValueSourceScorer)
