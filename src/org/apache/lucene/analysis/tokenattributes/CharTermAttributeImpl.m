//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/tokenattributes/CharTermAttributeImpl.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/lang/StringBuffer.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/nio/CharBuffer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttributeImpl.h"
#include "org/apache/lucene/analysis/tokenattributes/TermToBytesRefAttribute.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/AttributeImpl.h"
#include "org/apache/lucene/util/AttributeReflector.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl () {
 @public
  IOSCharArray *termBuffer_;
  jint termLength_;
}

- (void)growTermBufferWithInt:(jint)newSize;

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendNull;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl, termBuffer_, IOSCharArray *)

static jint OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_MIN_BUFFER_SIZE_ = 10;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl, MIN_BUFFER_SIZE_, jint)
J2OBJC_STATIC_FIELD_REF_GETTER(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl, MIN_BUFFER_SIZE_, jint)
__attribute__((unused)) static IOSCharArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, jint newSize);

__attribute__((unused)) static void OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_growTermBufferWithInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, jint newSize);

__attribute__((unused)) static id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendWithJavaLangCharSequence_withInt_withInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, id<JavaLangCharSequence> csq, jint start, jint end);

__attribute__((unused)) static id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self);

@implementation OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl

- (instancetype)init {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init(self);
  return self;
}

- (void)copyBufferWithCharArray:(IOSCharArray *)buffer
                        withInt:(jint)offset
                        withInt:(jint)length {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_growTermBufferWithInt_(self, length);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer, offset, termBuffer_, 0, length);
  termLength_ = length;
}

- (IOSCharArray *)buffer {
  return termBuffer_;
}

- (IOSCharArray *)resizeBufferWithInt:(jint)newSize {
  return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, newSize);
}

- (void)growTermBufferWithInt:(jint)newSize {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_growTermBufferWithInt_(self, newSize);
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)setLengthWithInt:(jint)length {
  if (length > ((IOSCharArray *) nil_chk(termBuffer_))->size_) @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$IC", @"length ", length, @" exceeds the size of the termBuffer (", termBuffer_->size_, ')')) autorelease];
  termLength_ = length;
  return self;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)setEmpty {
  termLength_ = 0;
  return self;
}

- (OrgApacheLuceneUtilBytesRef *)getBytesRef {
  [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(builder_)) copyCharsWithCharArray:termBuffer_ withInt:0 withInt:termLength_];
  return [builder_ get];
}

- (jint)length {
  return termLength_;
}

- (jchar)charAtWithInt:(jint)index {
  if (index >= termLength_) @throw [new_JavaLangIndexOutOfBoundsException_init() autorelease];
  return IOSCharArray_Get(nil_chk(termBuffer_), index);
}

- (id<JavaLangCharSequence>)subSequenceFrom:(jint)start
                                         to:(jint)end {
  if (start > termLength_ || end > termLength_) @throw [new_JavaLangIndexOutOfBoundsException_init() autorelease];
  return [NSString stringWithCharacters:termBuffer_ offset:start length:end - start];
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq {
  if (csq == nil) return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
  return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendWithJavaLangCharSequence_withInt_withInt_(self, csq, 0, [((id<JavaLangCharSequence>) nil_chk(csq)) length]);
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithJavaLangCharSequence:(id<JavaLangCharSequence>)csq
                                                                                      withInt:(jint)start
                                                                                      withInt:(jint)end {
  return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendWithJavaLangCharSequence_withInt_withInt_(self, csq, start, end);
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithChar:(jchar)c {
  jint unseq$1 = termLength_;
  *IOSCharArray_GetRef(nil_chk(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, unseq$1 + 1)), termLength_++) = c;
  return self;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithNSString:(NSString *)s {
  if (s == nil) return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
  jint len = ((jint) [((NSString *) nil_chk(s)) length]);
  [s getChars:0 sourceEnd:len destination:OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, termLength_ + len) destinationBegin:termLength_];
  termLength_ += len;
  return self;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithJavaLangStringBuilder:(JavaLangStringBuilder *)s {
  if (s == nil) return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
  jint len = [((JavaLangStringBuilder *) nil_chk(s)) length];
  [s getCharsWithInt:0 withInt:len withCharArray:OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, termLength_ + len) withInt:termLength_];
  termLength_ += len;
  return self;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:(id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)ta {
  if (ta == nil) return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
  jint len = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(ta)) length];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([ta buffer], 0, OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, termLength_ + len), termLength_, len);
  termLength_ += len;
  return self;
}

- (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)appendNull {
  return OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(self);
}

- (NSUInteger)hash {
  jint code = termLength_;
  code = code * 31 + OrgApacheLuceneUtilArrayUtil_hashCodeWithCharArray_withInt_withInt_(termBuffer_, 0, termLength_);
  return code;
}

- (void)clear {
  termLength_ = 0;
}

- (OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *)clone {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *t = (OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *) check_class_cast([super clone], [OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl class]);
  JreStrongAssignAndConsume(&((OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *) nil_chk(t))->termBuffer_, [IOSCharArray newArrayWithLength:self->termLength_]);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->termBuffer_, 0, t->termBuffer_, 0, self->termLength_);
  JreStrongAssignAndConsume(&t->builder_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
  [t->builder_ copyBytesWithOrgApacheLuceneUtilBytesRef:[builder_ get]];
  return t;
}

- (jboolean)isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if ([other isKindOfClass:[OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl class]]) {
    OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *o = ((OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *) check_class_cast(other, [OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl class]));
    if (termLength_ != ((OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *) nil_chk(o))->termLength_) return NO;
    for (jint i = 0; i < termLength_; i++) {
      if (IOSCharArray_Get(nil_chk(termBuffer_), i) != IOSCharArray_Get(o->termBuffer_, i)) {
        return NO;
      }
    }
    return YES;
  }
  return NO;
}

- (NSString *)description {
  return [NSString stringWithCharacters:termBuffer_ offset:0 length:termLength_];
}

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector {
  [((id<OrgApacheLuceneUtilAttributeReflector>) nil_chk(reflector)) reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_() withNSString:@"term" withId:[self description]];
  [reflector reflectWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_() withNSString:@"bytes" withId:[self getBytesRef]];
}

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target {
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> t = (id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) check_protocol_cast(target, OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_());
  [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(t)) copyBufferWithCharArray:termBuffer_ withInt:0 withInt:termLength_];
}

- (void)dealloc {
  RELEASE_(termBuffer_);
  RELEASE_(builder_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CharTermAttributeImpl", NULL, 0x1, NULL, NULL },
    { "copyBufferWithCharArray:withInt:withInt:", "copyBuffer", "V", 0x11, NULL, NULL },
    { "buffer", NULL, "[C", 0x11, NULL, NULL },
    { "resizeBufferWithInt:", "resizeBuffer", "[C", 0x11, NULL, NULL },
    { "growTermBufferWithInt:", "growTermBuffer", "V", 0x2, NULL, NULL },
    { "setLengthWithInt:", "setLength", "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x11, NULL, NULL },
    { "setEmpty", NULL, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x11, NULL, NULL },
    { "getBytesRef", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "length", NULL, "I", 0x11, NULL, NULL },
    { "charAtWithInt:", "charAt", "C", 0x11, NULL, NULL },
    { "subSequenceFrom:to:", "subSequence", "Ljava.lang.CharSequence;", 0x11, NULL, NULL },
    { "appendWithJavaLangCharSequence:", "append", "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x11, NULL, NULL },
    { "appendWithJavaLangCharSequence:withInt:withInt:", "append", "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x11, NULL, NULL },
    { "appendWithChar:", "append", "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x11, NULL, NULL },
    { "appendWithNSString:", "append", "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x11, NULL, NULL },
    { "appendWithJavaLangStringBuilder:", "append", "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x11, NULL, NULL },
    { "appendWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:", "append", "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x11, NULL, NULL },
    { "appendNull", NULL, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x2, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "clear", NULL, "V", 0x1, NULL, NULL },
    { "clone", NULL, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "reflectWithWithOrgApacheLuceneUtilAttributeReflector:", "reflectWith", "V", 0x1, NULL, NULL },
    { "copyToWithOrgApacheLuceneUtilAttributeImpl:", "copyTo", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MIN_BUFFER_SIZE_", NULL, 0xa, "I", &OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_MIN_BUFFER_SIZE_, NULL, .constantValue.asLong = 0 },
    { "termBuffer_", NULL, 0x2, "[C", NULL, NULL, .constantValue.asLong = 0 },
    { "termLength_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "builder_", NULL, 0x4, "Lorg.apache.lucene.util.BytesRefBuilder;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl = { 2, "CharTermAttributeImpl", "org.apache.lucene.analysis.tokenattributes", NULL, 0x1, 25, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl;
}

@end

void OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self) {
  OrgApacheLuceneUtilAttributeImpl_init(self);
  JreStrongAssignAndConsume(&self->termBuffer_, [IOSCharArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_MIN_BUFFER_SIZE_, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR)]);
  self->termLength_ = 0;
  JreStrongAssignAndConsume(&self->builder_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
}

OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init() {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self = [OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl alloc];
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_init(self);
  return self;
}

IOSCharArray *OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, jint newSize) {
  if (((IOSCharArray *) nil_chk(self->termBuffer_))->size_ < newSize) {
    IOSCharArray *newCharBuffer = [IOSCharArray arrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(newSize, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR)];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->termBuffer_, 0, newCharBuffer, 0, self->termBuffer_->size_);
    JreStrongAssign(&self->termBuffer_, newCharBuffer);
  }
  return self->termBuffer_;
}

void OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_growTermBufferWithInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, jint newSize) {
  if (((IOSCharArray *) nil_chk(self->termBuffer_))->size_ < newSize) {
    JreStrongAssignAndConsume(&self->termBuffer_, [IOSCharArray newArrayWithLength:OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(newSize, OrgApacheLuceneUtilRamUsageEstimator_NUM_BYTES_CHAR)]);
  }
}

id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendWithJavaLangCharSequence_withInt_withInt_(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self, id<JavaLangCharSequence> csq, jint start, jint end) {
  if (csq == nil) csq = @"null";
  jint len = end - start, csqlen = [((id<JavaLangCharSequence>) nil_chk(csq)) length];
  if (len < 0 || start > csqlen || end > csqlen) @throw [new_JavaLangIndexOutOfBoundsException_init() autorelease];
  if (len == 0) return self;
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, self->termLength_ + len);
  if (len > 4) {
    if ([csq isKindOfClass:[NSString class]]) {
      [((NSString *) check_class_cast(csq, [NSString class])) getChars:start sourceEnd:end destination:self->termBuffer_ destinationBegin:self->termLength_];
    }
    else if ([csq isKindOfClass:[JavaLangStringBuilder class]]) {
      [((JavaLangStringBuilder *) check_class_cast(csq, [JavaLangStringBuilder class])) getCharsWithInt:start withInt:end withCharArray:self->termBuffer_ withInt:self->termLength_];
    }
    else if ([OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_() isInstance:csq]) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) check_protocol_cast(csq, OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_())) buffer], start, self->termBuffer_, self->termLength_, len);
    }
    else if ([csq isKindOfClass:[JavaNioCharBuffer class]] && [((JavaNioCharBuffer *) check_class_cast(csq, [JavaNioCharBuffer class])) hasArray]) {
      JavaNioCharBuffer *cb = (JavaNioCharBuffer *) check_class_cast(csq, [JavaNioCharBuffer class]);
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_([cb array], [cb arrayOffset] + [cb position] + start, self->termBuffer_, self->termLength_, len);
    }
    else if ([csq isKindOfClass:[JavaLangStringBuffer class]]) {
      [((JavaLangStringBuffer *) check_class_cast(csq, [JavaLangStringBuffer class])) getCharsWithInt:start withInt:end withCharArray:self->termBuffer_ withInt:self->termLength_];
    }
    else {
      while (start < end) *IOSCharArray_GetRef(nil_chk(self->termBuffer_), self->termLength_++) = [csq charAtWithInt:start++];
      return self;
    }
    self->termLength_ += len;
    return self;
  }
  else {
    while (start < end) *IOSCharArray_GetRef(nil_chk(self->termBuffer_), self->termLength_++) = [csq charAtWithInt:start++];
    return self;
  }
}

id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_appendNull(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl *self) {
  OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl_resizeBufferWithInt_(self, self->termLength_ + 4);
  *IOSCharArray_GetRef(nil_chk(self->termBuffer_), self->termLength_++) = 'n';
  *IOSCharArray_GetRef(self->termBuffer_, self->termLength_++) = 'u';
  *IOSCharArray_GetRef(self->termBuffer_, self->termLength_++) = 'l';
  *IOSCharArray_GetRef(self->termBuffer_, self->termLength_++) = 'l';
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesCharTermAttributeImpl)
