//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/ReaderUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexReaderUtil_INCLUDE_ALL")
#if OrgApacheLuceneIndexReaderUtil_RESTRICT
#define OrgApacheLuceneIndexReaderUtil_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexReaderUtil_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexReaderUtil_RESTRICT

#if !defined (_OrgApacheLuceneIndexReaderUtil_) && (OrgApacheLuceneIndexReaderUtil_INCLUDE_ALL || OrgApacheLuceneIndexReaderUtil_INCLUDE)
#define _OrgApacheLuceneIndexReaderUtil_

@class IOSIntArray;
@class OrgApacheLuceneIndexIndexReaderContext;
@protocol JavaUtilList;

@interface OrgApacheLuceneIndexReaderUtil : NSObject

#pragma mark Public

+ (OrgApacheLuceneIndexIndexReaderContext *)getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext:(OrgApacheLuceneIndexIndexReaderContext *)context;

+ (jint)subIndexWithInt:(jint)n
           withIntArray:(IOSIntArray *)docStarts;

+ (jint)subIndexWithInt:(jint)n
       withJavaUtilList:(id<JavaUtilList>)leaves;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexReaderUtil)

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexReaderContext *OrgApacheLuceneIndexReaderUtil_getTopLevelContextWithOrgApacheLuceneIndexIndexReaderContext_(OrgApacheLuceneIndexIndexReaderContext *context);

FOUNDATION_EXPORT jint OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(jint n, IOSIntArray *docStarts);

FOUNDATION_EXPORT jint OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withJavaUtilList_(jint n, id<JavaUtilList> leaves);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexReaderUtil)

#endif

#pragma pop_macro("OrgApacheLuceneIndexReaderUtil_INCLUDE_ALL")