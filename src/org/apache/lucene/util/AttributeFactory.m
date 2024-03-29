//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/AttributeFactory.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/AssertionError.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/ClassNotFoundException.h"
#include "java/lang/IllegalAccessException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/ReflectiveOperationException.h"
#include "java/lang/Throwable.h"
#include "org/apache/lucene/util/Attribute.h"
#include "org/apache/lucene/util/AttributeFactory.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/lukhnos/portmobile/invoke/MethodHandle.h"
#include "org/lukhnos/portmobile/invoke/MethodHandles.h"
#include "org/lukhnos/portmobile/invoke/MethodType.h"
#include "org/lukhnos/portmobile/lang/ClassValue.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/AttributeFactory must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneUtilAttributeFactory ()

+ (void)rethrow0WithJavaLangThrowable:(JavaLangThrowable *)t;

@end

inline OrgLukhnosPortmobileInvokeMethodHandles_Lookup *OrgApacheLuceneUtilAttributeFactory_get_lookup(void);
static OrgLukhnosPortmobileInvokeMethodHandles_Lookup *OrgApacheLuceneUtilAttributeFactory_lookup;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAttributeFactory, lookup, OrgLukhnosPortmobileInvokeMethodHandles_Lookup *)

inline OrgLukhnosPortmobileInvokeMethodType *OrgApacheLuceneUtilAttributeFactory_get_NO_ARG_CTOR(void);
static OrgLukhnosPortmobileInvokeMethodType *OrgApacheLuceneUtilAttributeFactory_NO_ARG_CTOR;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAttributeFactory, NO_ARG_CTOR, OrgLukhnosPortmobileInvokeMethodType *)

inline OrgLukhnosPortmobileInvokeMethodType *OrgApacheLuceneUtilAttributeFactory_get_NO_ARG_RETURNING_ATTRIBUTEIMPL(void);
static OrgLukhnosPortmobileInvokeMethodType *OrgApacheLuceneUtilAttributeFactory_NO_ARG_RETURNING_ATTRIBUTEIMPL;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilAttributeFactory, NO_ARG_RETURNING_ATTRIBUTEIMPL, OrgLukhnosPortmobileInvokeMethodType *)

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeFactory_rethrow0WithJavaLangThrowable_(JavaLangThrowable *t);

@interface OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory : OrgApacheLuceneUtilAttributeFactory {
 @public
  OrgLukhnosPortmobileLangClassValue *constructors_;
}

- (instancetype)init;

- (OrgApacheLuceneUtilAttributeImpl *)createAttributeInstanceWithIOSClass:(IOSClass *)attClass;

- (IOSClass *)findImplClassWithIOSClass:(IOSClass *)attClass;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory, constructors_, OrgLukhnosPortmobileLangClassValue *)

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *self);

__attribute__((unused)) static OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *new_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *create_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init(void);

__attribute__((unused)) static IOSClass *OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_findImplClassWithIOSClass_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *self, IOSClass *attClass);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory)

@interface OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1 : OrgLukhnosPortmobileLangClassValue {
 @public
  OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *this$0_;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory:(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *)outer$;

- (OrgLukhnosPortmobileInvokeMethodHandle *)computeValueWithIOSClass:(IOSClass *)attClass;

- (OrgLukhnosPortmobileInvokeMethodHandle *)getWithIOSClass:(IOSClass *)arg0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1)

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1 *self, OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *outer$);

__attribute__((unused)) static OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1 *new_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *outer$) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1 *create_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *outer$);

@interface OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory () {
 @public
  OrgApacheLuceneUtilAttributeFactory *delegate_;
  IOSClass *clazz_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory, delegate_, OrgApacheLuceneUtilAttributeFactory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory, clazz_, IOSClass *)

@interface OrgApacheLuceneUtilAttributeFactory_1 : OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory {
 @public
  OrgLukhnosPortmobileInvokeMethodHandle *val$constr_;
}

- (instancetype)initWithOrgLukhnosPortmobileInvokeMethodHandle:(OrgLukhnosPortmobileInvokeMethodHandle *)capture$0
                       withOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)delegate
                                                  withIOSClass:(IOSClass *)clazz;

- (OrgApacheLuceneUtilAttributeImpl *)createInstance;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilAttributeFactory_1)

__attribute__((unused)) static void OrgApacheLuceneUtilAttributeFactory_1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgApacheLuceneUtilAttributeFactory_1 *self, OrgLukhnosPortmobileInvokeMethodHandle *capture$0, OrgApacheLuceneUtilAttributeFactory *delegate, IOSClass *clazz);

__attribute__((unused)) static OrgApacheLuceneUtilAttributeFactory_1 *new_OrgApacheLuceneUtilAttributeFactory_1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgLukhnosPortmobileInvokeMethodHandle *capture$0, OrgApacheLuceneUtilAttributeFactory *delegate, IOSClass *clazz) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilAttributeFactory_1 *create_OrgApacheLuceneUtilAttributeFactory_1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgLukhnosPortmobileInvokeMethodHandle *capture$0, OrgApacheLuceneUtilAttributeFactory *delegate, IOSClass *clazz);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilAttributeFactory)

OrgApacheLuceneUtilAttributeFactory *OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY;

@implementation OrgApacheLuceneUtilAttributeFactory

+ (OrgApacheLuceneUtilAttributeFactory *)DEFAULT_ATTRIBUTE_FACTORY {
  return OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAttributeFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneUtilAttributeImpl *)createAttributeInstanceWithIOSClass:(IOSClass *)attClass {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (OrgLukhnosPortmobileInvokeMethodHandle *)findAttributeImplCtorWithIOSClass:(IOSClass *)clazz {
  return OrgApacheLuceneUtilAttributeFactory_findAttributeImplCtorWithIOSClass_(clazz);
}

+ (OrgApacheLuceneUtilAttributeFactory *)getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)delegate
                                                                                           withIOSClass:(IOSClass *)clazz {
  return OrgApacheLuceneUtilAttributeFactory_getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(delegate, clazz);
}

+ (void)rethrowWithJavaLangThrowable:(JavaLangThrowable *)t {
  OrgApacheLuceneUtilAttributeFactory_rethrowWithJavaLangThrowable_(t);
}

+ (void)rethrow0WithJavaLangThrowable:(JavaLangThrowable *)t {
  OrgApacheLuceneUtilAttributeFactory_rethrow0WithJavaLangThrowable_(t);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAttributeImpl;", 0x401, 0, 1, -1, 2, -1, -1 },
    { NULL, "LOrgLukhnosPortmobileInvokeMethodHandle;", 0x18, 3, 1, -1, 4, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAttributeFactory;", 0x9, 5, 6, -1, 7, -1, -1 },
    { NULL, "V", 0x8, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 10, 9, 9, 11, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(createAttributeInstanceWithIOSClass:);
  methods[2].selector = @selector(findAttributeImplCtorWithIOSClass:);
  methods[3].selector = @selector(getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory:withIOSClass:);
  methods[4].selector = @selector(rethrowWithJavaLangThrowable:);
  methods[5].selector = @selector(rethrow0WithJavaLangThrowable:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "lookup", "LOrgLukhnosPortmobileInvokeMethodHandles_Lookup;", .constantValue.asLong = 0, 0x1a, -1, 12, -1, -1 },
    { "NO_ARG_CTOR", "LOrgLukhnosPortmobileInvokeMethodType;", .constantValue.asLong = 0, 0x1a, -1, 13, -1, -1 },
    { "NO_ARG_RETURNING_ATTRIBUTEIMPL", "LOrgLukhnosPortmobileInvokeMethodType;", .constantValue.asLong = 0, 0x1a, -1, 14, -1, -1 },
    { "DEFAULT_ATTRIBUTE_FACTORY", "LOrgApacheLuceneUtilAttributeFactory;", .constantValue.asLong = 0, 0x19, -1, 15, -1, -1 },
  };
  static const void *ptrTable[] = { "createAttributeInstance", "LIOSClass;", "(Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;)Lorg/apache/lucene/util/AttributeImpl;", "findAttributeImplCtor", "(Ljava/lang/Class<+Lorg/apache/lucene/util/AttributeImpl;>;)Lorg/lukhnos/portmobile/invoke/MethodHandle;", "getStaticImplementation", "LOrgApacheLuceneUtilAttributeFactory;LIOSClass;", "<A:Lorg/apache/lucene/util/AttributeImpl;>(Lorg/apache/lucene/util/AttributeFactory;Ljava/lang/Class<TA;>;)Lorg/apache/lucene/util/AttributeFactory;", "rethrow", "LJavaLangThrowable;", "rethrow0", "<T:Ljava/lang/Throwable;>(Ljava/lang/Throwable;)V^TT;", &OrgApacheLuceneUtilAttributeFactory_lookup, &OrgApacheLuceneUtilAttributeFactory_NO_ARG_CTOR, &OrgApacheLuceneUtilAttributeFactory_NO_ARG_RETURNING_ATTRIBUTEIMPL, &OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY, "LOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory;LOrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeFactory = { "AttributeFactory", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x401, 6, 4, -1, 16, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAttributeFactory;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilAttributeFactory class]) {
    JreStrongAssign(&OrgApacheLuceneUtilAttributeFactory_lookup, OrgLukhnosPortmobileInvokeMethodHandles_publicLookup());
    JreStrongAssign(&OrgApacheLuceneUtilAttributeFactory_NO_ARG_CTOR, OrgLukhnosPortmobileInvokeMethodType_methodTypeWithIOSClass_([IOSClass voidClass]));
    JreStrongAssign(&OrgApacheLuceneUtilAttributeFactory_NO_ARG_RETURNING_ATTRIBUTEIMPL, OrgLukhnosPortmobileInvokeMethodType_methodTypeWithIOSClass_(OrgApacheLuceneUtilAttributeImpl_class_()));
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilAttributeFactory_DEFAULT_ATTRIBUTE_FACTORY, new_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilAttributeFactory)
  }
}

@end

void OrgApacheLuceneUtilAttributeFactory_init(OrgApacheLuceneUtilAttributeFactory *self) {
  NSObject_init(self);
}

OrgLukhnosPortmobileInvokeMethodHandle *OrgApacheLuceneUtilAttributeFactory_findAttributeImplCtorWithIOSClass_(IOSClass *clazz) {
  OrgApacheLuceneUtilAttributeFactory_initialize();
  @try {
    return [((OrgLukhnosPortmobileInvokeMethodHandle *) nil_chk([((OrgLukhnosPortmobileInvokeMethodHandles_Lookup *) nil_chk(OrgApacheLuceneUtilAttributeFactory_lookup)) findConstructorWithIOSClass:clazz withOrgLukhnosPortmobileInvokeMethodType:OrgApacheLuceneUtilAttributeFactory_NO_ARG_CTOR])) asTypeWithOrgLukhnosPortmobileInvokeMethodType:OrgApacheLuceneUtilAttributeFactory_NO_ARG_RETURNING_ATTRIBUTEIMPL];
  }
  @catch (JavaLangNoSuchMethodException *e) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$", @"Cannot lookup accessible no-arg constructor for: ", [((IOSClass *) nil_chk(clazz)) getName]), e);
  }
  @catch (JavaLangIllegalAccessException *e) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$", @"Cannot lookup accessible no-arg constructor for: ", [((IOSClass *) nil_chk(clazz)) getName]), e);
  }
}

OrgApacheLuceneUtilAttributeFactory *OrgApacheLuceneUtilAttributeFactory_getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgApacheLuceneUtilAttributeFactory *delegate, IOSClass *clazz) {
  OrgApacheLuceneUtilAttributeFactory_initialize();
  OrgLukhnosPortmobileInvokeMethodHandle *constr = OrgApacheLuceneUtilAttributeFactory_findAttributeImplCtorWithIOSClass_(clazz);
  return create_OrgApacheLuceneUtilAttributeFactory_1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(constr, delegate, clazz);
}

void OrgApacheLuceneUtilAttributeFactory_rethrowWithJavaLangThrowable_(JavaLangThrowable *t) {
  OrgApacheLuceneUtilAttributeFactory_initialize();
  OrgApacheLuceneUtilAttributeFactory_rethrow0WithJavaLangThrowable_(t);
}

void OrgApacheLuceneUtilAttributeFactory_rethrow0WithJavaLangThrowable_(JavaLangThrowable *t) {
  OrgApacheLuceneUtilAttributeFactory_initialize();
  @throw nil_chk(t);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeFactory)

@implementation OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneUtilAttributeImpl *)createAttributeInstanceWithIOSClass:(IOSClass *)attClass {
  @try {
    return (OrgApacheLuceneUtilAttributeImpl *) cast_chk([((OrgLukhnosPortmobileInvokeMethodHandle *) nil_chk([((OrgLukhnosPortmobileLangClassValue *) nil_chk(constructors_)) getWithIOSClass:attClass])) invokeExact], [OrgApacheLuceneUtilAttributeImpl class]);
  }
  @catch (JavaLangThrowable *t) {
    OrgApacheLuceneUtilAttributeFactory_rethrowWithJavaLangThrowable_(t);
    @throw create_JavaLangAssertionError_init();
  }
}

- (IOSClass *)findImplClassWithIOSClass:(IOSClass *)attClass {
  return OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_findImplClassWithIOSClass_(self, attClass);
}

- (void)dealloc {
  RELEASE_(constructors_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAttributeImpl;", 0x1, 0, 1, -1, 2, -1, -1 },
    { NULL, "LIOSClass;", 0x2, 3, 1, -1, 4, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(createAttributeInstanceWithIOSClass:);
  methods[2].selector = @selector(findImplClassWithIOSClass:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "constructors_", "LOrgLukhnosPortmobileLangClassValue;", .constantValue.asLong = 0, 0x12, -1, -1, 5, -1 },
  };
  static const void *ptrTable[] = { "createAttributeInstance", "LIOSClass;", "(Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;)Lorg/apache/lucene/util/AttributeImpl;", "findImplClass", "(Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;)Ljava/lang/Class<+Lorg/apache/lucene/util/AttributeImpl;>;", "Lorg/lukhnos/portmobile/lang/ClassValue<Lorg/lukhnos/portmobile/invoke/MethodHandle;>;", "LOrgApacheLuceneUtilAttributeFactory;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory = { "DefaultAttributeFactory", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x1a, 3, 1, 6, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory;
}

@end

void OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *self) {
  OrgApacheLuceneUtilAttributeFactory_init(self);
  JreStrongAssignAndConsume(&self->constructors_, new_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(self));
}

OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *new_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory, init)
}

OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *create_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory, init)
}

IOSClass *OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_findImplClassWithIOSClass_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *self, IOSClass *attClass) {
  @try {
    return [((IOSClass *) nil_chk(IOSClass_forName_initialize_classLoader_(JreStrcat("$$", [((IOSClass *) nil_chk(attClass)) getName], @"Impl"), true, [attClass getClassLoader]))) asSubclass:OrgApacheLuceneUtilAttributeImpl_class_()];
  }
  @catch (JavaLangClassNotFoundException *cnfe) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"Cannot find implementing class for: ", [attClass getName]));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory)

@implementation OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory:(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *)outer$ {
  OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(self, outer$);
  return self;
}

- (OrgLukhnosPortmobileInvokeMethodHandle *)computeValueWithIOSClass:(IOSClass *)attClass {
  return OrgApacheLuceneUtilAttributeFactory_findAttributeImplCtorWithIOSClass_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_findImplClassWithIOSClass_(this$0_, [((IOSClass *) nil_chk(attClass)) asSubclass:OrgApacheLuceneUtilAttribute_class_()]));
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgLukhnosPortmobileInvokeMethodHandle;", 0x4, 1, 2, -1, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory:);
  methods[1].selector = @selector(computeValueWithIOSClass:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory;", "computeValue", "LIOSClass;", "(Ljava/lang/Class<*>;)Lorg/lukhnos/portmobile/invoke/MethodHandle;", "Lorg/lukhnos/portmobile/lang/ClassValue<Lorg/lukhnos/portmobile/invoke/MethodHandle;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1 = { "", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x8010, 2, 1, 0, -1, -1, 4, -1 };
  return &_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1;
}

@end

void OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1 *self, OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *outer$) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgLukhnosPortmobileLangClassValue_init(self);
}

OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1 *new_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *outer$) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1, initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_, outer$)
}

OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1 *create_OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1_initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory *outer$) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_1, initWithOrgApacheLuceneUtilAttributeFactory_DefaultAttributeFactory_, outer$)
}

@implementation OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)delegate
                                               withIOSClass:(IOSClass *)clazz {
  OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory_initWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(self, delegate, clazz);
  return self;
}

- (OrgApacheLuceneUtilAttributeImpl *)createAttributeInstanceWithIOSClass:(IOSClass *)attClass {
  return [((IOSClass *) nil_chk(attClass)) isAssignableFrom:clazz_] ? [self createInstance] : [((OrgApacheLuceneUtilAttributeFactory *) nil_chk(delegate_)) createAttributeInstanceWithIOSClass:attClass];
}

- (OrgApacheLuceneUtilAttributeImpl *)createInstance {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isEqual:(id)other {
  if (JreObjectEqualsEquals(self, other)) return true;
  if (other == nil || !JreObjectEqualsEquals([other java_getClass], [self java_getClass])) return false;
  OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory *af = (OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory *) cast_chk(other, [OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory class]);
  return [((OrgApacheLuceneUtilAttributeFactory *) nil_chk(self->delegate_)) isEqual:af->delegate_] && JreObjectEqualsEquals(self->clazz_, af->clazz_);
}

- (NSUInteger)hash {
  return 31 * ((jint) [((OrgApacheLuceneUtilAttributeFactory *) nil_chk(delegate_)) hash]) + ((jint) [((IOSClass *) nil_chk(clazz_)) hash]);
}

- (void)dealloc {
  RELEASE_(delegate_);
  RELEASE_(clazz_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAttributeImpl;", 0x11, 2, 3, -1, 4, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAttributeImpl;", 0x404, -1, -1, -1, 5, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilAttributeFactory:withIOSClass:);
  methods[1].selector = @selector(createAttributeInstanceWithIOSClass:);
  methods[2].selector = @selector(createInstance);
  methods[3].selector = @selector(isEqual:);
  methods[4].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "delegate_", "LOrgApacheLuceneUtilAttributeFactory;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "clazz_", "LIOSClass;", .constantValue.asLong = 0, 0x12, -1, -1, 9, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilAttributeFactory;LIOSClass;", "(Lorg/apache/lucene/util/AttributeFactory;Ljava/lang/Class<TA;>;)V", "createAttributeInstance", "LIOSClass;", "(Ljava/lang/Class<+Lorg/apache/lucene/util/Attribute;>;)Lorg/apache/lucene/util/AttributeImpl;", "()TA;", "equals", "LNSObject;", "hashCode", "Ljava/lang/Class<TA;>;", "LOrgApacheLuceneUtilAttributeFactory;", "<A:Lorg/apache/lucene/util/AttributeImpl;>Lorg/apache/lucene/util/AttributeFactory;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory = { "StaticImplementationAttributeFactory", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x409, 5, 2, 10, -1, -1, 11, -1 };
  return &_OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory;
}

@end

void OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory_initWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory *self, OrgApacheLuceneUtilAttributeFactory *delegate, IOSClass *clazz) {
  OrgApacheLuceneUtilAttributeFactory_init(self);
  JreStrongAssign(&self->delegate_, delegate);
  JreStrongAssign(&self->clazz_, clazz);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory)

@implementation OrgApacheLuceneUtilAttributeFactory_1

- (instancetype)initWithOrgLukhnosPortmobileInvokeMethodHandle:(OrgLukhnosPortmobileInvokeMethodHandle *)capture$0
                       withOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)delegate
                                                  withIOSClass:(IOSClass *)clazz {
  OrgApacheLuceneUtilAttributeFactory_1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(self, capture$0, delegate, clazz);
  return self;
}

- (OrgApacheLuceneUtilAttributeImpl *)createInstance {
  @try {
    return JreRetainedLocalValue((OrgApacheLuceneUtilAttributeImpl *) cast_chk([((OrgLukhnosPortmobileInvokeMethodHandle *) nil_chk(val$constr_)) invokeExact], [OrgApacheLuceneUtilAttributeImpl class]));
  }
  @catch (JavaLangThrowable *t) {
    OrgApacheLuceneUtilAttributeFactory_rethrowWithJavaLangThrowable_(t);
    @throw create_JavaLangAssertionError_init();
  }
}

- (void)dealloc {
  RELEASE_(val$constr_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAttributeImpl;", 0x4, -1, -1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgLukhnosPortmobileInvokeMethodHandle:withOrgApacheLuceneUtilAttributeFactory:withIOSClass:);
  methods[1].selector = @selector(createInstance);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$constr_", "LOrgLukhnosPortmobileInvokeMethodHandle;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgLukhnosPortmobileInvokeMethodHandle;LOrgApacheLuceneUtilAttributeFactory;LIOSClass;", "(Lorg/apache/lucene/util/AttributeFactory;Ljava/lang/Class<TA;>;)V", "()TA;", "LOrgApacheLuceneUtilAttributeFactory;", "getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory:withIOSClass:", "Lorg/apache/lucene/util/AttributeFactory$StaticImplementationAttributeFactory<TA;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilAttributeFactory_1 = { "", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x8018, 2, 1, 3, -1, 4, 5, -1 };
  return &_OrgApacheLuceneUtilAttributeFactory_1;
}

@end

void OrgApacheLuceneUtilAttributeFactory_1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgApacheLuceneUtilAttributeFactory_1 *self, OrgLukhnosPortmobileInvokeMethodHandle *capture$0, OrgApacheLuceneUtilAttributeFactory *delegate, IOSClass *clazz) {
  JreStrongAssign(&self->val$constr_, capture$0);
  OrgApacheLuceneUtilAttributeFactory_StaticImplementationAttributeFactory_initWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(self, delegate, clazz);
}

OrgApacheLuceneUtilAttributeFactory_1 *new_OrgApacheLuceneUtilAttributeFactory_1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgLukhnosPortmobileInvokeMethodHandle *capture$0, OrgApacheLuceneUtilAttributeFactory *delegate, IOSClass *clazz) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilAttributeFactory_1, initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_, capture$0, delegate, clazz)
}

OrgApacheLuceneUtilAttributeFactory_1 *create_OrgApacheLuceneUtilAttributeFactory_1_initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_(OrgLukhnosPortmobileInvokeMethodHandle *capture$0, OrgApacheLuceneUtilAttributeFactory *delegate, IOSClass *clazz) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilAttributeFactory_1, initWithOrgLukhnosPortmobileInvokeMethodHandle_withOrgApacheLuceneUtilAttributeFactory_withIOSClass_, capture$0, delegate, clazz)
}
