//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/SimpleFSLockFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Throwable.h"
#include "org/apache/lucene/store/AlreadyClosedException.h"
#include "org/apache/lucene/store/FSDirectory.h"
#include "org/apache/lucene/store/FSLockFactory.h"
#include "org/apache/lucene/store/Lock.h"
#include "org/apache/lucene/store/LockObtainFailedException.h"
#include "org/apache/lucene/store/LockReleaseFailedException.h"
#include "org/apache/lucene/store/SimpleFSLockFactory.h"
#include "org/lukhnos/portmobile/file/AccessDeniedException.h"
#include "org/lukhnos/portmobile/file/FileAlreadyExistsException.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"
#include "org/lukhnos/portmobile/file/attribute/BasicFileAttributes.h"
#include "org/lukhnos/portmobile/file/attribute/FileTime.h"

@interface OrgApacheLuceneStoreSimpleFSLockFactory ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneStoreSimpleFSLockFactory_init(OrgApacheLuceneStoreSimpleFSLockFactory *self);

__attribute__((unused)) static OrgApacheLuceneStoreSimpleFSLockFactory *new_OrgApacheLuceneStoreSimpleFSLockFactory_init() NS_RETURNS_RETAINED;

@interface OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock () {
 @public
  OrgLukhnosPortmobileFilePath *path_;
  OrgLukhnosPortmobileFileAttributeFileTime *creationTime_;
  volatile_jboolean closed_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock, path_, OrgLukhnosPortmobileFilePath *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock, creationTime_, OrgLukhnosPortmobileFileAttributeFileTime *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneStoreSimpleFSLockFactory)

OrgApacheLuceneStoreSimpleFSLockFactory *OrgApacheLuceneStoreSimpleFSLockFactory_INSTANCE_;

@implementation OrgApacheLuceneStoreSimpleFSLockFactory

- (instancetype)init {
  OrgApacheLuceneStoreSimpleFSLockFactory_init(self);
  return self;
}

- (OrgApacheLuceneStoreLock *)obtainFSLockWithOrgApacheLuceneStoreFSDirectory:(OrgApacheLuceneStoreFSDirectory *)dir
                                                                 withNSString:(NSString *)lockName {
  OrgLukhnosPortmobileFilePath *lockDir = [((OrgApacheLuceneStoreFSDirectory *) nil_chk(dir)) getDirectory];
  OrgLukhnosPortmobileFileFiles_createDirectoriesWithOrgLukhnosPortmobileFilePath_(lockDir);
  OrgLukhnosPortmobileFilePath *lockFile = [((OrgLukhnosPortmobileFilePath *) nil_chk(lockDir)) resolveWithNSString:lockName];
  @try {
    OrgLukhnosPortmobileFileFiles_createFileWithOrgLukhnosPortmobileFilePath_(lockFile);
  }
  @catch (OrgLukhnosPortmobileFileFileAlreadyExistsException *e) {
    @throw [new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withJavaLangThrowable_(JreStrcat("$@", @"Lock held elsewhere: ", lockFile), e) autorelease];
  }
  @catch (OrgLukhnosPortmobileFileAccessDeniedException *e) {
    @throw [new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withJavaLangThrowable_(JreStrcat("$@", @"Lock held elsewhere: ", lockFile), e) autorelease];
  }
  @catch (JavaIoIOException *e) {
    @throw [new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_withJavaLangThrowable_(JreStrcat("$@", @"Lock held elsewhere: ", lockFile), e) autorelease];
  }
  OrgLukhnosPortmobileFileAttributeFileTime *creationTime = [((OrgLukhnosPortmobileFileAttributeBasicFileAttributes *) nil_chk(OrgLukhnosPortmobileFileFiles_readAttributesWithOrgLukhnosPortmobileFilePath_withIOSClass_(lockFile, OrgLukhnosPortmobileFileAttributeBasicFileAttributes_class_()))) creationTime];
  return [new_OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock_initWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileAttributeFileTime_(lockFile, creationTime) autorelease];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneStoreSimpleFSLockFactory class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneStoreSimpleFSLockFactory_INSTANCE_, new_OrgApacheLuceneStoreSimpleFSLockFactory_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneStoreSimpleFSLockFactory)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "SimpleFSLockFactory", NULL, 0x2, NULL, NULL },
    { "obtainFSLockWithOrgApacheLuceneStoreFSDirectory:withNSString:", "obtainFSLock", "Lorg.apache.lucene.store.Lock;", 0x4, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "INSTANCE_", NULL, 0x19, "Lorg.apache.lucene.store.SimpleFSLockFactory;", &OrgApacheLuceneStoreSimpleFSLockFactory_INSTANCE_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.store.SimpleFSLockFactory$SimpleFSLock;"};
  static const J2ObjcClassInfo _OrgApacheLuceneStoreSimpleFSLockFactory = { 2, "SimpleFSLockFactory", "org.apache.lucene.store", NULL, 0x11, 2, methods, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneStoreSimpleFSLockFactory;
}

@end

void OrgApacheLuceneStoreSimpleFSLockFactory_init(OrgApacheLuceneStoreSimpleFSLockFactory *self) {
  OrgApacheLuceneStoreFSLockFactory_init(self);
}

OrgApacheLuceneStoreSimpleFSLockFactory *new_OrgApacheLuceneStoreSimpleFSLockFactory_init() {
  OrgApacheLuceneStoreSimpleFSLockFactory *self = [OrgApacheLuceneStoreSimpleFSLockFactory alloc];
  OrgApacheLuceneStoreSimpleFSLockFactory_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreSimpleFSLockFactory)

@implementation OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock

- (instancetype)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)path
       withOrgLukhnosPortmobileFileAttributeFileTime:(OrgLukhnosPortmobileFileAttributeFileTime *)creationTime {
  OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock_initWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileAttributeFileTime_(self, path, creationTime);
  return self;
}

- (void)ensureValid {
  if (JreLoadVolatileBoolean(&closed_)) {
    @throw [new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(JreStrcat("$@", @"Lock instance already released: ", self)) autorelease];
  }
  OrgLukhnosPortmobileFileAttributeFileTime *ctime = [((OrgLukhnosPortmobileFileAttributeBasicFileAttributes *) nil_chk(OrgLukhnosPortmobileFileFiles_readAttributesWithOrgLukhnosPortmobileFilePath_withIOSClass_(path_, OrgLukhnosPortmobileFileAttributeBasicFileAttributes_class_()))) creationTime];
  if (![((OrgLukhnosPortmobileFileAttributeFileTime *) nil_chk(creationTime_)) isEqual:ctime]) {
    @throw [new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(JreStrcat("$@$@C", @"Underlying file changed by an external force at ", creationTime_, @", (lock=", self, ')')) autorelease];
  }
}

- (void)close {
  @synchronized(self) {
    if (JreLoadVolatileBoolean(&closed_)) {
      return;
    }
    @try {
      @try {
        [self ensureValid];
      }
      @catch (JavaLangThrowable *exc) {
        @throw [new_OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_withJavaLangThrowable_(@"Lock file cannot be safely removed. Manual intervention is recommended.", exc) autorelease];
      }
      @try {
        OrgLukhnosPortmobileFileFiles_delete__WithOrgLukhnosPortmobileFilePath_(path_);
      }
      @catch (JavaLangThrowable *exc) {
        @throw [new_OrgApacheLuceneStoreLockReleaseFailedException_initWithNSString_withJavaLangThrowable_(@"Unable to remove lock file. Manual intervention is recommended", exc) autorelease];
      }
    }
    @finally {
      JreAssignVolatileBoolean(&closed_, YES);
    }
  }
}

- (NSString *)description {
  return JreStrcat("$@$@C", @"SimpleFSLock(path=", path_, @",ctime=", creationTime_, ')');
}

- (void)dealloc {
  RELEASE_(path_);
  RELEASE_(creationTime_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgLukhnosPortmobileFilePath:withOrgLukhnosPortmobileFileAttributeFileTime:", "SimpleFSLock", NULL, 0x0, "Ljava.io.IOException;", NULL },
    { "ensureValid", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x21, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "path_", NULL, 0x12, "Lorg.lukhnos.portmobile.file.Path;", NULL, NULL, .constantValue.asLong = 0 },
    { "creationTime_", NULL, 0x12, "Lorg.lukhnos.portmobile.file.attribute.FileTime;", NULL, NULL, .constantValue.asLong = 0 },
    { "closed_", NULL, 0x42, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock = { 2, "SimpleFSLock", "org.apache.lucene.store", "SimpleFSLockFactory", 0x18, 4, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock;
}

@end

void OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock_initWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileAttributeFileTime_(OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock *self, OrgLukhnosPortmobileFilePath *path, OrgLukhnosPortmobileFileAttributeFileTime *creationTime) {
  OrgApacheLuceneStoreLock_init(self);
  JreStrongAssign(&self->path_, path);
  JreStrongAssign(&self->creationTime_, creationTime);
}

OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock *new_OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock_initWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileAttributeFileTime_(OrgLukhnosPortmobileFilePath *path, OrgLukhnosPortmobileFileAttributeFileTime *creationTime) {
  OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock *self = [OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock alloc];
  OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock_initWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileAttributeFileTime_(self, path, creationTime);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreSimpleFSLockFactory_SimpleFSLock)
