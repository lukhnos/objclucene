//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/DisiWrapper.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/DisiWrapper.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/TwoPhaseIterator.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/DisiWrapper must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneSearchDisiWrapper

- (instancetype)initWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iterator {
  OrgApacheLuceneSearchDisiWrapper_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, iterator);
  return self;
}

- (void)dealloc {
  RELEASE_(iterator_);
  RELEASE_(next_);
  RELEASE_(approximation_);
  RELEASE_(twoPhaseView_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchDocIdSetIterator:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "iterator_", "LOrgApacheLuceneSearchDocIdSetIterator;", .constantValue.asLong = 0, 0x11, -1, -1, 2, -1 },
    { "cost_", "J", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "doc_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "next_", "LOrgApacheLuceneSearchDisiWrapper;", .constantValue.asLong = 0, 0x1, -1, -1, 3, -1 },
    { "approximation_", "LOrgApacheLuceneSearchDocIdSetIterator;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "twoPhaseView_", "LOrgApacheLuceneSearchTwoPhaseIterator;", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "lastApproxMatchDoc_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "lastApproxNonMatchDoc_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchDocIdSetIterator;", "(TIter;)V", "TIter;", "Lorg/apache/lucene/search/DisiWrapper<TIter;>;", "<Iter:Lorg/apache/lucene/search/DocIdSetIterator;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDisiWrapper = { "DisiWrapper", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 1, 8, -1, -1, -1, 4, -1 };
  return &_OrgApacheLuceneSearchDisiWrapper;
}

@end

void OrgApacheLuceneSearchDisiWrapper_initWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchDisiWrapper *self, OrgApacheLuceneSearchDocIdSetIterator *iterator) {
  NSObject_init(self);
  JreStrongAssign(&self->iterator_, iterator);
  self->cost_ = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(iterator)) cost];
  self->doc_ = -1;
  JreStrongAssign(&self->twoPhaseView_, OrgApacheLuceneSearchTwoPhaseIterator_asTwoPhaseIteratorWithOrgApacheLuceneSearchDocIdSetIterator_(iterator));
  if (self->twoPhaseView_ != nil) {
    JreStrongAssign(&self->approximation_, [self->twoPhaseView_ approximation]);
  }
  else {
    JreStrongAssign(&self->approximation_, iterator);
  }
  self->lastApproxNonMatchDoc_ = -2;
  self->lastApproxMatchDoc_ = -2;
}

OrgApacheLuceneSearchDisiWrapper *new_OrgApacheLuceneSearchDisiWrapper_initWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchDocIdSetIterator *iterator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDisiWrapper, initWithOrgApacheLuceneSearchDocIdSetIterator_, iterator)
}

OrgApacheLuceneSearchDisiWrapper *create_OrgApacheLuceneSearchDisiWrapper_initWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchDocIdSetIterator *iterator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDisiWrapper, initWithOrgApacheLuceneSearchDocIdSetIterator_, iterator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDisiWrapper)
