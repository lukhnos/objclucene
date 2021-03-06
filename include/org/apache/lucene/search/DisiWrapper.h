//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/DisiWrapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchDisiWrapper")
#ifdef RESTRICT_OrgApacheLuceneSearchDisiWrapper
#define INCLUDE_ALL_OrgApacheLuceneSearchDisiWrapper 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchDisiWrapper 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchDisiWrapper

#if !defined (OrgApacheLuceneSearchDisiWrapper_) && (INCLUDE_ALL_OrgApacheLuceneSearchDisiWrapper || defined(INCLUDE_OrgApacheLuceneSearchDisiWrapper))
#define OrgApacheLuceneSearchDisiWrapper_

@class OrgApacheLuceneSearchDocIdSetIterator;
@class OrgApacheLuceneSearchTwoPhaseIterator;

/*!
 @brief Wrapper used in <code>DisiPriorityQueue</code>.
 */
@interface OrgApacheLuceneSearchDisiWrapper : NSObject {
 @public
  OrgApacheLuceneSearchDocIdSetIterator *iterator_;
  jlong cost_;
  jint doc_;
  OrgApacheLuceneSearchDisiWrapper *next_;
  OrgApacheLuceneSearchDocIdSetIterator *approximation_;
  OrgApacheLuceneSearchTwoPhaseIterator *twoPhaseView_;
  jint lastApproxMatchDoc_;
  jint lastApproxNonMatchDoc_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)iterator;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDisiWrapper)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDisiWrapper, iterator_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDisiWrapper, next_, OrgApacheLuceneSearchDisiWrapper *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDisiWrapper, approximation_, OrgApacheLuceneSearchDocIdSetIterator *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDisiWrapper, twoPhaseView_, OrgApacheLuceneSearchTwoPhaseIterator *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchDisiWrapper_initWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchDisiWrapper *self, OrgApacheLuceneSearchDocIdSetIterator *iterator);

FOUNDATION_EXPORT OrgApacheLuceneSearchDisiWrapper *new_OrgApacheLuceneSearchDisiWrapper_initWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchDocIdSetIterator *iterator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchDisiWrapper *create_OrgApacheLuceneSearchDisiWrapper_initWithOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchDocIdSetIterator *iterator);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDisiWrapper)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchDisiWrapper")
