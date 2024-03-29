//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/file/Path.java
//

#include "J2ObjC_source.h"
#include "java/io/File.h"
#include "org/lukhnos/portmobile/file/Path.h"

#if __has_feature(objc_arc)
#error "org/lukhnos/portmobile/file/Path must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgLukhnosPortmobileFilePath

- (instancetype)initWithNSString:(NSString *)path {
  OrgLukhnosPortmobileFilePath_initWithNSString_(self, path);
  return self;
}

- (instancetype)initWithJavaIoFile:(JavaIoFile *)file {
  OrgLukhnosPortmobileFilePath_initWithJavaIoFile_(self, file);
  return self;
}

- (JavaIoFile *)toFile {
  return file_;
}

- (OrgLukhnosPortmobileFilePath *)toRealPath {
  return self;
}

- (OrgLukhnosPortmobileFilePath *)getFileName {
  return create_OrgLukhnosPortmobileFilePath_initWithNSString_([((JavaIoFile *) nil_chk(file_)) getName]);
}

- (NSString *)description {
  return [((JavaIoFile *) nil_chk(file_)) description];
}

- (OrgLukhnosPortmobileFilePath *)resolveWithNSString:(NSString *)other {
  if ([((NSString *) nil_chk(other)) java_isEmpty]) {
    return self;
  }
  JavaIoFile *otherFile = create_JavaIoFile_initWithNSString_(other);
  if ([otherFile isAbsolute]) {
    return create_OrgLukhnosPortmobileFilePath_initWithJavaIoFile_(otherFile);
  }
  return create_OrgLukhnosPortmobileFilePath_initWithJavaIoFile_(create_JavaIoFile_initWithJavaIoFile_withNSString_(self->file_, other));
}

- (jboolean)isAbsolute {
  return [((JavaIoFile *) nil_chk(file_)) isAbsolute];
}

- (OrgLukhnosPortmobileFilePath *)toAbsolutePath {
  return create_OrgLukhnosPortmobileFilePath_initWithJavaIoFile_([((JavaIoFile *) nil_chk(file_)) getAbsoluteFile]);
}

- (OrgLukhnosPortmobileFilePath *)getParent {
  return create_OrgLukhnosPortmobileFilePath_initWithNSString_([((JavaIoFile *) nil_chk(file_)) getParent]);
}

- (void)dealloc {
  RELEASE_(file_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 1, -1, -1, -1, -1 },
    { NULL, "LJavaIoFile;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgLukhnosPortmobileFilePath;", 0x1, -1, -1, 2, -1, -1, -1 },
    { NULL, "LOrgLukhnosPortmobileFilePath;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 3, -1, -1, -1, -1, -1 },
    { NULL, "LOrgLukhnosPortmobileFilePath;", 0x1, 4, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgLukhnosPortmobileFilePath;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgLukhnosPortmobileFilePath;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(initWithJavaIoFile:);
  methods[2].selector = @selector(toFile);
  methods[3].selector = @selector(toRealPath);
  methods[4].selector = @selector(getFileName);
  methods[5].selector = @selector(description);
  methods[6].selector = @selector(resolveWithNSString:);
  methods[7].selector = @selector(isAbsolute);
  methods[8].selector = @selector(toAbsolutePath);
  methods[9].selector = @selector(getParent);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "file_", "LJavaIoFile;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "LJavaIoFile;", "LJavaIoIOException;", "toString", "resolve" };
  static const J2ObjcClassInfo _OrgLukhnosPortmobileFilePath = { "Path", "org.lukhnos.portmobile.file", ptrTable, methods, fields, 7, 0x1, 10, 1, -1, -1, -1, -1, -1 };
  return &_OrgLukhnosPortmobileFilePath;
}

@end

void OrgLukhnosPortmobileFilePath_initWithNSString_(OrgLukhnosPortmobileFilePath *self, NSString *path) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->file_, new_JavaIoFile_initWithNSString_(path));
}

OrgLukhnosPortmobileFilePath *new_OrgLukhnosPortmobileFilePath_initWithNSString_(NSString *path) {
  J2OBJC_NEW_IMPL(OrgLukhnosPortmobileFilePath, initWithNSString_, path)
}

OrgLukhnosPortmobileFilePath *create_OrgLukhnosPortmobileFilePath_initWithNSString_(NSString *path) {
  J2OBJC_CREATE_IMPL(OrgLukhnosPortmobileFilePath, initWithNSString_, path)
}

void OrgLukhnosPortmobileFilePath_initWithJavaIoFile_(OrgLukhnosPortmobileFilePath *self, JavaIoFile *file) {
  NSObject_init(self);
  JreStrongAssign(&self->file_, file);
}

OrgLukhnosPortmobileFilePath *new_OrgLukhnosPortmobileFilePath_initWithJavaIoFile_(JavaIoFile *file) {
  J2OBJC_NEW_IMPL(OrgLukhnosPortmobileFilePath, initWithJavaIoFile_, file)
}

OrgLukhnosPortmobileFilePath *create_OrgLukhnosPortmobileFilePath_initWithJavaIoFile_(JavaIoFile *file) {
  J2OBJC_CREATE_IMPL(OrgLukhnosPortmobileFilePath, initWithJavaIoFile_, file)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosPortmobileFilePath)
