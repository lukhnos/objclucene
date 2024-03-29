//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/MonotonicBlockPackedReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader || defined(INCLUDE_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader))
#define OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_

#define RESTRICT_OrgApacheLuceneUtilLongValues 1
#define INCLUDE_OrgApacheLuceneUtilLongValues 1
#include "org/apache/lucene/util/LongValues.h"

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSFloatArray;
@class IOSLongArray;
@class IOSObjectArray;
@class OrgApacheLuceneStoreIndexInput;
@protocol JavaUtilCollection;

/*!
 @brief Provides random access to a stream written with 
 <code>MonotonicBlockPackedWriter</code>.
 */
@interface OrgApacheLuceneUtilPackedMonotonicBlockPackedReader : OrgApacheLuceneUtilLongValues < OrgApacheLuceneUtilAccountable > {
 @public
  jint blockShift_;
  jint blockMask_;
  jlong valueCount_;
  IOSLongArray *minValues_;
  IOSFloatArray *averages_;
  IOSObjectArray *subReaders_;
  jlong sumBPV_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

- (id<JavaUtilCollection>)getChildResources;

/*!
 @brief Sole constructor.
 */
+ (OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)ofWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                                                                      withInt:(jint)packedIntsVersion
                                                                                      withInt:(jint)blockSize
                                                                                     withLong:(jlong)valueCount
                                                                                  withBoolean:(jboolean)direct;

- (jlong)ramBytesUsed;

/*!
 @brief Returns the number of values
 */
- (jlong)size;

- (NSString *)description;

#pragma mark Protected

- (jlong)decodeDeltaWithLong:(jlong)delta;

#pragma mark Package-Private

+ (jlong)expectedWithLong:(jlong)origin
                withFloat:(jfloat)average
                  withInt:(jint)index;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader, minValues_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader, averages_, IOSFloatArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader, subReaders_, IOSObjectArray *)

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(jlong origin, jfloat average, jint index);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_ofWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader")
