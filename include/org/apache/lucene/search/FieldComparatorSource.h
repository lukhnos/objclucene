//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FieldComparatorSource.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldComparatorSource")
#ifdef RESTRICT_OrgApacheLuceneSearchFieldComparatorSource
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldComparatorSource 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFieldComparatorSource 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFieldComparatorSource

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchFieldComparatorSource_) && (INCLUDE_ALL_OrgApacheLuceneSearchFieldComparatorSource || defined(INCLUDE_OrgApacheLuceneSearchFieldComparatorSource))
#define OrgApacheLuceneSearchFieldComparatorSource_

@class OrgApacheLuceneSearchFieldComparator;

/*!
 @brief Provides a <code>FieldComparator</code> for custom field sorting.
 */
@interface OrgApacheLuceneSearchFieldComparatorSource : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @brief Creates a comparator for the field in the given index.
 @param fieldname Name of the field to create comparator for.
 @return FieldComparator.
 @throw IOException
 If an error occurs reading the index.
 */
- (OrgApacheLuceneSearchFieldComparator *)newComparatorWithNSString:(NSString *)fieldname
                                                            withInt:(jint)numHits
                                                            withInt:(jint)sortPos
                                                        withBoolean:(jboolean)reversed OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparatorSource)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparatorSource_init(OrgApacheLuceneSearchFieldComparatorSource *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparatorSource)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFieldComparatorSource")
