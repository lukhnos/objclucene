//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SlowCodecReaderWrapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexSlowCodecReaderWrapper_INCLUDE_ALL")
#if OrgApacheLuceneIndexSlowCodecReaderWrapper_RESTRICT
#define OrgApacheLuceneIndexSlowCodecReaderWrapper_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexSlowCodecReaderWrapper_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexSlowCodecReaderWrapper_RESTRICT

#if !defined (_OrgApacheLuceneIndexSlowCodecReaderWrapper_) && (OrgApacheLuceneIndexSlowCodecReaderWrapper_INCLUDE_ALL || OrgApacheLuceneIndexSlowCodecReaderWrapper_INCLUDE)
#define _OrgApacheLuceneIndexSlowCodecReaderWrapper_

@class OrgApacheLuceneIndexCodecReader;
@class OrgApacheLuceneIndexLeafReader;

@interface OrgApacheLuceneIndexSlowCodecReaderWrapper : NSObject

#pragma mark Public

+ (OrgApacheLuceneIndexCodecReader *)wrapWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSlowCodecReaderWrapper)

FOUNDATION_EXPORT OrgApacheLuceneIndexCodecReader *OrgApacheLuceneIndexSlowCodecReaderWrapper_wrapWithOrgApacheLuceneIndexLeafReader_(OrgApacheLuceneIndexLeafReader *reader);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSlowCodecReaderWrapper)

#endif

#pragma pop_macro("OrgApacheLuceneIndexSlowCodecReaderWrapper_INCLUDE_ALL")
