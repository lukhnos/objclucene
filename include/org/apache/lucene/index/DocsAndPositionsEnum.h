//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocsAndPositionsEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexDocsAndPositionsEnum_INCLUDE_ALL")
#if OrgApacheLuceneIndexDocsAndPositionsEnum_RESTRICT
#define OrgApacheLuceneIndexDocsAndPositionsEnum_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexDocsAndPositionsEnum_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexDocsAndPositionsEnum_RESTRICT
#if OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper_INCLUDE
#define OrgApacheLuceneIndexDocsAndPositionsEnum_INCLUDE 1
#endif

#if !defined (_OrgApacheLuceneIndexDocsAndPositionsEnum_) && (OrgApacheLuceneIndexDocsAndPositionsEnum_INCLUDE_ALL || OrgApacheLuceneIndexDocsAndPositionsEnum_INCLUDE)
#define _OrgApacheLuceneIndexDocsAndPositionsEnum_

#define OrgApacheLuceneIndexDocsEnum_RESTRICT 1
#define OrgApacheLuceneIndexDocsEnum_INCLUDE 1
#include "org/apache/lucene/index/DocsEnum.h"

#define OrgApacheLuceneIndexDocsAndPositionsEnum_FLAG_OFFSETS 1
#define OrgApacheLuceneIndexDocsAndPositionsEnum_FLAG_PAYLOADS 2
#define OrgApacheLuceneIndexDocsAndPositionsEnum_OLD_NULL_SEMANTICS 16384

@interface OrgApacheLuceneIndexDocsAndPositionsEnum : OrgApacheLuceneIndexDocsEnum

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocsAndPositionsEnum)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexDocsAndPositionsEnum, FLAG_OFFSETS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexDocsAndPositionsEnum, FLAG_PAYLOADS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexDocsAndPositionsEnum, OLD_NULL_SEMANTICS, jshort)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocsAndPositionsEnum_init(OrgApacheLuceneIndexDocsAndPositionsEnum *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocsAndPositionsEnum)

#endif

#if !defined (_OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper_) && (OrgApacheLuceneIndexDocsAndPositionsEnum_INCLUDE_ALL || OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper_INCLUDE)
#define _OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper_

@interface OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper : OrgApacheLuceneIndexDocsAndPositionsEnum

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper_init(OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper *new_OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocsAndPositionsEnum_DocsAndPositionsEnumWrapper)

#endif

#pragma pop_macro("OrgApacheLuceneIndexDocsAndPositionsEnum_INCLUDE_ALL")
