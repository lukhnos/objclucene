//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/collation/CollationDocValuesField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCollationCollationDocValuesField")
#ifdef RESTRICT_OrgApacheLuceneCollationCollationDocValuesField
#define INCLUDE_ALL_OrgApacheLuceneCollationCollationDocValuesField 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCollationCollationDocValuesField 1
#endif
#undef RESTRICT_OrgApacheLuceneCollationCollationDocValuesField

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCollationCollationDocValuesField_) && (INCLUDE_ALL_OrgApacheLuceneCollationCollationDocValuesField || defined(INCLUDE_OrgApacheLuceneCollationCollationDocValuesField))
#define OrgApacheLuceneCollationCollationDocValuesField_

#define RESTRICT_OrgApacheLuceneDocumentField 1
#define INCLUDE_OrgApacheLuceneDocumentField 1
#include "org/apache/lucene/document/Field.h"

@class IOSByteArray;
@class JavaIoReader;
@class JavaTextCollator;
@class OrgApacheLuceneAnalysisTokenStream;
@class OrgApacheLuceneDocumentFieldType;
@class OrgApacheLuceneDocumentField_Index;
@class OrgApacheLuceneDocumentField_Store;
@class OrgApacheLuceneDocumentField_TermVector;
@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Indexes collation keys as a single-valued <code>SortedDocValuesField</code>.
 <p>
  This is more efficient that <code>CollationKeyAnalyzer</code> if the field 
  only has one value: no uninversion is necessary to sort on the field, 
  locale-sensitive range queries can still work via <code>DocValuesRangeQuery</code>, 
  and the underlying data structures built at index-time are likely more efficient 
  and use less memory than FieldCache.
 */
@interface OrgApacheLuceneCollationCollationDocValuesField : OrgApacheLuceneDocumentField

#pragma mark Public

/*!
 @brief Create a new ICUCollationDocValuesField.
 <p>
  NOTE: you should not create a new one for each document, instead
  just make one and reuse it during your indexing process, setting
  the value via <code>setStringValue(String)</code>.
 @param name field name
 @param collator Collator for generating collation keys.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)name
                      withJavaTextCollator:(JavaTextCollator *)collator;

- (NSString *)name;

- (void)setStringValueWithNSString:(NSString *)value;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                             withByteArray:(IOSByteArray *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                             withByteArray:(IOSByteArray *)arg1
                                   withInt:(jint)arg2
                                   withInt:(jint)arg3 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                             withByteArray:(IOSByteArray *)arg1
                                   withInt:(jint)arg2
                                   withInt:(jint)arg3
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg4 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                             withByteArray:(IOSByteArray *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                          withJavaIoReader:(JavaIoReader *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                          withJavaIoReader:(JavaIoReader *)arg1
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                          withJavaIoReader:(JavaIoReader *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                              withNSString:(NSString *)arg1
    withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)arg2
    withOrgApacheLuceneDocumentField_Index:(OrgApacheLuceneDocumentField_Index *)arg3 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                              withNSString:(NSString *)arg1
    withOrgApacheLuceneDocumentField_Store:(OrgApacheLuceneDocumentField_Store *)arg2
    withOrgApacheLuceneDocumentField_Index:(OrgApacheLuceneDocumentField_Index *)arg3
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)arg4 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
                              withNSString:(NSString *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
    withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
    withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg1
withOrgApacheLuceneDocumentField_TermVector:(OrgApacheLuceneDocumentField_TermVector *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
    withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithNSString:(NSString *)arg0
           withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)arg1
      withOrgApacheLuceneDocumentFieldType:(OrgApacheLuceneDocumentFieldType *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCollationCollationDocValuesField)

FOUNDATION_EXPORT void OrgApacheLuceneCollationCollationDocValuesField_initWithNSString_withJavaTextCollator_(OrgApacheLuceneCollationCollationDocValuesField *self, NSString *name, JavaTextCollator *collator);

FOUNDATION_EXPORT OrgApacheLuceneCollationCollationDocValuesField *new_OrgApacheLuceneCollationCollationDocValuesField_initWithNSString_withJavaTextCollator_(NSString *name, JavaTextCollator *collator) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCollationCollationDocValuesField *create_OrgApacheLuceneCollationCollationDocValuesField_initWithNSString_withJavaTextCollator_(NSString *name, JavaTextCollator *collator);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCollationCollationDocValuesField)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCollationCollationDocValuesField")
