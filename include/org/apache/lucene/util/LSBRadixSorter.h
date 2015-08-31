//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/LSBRadixSorter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilLSBRadixSorter_INCLUDE_ALL")
#if OrgApacheLuceneUtilLSBRadixSorter_RESTRICT
#define OrgApacheLuceneUtilLSBRadixSorter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilLSBRadixSorter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilLSBRadixSorter_RESTRICT

#if !defined (_OrgApacheLuceneUtilLSBRadixSorter_) && (OrgApacheLuceneUtilLSBRadixSorter_INCLUDE_ALL || OrgApacheLuceneUtilLSBRadixSorter_INCLUDE)
#define _OrgApacheLuceneUtilLSBRadixSorter_

@class IOSIntArray;

@interface OrgApacheLuceneUtilLSBRadixSorter : NSObject

#pragma mark Public

- (void)sortWithIntArray:(IOSIntArray *)array
                 withInt:(jint)off
                 withInt:(jint)len;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilLSBRadixSorter)

FOUNDATION_EXPORT void OrgApacheLuceneUtilLSBRadixSorter_init(OrgApacheLuceneUtilLSBRadixSorter *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilLSBRadixSorter *new_OrgApacheLuceneUtilLSBRadixSorter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilLSBRadixSorter)

#endif

#pragma pop_macro("OrgApacheLuceneUtilLSBRadixSorter_INCLUDE_ALL")