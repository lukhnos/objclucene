//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/store/DataInput.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/CloneNotSupportedException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Error.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/TreeMap.h"
#include "java/util/TreeSet.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/util/BitUtil.h"
#include "org/lukhnos/portmobile/charset/StandardCharsets.h"

@interface OrgApacheLuceneStoreDataInput () {
 @public
  IOSByteArray *skipBuffer_;
}

- (jlong)readVLongWithBoolean:(jboolean)allowNegative;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneStoreDataInput, skipBuffer_, IOSByteArray *)

inline jint OrgApacheLuceneStoreDataInput_get_SKIP_BUFFER_SIZE();
#define OrgApacheLuceneStoreDataInput_SKIP_BUFFER_SIZE 1024
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneStoreDataInput, SKIP_BUFFER_SIZE, jint)

__attribute__((unused)) static jlong OrgApacheLuceneStoreDataInput_readVLongWithBoolean_(OrgApacheLuceneStoreDataInput *self, jboolean allowNegative);

@implementation OrgApacheLuceneStoreDataInput

- (jbyte)readByte {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)readBytesWithByteArray:(IOSByteArray *)b
                       withInt:(jint)offset
                       withInt:(jint)len
                   withBoolean:(jboolean)useBuffer {
  [self readBytesWithByteArray:b withInt:offset withInt:len];
}

- (jshort)readShort {
  return (jshort) ((JreLShift32(([self readByte] & (jint) 0xFF), 8)) | ([self readByte] & (jint) 0xFF));
}

- (jint)readInt {
  return (JreLShift32(([self readByte] & (jint) 0xFF), 24)) | (JreLShift32(([self readByte] & (jint) 0xFF), 16)) | (JreLShift32(([self readByte] & (jint) 0xFF), 8)) | ([self readByte] & (jint) 0xFF);
}

- (jint)readVInt {
  jbyte b = [self readByte];
  if (b >= 0) return b;
  jint i = b & (jint) 0x7F;
  b = [self readByte];
  i |= JreLShift32((b & (jint) 0x7F), 7);
  if (b >= 0) return i;
  b = [self readByte];
  i |= JreLShift32((b & (jint) 0x7F), 14);
  if (b >= 0) return i;
  b = [self readByte];
  i |= JreLShift32((b & (jint) 0x7F), 21);
  if (b >= 0) return i;
  b = [self readByte];
  i |= JreLShift32((b & (jint) 0x0F), 28);
  if ((b & (jint) 0xF0) == 0) return i;
  @throw create_JavaIoIOException_initWithNSString_(@"Invalid vInt detected (too many bits)");
}

- (jint)readZInt {
  return OrgApacheLuceneUtilBitUtil_zigZagDecodeWithInt_([self readVInt]);
}

- (jlong)readLong {
  return (JreLShift64(((jlong) [self readInt]), 32)) | ([self readInt] & (jlong) 0xFFFFFFFFLL);
}

- (jlong)readVLong {
  return OrgApacheLuceneStoreDataInput_readVLongWithBoolean_(self, false);
}

- (jlong)readVLongWithBoolean:(jboolean)allowNegative {
  return OrgApacheLuceneStoreDataInput_readVLongWithBoolean_(self, allowNegative);
}

- (jlong)readZLong {
  return OrgApacheLuceneUtilBitUtil_zigZagDecodeWithLong_(OrgApacheLuceneStoreDataInput_readVLongWithBoolean_(self, true));
}

- (NSString *)readString {
  jint length = [self readVInt];
  IOSByteArray *bytes = [IOSByteArray arrayWithLength:length];
  [self readBytesWithByteArray:bytes withInt:0 withInt:length];
  return [NSString stringWithBytes:bytes offset:0 length:length charset:JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8)];
}

- (OrgApacheLuceneStoreDataInput *)clone {
  @try {
    return (OrgApacheLuceneStoreDataInput *) cast_chk([super clone], [OrgApacheLuceneStoreDataInput class]);
  }
  @catch (JavaLangCloneNotSupportedException *e) {
    @throw create_JavaLangError_initWithNSString_(@"This cannot happen: Failing to clone DataInput");
  }
}

- (id<JavaUtilMap>)readStringStringMap {
  id<JavaUtilMap> map = create_JavaUtilHashMap_init();
  jint count = [self readInt];
  for (jint i = 0; i < count; i++) {
    NSString *key = [self readString];
    NSString *val = [self readString];
    [map putWithId:key withId:val];
  }
  return map;
}

- (id<JavaUtilMap>)readMapOfStrings {
  jint count = [self readVInt];
  if (count == 0) {
    return JavaUtilCollections_emptyMap();
  }
  else if (count == 1) {
    return JavaUtilCollections_singletonMapWithId_withId_([self readString], [self readString]);
  }
  else {
    id<JavaUtilMap> map = count > 10 ? create_JavaUtilHashMap_init() : create_JavaUtilTreeMap_init();
    for (jint i = 0; i < count; i++) {
      NSString *key = [self readString];
      NSString *val = [self readString];
      [map putWithId:key withId:val];
    }
    return JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(map);
  }
}

- (id<JavaUtilSet>)readStringSet {
  id<JavaUtilSet> set = create_JavaUtilHashSet_init();
  jint count = [self readInt];
  for (jint i = 0; i < count; i++) {
    [set addWithId:[self readString]];
  }
  return set;
}

- (id<JavaUtilSet>)readSetOfStrings {
  jint count = [self readVInt];
  if (count == 0) {
    return JavaUtilCollections_emptySet();
  }
  else if (count == 1) {
    return JavaUtilCollections_singletonWithId_([self readString]);
  }
  else {
    id<JavaUtilSet> set = count > 10 ? create_JavaUtilHashSet_init() : create_JavaUtilTreeSet_init();
    for (jint i = 0; i < count; i++) {
      [set addWithId:[self readString]];
    }
    return JavaUtilCollections_unmodifiableSetWithJavaUtilSet_(set);
  }
}

- (void)skipBytesWithLong:(jlong)numBytes {
  if (numBytes < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$J", @"numBytes must be >= 0, got ", numBytes));
  }
  if (skipBuffer_ == nil) {
    JreStrongAssignAndConsume(&skipBuffer_, [IOSByteArray newArrayWithLength:OrgApacheLuceneStoreDataInput_SKIP_BUFFER_SIZE]);
  }
  JreAssert((skipBuffer_->size_ == OrgApacheLuceneStoreDataInput_SKIP_BUFFER_SIZE), (@"org/apache/lucene/store/DataInput.java:347 condition failed: assert skipBuffer.length == SKIP_BUFFER_SIZE;"));
  for (jlong skipped = 0; skipped < numBytes; ) {
    jint step = (jint) JavaLangMath_minWithLong_withLong_(OrgApacheLuceneStoreDataInput_SKIP_BUFFER_SIZE, numBytes - skipped);
    [self readBytesWithByteArray:skipBuffer_ withInt:0 withInt:step withBoolean:false];
    skipped += step;
  }
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneStoreDataInput_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (IOSObjectArray *)__annotations_readStringStringMap {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (IOSObjectArray *)__annotations_readStringSet {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

- (void)dealloc {
  RELEASE_(skipBuffer_);
  [super dealloc];
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self clone] retain];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "readByte", NULL, "B", 0x401, "Ljava.io.IOException;", NULL },
    { "readBytesWithByteArray:withInt:withInt:", "readBytes", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "readBytesWithByteArray:withInt:withInt:withBoolean:", "readBytes", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "readShort", NULL, "S", 0x1, "Ljava.io.IOException;", NULL },
    { "readInt", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "readVInt", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "readZInt", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "readLong", NULL, "J", 0x1, "Ljava.io.IOException;", NULL },
    { "readVLong", NULL, "J", 0x1, "Ljava.io.IOException;", NULL },
    { "readVLongWithBoolean:", "readVLong", "J", 0x2, "Ljava.io.IOException;", NULL },
    { "readZLong", NULL, "J", 0x1, "Ljava.io.IOException;", NULL },
    { "readString", NULL, "Ljava.lang.String;", 0x1, "Ljava.io.IOException;", NULL },
    { "clone", NULL, "Lorg.apache.lucene.store.DataInput;", 0x1, NULL, NULL },
    { "readStringStringMap", NULL, "Ljava.util.Map;", 0x1, "Ljava.io.IOException;", "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;" },
    { "readMapOfStrings", NULL, "Ljava.util.Map;", 0x1, "Ljava.io.IOException;", "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;" },
    { "readStringSet", NULL, "Ljava.util.Set;", 0x1, "Ljava.io.IOException;", "()Ljava/util/Set<Ljava/lang/String;>;" },
    { "readSetOfStrings", NULL, "Ljava.util.Set;", 0x1, "Ljava.io.IOException;", "()Ljava/util/Set<Ljava/lang/String;>;" },
    { "skipBytesWithLong:", "skipBytes", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "init", "DataInput", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "SKIP_BUFFER_SIZE", "SKIP_BUFFER_SIZE", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneStoreDataInput_SKIP_BUFFER_SIZE },
    { "skipBuffer_", NULL, 0x2, "[B", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneStoreDataInput = { 2, "DataInput", "org.apache.lucene.store", NULL, 0x401, 19, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneStoreDataInput;
}

@end

jlong OrgApacheLuceneStoreDataInput_readVLongWithBoolean_(OrgApacheLuceneStoreDataInput *self, jboolean allowNegative) {
  jbyte b = [self readByte];
  if (b >= 0) return b;
  jlong i = b & (jlong) 0x7FLL;
  b = [self readByte];
  i |= JreLShift64((b & (jlong) 0x7FLL), 7);
  if (b >= 0) return i;
  b = [self readByte];
  i |= JreLShift64((b & (jlong) 0x7FLL), 14);
  if (b >= 0) return i;
  b = [self readByte];
  i |= JreLShift64((b & (jlong) 0x7FLL), 21);
  if (b >= 0) return i;
  b = [self readByte];
  i |= JreLShift64((b & (jlong) 0x7FLL), 28);
  if (b >= 0) return i;
  b = [self readByte];
  i |= JreLShift64((b & (jlong) 0x7FLL), 35);
  if (b >= 0) return i;
  b = [self readByte];
  i |= JreLShift64((b & (jlong) 0x7FLL), 42);
  if (b >= 0) return i;
  b = [self readByte];
  i |= JreLShift64((b & (jlong) 0x7FLL), 49);
  if (b >= 0) return i;
  b = [self readByte];
  i |= JreLShift64((b & (jlong) 0x7FLL), 56);
  if (b >= 0) return i;
  if (allowNegative) {
    b = [self readByte];
    i |= JreLShift64((b & (jlong) 0x7FLL), 63);
    if (b == 0 || b == 1) return i;
    @throw create_JavaIoIOException_initWithNSString_(@"Invalid vLong detected (more than 64 bits)");
  }
  else {
    @throw create_JavaIoIOException_initWithNSString_(@"Invalid vLong detected (negative values disallowed)");
  }
}

void OrgApacheLuceneStoreDataInput_init(OrgApacheLuceneStoreDataInput *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneStoreDataInput)
