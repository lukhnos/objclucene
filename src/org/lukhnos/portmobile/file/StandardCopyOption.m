//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/lukhnos/portmobile/file/StandardCopyOption.java
//

#include "J2ObjC_source.h"
#include "org/lukhnos/portmobile/file/StandardCopyOption.h"

J2OBJC_INITIALIZED_DEFN(OrgLukhnosPortmobileFileStandardCopyOption)

OrgLukhnosPortmobileFileStandardCopyOption *OrgLukhnosPortmobileFileStandardCopyOption_ATOMIC_MOVE_;

@implementation OrgLukhnosPortmobileFileStandardCopyOption

- (instancetype)init {
  OrgLukhnosPortmobileFileStandardCopyOption_init(self);
  return self;
}

+ (void)initialize {
  if (self == [OrgLukhnosPortmobileFileStandardCopyOption class]) {
    JreStrongAssignAndConsume(&OrgLukhnosPortmobileFileStandardCopyOption_ATOMIC_MOVE_, new_OrgLukhnosPortmobileFileStandardCopyOption_init());
    J2OBJC_SET_INITIALIZED(OrgLukhnosPortmobileFileStandardCopyOption)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "ATOMIC_MOVE_", NULL, 0x19, "Lorg.lukhnos.portmobile.file.StandardCopyOption;", &OrgLukhnosPortmobileFileStandardCopyOption_ATOMIC_MOVE_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgLukhnosPortmobileFileStandardCopyOption = { 2, "StandardCopyOption", "org.lukhnos.portmobile.file", NULL, 0x1, 1, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgLukhnosPortmobileFileStandardCopyOption;
}

@end

void OrgLukhnosPortmobileFileStandardCopyOption_init(OrgLukhnosPortmobileFileStandardCopyOption *self) {
  NSObject_init(self);
}

OrgLukhnosPortmobileFileStandardCopyOption *new_OrgLukhnosPortmobileFileStandardCopyOption_init() {
  OrgLukhnosPortmobileFileStandardCopyOption *self = [OrgLukhnosPortmobileFileStandardCopyOption alloc];
  OrgLukhnosPortmobileFileStandardCopyOption_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosPortmobileFileStandardCopyOption)
