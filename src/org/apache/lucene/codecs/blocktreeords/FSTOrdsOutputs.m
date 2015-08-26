//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./codecs/src/java/org/apache/lucene/codecs/blocktreeords/FSTOrdsOutputs.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Long.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "org/apache/lucene/codecs/blocktreeords/FSTOrdsOutputs.h"
#include "org/apache/lucene/store/DataInput.h"
#include "org/apache/lucene/store/DataOutput.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"
#include "org/apache/lucene/util/StringHelper.h"
#include "org/apache/lucene/util/fst/Outputs.h"

static OrgApacheLuceneUtilBytesRef *OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_NO_BYTES_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs, NO_BYTES_, OrgApacheLuceneUtilBytesRef *)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs)

OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_NO_OUTPUT_;

@implementation OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs

- (OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)commonWithId:(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)output1
                                                                   withId:(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)output2 {
  OrgApacheLuceneUtilBytesRef *bytes1 = ((OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *) nil_chk(output1))->bytes_;
  OrgApacheLuceneUtilBytesRef *bytes2 = ((OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *) nil_chk(output2))->bytes_;
  JreAssert((bytes1 != nil), (@"org/apache/lucene/codecs/blocktreeords/FSTOrdsOutputs.java:89 condition failed: assert bytes1 != null;"));
  JreAssert((bytes2 != nil), (@"org/apache/lucene/codecs/blocktreeords/FSTOrdsOutputs.java:90 condition failed: assert bytes2 != null;"));
  jint pos1 = ((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes1))->offset_;
  jint pos2 = ((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes2))->offset_;
  jint stopAt1 = pos1 + JavaLangMath_minWithInt_withInt_(bytes1->length_, bytes2->length_);
  while (pos1 < stopAt1) {
    if (IOSByteArray_Get(nil_chk(bytes1->bytes_), pos1) != IOSByteArray_Get(bytes2->bytes_, pos2)) {
      break;
    }
    pos1++;
    pos2++;
  }
  OrgApacheLuceneUtilBytesRef *prefixBytes;
  if (pos1 == bytes1->offset_) {
    prefixBytes = OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_NO_BYTES_;
  }
  else if (pos1 == bytes1->offset_ + bytes1->length_) {
    prefixBytes = bytes1;
  }
  else if (pos2 == bytes2->offset_ + bytes2->length_) {
    prefixBytes = bytes2;
  }
  else {
    prefixBytes = [new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(bytes1->bytes_, bytes1->offset_, pos1 - bytes1->offset_) autorelease];
  }
  return [self newOutputWithOrgApacheLuceneUtilBytesRef:prefixBytes withLong:JavaLangMath_minWithLong_withLong_(output1->startOrd_, output2->startOrd_) withLong:JavaLangMath_minWithLong_withLong_(output1->endOrd_, output2->endOrd_)];
}

- (OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)subtractWithId:(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)output
                                                                     withId:(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)inc {
  JreAssert((output != nil), (@"org/apache/lucene/codecs/blocktreeords/FSTOrdsOutputs.java:125 condition failed: assert output != null;"));
  JreAssert((inc != nil), (@"org/apache/lucene/codecs/blocktreeords/FSTOrdsOutputs.java:126 condition failed: assert inc != null;"));
  if (inc == OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_NO_OUTPUT_) {
    return output;
  }
  else {
    JreAssert((OrgApacheLuceneUtilStringHelper_startsWithWithOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_(((OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *) nil_chk(output))->bytes_, ((OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *) nil_chk(inc))->bytes_)), (@"org/apache/lucene/codecs/blocktreeords/FSTOrdsOutputs.java:131 condition failed: assert StringHelper.startsWith(output.bytes, inc.bytes);"));
    OrgApacheLuceneUtilBytesRef *suffix;
    if (((OrgApacheLuceneUtilBytesRef *) nil_chk(inc->bytes_))->length_ == output->bytes_->length_) {
      suffix = OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_NO_BYTES_;
    }
    else if (inc->bytes_->length_ == 0) {
      suffix = output->bytes_;
    }
    else {
      JreAssert((inc->bytes_->length_ < output->bytes_->length_), (JreStrcat("$I$I", @"inc.length=", inc->bytes_->length_, @" vs output.length=", output->bytes_->length_)));
      JreAssert((inc->bytes_->length_ > 0), (@"org/apache/lucene/codecs/blocktreeords/FSTOrdsOutputs.java:140 condition failed: assert inc.bytes.length > 0;"));
      suffix = [new_OrgApacheLuceneUtilBytesRef_initWithByteArray_withInt_withInt_(output->bytes_->bytes_, output->bytes_->offset_ + inc->bytes_->length_, output->bytes_->length_ - inc->bytes_->length_) autorelease];
    }
    JreAssert((output->startOrd_ >= inc->startOrd_), (@"org/apache/lucene/codecs/blocktreeords/FSTOrdsOutputs.java:143 condition failed: assert output.startOrd >= inc.startOrd;"));
    JreAssert((output->endOrd_ >= inc->endOrd_), (@"org/apache/lucene/codecs/blocktreeords/FSTOrdsOutputs.java:144 condition failed: assert output.endOrd >= inc.endOrd;"));
    return [self newOutputWithOrgApacheLuceneUtilBytesRef:suffix withLong:output->startOrd_ - inc->startOrd_ withLong:output->endOrd_ - inc->endOrd_];
  }
}

- (OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)addWithId:(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)prefix
                                                                withId:(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)output {
  JreAssert((prefix != nil), (@"org/apache/lucene/codecs/blocktreeords/FSTOrdsOutputs.java:151 condition failed: assert prefix != null;"));
  JreAssert((output != nil), (@"org/apache/lucene/codecs/blocktreeords/FSTOrdsOutputs.java:152 condition failed: assert output != null;"));
  if (prefix == OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_NO_OUTPUT_) {
    return output;
  }
  else if (output == OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_NO_OUTPUT_) {
    return prefix;
  }
  else {
    OrgApacheLuceneUtilBytesRef *bytes = [new_OrgApacheLuceneUtilBytesRef_initWithInt_(((OrgApacheLuceneUtilBytesRef *) nil_chk(((OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *) nil_chk(prefix))->bytes_))->length_ + ((OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *) nil_chk(output))->bytes_->length_) autorelease];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(prefix->bytes_->bytes_, prefix->bytes_->offset_, bytes->bytes_, 0, prefix->bytes_->length_);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(output->bytes_->bytes_, output->bytes_->offset_, bytes->bytes_, prefix->bytes_->length_, output->bytes_->length_);
    bytes->length_ = prefix->bytes_->length_ + output->bytes_->length_;
    return [self newOutputWithOrgApacheLuceneUtilBytesRef:bytes withLong:prefix->startOrd_ + output->startOrd_ withLong:prefix->endOrd_ + output->endOrd_];
  }
}

- (void)writeWithId:(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)prefix
withOrgApacheLuceneStoreDataOutput:(OrgApacheLuceneStoreDataOutput *)outArg {
  [((OrgApacheLuceneStoreDataOutput *) nil_chk(outArg)) writeVIntWithInt:((OrgApacheLuceneUtilBytesRef *) nil_chk(((OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *) nil_chk(prefix))->bytes_))->length_];
  [outArg writeBytesWithByteArray:prefix->bytes_->bytes_ withInt:prefix->bytes_->offset_ withInt:prefix->bytes_->length_];
  [outArg writeVLongWithLong:prefix->startOrd_];
  [outArg writeVLongWithLong:prefix->endOrd_];
}

- (OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)readWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  jint len = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readVInt];
  OrgApacheLuceneUtilBytesRef *bytes;
  if (len == 0) {
    bytes = OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_NO_BYTES_;
  }
  else {
    bytes = [new_OrgApacheLuceneUtilBytesRef_initWithInt_(len) autorelease];
    [inArg readBytesWithByteArray:bytes->bytes_ withInt:0 withInt:len];
    bytes->length_ = len;
  }
  jlong startOrd = [inArg readVLong];
  jlong endOrd = [inArg readVLong];
  OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *result = [self newOutputWithOrgApacheLuceneUtilBytesRef:bytes withLong:startOrd withLong:endOrd];
  return result;
}

- (void)skipOutputWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  jint len = [((OrgApacheLuceneStoreDataInput *) nil_chk(inArg)) readVInt];
  [inArg skipBytesWithLong:len];
  [inArg readVLong];
  [inArg readVLong];
}

- (void)skipFinalOutputWithOrgApacheLuceneStoreDataInput:(OrgApacheLuceneStoreDataInput *)inArg {
  [self skipOutputWithOrgApacheLuceneStoreDataInput:inArg];
}

- (OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)getNoOutput {
  return OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_NO_OUTPUT_;
}

- (NSString *)outputToStringWithId:(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)output {
  if ((((OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *) nil_chk(output))->endOrd_ == 0 || output->endOrd_ == JavaLangLong_MAX_VALUE) && output->startOrd_ == 0) {
    return @"";
  }
  else {
    return [output description];
  }
}

- (OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)newOutputWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes
                                                                                             withLong:(jlong)startOrd
                                                                                             withLong:(jlong)endOrd {
  if (((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes))->length_ == 0 && startOrd == 0 && endOrd == 0) {
    return OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_NO_OUTPUT_;
  }
  else {
    return [new_OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_(bytes, startOrd, endOrd) autorelease];
  }
}

- (jlong)ramBytesUsedWithId:(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *)output {
  return 2 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_HEADER_) + 2 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_LONG + 2 * JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF_) + JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_ARRAY_HEADER_) + 2 * OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_INT + ((OrgApacheLuceneUtilBytesRef *) nil_chk(((OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *) nil_chk(output))->bytes_))->length_;
}

- (instancetype)init {
  OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_init(self);
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_NO_OUTPUT_, new_OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_([new_OrgApacheLuceneUtilBytesRef_init() autorelease], 0, 0));
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_NO_BYTES_, new_OrgApacheLuceneUtilBytesRef_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "commonWithId:withId:", "common", "Lorg.apache.lucene.codecs.blocktreeords.FSTOrdsOutputs$Output;", 0x1, NULL, NULL },
    { "subtractWithId:withId:", "subtract", "Lorg.apache.lucene.codecs.blocktreeords.FSTOrdsOutputs$Output;", 0x1, NULL, NULL },
    { "addWithId:withId:", "add", "Lorg.apache.lucene.codecs.blocktreeords.FSTOrdsOutputs$Output;", 0x1, NULL, NULL },
    { "writeWithId:withOrgApacheLuceneStoreDataOutput:", "write", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "readWithOrgApacheLuceneStoreDataInput:", "read", "Lorg.apache.lucene.codecs.blocktreeords.FSTOrdsOutputs$Output;", 0x1, "Ljava.io.IOException;", NULL },
    { "skipOutputWithOrgApacheLuceneStoreDataInput:", "skipOutput", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "skipFinalOutputWithOrgApacheLuceneStoreDataInput:", "skipFinalOutput", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getNoOutput", NULL, "Lorg.apache.lucene.codecs.blocktreeords.FSTOrdsOutputs$Output;", 0x1, NULL, NULL },
    { "outputToStringWithId:", "outputToString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "newOutputWithOrgApacheLuceneUtilBytesRef:withLong:withLong:", "newOutput", "Lorg.apache.lucene.codecs.blocktreeords.FSTOrdsOutputs$Output;", 0x1, NULL, NULL },
    { "ramBytesUsedWithId:", "ramBytesUsed", "J", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "NO_OUTPUT_", NULL, 0x19, "Lorg.apache.lucene.codecs.blocktreeords.FSTOrdsOutputs$Output;", &OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_NO_OUTPUT_, NULL, .constantValue.asLong = 0 },
    { "NO_BYTES_", NULL, 0x1a, "Lorg.apache.lucene.util.BytesRef;", &OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_NO_BYTES_, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.codecs.blocktreeords.FSTOrdsOutputs$Output;"};
  static const char *inner_classes[] = {"Lorg.apache.lucene.codecs.blocktreeords.FSTOrdsOutputs$Output;"};
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs = { 2, "FSTOrdsOutputs", "org.apache.lucene.codecs.blocktreeords", NULL, 0x10, 12, methods, 2, fields, 1, superclass_type_args, 1, inner_classes, NULL, "Lorg/apache/lucene/util/fst/Outputs<Lorg/apache/lucene/codecs/blocktreeords/FSTOrdsOutputs$Output;>;" };
  return &_OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs;
}

@end

void OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_init(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs *self) {
  OrgApacheLuceneUtilFstOutputs_init(self);
}

OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs *new_OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_init() {
  OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs *self = [OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs alloc];
  OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs)

@implementation OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output

- (instancetype)initWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes
                                           withLong:(jlong)startOrd
                                           withLong:(jlong)endOrd {
  OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_(self, bytes, startOrd, endOrd);
  return self;
}

- (NSString *)description {
  jlong x;
  if (endOrd_ > JavaLangLong_MAX_VALUE / 2) {
    x = JavaLangLong_MAX_VALUE - endOrd_;
  }
  else {
    JreAssert((endOrd_ >= 0), (@"org/apache/lucene/codecs/blocktreeords/FSTOrdsOutputs.java:59 condition failed: assert endOrd >= 0;"));
    x = -endOrd_;
  }
  return JreStrcat("J$J", startOrd_, @" to ", x);
}

- (NSUInteger)hash {
  jint hash_ = ((jint) [((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes_)) hash]);
  hash_ = (jint) (hash_ ^ startOrd_);
  hash_ = (jint) (hash_ ^ endOrd_);
  return hash_;
}

- (jboolean)isEqual:(id)_other {
  if ([_other isKindOfClass:[OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output class]]) {
    OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *other = (OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *) check_class_cast(_other, [OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output class]);
    return [((OrgApacheLuceneUtilBytesRef *) nil_chk(bytes_)) isEqual:((OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *) nil_chk(other))->bytes_] && startOrd_ == other->startOrd_ && endOrd_ == other->endOrd_;
  }
  else {
    return NO;
  }
}

- (void)dealloc {
  RELEASE_(bytes_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneUtilBytesRef:withLong:withLong:", "Output", NULL, 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "bytes_", NULL, 0x11, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "startOrd_", NULL, 0x11, "J", NULL, NULL, .constantValue.asLong = 0 },
    { "endOrd_", NULL, 0x11, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output = { 2, "Output", "org.apache.lucene.codecs.blocktreeords", "FSTOrdsOutputs", 0x19, 4, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output;
}

@end

void OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *self, OrgApacheLuceneUtilBytesRef *bytes, jlong startOrd, jlong endOrd) {
  NSObject_init(self);
  JreAssert((startOrd >= 0), (JreStrcat("$J", @"startOrd=", startOrd)));
  JreAssert((endOrd >= 0), (JreStrcat("$J", @"endOrd=", endOrd)));
  JreStrongAssign(&self->bytes_, bytes);
  self->startOrd_ = startOrd;
  self->endOrd_ = endOrd;
}

OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *new_OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_(OrgApacheLuceneUtilBytesRef *bytes, jlong startOrd, jlong endOrd) {
  OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output *self = [OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output alloc];
  OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output_initWithOrgApacheLuceneUtilBytesRef_withLong_withLong_(self, bytes, startOrd, endOrd);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsBlocktreeordsFSTOrdsOutputs_Output)
