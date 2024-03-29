//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/ReusableStringReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisReusableStringReader")
#ifdef RESTRICT_OrgApacheLuceneAnalysisReusableStringReader
#define INCLUDE_ALL_OrgApacheLuceneAnalysisReusableStringReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneAnalysisReusableStringReader 1
#endif
#undef RESTRICT_OrgApacheLuceneAnalysisReusableStringReader

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneAnalysisReusableStringReader_) && (INCLUDE_ALL_OrgApacheLuceneAnalysisReusableStringReader || defined(INCLUDE_OrgApacheLuceneAnalysisReusableStringReader))
#define OrgApacheLuceneAnalysisReusableStringReader_

#define RESTRICT_JavaIoReader 1
#define INCLUDE_JavaIoReader 1
#include "java/io/Reader.h"

@class IOSCharArray;

/*!
 @brief Internal class to enable reuse of the string reader by <code>Analyzer.tokenStream(String,String)</code>
 */
@interface OrgApacheLuceneAnalysisReusableStringReader : JavaIoReader

#pragma mark Public

- (void)close;

- (jint)read;

- (jint)readWithCharArray:(IOSCharArray *)c
                  withInt:(jint)off
                  withInt:(jint)len;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivate;

- (void)setValueWithNSString:(NSString *)s;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

- (instancetype __nonnull)initWithId:(id)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisReusableStringReader)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisReusableStringReader_initPackagePrivate(OrgApacheLuceneAnalysisReusableStringReader *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisReusableStringReader *new_OrgApacheLuceneAnalysisReusableStringReader_initPackagePrivate(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneAnalysisReusableStringReader *create_OrgApacheLuceneAnalysisReusableStringReader_initPackagePrivate(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisReusableStringReader)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneAnalysisReusableStringReader")
