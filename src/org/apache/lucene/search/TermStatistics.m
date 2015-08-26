//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/TermStatistics.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/TermStatistics.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneSearchTermStatistics () {
 @public
  OrgApacheLuceneUtilBytesRef *term_;
  jlong docFreq_;
  jlong totalTermFreq_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermStatistics, term_, OrgApacheLuceneUtilBytesRef *)

@implementation OrgApacheLuceneSearchTermStatistics

- (instancetype)initWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
                                           withLong:(jlong)docFreq
                                           withLong:(jlong)totalTermFreq {
  OrgApacheLuceneSearchTermStatistics_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_(self, term, docFreq, totalTermFreq);
  return self;
}

- (OrgApacheLuceneUtilBytesRef *)term {
  return term_;
}

- (jlong)docFreq {
  return docFreq_;
}

- (jlong)totalTermFreq {
  return totalTermFreq_;
}

- (void)dealloc {
  RELEASE_(term_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilBytesRef:withLong:withLong:", "TermStatistics", NULL, 0x1, NULL, NULL },
    { "term", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x11, NULL, NULL },
    { "docFreq", NULL, "J", 0x11, NULL, NULL },
    { "totalTermFreq", NULL, "J", 0x11, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "term_", NULL, 0x12, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "docFreq_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "totalTermFreq_", NULL, 0x12, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermStatistics = { 2, "TermStatistics", "org.apache.lucene.search", NULL, 0x1, 4, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchTermStatistics;
}

@end

void OrgApacheLuceneSearchTermStatistics_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_(OrgApacheLuceneSearchTermStatistics *self, OrgApacheLuceneUtilBytesRef *term, jlong docFreq, jlong totalTermFreq) {
  NSObject_init(self);
  JreAssert((docFreq >= 0), (@"org/apache/lucene/search/TermStatistics.java:32 condition failed: assert docFreq >= 0;"));
  JreAssert((totalTermFreq == -1 || totalTermFreq >= docFreq), (@"org/apache/lucene/search/TermStatistics.java:33 condition failed: assert totalTermFreq == -1 || totalTermFreq >= docFreq;"));
  JreStrongAssign(&self->term_, term);
  self->docFreq_ = docFreq;
  self->totalTermFreq_ = totalTermFreq;
}

OrgApacheLuceneSearchTermStatistics *new_OrgApacheLuceneSearchTermStatistics_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_(OrgApacheLuceneUtilBytesRef *term, jlong docFreq, jlong totalTermFreq) {
  OrgApacheLuceneSearchTermStatistics *self = [OrgApacheLuceneSearchTermStatistics alloc];
  OrgApacheLuceneSearchTermStatistics_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_(self, term, docFreq, totalTermFreq);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermStatistics)
