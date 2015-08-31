//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/SimpleFSLockFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneStoreSimpleFSLockFactory_INCLUDE_ALL")
#if OrgApacheLuceneStoreSimpleFSLockFactory_RESTRICT
#define OrgApacheLuceneStoreSimpleFSLockFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneStoreSimpleFSLockFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneStoreSimpleFSLockFactory_RESTRICT

#if !defined (_OrgApacheLuceneStoreSimpleFSLockFactory_) && (OrgApacheLuceneStoreSimpleFSLockFactory_INCLUDE_ALL || OrgApacheLuceneStoreSimpleFSLockFactory_INCLUDE)
#define _OrgApacheLuceneStoreSimpleFSLockFactory_

#define OrgApacheLuceneStoreFSLockFactory_RESTRICT 1
#define OrgApacheLuceneStoreFSLockFactory_INCLUDE 1
#include "org/apache/lucene/store/FSLockFactory.h"

@class OrgApacheLuceneStoreFSDirectory;
@class OrgApacheLuceneStoreLock;

@interface OrgApacheLuceneStoreSimpleFSLockFactory : OrgApacheLuceneStoreFSLockFactory

#pragma mark Protected

- (OrgApacheLuceneStoreLock *)obtainFSLockWithOrgApacheLuceneStoreFSDirectory:(OrgApacheLuceneStoreFSDirectory *)dir
                                                                 withNSString:(NSString *)lockName;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneStoreSimpleFSLockFactory)

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSLockFactory *OrgApacheLuceneStoreSimpleFSLockFactory_INSTANCE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneStoreSimpleFSLockFactory, INSTANCE_, OrgApacheLuceneStoreSimpleFSLockFactory *)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreSimpleFSLockFactory)

#endif

#if !defined (_OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock_) && (OrgApacheLuceneStoreSimpleFSLockFactory_INCLUDE_ALL || OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock_INCLUDE)
#define _OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock_

#define OrgApacheLuceneStoreLock_RESTRICT 1
#define OrgApacheLuceneStoreLock_INCLUDE 1
#include "org/apache/lucene/store/Lock.h"

@class OrgLukhnosPortmobileFileAttributeFileTime;
@class OrgLukhnosPortmobileFilePath;

@interface OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock : OrgApacheLuceneStoreLock

#pragma mark Public

- (void)close;

- (void)ensureValid;

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path
       withOrgLukhnosPortmobileFileAttributeFileTime:(OrgLukhnosPortmobileFileAttributeFileTime *)creationTime;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock)

FOUNDATION_EXPORT void OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock_initWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileAttributeFileTime_(OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock *self, OrgLukhnosPortmobileFilePath *path, OrgLukhnosPortmobileFileAttributeFileTime *creationTime);

FOUNDATION_EXPORT OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock *new_OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock_initWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileAttributeFileTime_(OrgLukhnosPortmobileFilePath *path, OrgLukhnosPortmobileFileAttributeFileTime *creationTime) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock)

#endif

#pragma pop_macro("OrgApacheLuceneStoreSimpleFSLockFactory_INCLUDE_ALL")