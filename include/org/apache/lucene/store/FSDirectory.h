//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/FSDirectory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneStoreFSDirectory_INCLUDE_ALL")
#if OrgApacheLuceneStoreFSDirectory_RESTRICT
#define OrgApacheLuceneStoreFSDirectory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneStoreFSDirectory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneStoreFSDirectory_RESTRICT

#if !defined (_OrgApacheLuceneStoreFSDirectory_) && (OrgApacheLuceneStoreFSDirectory_INCLUDE_ALL || OrgApacheLuceneStoreFSDirectory_INCLUDE)
#define _OrgApacheLuceneStoreFSDirectory_

#define OrgApacheLuceneStoreBaseDirectory_RESTRICT 1
#define OrgApacheLuceneStoreBaseDirectory_INCLUDE 1
#include "org/apache/lucene/store/BaseDirectory.h"

@class IOSObjectArray;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneStoreIndexOutput;
@class OrgApacheLuceneStoreLockFactory;
@class OrgLukhnosPortmobileFilePath;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneStoreFSDirectory : OrgApacheLuceneStoreBaseDirectory {
 @public
  OrgLukhnosPortmobileFilePath *directory_;
}

#pragma mark Public

- (void)close;

- (OrgApacheLuceneStoreIndexOutput *)createOutputWithNSString:(NSString *)name
                            withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (void)deleteFileWithNSString:(NSString *)name;

- (jlong)fileLengthWithNSString:(NSString *)name;

- (OrgLukhnosPortmobileFilePath *)getDirectory;

- (IOSObjectArray *)listAll;

+ (IOSObjectArray *)listAllWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)dir;

+ (OrgApacheLuceneStoreFSDirectory *)openWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path;

+ (OrgApacheLuceneStoreFSDirectory *)openWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path
                                      withOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lockFactory;

- (void)renameFileWithNSString:(NSString *)source
                  withNSString:(NSString *)dest;

- (void)syncWithJavaUtilCollection:(id<JavaUtilCollection>)names;

- (NSString *)description;

#pragma mark Protected

- (instancetype)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path
                 withOrgApacheLuceneStoreLockFactory:(OrgApacheLuceneStoreLockFactory *)lockFactory;

- (void)ensureCanWriteWithNSString:(NSString *)name;

- (void)fsyncWithNSString:(NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreFSDirectory)

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreFSDirectory, directory_, OrgLukhnosPortmobileFilePath *)

FOUNDATION_EXPORT void OrgApacheLuceneStoreFSDirectory_initWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(OrgApacheLuceneStoreFSDirectory *self, OrgLukhnosPortmobileFilePath *path, OrgApacheLuceneStoreLockFactory *lockFactory);

FOUNDATION_EXPORT OrgApacheLuceneStoreFSDirectory *OrgApacheLuceneStoreFSDirectory_openWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *path);

FOUNDATION_EXPORT OrgApacheLuceneStoreFSDirectory *OrgApacheLuceneStoreFSDirectory_openWithOrgLukhnosPortmobileFilePath_withOrgApacheLuceneStoreLockFactory_(OrgLukhnosPortmobileFilePath *path, OrgApacheLuceneStoreLockFactory *lockFactory);

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneStoreFSDirectory_listAllWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *dir);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreFSDirectory)

#endif

#if !defined (_OrgApacheLuceneStoreFSDirectory_FSIndexOutput_) && (OrgApacheLuceneStoreFSDirectory_INCLUDE_ALL || OrgApacheLuceneStoreFSDirectory_FSIndexOutput_INCLUDE)
#define _OrgApacheLuceneStoreFSDirectory_FSIndexOutput_

#define OrgApacheLuceneStoreOutputStreamIndexOutput_RESTRICT 1
#define OrgApacheLuceneStoreOutputStreamIndexOutput_INCLUDE 1
#include "org/apache/lucene/store/OutputStreamIndexOutput.h"

@class OrgApacheLuceneStoreFSDirectory;

#define OrgApacheLuceneStoreFSDirectory_FSIndexOutput_CHUNK_SIZE 8192

@interface OrgApacheLuceneStoreFSDirectory_FSIndexOutput : OrgApacheLuceneStoreOutputStreamIndexOutput

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreFSDirectory:(OrgApacheLuceneStoreFSDirectory *)outer$
                                           withNSString:(NSString *)name;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreFSDirectory_FSIndexOutput)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneStoreFSDirectory_FSIndexOutput, CHUNK_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneStoreFSDirectory_FSIndexOutput_initWithOrgApacheLuceneStoreFSDirectory_withNSString_(OrgApacheLuceneStoreFSDirectory_FSIndexOutput *self, OrgApacheLuceneStoreFSDirectory *outer$, NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneStoreFSDirectory_FSIndexOutput *new_OrgApacheLuceneStoreFSDirectory_FSIndexOutput_initWithOrgApacheLuceneStoreFSDirectory_withNSString_(OrgApacheLuceneStoreFSDirectory *outer$, NSString *name) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreFSDirectory_FSIndexOutput)

#endif

#pragma pop_macro("OrgApacheLuceneStoreFSDirectory_INCLUDE_ALL")
