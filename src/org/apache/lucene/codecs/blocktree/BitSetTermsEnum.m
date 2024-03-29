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

#if __has_feature(objc_arc)
#error "org/apache/lucene/codecs/blocktree/BitSetTermsEnum must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum () {
 @public
  OrgApacheLuceneCodecsBlocktreeBitSetPostingsEnum *postingsEnum_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum, postingsEnum_, OrgApacheLuceneCodecsBlocktreeBitSetPostingsEnum *)

@implementation OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum

- (instancetype)initPackagePrivateWithOrgApacheLuceneUtilBitSet:(OrgApacheLuceneUtilBitSet *)docs {
  OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum_initPackagePrivateWithOrgApacheLuceneUtilBitSet_(self, docs);
  return self;
}

- (OrgApacheLuceneIndexTermsEnum_SeekStatus *)seekCeilWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (void)seekExactWithLong:(jlong)ord {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (OrgApacheLuceneUtilBytesRef *)term {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (OrgApacheLuceneUtilBytesRef *)next {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (jlong)ord {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (jint)docFreq {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (jlong)totalTermFreq {
  @throw create_JavaLangUnsupportedOperationException_init();
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
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermsEnum_SeekStatus;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexPostingsEnum;", 0x1, 5, 6, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneUtilBitSet:);
  methods[1].selector = @selector(seekCeilWithOrgApacheLuceneUtilBytesRef:);
  methods[2].selector = @selector(seekExactWithLong:);
  methods[3].selector = @selector(term);
  methods[4].selector = @selector(next);
  methods[5].selector = @selector(ord);
  methods[6].selector = @selector(docFreq);
  methods[7].selector = @selector(totalTermFreq);
  methods[8].selector = @selector(postingsWithOrgApacheLuceneIndexPostingsEnum:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "postingsEnum_", "LOrgApacheLuceneCodecsBlocktreeBitSetPostingsEnum;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilBitSet;", "seekCeil", "LOrgApacheLuceneUtilBytesRef;", "seekExact", "J", "postings", "LOrgApacheLuceneIndexPostingsEnum;I" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum = { "BitSetTermsEnum", "org.apache.lucene.codecs.blocktree", ptrTable, methods, fields, 7, 0x0, 9, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum;
}

@end

void OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum_initPackagePrivateWithOrgApacheLuceneUtilBitSet_(OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum *self, OrgApacheLuceneUtilBitSet *docs) {
  OrgApacheLuceneIndexTermsEnum_init(self);
  JreStrongAssignAndConsume(&self->postingsEnum_, new_OrgApacheLuceneCodecsBlocktreeBitSetPostingsEnum_initPackagePrivateWithOrgApacheLuceneUtilBitSet_(docs));
}

OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum *new_OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum_initPackagePrivateWithOrgApacheLuceneUtilBitSet_(OrgApacheLuceneUtilBitSet *docs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum, initPackagePrivateWithOrgApacheLuceneUtilBitSet_, docs)
}

OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum *create_OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum_initPackagePrivateWithOrgApacheLuceneUtilBitSet_(OrgApacheLuceneUtilBitSet *docs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum, initPackagePrivateWithOrgApacheLuceneUtilBitSet_, docs)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBlocktreeBitSetTermsEnum)
