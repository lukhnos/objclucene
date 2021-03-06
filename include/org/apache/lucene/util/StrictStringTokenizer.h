//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/StrictStringTokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilStrictStringTokenizer")
#ifdef RESTRICT_OrgApacheLuceneUtilStrictStringTokenizer
#define INCLUDE_ALL_OrgApacheLuceneUtilStrictStringTokenizer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilStrictStringTokenizer 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilStrictStringTokenizer

#if !defined (OrgApacheLuceneUtilStrictStringTokenizer_) && (INCLUDE_ALL_OrgApacheLuceneUtilStrictStringTokenizer || defined(INCLUDE_OrgApacheLuceneUtilStrictStringTokenizer))
#define OrgApacheLuceneUtilStrictStringTokenizer_

/*!
 @brief Used for parsing Version strings so we don't have to
 use overkill String.split nor StringTokenizer (which silently
 skips empty tokens).
 */
@interface OrgApacheLuceneUtilStrictStringTokenizer : NSObject

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)s
                        withChar:(jchar)delimiter;

- (jboolean)hasMoreTokens;

- (NSString *)nextToken;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilStrictStringTokenizer)

FOUNDATION_EXPORT void OrgApacheLuceneUtilStrictStringTokenizer_initWithNSString_withChar_(OrgApacheLuceneUtilStrictStringTokenizer *self, NSString *s, jchar delimiter);

FOUNDATION_EXPORT OrgApacheLuceneUtilStrictStringTokenizer *new_OrgApacheLuceneUtilStrictStringTokenizer_initWithNSString_withChar_(NSString *s, jchar delimiter) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilStrictStringTokenizer *create_OrgApacheLuceneUtilStrictStringTokenizer_initWithNSString_withChar_(NSString *s, jchar delimiter);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilStrictStringTokenizer)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilStrictStringTokenizer")
