//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/PackedWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedWriter")
#ifdef RESTRICT_OrgApacheLuceneUtilPackedPackedWriter
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedWriter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedWriter 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilPackedPackedWriter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilPackedPackedWriter_) && (INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedWriter || defined(INCLUDE_OrgApacheLuceneUtilPackedPackedWriter))
#define OrgApacheLuceneUtilPackedPackedWriter_

#define RESTRICT_OrgApacheLuceneUtilPackedPackedInts 1
#define INCLUDE_OrgApacheLuceneUtilPackedPackedInts_Writer 1
#include "org/apache/lucene/util/packed/PackedInts.h"

@class IOSByteArray;
@class IOSLongArray;
@class OrgApacheLuceneStoreDataOutput;
@class OrgApacheLuceneUtilPackedBulkOperation;
@class OrgApacheLuceneUtilPackedPackedInts_Format;

@interface OrgApacheLuceneUtilPackedPackedWriter : OrgApacheLuceneUtilPackedPackedInts_Writer {
 @public
  jboolean finished_;
  OrgApacheLuceneUtilPackedPackedInts_Format *format_;
  OrgApacheLuceneUtilPackedBulkOperation *encoder_;
  IOSByteArray *nextBlocks_;
  IOSLongArray *nextValues_;
  jint iterations_;
  jint off_;
  jint written_;
}

#pragma mark Public

- (void)addWithLong:(jlong)v;

- (void)finish;

- (jint)ord;

#pragma mark Protected

- (OrgApacheLuceneUtilPackedPackedInts_Format *)getFormat;

#pragma mark Package-Private

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format:(OrgApacheLuceneUtilPackedPackedInts_Format *)format
                                                        withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
                                                                                   withInt:(jint)valueCount
                                                                                   withInt:(jint)bitsPerValue
                                                                                   withInt:(jint)mem;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)arg0
                                                         withInt:(jint)arg1
                                                         withInt:(jint)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedPackedWriter)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPackedWriter, format_, OrgApacheLuceneUtilPackedPackedInts_Format *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPackedWriter, encoder_, OrgApacheLuceneUtilPackedBulkOperation *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPackedWriter, nextBlocks_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilPackedPackedWriter, nextValues_, IOSLongArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedPackedWriter_initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format_withOrgApacheLuceneStoreDataOutput_withInt_withInt_withInt_(OrgApacheLuceneUtilPackedPackedWriter *self, OrgApacheLuceneUtilPackedPackedInts_Format *format, OrgApacheLuceneStoreDataOutput *outArg, jint valueCount, jint bitsPerValue, jint mem);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPackedWriter *new_OrgApacheLuceneUtilPackedPackedWriter_initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format_withOrgApacheLuceneStoreDataOutput_withInt_withInt_withInt_(OrgApacheLuceneUtilPackedPackedInts_Format *format, OrgApacheLuceneStoreDataOutput *outArg, jint valueCount, jint bitsPerValue, jint mem) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedPackedWriter *create_OrgApacheLuceneUtilPackedPackedWriter_initPackagePrivateWithOrgApacheLuceneUtilPackedPackedInts_Format_withOrgApacheLuceneStoreDataOutput_withInt_withInt_withInt_(OrgApacheLuceneUtilPackedPackedInts_Format *format, OrgApacheLuceneStoreDataOutput *outArg, jint valueCount, jint bitsPerValue, jint mem);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedPackedWriter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilPackedPackedWriter")
