//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/blocktree/BitSetTermsEnum.java
//

#include "J2ObjC_source.h"
#include "java/lang/UnsupportedOperationException.h"
#include "org/apache/lucene/codecs/blocktree/BitSetPostingsEnum.h"
#include "org/apache/lucene/codecs/blocktree/BitSetTermsEnum.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/util/BitSet.h"
#include "org/apache/lucene/util/BytesRef.h"

@interface OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum () {
 @public
  OrgApacheLuceneCodecsBlocktreeBitSetPostingsEnum *postingsEnum_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum, postingsEnum_, OrgApacheLuceneCodecsBlocktreeBitSetPostingsEnum *)

@implementation OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum

- (instancetype)initWithOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)docs {
  OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum_initWithOrgApacheLuceneUtilBitSet_(self, docs);
  return self;
}

- (OrgApacheLuceneIndexTermsEnum_SeekStatusEnum *)seekCeilWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (void)seekExactWithLong:(jlong)ord {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (OrgApacheLuceneUtilBytesRef *)term {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (OrgApacheLuceneUtilBytesRef *)next {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (jlong)ord {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (jint)docFreq {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (jlong)totalTermFreq {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                           withInt:(jint)flags {
  if (flags != OrgApacheLuceneIndexPostingsEnum_NONE) {
    return nil;
  }
  [((OrgApacheLuceneCodecsBlocktreeBitSetPostingsEnum *) nil_chk(postingsEnum_)) reset];
  return postingsEnum_;
}

- (void)dealloc {
  RELEASE_(postingsEnum_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilBitSet:", "BitSetTermsEnum", NULL, 0x1, NULL, NULL },
    { "seekCeilWithOrgApacheLuceneUtilBytesRef:", "seekCeil", "Lorg.apache.lucene.index.TermsEnum$SeekStatus;", 0x1, NULL, NULL },
    { "seekExactWithLong:", "seekExact", "V", 0x1, NULL, NULL },
    { "term", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "next", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "ord", NULL, "J", 0x1, NULL, NULL },
    { "docFreq", NULL, "I", 0x1, NULL, NULL },
    { "totalTermFreq", NULL, "J", 0x1, NULL, NULL },
    { "postingsWithOrgApacheLuceneIndexPostingsEnum:withInt:", "postings", "Lorg.apache.lucene.index.PostingsEnum;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "postingsEnum_", NULL, 0x12, "Lorg.apache.lucene.codecs.blocktree.BitSetPostingsEnum;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum = { 2, "BitSetTermsEnum", "org.apache.lucene.codecs.blocktree", NULL, 0x0, 9, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum;
}

@end

void OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum_initWithOrgApacheLuceneUtilBitSet_(OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum *self, OrgApacheLuceneUtilBitSet *docs) {
  OrgApacheLuceneIndexTermsEnum_init(self);
  JreStrongAssignAndConsume(&self->postingsEnum_, new_OrgApacheLuceneCodecsBlocktreeBitSetPostingsEnum_initWithOrgApacheLuceneUtilBitSet_(docs));
}

OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum *new_OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum_initWithOrgApacheLuceneUtilBitSet_(OrgApacheLuceneUtilBitSet *docs) {
  OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum *self = [OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum alloc];
  OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum_initWithOrgApacheLuceneUtilBitSet_(self, docs);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum)
