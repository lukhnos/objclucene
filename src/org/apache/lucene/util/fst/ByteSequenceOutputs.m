//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/ByteSequenceOutputs.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/StringHelper.h"
#include "org/apache/lucene/util/fst/ByteSequenceOutputs.h"
#include "org/apache/lucene/util/fst/Outputs.h"

@interface OrgApacheLuceneUtilFstByteSequenceOutputs ()

- (instancetype)init;

@end

static OrgApacheLuceneUtilBytesRef *OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilFstByteSequenceOutputs, NO_OUTPUT_, OrgApacheLuceneUtilBytesRef *)

static OrgApacheLuceneUtilFstByteSequenceOutputs *OrgApacheLuceneUtilFstByteSequenceOutputs_singleton_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilFstByteSequenceOutputs, singleton_, OrgApacheLuceneUtilFstByteSequenceOutputs *)

static jlong OrgApacheLuceneUtilFstByteSequenceOutputs_BASE_NUM_BYTES_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilFstByteSequenceOutputs, BASE_NUM_BYTES_, jlong)

__attribute__((unused)) static void OrgApacheLuceneUtilFstByteSequenceOutputs_init(OrgApacheLuceneUtilFstByteSequenceOutputs *self);

__attribute__((unused)) static OrgApacheLuceneUtilFstByteSequenceOutputs *new_OrgApacheLuceneUtilFstByteSequenceOutputs_init() NS_RETURNS_RETAINED;

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilFstByteSequenceOutputs)

@implementation OrgApacheLuceneUtilFstByteSequenceOutputs

- (instancetype)init {
  OrgApacheLuceneUtilFstByteSequenceOutputs_init(self);
  return self;
}

+ (OrgApacheLuceneUtilFstByteSequenceOutputs *)getSingleton {
  return OrgApacheLuceneUtilFstByteSequenceOutputs_getSingleton();
}

- (OrgApacheLuceneUtilBytesRef *)commonWithId:(OrgApacheLuceneUtilBytesRef *)output1
                                       withId:(OrgApacheLuceneUtilBytesRef *)output2 {
  JreAssert((output1 != nil), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:49 condition failed: assert output1 != null;"));
  JreAssert((output2 != nil), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:50 condition failed: assert output2 != null;"));
  jint pos1 = ((OrgApacheLuceneUtilBytesRef *) nil_chk(output1))->offset_;
  jint pos2 = ((OrgApacheLuceneUtilBytesRef *) nil_chk(output2))->offset_;
  jint stopAt1 = pos1 + JavaLangMath_minWithInt_withInt_(output1->length_, output2->length_);
  while (pos1 < stopAt1) {
    if (IOSByteArray_Get(nil_chk(output1->bytes_), pos1) != IOSByteArray_Get(output2->bytes_, pos2)) {
      break;
    }
    pos1++;
    pos2++;
  }
  if (pos1 == output1->offset_) {
    return OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT_;
  }
  else if (pos1 == output1->offset_ + output1->length_) {
    return output1;
  }
  else if (pos2 == output2->offset_ + output2->length_) {
    return output2;
  }
  else {
    return [new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(output1->bytes_, output1->offset_, pos1 - output1->offset_) autorelease];
  }
}

- (OrgApacheLuceneUtilBytesRef *)subtractWithId:(OrgApacheLuceneUtilBytesRef *)output
                                         withId:(OrgApacheLuceneUtilBytesRef *)inc {
  JreAssert((output != nil), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:79 condition failed: assert output != null;"));
  JreAssert((inc != nil), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:80 condition failed: assert inc != null;"));
  if (inc == OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT_) {
    return output;
  }
  else {
    JreAssert((OrgApacheLuceneUtilStringHelper_startsWithWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(output, inc)), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:85 condition failed: assert StringHelper.startsWith(output, inc);"));
    if (((OrgApacheLuceneUtilBytesRef *) nil_chk(inc))->length_ == ((OrgApacheLuceneUtilBytesRef *) nil_chk(output))->length_) {
      return OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT_;
    }
    else {
      JreAssert((inc->length_ < output->length_), (JreStrcat("$I$I", @"inc.length=", inc->length_, @" vs output.length=", output->length_)));
      JreAssert((inc->length_ > 0), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:91 condition failed: assert inc.length > 0;"));
      return [new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(output->bytes_, output->offset_ + inc->length_, output->length_ - inc->length_) autorelease];
    }
  }
}

- (OrgApacheLuceneUtilBytesRef *)addWithId:(OrgApacheLuceneUtilBytesRef *)prefix
                                    withId:(OrgApacheLuceneUtilBytesRef *)output {
  JreAssert((prefix != nil), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:99 condition failed: assert prefix != null;"));
  JreAssert((output != nil), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:100 condition failed: assert output != null;"));
  if (prefix == OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT_) {
    return output;
  }
  else if (output == OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT_) {
    return prefix;
  }
  else {
    JreAssert((((OrgApacheLuceneUtilBytesRef *) nil_chk(prefix))->length_ > 0), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:106 condition failed: assert prefix.length > 0;"));
    JreAssert((((OrgApacheLuceneUtilBytesRef *) nil_chk(output))->length_ > 0), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:107 condition failed: assert output.length > 0;"));
    OrgApacheLuceneUtilBytesRef *result = [new_OrgApacheLuceneUtilBytesRef_initWithInt_(prefix->length_ + output->length_) autorelease];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(prefix->bytes_, prefix->offset_, result->bytes_, 0, prefix->length_);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(output->bytes_, output->offset_, result->bytes_, prefix->length_, output->length_);
    result->length_ = prefix->length_ + output->length_;
    return result;
  }
}

- (void)writeWithId:(OrgApacheLuceneUtilBytesRef *)prefix
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg {
  JreAssert((prefix != nil), (@"org/apache/lucene/util/fst/ByteSequenceOutputs.java:118 condition failed: assert prefix != null;"));
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeVIntWithInt:((OrgApacheLuceneUtilBytesRef *) nil_chk(prefix))->length_];
  [outArg writeBytesWithByteArray:prefix->bytes_ withInt:prefix->offset_ withInt:prefix->length_];
}

- (OrgApacheLuceneUtilBytesRef *)readWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  jint len = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readVInt];
  if (len == 0) {
    return OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT_;
  }
  else {
    OrgApacheLuceneUtilBytesRef *output = [new_OrgApacheLuceneUtilBytesRef_initWithInt_(len) autorelease];
    [inArg readBytesWithByteArray:output->bytes_ withInt:0 withInt:len];
    output->length_ = len;
    return output;
  }
}

- (void)skipOutputWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  jint len = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readVInt];
  if (len != 0) {
    [inArg skipBytesWithLong:len];
  }
}

- (OrgApacheLuceneUtilBytesRef *)getNoOutput {
  return OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT_;
}

- (jlong)ramBytesUsedWithId:(OrgApacheLuceneUtilBytesRef *)output {
  return OrgApacheLuceneUtilFstByteSequenceOutputs_BASE_NUM_BYTES_ + OrgApacheLuceneUtilRamUsageEstimator_sizeOfWithByteArray_(((OrgApacheLuceneUtilBytesRef *) nil_chk(output))->bytes_);
}

- (NSString *)description {
  return @"ByteSequenceOutputs";
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilFstByteSequenceOutputs class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT_, new_OrgApacheLuceneUtilBytesRef_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilFstByteSequenceOutputs_singleton_, new_OrgApacheLuceneUtilFstByteSequenceOutputs_init());
    OrgApacheLuceneUtilFstByteSequenceOutputs_BASE_NUM_BYTES_ = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfWithId_(OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT_);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilFstByteSequenceOutputs)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "ByteSequenceOutputs", NULL, 0x2, NULL, NULL },
    { "getSingleton", NULL, "Lorg.apache.lucene.util.fst.ByteSequenceOutputs;", 0x9, NULL, NULL },
    { "commonWithId:withId:", "common", "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "subtractWithId:withId:", "subtract", "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "addWithId:withId:", "add", "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "writeWithId:withOrgApacheLuceneStoreDataOutput:", "write", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "readWithOrgApacheLuceneStoreDataInput:", "read", "Lorg.apache.lucene.util.BytesRef;", 0x1, "Ljava.io.IOException;", NULL },
    { "skipOutputWithOrgApacheLuceneStoreDataInput:", "skipOutput", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getNoOutput", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "ramBytesUsedWithId:", "ramBytesUsed", "J", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NO_OUTPUT_", NULL, 0x1a, "Lorg.apache.lucene.util.BytesRef;", &OrgApacheLuceneUtilFstByteSequenceOutputs_NO_OUTPUT_, NULL, .constantValue.asLong = 0 },
    { "singleton_", NULL, 0x1a, "Lorg.apache.lucene.util.fst.ByteSequenceOutputs;", &OrgApacheLuceneUtilFstByteSequenceOutputs_singleton_, NULL, .constantValue.asLong = 0 },
    { "BASE_NUM_BYTES_", NULL, 0x1a, "J", &OrgApacheLuceneUtilFstByteSequenceOutputs_BASE_NUM_BYTES_, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.util.BytesRef;"};
  static const J2ObjcClassInfo _OrgApacheLuceneUtilFstByteSequenceOutputs = { 2, "ByteSequenceOutputs", "org.apache.lucene.util.fst", NULL, 0x11, 11, methods, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/fst/Outputs<Lorg/apache/lucene/util/BytesRef;>;" };
  return &_OrgApacheLuceneUtilFstByteSequenceOutputs;
}

@end

void OrgApacheLuceneUtilFstByteSequenceOutputs_init(OrgApacheLuceneUtilFstByteSequenceOutputs *self) {
  OrgApacheLuceneUtilFstOutputs_init(self);
}

OrgApacheLuceneUtilFstByteSequenceOutputs *new_OrgApacheLuceneUtilFstByteSequenceOutputs_init() {
  OrgApacheLuceneUtilFstByteSequenceOutputs *self = [OrgApacheLuceneUtilFstByteSequenceOutputs alloc];
  OrgApacheLuceneUtilFstByteSequenceOutputs_init(self);
  return self;
}

OrgApacheLuceneUtilFstByteSequenceOutputs *OrgApacheLuceneUtilFstByteSequenceOutputs_getSingleton() {
  OrgApacheLuceneUtilFstByteSequenceOutputs_initialize();
  return OrgApacheLuceneUtilFstByteSequenceOutputs_singleton_;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilFstByteSequenceOutputs)
