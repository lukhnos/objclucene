//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/NoDeletionPolicy.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexNoDeletionPolicy_INCLUDE_ALL")
#if OrgApacheLuceneIndexNoDeletionPolicy_RESTRICT
#define OrgApacheLuceneIndexNoDeletionPolicy_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexNoDeletionPolicy_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexNoDeletionPolicy_RESTRICT

#if !defined (_OrgApacheLuceneIndexNoDeletionPolicy_) && (OrgApacheLuceneIndexNoDeletionPolicy_INCLUDE_ALL || OrgApacheLuceneIndexNoDeletionPolicy_INCLUDE)
#define _OrgApacheLuceneIndexNoDeletionPolicy_

#define OrgApacheLuceneIndexIndexDeletionPolicy_RESTRICT 1
#define OrgApacheLuceneIndexIndexDeletionPolicy_INCLUDE 1
#include "org/apache/lucene/index/IndexDeletionPolicy.h"

@interface OrgApacheLuceneIndexNoDeletionPolicy : OrgApacheLuceneIndexIndexDeletionPolicy

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexNoDeletionPolicy)

FOUNDATION_EXPORT void OrgApacheLuceneIndexNoDeletionPolicy_init(OrgApacheLuceneIndexNoDeletionPolicy *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexNoDeletionPolicy *new_OrgApacheLuceneIndexNoDeletionPolicy_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexNoDeletionPolicy)

#endif

#pragma pop_macro("OrgApacheLuceneIndexNoDeletionPolicy_INCLUDE_ALL")
