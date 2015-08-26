//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/StandardDirectoryReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexStandardDirectoryReader_INCLUDE_ALL")
#if OrgApacheLuceneIndexStandardDirectoryReader_RESTRICT
#define OrgApacheLuceneIndexStandardDirectoryReader_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexStandardDirectoryReader_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexStandardDirectoryReader_RESTRICT

#if !defined (_OrgApacheLuceneIndexStandardDirectoryReader_) && (OrgApacheLuceneIndexStandardDirectoryReader_INCLUDE_ALL || OrgApacheLuceneIndexStandardDirectoryReader_INCLUDE)
#define _OrgApacheLuceneIndexStandardDirectoryReader_

#define OrgApacheLuceneIndexDirectoryReader_RESTRICT 1
#define OrgApacheLuceneIndexDirectoryReader_INCLUDE 1
#include "org/apache/lucene/index/DirectoryReader.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexCommit;
@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneIndexSegmentInfos;
@class OrgApacheLuceneStoreDirectory;

@interface OrgApacheLuceneIndexStandardDirectoryReader : OrgApacheLuceneIndexDirectoryReader {
 @public
  OrgApacheLuceneIndexIndexWriter *writer_;
  OrgApacheLuceneIndexSegmentInfos *segmentInfos_;
}

#pragma mark Public

- (OrgApacheLuceneIndexIndexCommit *)getIndexCommit;

- (jlong)getVersion;

- (jboolean)isCurrent;

- (NSString *)description;

#pragma mark Protected

- (void)doClose;

- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChanged;

- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit;

- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChangedWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                                                                withBoolean:(jboolean)applyAllDeletes;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
              withOrgApacheLuceneIndexLeafReaderArray:(IOSObjectArray *)readers
                  withOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                 withOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)sis
                                          withBoolean:(jboolean)applyAllDeletes;

- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChangedWithOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos;

+ (OrgApacheLuceneIndexDirectoryReader *)openWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)directory
                                           withOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit;

+ (OrgApacheLuceneIndexDirectoryReader *)openWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                            withOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
                                                                     withBoolean:(jboolean)applyAllDeletes;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexStandardDirectoryReader)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexStandardDirectoryReader, writer_, OrgApacheLuceneIndexIndexWriter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexStandardDirectoryReader, segmentInfos_, OrgApacheLuceneIndexSegmentInfos *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexStandardDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentInfos_withBoolean_(OrgApacheLuceneIndexStandardDirectoryReader *self, OrgApacheLuceneStoreDirectory *directory, IOSObjectArray *readers, OrgApacheLuceneIndexIndexWriter *writer, OrgApacheLuceneIndexSegmentInfos *sis, jboolean applyAllDeletes);

FOUNDATION_EXPORT OrgApacheLuceneIndexStandardDirectoryReader *new_OrgApacheLuceneIndexStandardDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_withOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentInfos_withBoolean_(OrgApacheLuceneStoreDirectory *directory, IOSObjectArray *readers, OrgApacheLuceneIndexIndexWriter *writer, OrgApacheLuceneIndexSegmentInfos *sis, jboolean applyAllDeletes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexStandardDirectoryReader_openWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexCommit_(OrgApacheLuceneStoreDirectory *directory, OrgApacheLuceneIndexIndexCommit *commit);

FOUNDATION_EXPORT OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexStandardDirectoryReader_openWithOrgApacheLuceneIndexIndexWriter_withOrgApacheLuceneIndexSegmentInfos_withBoolean_(OrgApacheLuceneIndexIndexWriter *writer, OrgApacheLuceneIndexSegmentInfos *infos, jboolean applyAllDeletes);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexStandardDirectoryReader)

#endif

#if !defined (_OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit_) && (OrgApacheLuceneIndexStandardDirectoryReader_INCLUDE_ALL || OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit_INCLUDE)
#define _OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit_

#define OrgApacheLuceneIndexIndexCommit_RESTRICT 1
#define OrgApacheLuceneIndexIndexCommit_INCLUDE 1
#include "org/apache/lucene/index/IndexCommit.h"

@class OrgApacheLuceneIndexSegmentInfos;
@class OrgApacheLuceneIndexStandardDirectoryReader;
@class OrgApacheLuceneStoreDirectory;
@protocol JavaUtilCollection;
@protocol JavaUtilMap;

@interface OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit : OrgApacheLuceneIndexIndexCommit {
 @public
  id<JavaUtilCollection> files_;
  OrgApacheLuceneStoreDirectory *dir_;
  jlong generation_;
  id<JavaUtilMap> userData_;
}

#pragma mark Public

- (void)delete__;

- (OrgApacheLuceneStoreDirectory *)getDirectory;

- (id<JavaUtilCollection>)getFileNames;

- (jlong)getGeneration;

- (jint)getSegmentCount;

- (NSString *)getSegmentsFileName;

- (id<JavaUtilMap>)getUserData;

- (jboolean)isDeleted;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexStandardDirectoryReader:(OrgApacheLuceneIndexStandardDirectoryReader *)reader
                               withOrgApacheLuceneIndexSegmentInfos:(OrgApacheLuceneIndexSegmentInfos *)infos
                                  withOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)dir;

- (OrgApacheLuceneIndexStandardDirectoryReader *)getReader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit, files_, id<JavaUtilCollection>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit, dir_, OrgApacheLuceneStoreDirectory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit, userData_, id<JavaUtilMap>)

FOUNDATION_EXPORT void OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit_initWithOrgApacheLuceneIndexStandardDirectoryReader_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneStoreDirectory_(OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit *self, OrgApacheLuceneIndexStandardDirectoryReader *reader, OrgApacheLuceneIndexSegmentInfos *infos, OrgApacheLuceneStoreDirectory *dir);

FOUNDATION_EXPORT OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit *new_OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit_initWithOrgApacheLuceneIndexStandardDirectoryReader_withOrgApacheLuceneIndexSegmentInfos_withOrgApacheLuceneStoreDirectory_(OrgApacheLuceneIndexStandardDirectoryReader *reader, OrgApacheLuceneIndexSegmentInfos *infos, OrgApacheLuceneStoreDirectory *dir) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexStandardDirectoryReader_ReaderCommit)

#endif

#pragma pop_macro("OrgApacheLuceneIndexStandardDirectoryReader_INCLUDE_ALL")
