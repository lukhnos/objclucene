//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/DocIdSetIterator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchDocIdSetIterator_INCLUDE_ALL")
#if OrgApacheLuceneSearchDocIdSetIterator_RESTRICT
#define OrgApacheLuceneSearchDocIdSetIterator_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchDocIdSetIterator_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchDocIdSetIterator_RESTRICT

#if !defined (_OrgApacheLuceneSearchDocIdSetIterator_) && (OrgApacheLuceneSearchDocIdSetIterator_INCLUDE_ALL || OrgApacheLuceneSearchDocIdSetIterator_INCLUDE)
#define _OrgApacheLuceneSearchDocIdSetIterator_

#define OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS 2147483647

@interface OrgApacheLuceneSearchDocIdSetIterator : NSObject

#pragma mark Public

- (instancetype)init;

- (jint)advanceWithInt:(jint)target;

+ (OrgApacheLuceneSearchDocIdSetIterator *)allWithInt:(jint)maxDoc;

- (jlong)cost;

- (jint)docID;

+ (OrgApacheLuceneSearchDocIdSetIterator *)empty;

- (jint)nextDoc;

#pragma mark Protected

- (jint)slowAdvanceWithInt:(jint)target;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocIdSetIterator)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchDocIdSetIterator, NO_MORE_DOCS, jint)

FOUNDATION_EXPORT OrgApacheLuceneSearchDocIdSetIterator *OrgApacheLuceneSearchDocIdSetIterator_empty();

FOUNDATION_EXPORT OrgApacheLuceneSearchDocIdSetIterator *OrgApacheLuceneSearchDocIdSetIterator_allWithInt_(jint maxDoc);

FOUNDATION_EXPORT void OrgApacheLuceneSearchDocIdSetIterator_init(OrgApacheLuceneSearchDocIdSetIterator *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDocIdSetIterator)

#endif

#pragma pop_macro("OrgApacheLuceneSearchDocIdSetIterator_INCLUDE_ALL")
