//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/ParallelCompositeReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexParallelCompositeReader_INCLUDE_ALL")
#if OrgApacheLuceneIndexParallelCompositeReader_RESTRICT
#define OrgApacheLuceneIndexParallelCompositeReader_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexParallelCompositeReader_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexParallelCompositeReader_RESTRICT

#if !defined (_OrgApacheLuceneIndexParallelCompositeReader_) && (OrgApacheLuceneIndexParallelCompositeReader_INCLUDE_ALL || OrgApacheLuceneIndexParallelCompositeReader_INCLUDE)
#define _OrgApacheLuceneIndexParallelCompositeReader_

#define OrgApacheLuceneIndexBaseCompositeReader_RESTRICT 1
#define OrgApacheLuceneIndexBaseCompositeReader_INCLUDE 1
#include "org/apache/lucene/index/BaseCompositeReader.h"

@class IOSObjectArray;

@interface OrgApacheLuceneIndexParallelCompositeReader : OrgApacheLuceneIndexBaseCompositeReader

#pragma mark Public

- (instancetype)initWithBoolean:(jboolean)closeSubReaders
withOrgApacheLuceneIndexCompositeReaderArray:(IOSObjectArray *)readers;

- (instancetype)initWithBoolean:(jboolean)closeSubReaders
withOrgApacheLuceneIndexCompositeReaderArray:(IOSObjectArray *)readers
withOrgApacheLuceneIndexCompositeReaderArray:(IOSObjectArray *)storedFieldReaders;

- (instancetype)initWithOrgApacheLuceneIndexCompositeReaderArray:(IOSObjectArray *)readers;

#pragma mark Protected

- (void)doClose;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexParallelCompositeReader)

FOUNDATION_EXPORT void OrgApacheLuceneIndexParallelCompositeReader_initWithOrgApacheLuceneIndexCompositeReaderArray_(OrgApacheLuceneIndexParallelCompositeReader *self, IOSObjectArray *readers);

FOUNDATION_EXPORT OrgApacheLuceneIndexParallelCompositeReader *new_OrgApacheLuceneIndexParallelCompositeReader_initWithOrgApacheLuceneIndexCompositeReaderArray_(IOSObjectArray *readers) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneIndexParallelCompositeReader_initWithBoolean_withOrgApacheLuceneIndexCompositeReaderArray_(OrgApacheLuceneIndexParallelCompositeReader *self, jboolean closeSubReaders, IOSObjectArray *readers);

FOUNDATION_EXPORT OrgApacheLuceneIndexParallelCompositeReader *new_OrgApacheLuceneIndexParallelCompositeReader_initWithBoolean_withOrgApacheLuceneIndexCompositeReaderArray_(jboolean closeSubReaders, IOSObjectArray *readers) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneIndexParallelCompositeReader_initWithBoolean_withOrgApacheLuceneIndexCompositeReaderArray_withOrgApacheLuceneIndexCompositeReaderArray_(OrgApacheLuceneIndexParallelCompositeReader *self, jboolean closeSubReaders, IOSObjectArray *readers, IOSObjectArray *storedFieldReaders);

FOUNDATION_EXPORT OrgApacheLuceneIndexParallelCompositeReader *new_OrgApacheLuceneIndexParallelCompositeReader_initWithBoolean_withOrgApacheLuceneIndexCompositeReaderArray_withOrgApacheLuceneIndexCompositeReaderArray_(jboolean closeSubReaders, IOSObjectArray *readers, IOSObjectArray *storedFieldReaders) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexParallelCompositeReader)

#endif

#pragma pop_macro("OrgApacheLuceneIndexParallelCompositeReader_INCLUDE_ALL")
