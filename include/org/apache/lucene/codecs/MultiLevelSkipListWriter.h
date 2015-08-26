//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/MultiLevelSkipListWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsMultiLevelSkipListWriter_INCLUDE_ALL")
#if OrgApacheLuceneCodecsMultiLevelSkipListWriter_RESTRICT
#define OrgApacheLuceneCodecsMultiLevelSkipListWriter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsMultiLevelSkipListWriter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsMultiLevelSkipListWriter_RESTRICT

#if !defined (_OrgApacheLuceneCodecsMultiLevelSkipListWriter_) && (OrgApacheLuceneCodecsMultiLevelSkipListWriter_INCLUDE_ALL || OrgApacheLuceneCodecsMultiLevelSkipListWriter_INCLUDE)
#define _OrgApacheLuceneCodecsMultiLevelSkipListWriter_

@class OrgApacheLuceneStoreIndexOutput;

@interface OrgApacheLuceneCodecsMultiLevelSkipListWriter : NSObject {
 @public
  jint numberOfSkipLevels_;
}

#pragma mark Public

- (void)bufferSkipWithInt:(jint)df;

- (jlong)writeSkipWithOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)output;

#pragma mark Protected

- (instancetype)initWithInt:(jint)skipInterval
                    withInt:(jint)maxSkipLevels
                    withInt:(jint)df;

- (instancetype)initWithInt:(jint)skipInterval
                    withInt:(jint)skipMultiplier
                    withInt:(jint)maxSkipLevels
                    withInt:(jint)df;

- (void)init__ OBJC_METHOD_FAMILY_NONE;

- (void)resetSkip;

- (void)writeSkipDataWithInt:(jint)level
withOrgApacheLuceneStoreIndexOutput:(OrgApacheLuceneStoreIndexOutput *)skipBuffer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsMultiLevelSkipListWriter)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsMultiLevelSkipListWriter_initWithInt_withInt_withInt_withInt_(OrgApacheLuceneCodecsMultiLevelSkipListWriter *self, jint skipInterval, jint skipMultiplier, jint maxSkipLevels, jint df);

FOUNDATION_EXPORT void OrgApacheLuceneCodecsMultiLevelSkipListWriter_initWithInt_withInt_withInt_(OrgApacheLuceneCodecsMultiLevelSkipListWriter *self, jint skipInterval, jint maxSkipLevels, jint df);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsMultiLevelSkipListWriter)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsMultiLevelSkipListWriter_INCLUDE_ALL")
