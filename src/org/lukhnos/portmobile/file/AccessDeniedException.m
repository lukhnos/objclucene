//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/file/AccessDeniedException.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/lukhnos/portmobile/file/AccessDeniedException.h"

@implementation OrgLukhnosPortmobileFileAccessDeniedException

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgLukhnosPortmobileFileAccessDeniedException_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "AccessDeniedException", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgLukhnosPortmobileFileAccessDeniedException = { 2, "AccessDeniedException", "org.lukhnos.portmobile.file", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgLukhnosPortmobileFileAccessDeniedException;
}

@end

void OrgLukhnosPortmobileFileAccessDeniedException_init(OrgLukhnosPortmobileFileAccessDeniedException *self) {
  JavaIoIOException_init(self);
}

OrgLukhnosPortmobileFileAccessDeniedException *new_OrgLukhnosPortmobileFileAccessDeniedException_init() {
  J2OBJC_NEW_IMPL(OrgLukhnosPortmobileFileAccessDeniedException, init)
}

OrgLukhnosPortmobileFileAccessDeniedException *create_OrgLukhnosPortmobileFileAccessDeniedException_init() {
  J2OBJC_CREATE_IMPL(OrgLukhnosPortmobileFileAccessDeniedException, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosPortmobileFileAccessDeniedException)
