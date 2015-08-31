//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/RollingCharBuffer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisUtilRollingCharBuffer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisUtilRollingCharBuffer_RESTRICT
#define OrgApacheLuceneAnalysisUtilRollingCharBuffer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisUtilRollingCharBuffer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisUtilRollingCharBuffer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisUtilRollingCharBuffer_) && (OrgApacheLuceneAnalysisUtilRollingCharBuffer_INCLUDE_ALL || OrgApacheLuceneAnalysisUtilRollingCharBuffer_INCLUDE)
#define _OrgApacheLuceneAnalysisUtilRollingCharBuffer_

@class IOSCharArray;
@class JavaIoReader;

@interface OrgApacheLuceneAnalysisUtilRollingCharBuffer : NSObject

#pragma mark Public

- (instancetype)init;

- (void)freeBeforeWithInt:(jint)pos;

- (jint)getWithInt:(jint)pos;

- (IOSCharArray *)getWithInt:(jint)posStart
                     withInt:(jint)length;

- (void)resetWithJavaIoReader:(JavaIoReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisUtilRollingCharBuffer)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilRollingCharBuffer_init(OrgApacheLuceneAnalysisUtilRollingCharBuffer *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilRollingCharBuffer *new_OrgApacheLuceneAnalysisUtilRollingCharBuffer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilRollingCharBuffer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisUtilRollingCharBuffer_INCLUDE_ALL")