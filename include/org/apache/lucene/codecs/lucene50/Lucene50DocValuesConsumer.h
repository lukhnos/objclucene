//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/lucene50/Lucene50DocValuesConsumer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer")
#ifdef RESTRICT_OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer
#define INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer 0
#else
#define INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer 1
#endif
#undef RESTRICT_OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_) && (INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer || defined(INCLUDE_OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer))
#define OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_

#define RESTRICT_OrgApacheLuceneCodecsDocValuesConsumer 1
#define INCLUDE_OrgApacheLuceneCodecsDocValuesConsumer 1
#include "org/apache/lucene/codecs/DocValuesConsumer.h"

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

@class OrgApacheLuceneIndexFieldInfo;
@class OrgApacheLuceneIndexSegmentWriteState;
@class OrgApacheLuceneStoreIndexOutput;
@protocol JavaLangIterable;

/*!
 @brief writer for <code>Lucene50DocValuesFormat</code>
 */
@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer : OrgApacheLuceneCodecsDocValuesConsumer < JavaIoCloseable > {
 @public
  OrgApacheLuceneStoreIndexOutput *data_;
  OrgApacheLuceneStoreIndexOutput *meta_;
  jint maxDoc_;
}

#pragma mark Public

/*!
 @brief expert: Creates a new writer
 */
- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneIndexSegmentWriteState:(OrgApacheLuceneIndexSegmentWriteState *)state
                                                                         withNSString:(NSString *)dataCodec
                                                                         withNSString:(NSString *)dataExtension
                                                                         withNSString:(NSString *)metaCodec
                                                                         withNSString:(NSString *)metaExtension;

- (void)addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                   withJavaLangIterable:(id<JavaLangIterable>)values;

- (void)addNumericFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                    withJavaLangIterable:(id<JavaLangIterable>)values;

- (void)addSortedFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                   withJavaLangIterable:(id<JavaLangIterable>)values
                                   withJavaLangIterable:(id<JavaLangIterable>)docToOrd;

- (void)addSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                          withJavaLangIterable:(id<JavaLangIterable>)docToValueCount
                                          withJavaLangIterable:(id<JavaLangIterable>)values;

- (void)addSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                      withJavaLangIterable:(id<JavaLangIterable>)values
                                      withJavaLangIterable:(id<JavaLangIterable>)docToOrdCount
                                      withJavaLangIterable:(id<JavaLangIterable>)ords;

- (void)close;

#pragma mark Package-Private

- (void)addNumericFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)field
                                    withJavaLangIterable:(id<JavaLangIterable>)values
                                             withBoolean:(jboolean)optimizeStorage;

- (void)writeMissingBitsetWithJavaLangIterable:(id<JavaLangIterable>)values;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer, data_, OrgApacheLuceneStoreIndexOutput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer, meta_, OrgApacheLuceneStoreIndexOutput *)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_initPackagePrivateWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *self, OrgApacheLuceneIndexSegmentWriteState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension);

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *new_OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_initPackagePrivateWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexSegmentWriteState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *create_OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer_initPackagePrivateWithOrgApacheLuceneIndexSegmentWriteState_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneIndexSegmentWriteState *state, NSString *dataCodec, NSString *dataExtension, NSString *metaCodec, NSString *metaExtension);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer")
