//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/packed/BlockPackedWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilPackedBlockPackedWriter_INCLUDE_ALL")
#if OrgApacheLuceneUtilPackedBlockPackedWriter_RESTRICT
#define OrgApacheLuceneUtilPackedBlockPackedWriter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilPackedBlockPackedWriter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilPackedBlockPackedWriter_RESTRICT

#if !defined (_OrgApacheLuceneUtilPackedBlockPackedWriter_) && (OrgApacheLuceneUtilPackedBlockPackedWriter_INCLUDE_ALL || OrgApacheLuceneUtilPackedBlockPackedWriter_INCLUDE)
#define _OrgApacheLuceneUtilPackedBlockPackedWriter_

#define OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_RESTRICT 1
#define OrgApacheLuceneUtilPackedAbstractBlockPackedWriter_INCLUDE 1
#include "org/apache/lucene/util/packed/AbstractBlockPackedWriter.h"

@class OrgApacheLuceneStoreDataOutput;

@interface OrgApacheLuceneUtilPackedBlockPackedWriter : OrgApacheLuceneUtilPackedAbstractBlockPackedWriter

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg
                                               withInt:(jint)blockSize;

#pragma mark Protected

- (void)flush;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilPackedBlockPackedWriter)

FOUNDATION_EXPORT void OrgApacheLuceneUtilPackedBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(OrgApacheLuceneUtilPackedBlockPackedWriter *self, OrgApacheLuceneStoreDataOutput *outArg, jint blockSize);

FOUNDATION_EXPORT OrgApacheLuceneUtilPackedBlockPackedWriter *new_OrgApacheLuceneUtilPackedBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(OrgApacheLuceneStoreDataOutput *outArg, jint blockSize) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilPackedBlockPackedWriter)

#endif

#pragma pop_macro("OrgApacheLuceneUtilPackedBlockPackedWriter_INCLUDE_ALL")
