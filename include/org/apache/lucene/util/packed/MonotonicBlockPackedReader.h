//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/MonotonicBlockPackedReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_INCLUDE_ALL")
#if OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_RESTRICT
#define OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_RESTRICT

#if !defined (_OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_) && (OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_INCLUDE_ALL || OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_INCLUDE)
#define _OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_

#define OrgApacheLuceneUtilLongValues_RESTRICT 1
#define OrgApacheLuceneUtilLongValues_INCLUDE 1
#include "org/apache/lucene/util/LongValues.h"

#define OrgApacheLuceneUtilAccountable_RESTRICT 1
#define OrgApacheLuceneUtilAccountable_INCLUDE 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSFloatArray;
@class IOSLongArray;
@class IOSObjectArray;
@class OrgApacheLuceneStoreIndexInput;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneUtilPackedMonotonicBlockPackedReader : OrgApacheLuceneUtilLongValues < OrgApacheLuceneUtilAccountable > {
 @public
  jint blockShift_, blockMask_;
  jlong valueCount_;
  IOSLongArray *minValues_;
  IOSFloatArray *averages_;
  IOSObjectArray *subReaders_;
  jlong sumBPV_;
}

#pragma mark Public

- (jlong)getWithLong:(jlong)index;

- (id<JavaUtilCollection>)getChildResources;

+ (OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *)ofWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)inArg
                                                                                      withInt:(jint)packedIntsVersion
                                                                                      withInt:(jint)blockSize
                                                                                     withLong:(jlong)valueCount
                                                                                  withBoolean:(jboolean)direct;

- (jlong)ramBytesUsed;

- (jlong)size;

- (NSString *)description;

#pragma mark Protected

- (jlong)decodeDeltaWithLong:(jlong)delta;

#pragma mark Package-Private

+ (jlong)expectedWithLong:(jlong)origin
                withFloat:(jfloat)average
                  withInt:(jint)index;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader, minValues_, IOSLongArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader, averages_, IOSFloatArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader, subReaders_, IOSObjectArray *)

FOUNDATION_EXPORT jlong OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_expectedWithLong_withFloat_withInt_(jlong origin, jfloat average, jint index);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedMonotonicBlockPackedReader *OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_ofWithOrgApacheLuceneStoreIndexInput_withInt_withInt_withLong_withBoolean_(OrgApacheLuceneStoreIndexInput *inArg, jint packedIntsVersion, jint blockSize, jlong valueCount, jboolean direct);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedMonotonicBlockPackedReader)

#endif

#pragma pop_macro("OrgApacheLuceneUtilPackedMonotonicBlockPackedReader_INCLUDE_ALL")