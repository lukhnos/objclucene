//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexCommit.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexIndexCommit_INCLUDE_ALL")
#if OrgApacheLuceneIndexIndexCommit_RESTRICT
#define OrgApacheLuceneIndexIndexCommit_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexIndexCommit_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexIndexCommit_RESTRICT

#if !defined (_OrgApacheLuceneIndexIndexCommit_) && (OrgApacheLuceneIndexIndexCommit_INCLUDE_ALL || OrgApacheLuceneIndexIndexCommit_INCLUDE)
#define _OrgApacheLuceneIndexIndexCommit_

#define JavaLangComparable_RESTRICT 1
#define JavaLangComparable_INCLUDE 1
#include "java/lang/Comparable.h"

@class OrgApacheLuceneIndexStandardDirectoryReader;
@class OrgApacheLuceneStoreDirectory;

@interface OrgApacheLuceneIndexIndexCommit : NSObject < JavaLangComparable >

#pragma mark Public

- (jint)compareToWithId:(OrgApacheLuceneIndexIndexCommit *)commit;

- (void)delete__;

- (jboolean)isEqual:(id)other;

- (OrgApacheLuceneStoreDirectory *)getDirectory;

- (jlong)getGeneration;

- (NSString *)getSegmentsFileName;

- (NSUInteger)hash;

#pragma mark Protected

- (instancetype)init;

#pragma mark Package-Private

- (OrgApacheLuceneIndexStandardDirectoryReader *)getReader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexIndexCommit)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexCommit_init(OrgApacheLuceneIndexIndexCommit *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexCommit)

#endif

#pragma pop_macro("OrgApacheLuceneIndexIndexCommit_INCLUDE_ALL")
