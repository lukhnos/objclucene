//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/LockValidatingDirectoryWrapper.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneStoreLockValidatingDirectoryWrapper_INCLUDE_ALL")
#if OrgApacheLuceneStoreLockValidatingDirectoryWrapper_RESTRICT
#define OrgApacheLuceneStoreLockValidatingDirectoryWrapper_INCLUDE_ALL 0
#else
#define OrgApacheLuceneStoreLockValidatingDirectoryWrapper_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneStoreLockValidatingDirectoryWrapper_RESTRICT

#if !defined (_OrgApacheLuceneStoreLockValidatingDirectoryWrapper_) && (OrgApacheLuceneStoreLockValidatingDirectoryWrapper_INCLUDE_ALL || OrgApacheLuceneStoreLockValidatingDirectoryWrapper_INCLUDE)
#define _OrgApacheLuceneStoreLockValidatingDirectoryWrapper_

#define OrgApacheLuceneStoreFilterDirectory_RESTRICT 1
#define OrgApacheLuceneStoreFilterDirectory_INCLUDE 1
#include "org/apache/lucene/store/FilterDirectory.h"

@class OrgApacheLuceneStoreDirectory;
@class OrgApacheLuceneStoreIOContext;
@class OrgApacheLuceneStoreIndexOutput;
@class OrgApacheLuceneStoreLock;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneStoreLockValidatingDirectoryWrapper : OrgApacheLuceneStoreFilterDirectory

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneStoreDirectory:(OrgApacheLuceneStoreDirectory *)inArg
                         withOrgApacheLuceneStoreLock:(OrgApacheLuceneStoreLock *)writeLock;

- (OrgApacheLuceneStoreIndexOutput *)createOutputWithNSString:(NSString *)name
                            withOrgApacheLuceneStoreIOContext:(OrgApacheLuceneStoreIOContext *)context;

- (void)deleteFileWithNSString:(NSString *)name;

- (void)renameFileWithNSString:(NSString *)source
                  withNSString:(NSString *)dest;

- (void)syncWithJavaUtilCollection:(id<JavaUtilCollection>)names;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreLockValidatingDirectoryWrapper)

FOUNDATION_EXPORT void OrgApacheLuceneStoreLockValidatingDirectoryWrapper_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneStoreLock_(OrgApacheLuceneStoreLockValidatingDirectoryWrapper *self, OrgApacheLuceneStoreDirectory *inArg, OrgApacheLuceneStoreLock *writeLock);

FOUNDATION_EXPORT OrgApacheLuceneStoreLockValidatingDirectoryWrapper *new_OrgApacheLuceneStoreLockValidatingDirectoryWrapper_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneStoreLock_(OrgApacheLuceneStoreDirectory *inArg, OrgApacheLuceneStoreLock *writeLock) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreLockValidatingDirectoryWrapper)

#endif

#pragma pop_macro("OrgApacheLuceneStoreLockValidatingDirectoryWrapper_INCLUDE_ALL")
