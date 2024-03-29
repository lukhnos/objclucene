//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/RamUsageEstimator.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/Exception.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/reflect/Array.h"
#include "java/lang/reflect/Field.h"
#include "java/lang/reflect/Method.h"
#include "java/lang/reflect/Modifier.h"
#include "java/text/DecimalFormat.h"
#include "java/text/DecimalFormatSymbols.h"
#include "java/util/IdentityHashMap.h"
#include "java/util/Locale.h"
#include "java/util/Map.h"
#include "org/apache/lucene/util/Accountable.h"
#include "org/apache/lucene/util/Constants.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/util/RamUsageEstimator must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneUtilRamUsageEstimator ()

/*!
 @brief No instantiation.
 */
- (instancetype)init;

/*!
 @brief Return shallow size of any <code>array</code>.
 */
+ (jlong)shallowSizeOfArrayWithId:(id)array;

@end

/*!
 @brief Sizes of primitive classes.
 */
inline id<JavaUtilMap> OrgApacheLuceneUtilRamUsageEstimator_get_primitiveSizes(void);
static id<JavaUtilMap> OrgApacheLuceneUtilRamUsageEstimator_primitiveSizes;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneUtilRamUsageEstimator, primitiveSizes, id<JavaUtilMap>)

__attribute__((unused)) static void OrgApacheLuceneUtilRamUsageEstimator_init(OrgApacheLuceneUtilRamUsageEstimator *self);

__attribute__((unused)) static OrgApacheLuceneUtilRamUsageEstimator *new_OrgApacheLuceneUtilRamUsageEstimator_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneUtilRamUsageEstimator *create_OrgApacheLuceneUtilRamUsageEstimator_init(void);

__attribute__((unused)) static jlong OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfArrayWithId_(id array);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilRamUsageEstimator)

jboolean OrgApacheLuceneUtilRamUsageEstimator_COMPRESSED_REFS_ENABLED;
jint OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF;
jint OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER;
jint OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER;
jint OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT;
jlong OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MIN_VALUE;
jlong OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MAX_VALUE;
jint OrgApacheLuceneUtilRamUsageEstimator_LONG_SIZE;
jboolean OrgApacheLuceneUtilRamUsageEstimator_JVM_IS_HOTSPOT_64BIT;
NSString *OrgApacheLuceneUtilRamUsageEstimator_MANAGEMENT_FACTORY_CLASS = @"java.lang.management.ManagementFactory";
NSString *OrgApacheLuceneUtilRamUsageEstimator_HOTSPOT_BEAN_CLASS = @"com.sun.management.HotSpotDiagnosticMXBean";

@implementation OrgApacheLuceneUtilRamUsageEstimator

+ (jlong)ONE_KB {
  return OrgApacheLuceneUtilRamUsageEstimator_ONE_KB;
}

+ (jlong)ONE_MB {
  return OrgApacheLuceneUtilRamUsageEstimator_ONE_MB;
}

+ (jlong)ONE_GB {
  return OrgApacheLuceneUtilRamUsageEstimator_ONE_GB;
}

+ (jint)NUM_BYTES_BOOLEAN {
  return OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_BOOLEAN;
}

+ (jint)NUM_BYTES_BYTE {
  return OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_BYTE;
}

+ (jint)NUM_BYTES_CHAR {
  return OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR;
}

+ (jint)NUM_BYTES_SHORT {
  return OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_SHORT;
}

+ (jint)NUM_BYTES_INT {
  return OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT;
}

+ (jint)NUM_BYTES_FLOAT {
  return OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_FLOAT;
}

+ (jint)NUM_BYTES_LONG {
  return OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_LONG;
}

+ (jint)NUM_BYTES_DOUBLE {
  return OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_DOUBLE;
}

+ (jboolean)COMPRESSED_REFS_ENABLED {
  return OrgApacheLuceneUtilRamUsageEstimator_COMPRESSED_REFS_ENABLED;
}

+ (jint)NUM_BYTES_OBJECT_REF {
  return OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF;
}

+ (jint)NUM_BYTES_OBJECT_HEADER {
  return OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER;
}

+ (jint)NUM_BYTES_ARRAY_HEADER {
  return OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER;
}

+ (jint)NUM_BYTES_OBJECT_ALIGNMENT {
  return OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT;
}

+ (jlong)LONG_CACHE_MIN_VALUE {
  return OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MIN_VALUE;
}

+ (jlong)LONG_CACHE_MAX_VALUE {
  return OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MAX_VALUE;
}

+ (jint)LONG_SIZE {
  return OrgApacheLuceneUtilRamUsageEstimator_LONG_SIZE;
}

+ (jboolean)JVM_IS_HOTSPOT_64BIT {
  return OrgApacheLuceneUtilRamUsageEstimator_JVM_IS_HOTSPOT_64BIT;
}

+ (NSString *)MANAGEMENT_FACTORY_CLASS {
  return OrgApacheLuceneUtilRamUsageEstimator_MANAGEMENT_FACTORY_CLASS;
}

+ (NSString *)HOTSPOT_BEAN_CLASS {
  return OrgApacheLuceneUtilRamUsageEstimator_HOTSPOT_BEAN_CLASS;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneUtilRamUsageEstimator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jlong)alignObjectSizeWithLong:(jlong)size {
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(size);
}

+ (jlong)sizeOfWithJavaLangLong:(JavaLangLong *)value {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithJavaLangLong_(value);
}

+ (jlong)sizeOfWithByteArray:(IOSByteArray *)arr {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(arr);
}

+ (jlong)sizeOfWithBooleanArray:(IOSBooleanArray *)arr {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithBooleanArray_(arr);
}

+ (jlong)sizeOfWithCharArray:(IOSCharArray *)arr {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithCharArray_(arr);
}

+ (jlong)sizeOfWithShortArray:(IOSShortArray *)arr {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithShortArray_(arr);
}

+ (jlong)sizeOfWithIntArray:(IOSIntArray *)arr {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(arr);
}

+ (jlong)sizeOfWithFloatArray:(IOSFloatArray *)arr {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithFloatArray_(arr);
}

+ (jlong)sizeOfWithLongArray:(IOSLongArray *)arr {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(arr);
}

+ (jlong)sizeOfWithDoubleArray:(IOSDoubleArray *)arr {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithDoubleArray_(arr);
}

+ (jlong)shallowSizeOfWithNSObjectArray:(IOSObjectArray *)arr {
  return OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(arr);
}

+ (jlong)shallowSizeOfWithId:(id)obj {
  return OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(obj);
}

+ (jlong)shallowSizeOfInstanceWithIOSClass:(IOSClass *)clazz {
  return OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(clazz);
}

+ (jlong)shallowSizeOfArrayWithId:(id)array {
  return OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfArrayWithId_(array);
}

+ (jlong)adjustForFieldWithLong:(jlong)sizeSoFar
       withJavaLangReflectField:(JavaLangReflectField *)f {
  return OrgApacheLuceneUtilRamUsageEstimator_adjustForFieldWithLong_withJavaLangReflectField_(sizeSoFar, f);
}

+ (NSString *)humanReadableUnitsWithLong:(jlong)bytes {
  return OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_(bytes);
}

+ (NSString *)humanReadableUnitsWithLong:(jlong)bytes
               withJavaTextDecimalFormat:(JavaTextDecimalFormat *)df {
  return OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_withJavaTextDecimalFormat_(bytes, df);
}

+ (jlong)sizeOfWithOrgApacheLuceneUtilAccountableArray:(IOSObjectArray *)accountables {
  return OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithOrgApacheLuceneUtilAccountableArray_(accountables);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 2, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 2, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 2, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 2, 7, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 2, 8, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 2, 9, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 2, 10, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 2, 11, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 12, 13, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 12, 14, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 15, 16, -1, 17, -1, -1 },
    { NULL, "J", 0xa, 18, 14, -1, -1, -1, -1 },
    { NULL, "J", 0x8, 19, 20, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 21, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x9, 21, 22, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 2, 23, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(alignObjectSizeWithLong:);
  methods[2].selector = @selector(sizeOfWithJavaLangLong:);
  methods[3].selector = @selector(sizeOfWithByteArray:);
  methods[4].selector = @selector(sizeOfWithBooleanArray:);
  methods[5].selector = @selector(sizeOfWithCharArray:);
  methods[6].selector = @selector(sizeOfWithShortArray:);
  methods[7].selector = @selector(sizeOfWithIntArray:);
  methods[8].selector = @selector(sizeOfWithFloatArray:);
  methods[9].selector = @selector(sizeOfWithLongArray:);
  methods[10].selector = @selector(sizeOfWithDoubleArray:);
  methods[11].selector = @selector(shallowSizeOfWithNSObjectArray:);
  methods[12].selector = @selector(shallowSizeOfWithId:);
  methods[13].selector = @selector(shallowSizeOfInstanceWithIOSClass:);
  methods[14].selector = @selector(shallowSizeOfArrayWithId:);
  methods[15].selector = @selector(adjustForFieldWithLong:withJavaLangReflectField:);
  methods[16].selector = @selector(humanReadableUnitsWithLong:);
  methods[17].selector = @selector(humanReadableUnitsWithLong:withJavaTextDecimalFormat:);
  methods[18].selector = @selector(sizeOfWithOrgApacheLuceneUtilAccountableArray:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ONE_KB", "J", .constantValue.asLong = OrgApacheLuceneUtilRamUsageEstimator_ONE_KB, 0x19, -1, -1, -1, -1 },
    { "ONE_MB", "J", .constantValue.asLong = OrgApacheLuceneUtilRamUsageEstimator_ONE_MB, 0x19, -1, -1, -1, -1 },
    { "ONE_GB", "J", .constantValue.asLong = OrgApacheLuceneUtilRamUsageEstimator_ONE_GB, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_BOOLEAN", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_BOOLEAN, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_BYTE", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_BYTE, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_CHAR", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_SHORT", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_SHORT, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_INT", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_FLOAT", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_FLOAT, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_LONG", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_LONG, 0x19, -1, -1, -1, -1 },
    { "NUM_BYTES_DOUBLE", "I", .constantValue.asInt = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_DOUBLE, 0x19, -1, -1, -1, -1 },
    { "COMPRESSED_REFS_ENABLED", "Z", .constantValue.asLong = 0, 0x19, -1, 24, -1, -1 },
    { "NUM_BYTES_OBJECT_REF", "I", .constantValue.asLong = 0, 0x19, -1, 25, -1, -1 },
    { "NUM_BYTES_OBJECT_HEADER", "I", .constantValue.asLong = 0, 0x19, -1, 26, -1, -1 },
    { "NUM_BYTES_ARRAY_HEADER", "I", .constantValue.asLong = 0, 0x19, -1, 27, -1, -1 },
    { "NUM_BYTES_OBJECT_ALIGNMENT", "I", .constantValue.asLong = 0, 0x19, -1, 28, -1, -1 },
    { "primitiveSizes", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1a, -1, 29, 30, -1 },
    { "LONG_CACHE_MIN_VALUE", "J", .constantValue.asLong = 0, 0x18, -1, 31, -1, -1 },
    { "LONG_CACHE_MAX_VALUE", "J", .constantValue.asLong = 0, 0x18, -1, 32, -1, -1 },
    { "LONG_SIZE", "I", .constantValue.asLong = 0, 0x18, -1, 33, -1, -1 },
    { "JVM_IS_HOTSPOT_64BIT", "Z", .constantValue.asLong = 0, 0x18, -1, 34, -1, -1 },
    { "MANAGEMENT_FACTORY_CLASS", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 35, -1, -1 },
    { "HOTSPOT_BEAN_CLASS", "LNSString;", .constantValue.asLong = 0, 0x18, -1, 36, -1, -1 },
  };
  static const void *ptrTable[] = { "alignObjectSize", "J", "sizeOf", "LJavaLangLong;", "[B", "[Z", "[C", "[S", "[I", "[F", "[J", "[D", "shallowSizeOf", "[LNSObject;", "LNSObject;", "shallowSizeOfInstance", "LIOSClass;", "(Ljava/lang/Class<*>;)J", "shallowSizeOfArray", "adjustForField", "JLJavaLangReflectField;", "humanReadableUnits", "JLJavaTextDecimalFormat;", "[LOrgApacheLuceneUtilAccountable;", &OrgApacheLuceneUtilRamUsageEstimator_COMPRESSED_REFS_ENABLED, &OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF, &OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER, &OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER, &OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT, &OrgApacheLuceneUtilRamUsageEstimator_primitiveSizes, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Integer;>;", &OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MIN_VALUE, &OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MAX_VALUE, &OrgApacheLuceneUtilRamUsageEstimator_LONG_SIZE, &OrgApacheLuceneUtilRamUsageEstimator_JVM_IS_HOTSPOT_64BIT, &OrgApacheLuceneUtilRamUsageEstimator_MANAGEMENT_FACTORY_CLASS, &OrgApacheLuceneUtilRamUsageEstimator_HOTSPOT_BEAN_CLASS };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilRamUsageEstimator = { "RamUsageEstimator", "org.apache.lucene.util", ptrTable, methods, fields, 7, 0x11, 19, 23, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneUtilRamUsageEstimator;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilRamUsageEstimator class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilRamUsageEstimator_primitiveSizes, new_JavaUtilIdentityHashMap_init());
    {
      [OrgApacheLuceneUtilRamUsageEstimator_primitiveSizes putWithId:[IOSClass booleanClass] withId:JavaLangInteger_valueOfWithInt_(OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_BOOLEAN)];
      [OrgApacheLuceneUtilRamUsageEstimator_primitiveSizes putWithId:[IOSClass byteClass] withId:JavaLangInteger_valueOfWithInt_(OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_BYTE)];
      [OrgApacheLuceneUtilRamUsageEstimator_primitiveSizes putWithId:[IOSClass charClass] withId:JavaLangInteger_valueOfWithInt_(OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR)];
      [OrgApacheLuceneUtilRamUsageEstimator_primitiveSizes putWithId:[IOSClass shortClass] withId:JavaLangInteger_valueOfWithInt_(OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_SHORT)];
      [OrgApacheLuceneUtilRamUsageEstimator_primitiveSizes putWithId:[IOSClass intClass] withId:JavaLangInteger_valueOfWithInt_(OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT)];
      [OrgApacheLuceneUtilRamUsageEstimator_primitiveSizes putWithId:[IOSClass floatClass] withId:JavaLangInteger_valueOfWithInt_(OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_FLOAT)];
      [OrgApacheLuceneUtilRamUsageEstimator_primitiveSizes putWithId:[IOSClass doubleClass] withId:JavaLangInteger_valueOfWithInt_(OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_DOUBLE)];
      [OrgApacheLuceneUtilRamUsageEstimator_primitiveSizes putWithId:[IOSClass longClass] withId:JavaLangInteger_valueOfWithInt_(OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_LONG)];
    }
    {
      if (JreLoadStatic(OrgApacheLuceneUtilConstants, JRE_IS_64BIT)) {
        jboolean compressedOops = false;
        jint objectAlignment = 8;
        jboolean isHotspot = false;
        @try {
          IOSClass *beanClazz = IOSClass_forName_(OrgApacheLuceneUtilRamUsageEstimator_HOTSPOT_BEAN_CLASS);
          id hotSpotBean = [((JavaLangReflectMethod *) nil_chk(([((IOSClass *) nil_chk(IOSClass_forName_(OrgApacheLuceneUtilRamUsageEstimator_MANAGEMENT_FACTORY_CLASS))) getMethod:@"getPlatformMXBean" parameterTypes:[IOSObjectArray arrayWithObjects:(id[]){ IOSClass_class_() } count:1 type:IOSClass_class_()]]))) invokeWithId:nil withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ beanClazz } count:1 type:NSObject_class_()]];
          if (hotSpotBean != nil) {
            isHotspot = true;
            JavaLangReflectMethod *getVMOptionMethod = [((IOSClass *) nil_chk(beanClazz)) getMethod:@"getVMOption" parameterTypes:[IOSObjectArray arrayWithObjects:(id[]){ NSString_class_() } count:1 type:IOSClass_class_()]];
            @try {
              id vmOption = [((JavaLangReflectMethod *) nil_chk(getVMOptionMethod)) invokeWithId:hotSpotBean withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ @"UseCompressedOops" } count:1 type:NSObject_class_()]];
              compressedOops = JavaLangBoolean_parseBooleanWithNSString_([nil_chk([((JavaLangReflectMethod *) nil_chk([[nil_chk(vmOption) java_getClass] getMethod:@"getValue" parameterTypes:[IOSObjectArray arrayWithLength:0 type:IOSClass_class_()]])) invokeWithId:vmOption withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:NSObject_class_()]]) description]);
            }
            @catch (JavaLangException *e) {
              isHotspot = false;
            }
            @try {
              id vmOption = [getVMOptionMethod invokeWithId:hotSpotBean withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ @"ObjectAlignmentInBytes" } count:1 type:NSObject_class_()]];
              objectAlignment = JavaLangInteger_parseIntWithNSString_([nil_chk([((JavaLangReflectMethod *) nil_chk([[nil_chk(vmOption) java_getClass] getMethod:@"getValue" parameterTypes:[IOSObjectArray arrayWithLength:0 type:IOSClass_class_()]])) invokeWithId:vmOption withNSObjectArray:[IOSObjectArray arrayWithLength:0 type:NSObject_class_()]]) description]);
            }
            @catch (JavaLangException *e) {
              isHotspot = false;
            }
          }
        }
        @catch (JavaLangException *e) {
          isHotspot = false;
        }
        OrgApacheLuceneUtilRamUsageEstimator_JVM_IS_HOTSPOT_64BIT = isHotspot;
        OrgApacheLuceneUtilRamUsageEstimator_COMPRESSED_REFS_ENABLED = compressedOops;
        OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT = objectAlignment;
        OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF = OrgApacheLuceneUtilRamUsageEstimator_COMPRESSED_REFS_ENABLED ? 4 : 8;
        OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER = 8 + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF;
        OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER = (jint) OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT);
      }
      else {
        OrgApacheLuceneUtilRamUsageEstimator_JVM_IS_HOTSPOT_64BIT = false;
        OrgApacheLuceneUtilRamUsageEstimator_COMPRESSED_REFS_ENABLED = false;
        OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT = 8;
        OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF = 4;
        OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER = 8;
        OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER + OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT;
      }
      jlong longCacheMinValue = 0;
      while (longCacheMinValue > JavaLangLong_MIN_VALUE && JreObjectEqualsEquals(JavaLangLong_valueOfWithLong_(longCacheMinValue - 1), JavaLangLong_valueOfWithLong_(longCacheMinValue - 1))) {
        longCacheMinValue -= 1;
      }
      jlong longCacheMaxValue = -1;
      while (longCacheMaxValue < JavaLangLong_MAX_VALUE && JreObjectEqualsEquals(JavaLangLong_valueOfWithLong_(longCacheMaxValue + 1), JavaLangLong_valueOfWithLong_(longCacheMaxValue + 1))) {
        longCacheMaxValue += 1;
      }
      OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MIN_VALUE = longCacheMinValue;
      OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MAX_VALUE = longCacheMaxValue;
      OrgApacheLuceneUtilRamUsageEstimator_LONG_SIZE = (jint) OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(JavaLangLong_class_());
    }
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilRamUsageEstimator)
  }
}

@end

void OrgApacheLuceneUtilRamUsageEstimator_init(OrgApacheLuceneUtilRamUsageEstimator *self) {
  NSObject_init(self);
}

OrgApacheLuceneUtilRamUsageEstimator *new_OrgApacheLuceneUtilRamUsageEstimator_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneUtilRamUsageEstimator, init)
}

OrgApacheLuceneUtilRamUsageEstimator *create_OrgApacheLuceneUtilRamUsageEstimator_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneUtilRamUsageEstimator, init)
}

jlong OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(jlong size) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  size += (jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT - 1LL;
  return size - (JreLongMod(size, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_ALIGNMENT));
}

jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithJavaLangLong_(JavaLangLong *value) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  if ([((JavaLangLong *) nil_chk(value)) longLongValue] >= OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MIN_VALUE && [value longLongValue] <= OrgApacheLuceneUtilRamUsageEstimator_LONG_CACHE_MAX_VALUE) {
    return 0;
  }
  return OrgApacheLuceneUtilRamUsageEstimator_LONG_SIZE;
}

jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(IOSByteArray *arr) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_((jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER + ((IOSByteArray *) nil_chk(arr))->size_);
}

jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithBooleanArray_(IOSBooleanArray *arr) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_((jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER + ((IOSBooleanArray *) nil_chk(arr))->size_);
}

jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithCharArray_(IOSCharArray *arr) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_((jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER + (jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR * ((IOSCharArray *) nil_chk(arr))->size_);
}

jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithShortArray_(IOSShortArray *arr) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_((jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER + (jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_SHORT * ((IOSShortArray *) nil_chk(arr))->size_);
}

jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithIntArray_(IOSIntArray *arr) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_((jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER + (jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT * ((IOSIntArray *) nil_chk(arr))->size_);
}

jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithFloatArray_(IOSFloatArray *arr) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_((jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER + (jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_FLOAT * ((IOSFloatArray *) nil_chk(arr))->size_);
}

jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithLongArray_(IOSLongArray *arr) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_((jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER + (jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_LONG * ((IOSLongArray *) nil_chk(arr))->size_);
}

jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithDoubleArray_(IOSDoubleArray *arr) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_((jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER + (jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_DOUBLE * ((IOSDoubleArray *) nil_chk(arr))->size_);
}

jlong OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(IOSObjectArray *arr) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_((jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER + (jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF * ((IOSObjectArray *) nil_chk(arr))->size_);
}

jlong OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(id obj) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  if (obj == nil) return 0;
  IOSClass *clz = [obj java_getClass];
  if ([clz isArray]) {
    return OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfArrayWithId_(obj);
  }
  else {
    return OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(clz);
  }
}

jlong OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(IOSClass *clazz) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  if ([((IOSClass *) nil_chk(clazz)) isArray]) @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"This method does not work with array classes.");
  if ([clazz isPrimitive]) return [((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(OrgApacheLuceneUtilRamUsageEstimator_primitiveSizes)) getWithId:clazz])) intValue];
  jlong size = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_HEADER;
  for (; clazz != nil; clazz = [clazz getSuperclass]) {
    IOSObjectArray *fields = [clazz getDeclaredFields];
    {
      IOSObjectArray *a__ = fields;
      JavaLangReflectField * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      JavaLangReflectField * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        JavaLangReflectField *f = *b__++;
        if (!JavaLangReflectModifier_isStaticWithInt_([((JavaLangReflectField *) nil_chk(f)) getModifiers])) {
          size = OrgApacheLuceneUtilRamUsageEstimator_adjustForFieldWithLong_withJavaLangReflectField_(size, f);
        }
      }
    }
  }
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(size);
}

jlong OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfArrayWithId_(id array) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  jlong size = OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_ARRAY_HEADER;
  jint len = JavaLangReflectArray_getLengthWithId_(array);
  if (len > 0) {
    IOSClass *arrayElementClazz = [[nil_chk(array) java_getClass] getComponentType];
    if ([((IOSClass *) nil_chk(arrayElementClazz)) isPrimitive]) {
      size += (jlong) len * [((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(OrgApacheLuceneUtilRamUsageEstimator_primitiveSizes)) getWithId:arrayElementClazz])) intValue];
    }
    else {
      size += (jlong) OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF * len;
    }
  }
  return OrgApacheLuceneUtilRamUsageEstimator_alignObjectSizeWithLong_(size);
}

jlong OrgApacheLuceneUtilRamUsageEstimator_adjustForFieldWithLong_withJavaLangReflectField_(jlong sizeSoFar, JavaLangReflectField *f) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  IOSClass *type = [((JavaLangReflectField *) nil_chk(f)) getType];
  jint fsize = [((IOSClass *) nil_chk(type)) isPrimitive] ? [((JavaLangInteger *) nil_chk([((id<JavaUtilMap>) nil_chk(OrgApacheLuceneUtilRamUsageEstimator_primitiveSizes)) getWithId:type])) intValue] : OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_OBJECT_REF;
  return sizeSoFar + fsize;
}

NSString *OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_(jlong bytes) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  return OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_withJavaTextDecimalFormat_(bytes, create_JavaTextDecimalFormat_initWithNSString_withJavaTextDecimalFormatSymbols_(@"0.#", JavaTextDecimalFormatSymbols_getInstanceWithJavaUtilLocale_(JreLoadStatic(JavaUtilLocale, ROOT))));
}

NSString *OrgApacheLuceneUtilRamUsageEstimator_humanReadableUnitsWithLong_withJavaTextDecimalFormat_(jlong bytes, JavaTextDecimalFormat *df) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  if (JreLongDiv(bytes, OrgApacheLuceneUtilRamUsageEstimator_ONE_GB) > 0) {
    return JreStrcat("$$", [((JavaTextDecimalFormat *) nil_chk(df)) formatWithDouble:(jfloat) bytes / OrgApacheLuceneUtilRamUsageEstimator_ONE_GB], @" GB");
  }
  else if (JreLongDiv(bytes, OrgApacheLuceneUtilRamUsageEstimator_ONE_MB) > 0) {
    return JreStrcat("$$", [((JavaTextDecimalFormat *) nil_chk(df)) formatWithDouble:(jfloat) bytes / OrgApacheLuceneUtilRamUsageEstimator_ONE_MB], @" MB");
  }
  else if (JreLongDiv(bytes, OrgApacheLuceneUtilRamUsageEstimator_ONE_KB) > 0) {
    return JreStrcat("$$", [((JavaTextDecimalFormat *) nil_chk(df)) formatWithDouble:(jfloat) bytes / OrgApacheLuceneUtilRamUsageEstimator_ONE_KB], @" KB");
  }
  else {
    return JreStrcat("J$", bytes, @" bytes");
  }
}

jlong OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithOrgApacheLuceneUtilAccountableArray_(IOSObjectArray *accountables) {
  OrgApacheLuceneUtilRamUsageEstimator_initialize();
  jlong size = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithNSObjectArray_(accountables);
  {
    IOSObjectArray *a__ = accountables;
    id<OrgApacheLuceneUtilAccountable> const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    id<OrgApacheLuceneUtilAccountable> const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      id<OrgApacheLuceneUtilAccountable> accountable = *b__++;
      if (accountable != nil) {
        size += [accountable ramBytesUsed];
      }
    }
  }
  return size;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilRamUsageEstimator)
