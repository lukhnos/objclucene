//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/misc/TermStats.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneMiscTermStats")
#ifdef RESTRICT_OrgApacheLuceneMiscTermStats
#define INCLUDE_ALL_OrgApacheLuceneMiscTermStats 0
#else
#define INCLUDE_ALL_OrgApacheLuceneMiscTermStats 1
#endif
#undef RESTRICT_OrgApacheLuceneMiscTermStats

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneMiscTermStats_) && (INCLUDE_ALL_OrgApacheLuceneMiscTermStats || defined(INCLUDE_OrgApacheLuceneMiscTermStats))
#define OrgApacheLuceneMiscTermStats_

@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Holder for a term along with its statistics
  (<code>docFreq</code> and <code>totalTermFreq</code>).
 */
@interface OrgApacheLuceneMiscTermStats : NSObject {
 @public
  OrgApacheLuceneUtilBytesRef *termtext_;
  NSString *field_;
  jint docFreq_;
  jlong totalTermFreq_;
}

#pragma mark Public

- (NSString *)description;

#pragma mark Package-Private

- (instancetype __nonnull)initWithNSString:(NSString *)field
           withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)termtext
                                   withInt:(jint)df
                                  withLong:(jlong)tf;

- (NSString *)getTermText;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneMiscTermStats)

J2OBJC_FIELD_SETTER(OrgApacheLuceneMiscTermStats, termtext_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneMiscTermStats, field_, NSString *)

FOUNDATION_EXPORT void OrgApacheLuceneMiscTermStats_initWithNSString_withOrgApacheLuceneUtilBytesRef_withInt_withLong_(OrgApacheLuceneMiscTermStats *self, NSString *field, OrgApacheLuceneUtilBytesRef *termtext, jint df, jlong tf);

FOUNDATION_EXPORT OrgApacheLuceneMiscTermStats *new_OrgApacheLuceneMiscTermStats_initWithNSString_withOrgApacheLuceneUtilBytesRef_withInt_withLong_(NSString *field, OrgApacheLuceneUtilBytesRef *termtext, jint df, jlong tf) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneMiscTermStats *create_OrgApacheLuceneMiscTermStats_initWithNSString_withOrgApacheLuceneUtilBytesRef_withInt_withLong_(NSString *field, OrgApacheLuceneUtilBytesRef *termtext, jint df, jlong tf);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneMiscTermStats)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneMiscTermStats")
