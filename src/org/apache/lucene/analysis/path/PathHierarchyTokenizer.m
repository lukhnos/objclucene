//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/path/PathHierarchyTokenizer.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/path/PathHierarchyTokenizer.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/util/AttributeFactory.h"
#include "org/apache/lucene/util/AttributeSource.h"

#define OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_BUFFER_SIZE 1024

@interface OrgApacheLuceneAnalysisPathPathHierarchyTokenizer () {
 @public
  jchar delimiter_;
  jchar replacement_;
  jint skip_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posAtt_;
  jint startPosition_;
  jint skipped_;
  jboolean endDelimiter_;
  JavaLangStringBuilder *resultToken_;
  jint charsRead_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPathPathHierarchyTokenizer, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPathPathHierarchyTokenizer, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPathPathHierarchyTokenizer, posAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisPathPathHierarchyTokenizer, resultToken_, JavaLangStringBuilder *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisPathPathHierarchyTokenizer, DEFAULT_BUFFER_SIZE, jint)

@implementation OrgApacheLuceneAnalysisPathPathHierarchyTokenizer

- (instancetype)init {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_init(self);
  return self;
}

- (instancetype)initWithInt:(jint)skip {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_(self, skip);
  return self;
}

- (instancetype)initWithInt:(jint)bufferSize
                   withChar:(jchar)delimiter {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_withChar_(self, bufferSize, delimiter);
  return self;
}

- (instancetype)initWithChar:(jchar)delimiter
                    withChar:(jchar)replacement {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithChar_withChar_(self, delimiter, replacement);
  return self;
}

- (instancetype)initWithChar:(jchar)delimiter
                    withChar:(jchar)replacement
                     withInt:(jint)skip {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithChar_withChar_withInt_(self, delimiter, replacement, skip);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                                   withChar:(jchar)delimiter
                                                   withChar:(jchar)replacement
                                                    withInt:(jint)skip {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withChar_withChar_withInt_(self, factory, delimiter, replacement, skip);
  return self;
}

- (instancetype)initWithInt:(jint)bufferSize
                   withChar:(jchar)delimiter
                   withChar:(jchar)replacement
                    withInt:(jint)skip {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_withChar_withChar_withInt_(self, bufferSize, delimiter, replacement, skip);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory
                                                    withInt:(jint)bufferSize
                                                   withChar:(jchar)delimiter
                                                   withChar:(jchar)replacement
                                                    withInt:(jint)skip {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withChar_withChar_withInt_(self, factory, bufferSize, delimiter, replacement, skip);
  return self;
}

- (jboolean)incrementToken {
  [self clearAttributes];
  [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) appendWithJavaLangStringBuilder:resultToken_];
  if ([((JavaLangStringBuilder *) nil_chk(resultToken_)) length] == 0) {
    [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posAtt_)) setPositionIncrementWithInt:1];
  }
  else {
    [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posAtt_)) setPositionIncrementWithInt:0];
  }
  jint length = 0;
  jboolean added = NO;
  if (endDelimiter_) {
    [termAtt_ appendWithChar:replacement_];
    length++;
    endDelimiter_ = NO;
    added = YES;
  }
  while (YES) {
    jint c = [((JavaIoReader *) nil_chk(input_)) read];
    if (c >= 0) {
      charsRead_++;
    }
    else {
      if (skipped_ > skip_) {
        length += [resultToken_ length];
        [termAtt_ setLengthWithInt:length];
        [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:[self correctOffsetWithInt:startPosition_] withInt:[self correctOffsetWithInt:startPosition_ + length]];
        if (added) {
          [resultToken_ setLengthWithInt:0];
          [resultToken_ appendWithCharArray:[termAtt_ buffer] withInt:0 withInt:length];
        }
        return added;
      }
      else {
        return NO;
      }
    }
    if (!added) {
      added = YES;
      skipped_++;
      if (skipped_ > skip_) {
        [termAtt_ appendWithChar:c == delimiter_ ? replacement_ : (jchar) c];
        length++;
      }
      else {
        startPosition_++;
      }
    }
    else {
      if (c == delimiter_) {
        if (skipped_ > skip_) {
          endDelimiter_ = YES;
          break;
        }
        skipped_++;
        if (skipped_ > skip_) {
          [termAtt_ appendWithChar:replacement_];
          length++;
        }
        else {
          startPosition_++;
        }
      }
      else {
        if (skipped_ > skip_) {
          [termAtt_ appendWithChar:(jchar) c];
          length++;
        }
        else {
          startPosition_++;
        }
      }
    }
  }
  length += [resultToken_ length];
  [termAtt_ setLengthWithInt:length];
  [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:[self correctOffsetWithInt:startPosition_] withInt:[self correctOffsetWithInt:startPosition_ + length]];
  [resultToken_ setLengthWithInt:0];
  [resultToken_ appendWithCharArray:[termAtt_ buffer] withInt:0 withInt:length];
  return YES;
}

- (void)end {
  [super end];
  jint finalOffset = [self correctOffsetWithInt:charsRead_];
  [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:finalOffset withInt:finalOffset];
}

- (void)reset {
  [super reset];
  [((JavaLangStringBuilder *) nil_chk(resultToken_)) setLengthWithInt:0];
  charsRead_ = 0;
  endDelimiter_ = NO;
  skipped_ = 0;
  startPosition_ = 0;
}

- (void)dealloc {
  RELEASE_(termAtt_);
  RELEASE_(offsetAtt_);
  RELEASE_(posAtt_);
  RELEASE_(resultToken_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "PathHierarchyTokenizer", NULL, 0x1, NULL, NULL },
    { "initWithInt:", "PathHierarchyTokenizer", NULL, 0x1, NULL, NULL },
    { "initWithInt:withChar:", "PathHierarchyTokenizer", NULL, 0x1, NULL, NULL },
    { "initWithChar:withChar:", "PathHierarchyTokenizer", NULL, 0x1, NULL, NULL },
    { "initWithChar:withChar:withInt:", "PathHierarchyTokenizer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeFactory:withChar:withChar:withInt:", "PathHierarchyTokenizer", NULL, 0x1, NULL, NULL },
    { "initWithInt:withChar:withChar:withInt:", "PathHierarchyTokenizer", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeFactory:withInt:withChar:withChar:withInt:", "PathHierarchyTokenizer", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x11, "Ljava.io.IOException;", NULL },
    { "end", NULL, "V", 0x11, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_BUFFER_SIZE", "DEFAULT_BUFFER_SIZE", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_BUFFER_SIZE },
    { "DEFAULT_DELIMITER", "DEFAULT_DELIMITER", 0x19, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_DELIMITER },
    { "DEFAULT_SKIP", "DEFAULT_SKIP", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_SKIP },
    { "delimiter_", NULL, 0x12, "C", NULL, NULL, .constantValue.asLong = 0 },
    { "replacement_", NULL, 0x12, "C", NULL, NULL, .constantValue.asLong = 0 },
    { "skip_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "startPosition_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "skipped_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "endDelimiter_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "resultToken_", NULL, 0x2, "Ljava.lang.StringBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "charsRead_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPathPathHierarchyTokenizer = { 2, "PathHierarchyTokenizer", "org.apache.lucene.analysis.path", NULL, 0x1, 11, methods, 14, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPathPathHierarchyTokenizer;
}

@end

void OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_init(OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self) {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_withChar_withChar_withInt_(self, OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_BUFFER_SIZE, OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_DELIMITER, OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_DELIMITER, OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_SKIP);
}

OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *new_OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_init() {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self = [OrgApacheLuceneAnalysisPathPathHierarchyTokenizer alloc];
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_init(self);
  return self;
}

void OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_(OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self, jint skip) {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_withChar_withChar_withInt_(self, OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_BUFFER_SIZE, OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_DELIMITER, OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_DELIMITER, skip);
}

OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *new_OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_(jint skip) {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self = [OrgApacheLuceneAnalysisPathPathHierarchyTokenizer alloc];
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_(self, skip);
  return self;
}

void OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_withChar_(OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self, jint bufferSize, jchar delimiter) {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_withChar_withChar_withInt_(self, bufferSize, delimiter, delimiter, OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_SKIP);
}

OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *new_OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_withChar_(jint bufferSize, jchar delimiter) {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self = [OrgApacheLuceneAnalysisPathPathHierarchyTokenizer alloc];
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_withChar_(self, bufferSize, delimiter);
  return self;
}

void OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithChar_withChar_(OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self, jchar delimiter, jchar replacement) {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_withChar_withChar_withInt_(self, OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_BUFFER_SIZE, delimiter, replacement, OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_SKIP);
}

OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *new_OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithChar_withChar_(jchar delimiter, jchar replacement) {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self = [OrgApacheLuceneAnalysisPathPathHierarchyTokenizer alloc];
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithChar_withChar_(self, delimiter, replacement);
  return self;
}

void OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithChar_withChar_withInt_(OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self, jchar delimiter, jchar replacement, jint skip) {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_withChar_withChar_withInt_(self, OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_BUFFER_SIZE, delimiter, replacement, skip);
}

OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *new_OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithChar_withChar_withInt_(jchar delimiter, jchar replacement, jint skip) {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self = [OrgApacheLuceneAnalysisPathPathHierarchyTokenizer alloc];
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithChar_withChar_withInt_(self, delimiter, replacement, skip);
  return self;
}

void OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withChar_withChar_withInt_(OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, jchar delimiter, jchar replacement, jint skip) {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withChar_withChar_withInt_(self, factory, OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_DEFAULT_BUFFER_SIZE, delimiter, replacement, skip);
}

OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *new_OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withChar_withChar_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jchar delimiter, jchar replacement, jint skip) {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self = [OrgApacheLuceneAnalysisPathPathHierarchyTokenizer alloc];
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withChar_withChar_withInt_(self, factory, delimiter, replacement, skip);
  return self;
}

void OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_withChar_withChar_withInt_(OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self, jint bufferSize, jchar delimiter, jchar replacement, jint skip) {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withChar_withChar_withInt_(self, JreLoadStatic(OrgApacheLuceneAnalysisTokenStream, DEFAULT_TOKEN_ATTRIBUTE_FACTORY_), bufferSize, delimiter, replacement, skip);
}

OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *new_OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_withChar_withChar_withInt_(jint bufferSize, jchar delimiter, jchar replacement, jint skip) {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self = [OrgApacheLuceneAnalysisPathPathHierarchyTokenizer alloc];
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithInt_withChar_withChar_withInt_(self, bufferSize, delimiter, replacement, skip);
  return self;
}

void OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withChar_withChar_withInt_(OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory, jint bufferSize, jchar delimiter, jchar replacement, jint skip) {
  OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->posAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  self->startPosition_ = 0;
  self->skipped_ = 0;
  self->endDelimiter_ = NO;
  self->charsRead_ = 0;
  if (bufferSize < 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"bufferSize cannot be negative") autorelease];
  }
  if (skip < 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"skip cannot be negative") autorelease];
  }
  [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->termAtt_)) resizeBufferWithInt:bufferSize];
  self->delimiter_ = delimiter;
  self->replacement_ = replacement;
  self->skip_ = skip;
  JreStrongAssignAndConsume(&self->resultToken_, new_JavaLangStringBuilder_initWithInt_(bufferSize));
}

OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *new_OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withChar_withChar_withInt_(OrgApacheLuceneUtilAttributeFactory *factory, jint bufferSize, jchar delimiter, jchar replacement, jint skip) {
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer *self = [OrgApacheLuceneAnalysisPathPathHierarchyTokenizer alloc];
  OrgApacheLuceneAnalysisPathPathHierarchyTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_withChar_withChar_withInt_(self, factory, bufferSize, delimiter, replacement, skip);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPathPathHierarchyTokenizer)
