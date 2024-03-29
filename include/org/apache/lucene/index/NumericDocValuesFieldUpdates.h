//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/NumericDocValuesFieldUpdates.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexNumericDocValuesFieldUpdates")
#ifdef RESTRICT_OrgApacheLuceneIndexNumericDocValuesFieldUpdates
#define INCLUDE_ALL_OrgApacheLuceneIndexNumericDocValuesFieldUpdates 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexNumericDocValuesFieldUpdates 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexNumericDocValuesFieldUpdates

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexNumericDocValuesFieldUpdates_) && (INCLUDE_ALL_OrgApacheLuceneIndexNumericDocValuesFieldUpdates || defined(INCLUDE_OrgApacheLuceneIndexNumericDocValuesFieldUpdates))
#define OrgApacheLuceneIndexNumericDocValuesFieldUpdates_

#define RESTRICT_OrgApacheLuceneIndexDocValuesFieldUpdates 1
#define INCLUDE_OrgApacheLuceneIndexDocValuesFieldUpdates 1
#include "org/apache/lucene/index/DocValuesFieldUpdates.h"

@class OrgApacheLuceneIndexDocValuesType;
@class OrgApacheLuceneIndexNumericDocValuesFieldUpdates_Iterator;

/*!
 @brief A <code>DocValuesFieldUpdates</code> which holds updates of documents, of a single 
 <code>NumericDocValuesField</code>.
 */
@interface OrgApacheLuceneIndexNumericDocValuesFieldUpdates : OrgApacheLuceneIndexDocValuesFieldUpdates

#pragma mark Public

- (instancetype __nonnull)initPackagePrivateWithNSString:(NSString *)field
                                                 withInt:(jint)maxDoc;

- (void)addWithInt:(jint)doc
            withId:(id)value;

- (jboolean)any;

- (OrgApacheLuceneIndexNumericDocValuesFieldUpdates_Iterator *)iterator;

- (void)mergeWithOrgApacheLuceneIndexDocValuesFieldUpdates:(OrgApacheLuceneIndexDocValuesFieldUpdates *)other;

- (jlong)ramBytesPerDoc;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithNSString:(NSString *)arg0
                   withOrgApacheLuceneIndexDocValuesType:(OrgApacheLuceneIndexDocValuesType *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexNumericDocValuesFieldUpdates)

FOUNDATION_EXPORT void OrgApacheLuceneIndexNumericDocValuesFieldUpdates_initPackagePrivateWithNSString_withInt_(OrgApacheLuceneIndexNumericDocValuesFieldUpdates *self, NSString *field, jint maxDoc);

FOUNDATION_EXPORT OrgApacheLuceneIndexNumericDocValuesFieldUpdates *new_OrgApacheLuceneIndexNumericDocValuesFieldUpdates_initPackagePrivateWithNSString_withInt_(NSString *field, jint maxDoc) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexNumericDocValuesFieldUpdates *create_OrgApacheLuceneIndexNumericDocValuesFieldUpdates_initPackagePrivateWithNSString_withInt_(NSString *field, jint maxDoc);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexNumericDocValuesFieldUpdates)

#endif

#if !defined (OrgApacheLuceneIndexNumericDocValuesFieldUpdates_Iterator_) && (INCLUDE_ALL_OrgApacheLuceneIndexNumericDocValuesFieldUpdates || defined(INCLUDE_OrgApacheLuceneIndexNumericDocValuesFieldUpdates_Iterator))
#define OrgApacheLuceneIndexNumericDocValuesFieldUpdates_Iterator_

#define RESTRICT_OrgApacheLuceneIndexDocValuesFieldUpdates 1
#define INCLUDE_OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator 1
#include "org/apache/lucene/index/DocValuesFieldUpdates.h"

@class JavaLangLong;
@class OrgApacheLuceneUtilPackedPagedGrowableWriter;
@class OrgApacheLuceneUtilPackedPagedMutable;

@interface OrgApacheLuceneIndexNumericDocValuesFieldUpdates_Iterator : OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator

#pragma mark Package-Private

- (instancetype __nonnull)initWithInt:(jint)size
withOrgApacheLuceneUtilPackedPagedGrowableWriter:(OrgApacheLuceneUtilPackedPagedGrowableWriter *)values
withOrgApacheLuceneUtilPackedPagedMutable:(OrgApacheLuceneUtilPackedPagedMutable *)docs;

- (jint)doc;

- (jint)nextDoc;

- (void)reset;

- (JavaLangLong *)value;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexNumericDocValuesFieldUpdates_Iterator)

FOUNDATION_EXPORT void OrgApacheLuceneIndexNumericDocValuesFieldUpdates_Iterator_initWithInt_withOrgApacheLuceneUtilPackedPagedGrowableWriter_withOrgApacheLuceneUtilPackedPagedMutable_(OrgApacheLuceneIndexNumericDocValuesFieldUpdates_Iterator *self, jint size, OrgApacheLuceneUtilPackedPagedGrowableWriter *values, OrgApacheLuceneUtilPackedPagedMutable *docs);

FOUNDATION_EXPORT OrgApacheLuceneIndexNumericDocValuesFieldUpdates_Iterator *new_OrgApacheLuceneIndexNumericDocValuesFieldUpdates_Iterator_initWithInt_withOrgApacheLuceneUtilPackedPagedGrowableWriter_withOrgApacheLuceneUtilPackedPagedMutable_(jint size, OrgApacheLuceneUtilPackedPagedGrowableWriter *values, OrgApacheLuceneUtilPackedPagedMutable *docs) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexNumericDocValuesFieldUpdates_Iterator *create_OrgApacheLuceneIndexNumericDocValuesFieldUpdates_Iterator_initWithInt_withOrgApacheLuceneUtilPackedPagedGrowableWriter_withOrgApacheLuceneUtilPackedPagedMutable_(jint size, OrgApacheLuceneUtilPackedPagedGrowableWriter *values, OrgApacheLuceneUtilPackedPagedMutable *docs);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexNumericDocValuesFieldUpdates_Iterator)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexNumericDocValuesFieldUpdates")
