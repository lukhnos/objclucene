//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/CharTokenizer.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/lang/Character.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/util/CharTokenizer.h"
#include "org/apache/lucene/analysis/util/CharacterUtils.h"
#include "org/apache/lucene/util/AttributeFactory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/util/CharTokenizer must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisUtilCharTokenizer () {
 @public
  jint offset_;
  jint bufferIndex_;
  jint dataLen_;
  jint finalOffset_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
  OrgApacheLuceneAnalysisUtilCharacterUtils *charUtils_;
  OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *ioBuffer_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilCharTokenizer, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilCharTokenizer, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilCharTokenizer, charUtils_, OrgApacheLuceneAnalysisUtilCharacterUtils *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilCharTokenizer, ioBuffer_, OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *)

inline jint OrgApacheLuceneAnalysisUtilCharTokenizer_get_MAX_WORD_LEN(void);
#define OrgApacheLuceneAnalysisUtilCharTokenizer_MAX_WORD_LEN 255
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisUtilCharTokenizer, MAX_WORD_LEN, jint)

inline jint OrgApacheLuceneAnalysisUtilCharTokenizer_get_IO_BUFFER_SIZE(void);
#define OrgApacheLuceneAnalysisUtilCharTokenizer_IO_BUFFER_SIZE 4096
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisUtilCharTokenizer, IO_BUFFER_SIZE, jint)

@implementation OrgApacheLuceneAnalysisUtilCharTokenizer

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisUtilCharTokenizer_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  OrgApacheLuceneAnalysisUtilCharTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  return self;
}

- (jboolean)isTokenCharWithInt:(jint)c {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)normalizeWithInt:(jint)c {
  return c;
}

- (jboolean)incrementToken {
  [self clearAttributes];
  jint length = 0;
  jint start = -1;
  jint end = -1;
  IOSCharArray *buffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer];
  while (true) {
    if (bufferIndex_ >= dataLen_) {
      offset_ += dataLen_;
      [((OrgApacheLuceneAnalysisUtilCharacterUtils *) nil_chk(charUtils_)) fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:ioBuffer_ withJavaIoReader:input_];
      if ([((OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *) nil_chk(ioBuffer_)) getLength] == 0) {
        dataLen_ = 0;
        if (length > 0) {
          break;
        }
        else {
          finalOffset_ = [self correctOffsetWithInt:offset_];
          return false;
        }
      }
      dataLen_ = [ioBuffer_ getLength];
      bufferIndex_ = 0;
    }
    jint c = [((OrgApacheLuceneAnalysisUtilCharacterUtils *) nil_chk(charUtils_)) codePointAtWithCharArray:[((OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *) nil_chk(ioBuffer_)) getBuffer] withInt:bufferIndex_ withInt:[ioBuffer_ getLength]];
    jint charCount = JavaLangCharacter_charCountWithInt_(c);
    bufferIndex_ += charCount;
    if ([self isTokenCharWithInt:c]) {
      if (length == 0) {
        JreAssert(start == -1, @"org/apache/lucene/analysis/util/CharTokenizer.java:107 condition failed: assert start == -1;");
        start = offset_ + bufferIndex_ - charCount;
        end = start;
      }
      else if (length >= ((IOSCharArray *) nil_chk(buffer))->size_ - 1) {
        buffer = [termAtt_ resizeBufferWithInt:2 + length];
      }
      end += charCount;
      length += JavaLangCharacter_toCharsWithInt_withCharArray_withInt_([self normalizeWithInt:c], buffer, length);
      if (length >= OrgApacheLuceneAnalysisUtilCharTokenizer_MAX_WORD_LEN) break;
    }
    else if (length > 0) break;
  }
  [termAtt_ setLengthWithInt:length];
  JreAssert(start != -1, @"org/apache/lucene/analysis/util/CharTokenizer.java:122 condition failed: assert start != -1;");
  [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:[self correctOffsetWithInt:start] withInt:finalOffset_ = [self correctOffsetWithInt:end]];
  return true;
}

- (void)end {
  [super end];
  [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:finalOffset_ withInt:finalOffset_];
}

- (void)reset {
  [super reset];
  bufferIndex_ = 0;
  offset_ = 0;
  dataLen_ = 0;
  finalOffset_ = 0;
  [((OrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer *) nil_chk(ioBuffer_)) reset];
}

- (void)dealloc {
  RELEASE_(termAtt_);
  RELEASE_(offsetAtt_);
  RELEASE_(charUtils_);
  RELEASE_(ioBuffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x404, 1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x4, 3, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, 4, -1, -1, -1 },
    { NULL, "V", 0x11, -1, -1, 4, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 4, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithOrgApacheLuceneUtilAttributeFactory:);
  methods[2].selector = @selector(isTokenCharWithInt:);
  methods[3].selector = @selector(normalizeWithInt:);
  methods[4].selector = @selector(incrementToken);
  methods[5].selector = @selector(end);
  methods[6].selector = @selector(reset);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "offset_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bufferIndex_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "dataLen_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "finalOffset_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "MAX_WORD_LEN", "I", .constantValue.asInt = OrgApacheLuceneAnalysisUtilCharTokenizer_MAX_WORD_LEN, 0x1a, -1, -1, -1, -1 },
    { "IO_BUFFER_SIZE", "I", .constantValue.asInt = OrgApacheLuceneAnalysisUtilCharTokenizer_IO_BUFFER_SIZE, 0x1a, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "offsetAtt_", "LOrgApacheLuceneAnalysisTokenattributesOffsetAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "charUtils_", "LOrgApacheLuceneAnalysisUtilCharacterUtils;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "ioBuffer_", "LOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilAttributeFactory;", "isTokenChar", "I", "normalize", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisUtilCharTokenizer = { "CharTokenizer", "org.apache.lucene.analysis.util", ptrTable, methods, fields, 7, 0x401, 7, 10, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisUtilCharTokenizer;
}

@end

void OrgApacheLuceneAnalysisUtilCharTokenizer_init(OrgApacheLuceneAnalysisUtilCharTokenizer *self) {
  OrgApacheLuceneAnalysisTokenizer_init(self);
  self->offset_ = 0;
  self->bufferIndex_ = 0;
  self->dataLen_ = 0;
  self->finalOffset_ = 0;
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->charUtils_, OrgApacheLuceneAnalysisUtilCharacterUtils_getInstance());
  JreStrongAssign(&self->ioBuffer_, OrgApacheLuceneAnalysisUtilCharacterUtils_newCharacterBufferWithInt_(OrgApacheLuceneAnalysisUtilCharTokenizer_IO_BUFFER_SIZE));
}

void OrgApacheLuceneAnalysisUtilCharTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneAnalysisUtilCharTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory) {
  OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  self->offset_ = 0;
  self->bufferIndex_ = 0;
  self->dataLen_ = 0;
  self->finalOffset_ = 0;
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->charUtils_, OrgApacheLuceneAnalysisUtilCharacterUtils_getInstance());
  JreStrongAssign(&self->ioBuffer_, OrgApacheLuceneAnalysisUtilCharacterUtils_newCharacterBufferWithInt_(OrgApacheLuceneAnalysisUtilCharTokenizer_IO_BUFFER_SIZE));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisUtilCharTokenizer)
