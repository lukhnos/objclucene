//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/TwoPhaseCommitTool.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexTwoPhaseCommitTool_INCLUDE_ALL")
#if OrgApacheLuceneIndexTwoPhaseCommitTool_RESTRICT
#define OrgApacheLuceneIndexTwoPhaseCommitTool_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexTwoPhaseCommitTool_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexTwoPhaseCommitTool_RESTRICT

#if !defined (_OrgApacheLuceneIndexTwoPhaseCommitTool_) && (OrgApacheLuceneIndexTwoPhaseCommitTool_INCLUDE_ALL || OrgApacheLuceneIndexTwoPhaseCommitTool_INCLUDE)
#define _OrgApacheLuceneIndexTwoPhaseCommitTool_

@class IOSObjectArray;

@interface OrgApacheLuceneIndexTwoPhaseCommitTool : NSObject

#pragma mark Public

+ (void)executeWithOrgApacheLuceneIndexTwoPhaseCommitArray:(IOSObjectArray *)objects;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTwoPhaseCommitTool)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTwoPhaseCommitTool_executeWithOrgApacheLuceneIndexTwoPhaseCommitArray_(IOSObjectArray *objects);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTwoPhaseCommitTool)

#endif

#if !defined (_OrgApacheLuceneIndexTwoPhaseCommitTool_PrepareCommitFailException_) && (OrgApacheLuceneIndexTwoPhaseCommitTool_INCLUDE_ALL || OrgApacheLuceneIndexTwoPhaseCommitTool_PrepareCommitFailException_INCLUDE)
#define _OrgApacheLuceneIndexTwoPhaseCommitTool_PrepareCommitFailException_

#define JavaIoIOException_RESTRICT 1
#define JavaIoIOException_INCLUDE 1
#include "java/io/IOException.h"

@class JavaLangThrowable;
@protocol OrgApacheLuceneIndexTwoPhaseCommit;

@interface OrgApacheLuceneIndexTwoPhaseCommitTool_PrepareCommitFailException : JavaIoIOException

#pragma mark Public

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause
   withOrgApacheLuceneIndexTwoPhaseCommit:(id<OrgApacheLuceneIndexTwoPhaseCommit>)obj;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTwoPhaseCommitTool_PrepareCommitFailException)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTwoPhaseCommitTool_PrepareCommitFailException_initWithJavaLangThrowable_withOrgApacheLuceneIndexTwoPhaseCommit_(OrgApacheLuceneIndexTwoPhaseCommitTool_PrepareCommitFailException *self, JavaLangThrowable *cause, id<OrgApacheLuceneIndexTwoPhaseCommit> obj);

FOUNDATION_EXPORT OrgApacheLuceneIndexTwoPhaseCommitTool_PrepareCommitFailException *new_OrgApacheLuceneIndexTwoPhaseCommitTool_PrepareCommitFailException_initWithJavaLangThrowable_withOrgApacheLuceneIndexTwoPhaseCommit_(JavaLangThrowable *cause, id<OrgApacheLuceneIndexTwoPhaseCommit> obj) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTwoPhaseCommitTool_PrepareCommitFailException)

#endif

#if !defined (_OrgApacheLuceneIndexTwoPhaseCommitTool_CommitFailException_) && (OrgApacheLuceneIndexTwoPhaseCommitTool_INCLUDE_ALL || OrgApacheLuceneIndexTwoPhaseCommitTool_CommitFailException_INCLUDE)
#define _OrgApacheLuceneIndexTwoPhaseCommitTool_CommitFailException_

#define JavaIoIOException_RESTRICT 1
#define JavaIoIOException_INCLUDE 1
#include "java/io/IOException.h"

@class JavaLangThrowable;
@protocol OrgApacheLuceneIndexTwoPhaseCommit;

@interface OrgApacheLuceneIndexTwoPhaseCommitTool_CommitFailException : JavaIoIOException

#pragma mark Public

- (instancetype)initWithJavaLangThrowable:(JavaLangThrowable *)cause
   withOrgApacheLuceneIndexTwoPhaseCommit:(id<OrgApacheLuceneIndexTwoPhaseCommit>)obj;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTwoPhaseCommitTool_CommitFailException)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTwoPhaseCommitTool_CommitFailException_initWithJavaLangThrowable_withOrgApacheLuceneIndexTwoPhaseCommit_(OrgApacheLuceneIndexTwoPhaseCommitTool_CommitFailException *self, JavaLangThrowable *cause, id<OrgApacheLuceneIndexTwoPhaseCommit> obj);

FOUNDATION_EXPORT OrgApacheLuceneIndexTwoPhaseCommitTool_CommitFailException *new_OrgApacheLuceneIndexTwoPhaseCommitTool_CommitFailException_initWithJavaLangThrowable_withOrgApacheLuceneIndexTwoPhaseCommit_(JavaLangThrowable *cause, id<OrgApacheLuceneIndexTwoPhaseCommit> obj) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTwoPhaseCommitTool_CommitFailException)

#endif

#pragma pop_macro("OrgApacheLuceneIndexTwoPhaseCommitTool_INCLUDE_ALL")
