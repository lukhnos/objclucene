//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/Among.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/reflect/Method.h"
#include "org/tartarus/snowball/Among.h"
#include "org/tartarus/snowball/SnowballProgram.h"

static IOSObjectArray *OrgTartarusSnowballAmong_EMPTY_PARAMS_;
J2OBJC_STATIC_FIELD_GETTER(OrgTartarusSnowballAmong, EMPTY_PARAMS_, IOSObjectArray *)

J2OBJC_INITIALIZED_DEFN(OrgTartarusSnowballAmong)

@implementation OrgTartarusSnowballAmong

- (instancetype)initWithNSString:(NSString *)s
                         withInt:(jint)substring_i
                         withInt:(jint)result
                    withNSString:(NSString *)methodname
withOrgTartarusSnowballSnowballProgram:(OrgTartarusSnowballSnowballProgram *)methodobject {
  OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(self, s, substring_i, result, methodname, methodobject);
  return self;
}

- (void)dealloc {
  RELEASE_(s_);
  RELEASE_(method_);
  RELEASE_(methodobject_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgTartarusSnowballAmong class]) {
    JreStrongAssignAndConsume(&OrgTartarusSnowballAmong_EMPTY_PARAMS_, [IOSObjectArray newArrayWithLength:0 type:IOSClass_class_()]);
    J2OBJC_SET_INITIALIZED(OrgTartarusSnowballAmong)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:withInt:withNSString:withOrgTartarusSnowballSnowballProgram:", "Among", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "EMPTY_PARAMS_", NULL, 0x1a, "[Ljava.lang.Class;", &OrgTartarusSnowballAmong_EMPTY_PARAMS_, "[Ljava/lang/Class<*>;", .constantValue.asLong = 0 },
    { "s_size_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "s_", NULL, 0x11, "[C", NULL, NULL, .constantValue.asLong = 0 },
    { "substring_i_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "result_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "method_", NULL, 0x11, "Ljava.lang.reflect.Method;", NULL, NULL, .constantValue.asLong = 0 },
    { "methodobject_", NULL, 0x11, "Lorg.tartarus.snowball.SnowballProgram;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgTartarusSnowballAmong = { 2, "Among", "org.tartarus.snowball", NULL, 0x1, 1, methods, 7, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgTartarusSnowballAmong;
}

@end

void OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(OrgTartarusSnowballAmong *self, NSString *s, jint substring_i, jint result, NSString *methodname, OrgTartarusSnowballSnowballProgram *methodobject) {
  NSObject_init(self);
  self->s_size_ = ((jint) [((NSString *) nil_chk(s)) length]);
  JreStrongAssign(&self->s_, [s toCharArray]);
  self->substring_i_ = substring_i;
  self->result_ = result;
  JreStrongAssign(&self->methodobject_, methodobject);
  if (((jint) [((NSString *) nil_chk(methodname)) length]) == 0) {
    JreStrongAssign(&self->method_, nil);
  }
  else {
    @try {
      JreStrongAssign(&self->method_, [[((OrgTartarusSnowballSnowballProgram *) nil_chk(methodobject)) getClass] getDeclaredMethod:methodname parameterTypes:OrgTartarusSnowballAmong_EMPTY_PARAMS_]);
    }
    @catch (JavaLangNoSuchMethodException *e) {
      @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(e) autorelease];
    }
  }
}

OrgTartarusSnowballAmong *new_OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(NSString *s, jint substring_i, jint result, NSString *methodname, OrgTartarusSnowballSnowballProgram *methodobject) {
  OrgTartarusSnowballAmong *self = [OrgTartarusSnowballAmong alloc];
  OrgTartarusSnowballAmong_initWithNSString_withInt_withInt_withNSString_withOrgTartarusSnowballSnowballProgram_(self, s, substring_i, result, methodname, methodobject);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgTartarusSnowballAmong)
