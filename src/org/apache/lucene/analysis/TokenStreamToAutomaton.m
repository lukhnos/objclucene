//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/TokenStreamToAutomaton.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Character.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/TokenStreamToAutomaton.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionLengthAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/TermToBytesRefAttribute.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/RollingBuffer.h"
#include "org/apache/lucene/util/automaton/Automaton.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/TokenStreamToAutomaton must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneAnalysisTokenStreamToAutomaton () {
 @public
  jboolean preservePositionIncrements_;
  jboolean unicodeArcs_;
}

+ (void)addHolesWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)builder
                             withOrgApacheLuceneUtilRollingBuffer:(OrgApacheLuceneUtilRollingBuffer *)positions
                                                          withInt:(jint)pos;

@end

__attribute__((unused)) static void OrgApacheLuceneAnalysisTokenStreamToAutomaton_addHolesWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilRollingBuffer_withInt_(OrgApacheLuceneUtilAutomatonAutomaton_Builder *builder, OrgApacheLuceneUtilRollingBuffer *positions, jint pos);

@interface OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position : NSObject < OrgApacheLuceneUtilRollingBuffer_Resettable > {
 @public
  jint arriving_;
  jint leaving_;
}

- (instancetype)init;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position)

__attribute__((unused)) static void OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position_init(OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *new_OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *create_OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position)

@interface OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions : OrgApacheLuceneUtilRollingBuffer

- (instancetype)init;

- (OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *)newInstance OBJC_METHOD_FAMILY_NONE;

- (OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *)getWithInt:(jint)arg0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions)

__attribute__((unused)) static void OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions_init(OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions *new_OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions *create_OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions)

@implementation OrgApacheLuceneAnalysisTokenStreamToAutomaton

+ (jint)POS_SEP {
  return OrgApacheLuceneAnalysisTokenStreamToAutomaton_POS_SEP;
}

+ (jint)HOLE {
  return OrgApacheLuceneAnalysisTokenStreamToAutomaton_HOLE;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenStreamToAutomaton_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setPreservePositionIncrementsWithBoolean:(jboolean)enablePositionIncrements {
  self->preservePositionIncrements_ = enablePositionIncrements;
}

- (void)setUnicodeArcsWithBoolean:(jboolean)unicodeArcs {
  self->unicodeArcs_ = unicodeArcs;
}

- (OrgApacheLuceneUtilBytesRef *)changeTokenWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)inArg {
  return inArg;
}

- (OrgApacheLuceneUtilAutomatonAutomaton *)toAutomatonWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg {
  OrgApacheLuceneUtilAutomatonAutomaton_Builder *builder = create_OrgApacheLuceneUtilAutomatonAutomaton_Builder_init();
  [builder createState];
  id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute> termBytesAtt = ((id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute>) [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(inArg)) addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_()]);
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncAtt = ((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) [inArg addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute> posLengthAtt = ((id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>) [inArg addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_class_()]);
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt = ((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) [inArg addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  [inArg reset];
  OrgApacheLuceneUtilRollingBuffer *positions = create_OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions_init();
  jint pos = -1;
  OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *posData = nil;
  jint maxOffset = 0;
  while ([inArg incrementToken]) {
    jint posInc = [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncAtt)) getPositionIncrement];
    if (!preservePositionIncrements_ && posInc > 1) {
      posInc = 1;
    }
    JreAssert(pos > -1 || posInc > 0, @"org/apache/lucene/analysis/TokenStreamToAutomaton.java:123 condition failed: assert pos > -1 || posInc > 0;");
    if (posInc > 0) {
      pos += posInc;
      posData = ((OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *) [positions getWithInt:pos]);
      JreAssert(((OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *) nil_chk(posData))->leaving_ == -1, @"org/apache/lucene/analysis/TokenStreamToAutomaton.java:131 condition failed: assert posData.leaving == -1;");
      if (posData->arriving_ == -1) {
        if (pos == 0) {
          posData->leaving_ = 0;
        }
        else {
          posData->leaving_ = [builder createState];
          OrgApacheLuceneAnalysisTokenStreamToAutomaton_addHolesWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilRollingBuffer_withInt_(builder, positions, pos);
        }
      }
      else {
        posData->leaving_ = [builder createState];
        [builder addTransitionWithInt:posData->arriving_ withInt:posData->leaving_ withInt:OrgApacheLuceneAnalysisTokenStreamToAutomaton_POS_SEP];
        if (posInc > 1) {
          OrgApacheLuceneAnalysisTokenStreamToAutomaton_addHolesWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilRollingBuffer_withInt_(builder, positions, pos);
        }
      }
      [positions freeBeforeWithInt:pos];
    }
    jint endPos = pos + [((id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>) nil_chk(posLengthAtt)) getPositionLength];
    OrgApacheLuceneUtilBytesRef *termUTF8 = [self changeTokenWithOrgApacheLuceneUtilBytesRef:[((id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute>) nil_chk(termBytesAtt)) getBytesRef]];
    IOSIntArray *termUnicode = nil;
    OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *endPosData = ((OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *) [positions getWithInt:endPos]);
    if (((OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *) nil_chk(endPosData))->arriving_ == -1) {
      endPosData->arriving_ = [builder createState];
    }
    jint termLen;
    if (unicodeArcs_) {
      NSString *utf16 = [((OrgApacheLuceneUtilBytesRef *) nil_chk(termUTF8)) utf8ToString];
      termUnicode = [IOSIntArray arrayWithLength:[((NSString *) nil_chk(utf16)) java_codePointCount:0 endIndex:[utf16 java_length]]];
      termLen = termUnicode->size_;
      for (jint cp, i = 0, j = 0; i < [utf16 java_length]; i += JavaLangCharacter_charCountWithInt_(cp)) {
        *IOSIntArray_GetRef(termUnicode, j++) = cp = [utf16 java_codePointAt:i];
      }
    }
    else {
      termLen = ((OrgApacheLuceneUtilBytesRef *) nil_chk(termUTF8))->length_;
    }
    jint state = ((OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *) nil_chk(posData))->leaving_;
    for (jint byteIDX = 0; byteIDX < termLen; byteIDX++) {
      jint nextState = byteIDX == termLen - 1 ? endPosData->arriving_ : [builder createState];
      jint c;
      if (unicodeArcs_) {
        c = IOSIntArray_Get(nil_chk(termUnicode), byteIDX);
      }
      else {
        c = IOSByteArray_Get(nil_chk(termUTF8->bytes_), termUTF8->offset_ + byteIDX) & (jint) 0xff;
      }
      [builder addTransitionWithInt:state withInt:nextState withInt:c];
      state = nextState;
    }
    maxOffset = JavaLangMath_maxWithInt_withInt_(maxOffset, [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt)) endOffset]);
  }
  [inArg end];
  jint endState = -1;
  if ([((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt)) endOffset] > maxOffset) {
    endState = [builder createState];
    [builder setAcceptWithInt:endState withBoolean:true];
  }
  pos++;
  while (pos <= [positions getMaxPos]) {
    posData = ((OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *) [positions getWithInt:pos]);
    if (((OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *) nil_chk(posData))->arriving_ != -1) {
      if (endState != -1) {
        [builder addTransitionWithInt:posData->arriving_ withInt:endState withInt:OrgApacheLuceneAnalysisTokenStreamToAutomaton_POS_SEP];
      }
      else {
        [builder setAcceptWithInt:posData->arriving_ withBoolean:true];
      }
    }
    pos++;
  }
  return [builder finish];
}

+ (void)addHolesWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:(OrgApacheLuceneUtilAutomatonAutomaton_Builder *)builder
                             withOrgApacheLuceneUtilRollingBuffer:(OrgApacheLuceneUtilRollingBuffer *)positions
                                                          withInt:(jint)pos {
  OrgApacheLuceneAnalysisTokenStreamToAutomaton_addHolesWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilRollingBuffer_withInt_(builder, positions, pos);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x4, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilAutomatonAutomaton;", 0x1, 5, 6, 7, -1, -1, -1 },
    { NULL, "V", 0xa, 8, 9, -1, 10, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setPreservePositionIncrementsWithBoolean:);
  methods[2].selector = @selector(setUnicodeArcsWithBoolean:);
  methods[3].selector = @selector(changeTokenWithOrgApacheLuceneUtilBytesRef:);
  methods[4].selector = @selector(toAutomatonWithOrgApacheLuceneAnalysisTokenStream:);
  methods[5].selector = @selector(addHolesWithOrgApacheLuceneUtilAutomatonAutomaton_Builder:withOrgApacheLuceneUtilRollingBuffer:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "preservePositionIncrements_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "unicodeArcs_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "POS_SEP", "I", .constantValue.asInt = OrgApacheLuceneAnalysisTokenStreamToAutomaton_POS_SEP, 0x19, -1, -1, -1, -1 },
    { "HOLE", "I", .constantValue.asInt = OrgApacheLuceneAnalysisTokenStreamToAutomaton_HOLE, 0x19, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setPreservePositionIncrements", "Z", "setUnicodeArcs", "changeToken", "LOrgApacheLuceneUtilBytesRef;", "toAutomaton", "LOrgApacheLuceneAnalysisTokenStream;", "LJavaIoIOException;", "addHoles", "LOrgApacheLuceneUtilAutomatonAutomaton_Builder;LOrgApacheLuceneUtilRollingBuffer;I", "(Lorg/apache/lucene/util/automaton/Automaton$Builder;Lorg/apache/lucene/util/RollingBuffer<Lorg/apache/lucene/analysis/TokenStreamToAutomaton$Position;>;I)V", "LOrgApacheLuceneAnalysisTokenStreamToAutomaton_Position;LOrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenStreamToAutomaton = { "TokenStreamToAutomaton", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0x1, 6, 4, -1, 11, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisTokenStreamToAutomaton;
}

@end

void OrgApacheLuceneAnalysisTokenStreamToAutomaton_init(OrgApacheLuceneAnalysisTokenStreamToAutomaton *self) {
  NSObject_init(self);
  self->preservePositionIncrements_ = true;
}

OrgApacheLuceneAnalysisTokenStreamToAutomaton *new_OrgApacheLuceneAnalysisTokenStreamToAutomaton_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTokenStreamToAutomaton, init)
}

OrgApacheLuceneAnalysisTokenStreamToAutomaton *create_OrgApacheLuceneAnalysisTokenStreamToAutomaton_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTokenStreamToAutomaton, init)
}

void OrgApacheLuceneAnalysisTokenStreamToAutomaton_addHolesWithOrgApacheLuceneUtilAutomatonAutomaton_Builder_withOrgApacheLuceneUtilRollingBuffer_withInt_(OrgApacheLuceneUtilAutomatonAutomaton_Builder *builder, OrgApacheLuceneUtilRollingBuffer *positions, jint pos) {
  OrgApacheLuceneAnalysisTokenStreamToAutomaton_initialize();
  OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *posData = JreRetainedLocalValue([((OrgApacheLuceneUtilRollingBuffer *) nil_chk(positions)) getWithInt:pos]);
  OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *prevPosData = JreRetainedLocalValue([positions getWithInt:pos - 1]);
  while (((OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *) nil_chk(posData))->arriving_ == -1 || ((OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *) nil_chk(prevPosData))->leaving_ == -1) {
    if (posData->arriving_ == -1) {
      posData->arriving_ = [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(builder)) createState];
      [builder addTransitionWithInt:posData->arriving_ withInt:posData->leaving_ withInt:OrgApacheLuceneAnalysisTokenStreamToAutomaton_POS_SEP];
    }
    if (((OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *) nil_chk(prevPosData))->leaving_ == -1) {
      if (pos == 1) {
        prevPosData->leaving_ = 0;
      }
      else {
        prevPosData->leaving_ = [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(builder)) createState];
      }
      if (prevPosData->arriving_ != -1) {
        [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(builder)) addTransitionWithInt:prevPosData->arriving_ withInt:prevPosData->leaving_ withInt:OrgApacheLuceneAnalysisTokenStreamToAutomaton_POS_SEP];
      }
    }
    [((OrgApacheLuceneUtilAutomatonAutomaton_Builder *) nil_chk(builder)) addTransitionWithInt:prevPosData->leaving_ withInt:posData->arriving_ withInt:OrgApacheLuceneAnalysisTokenStreamToAutomaton_HOLE];
    pos--;
    if (pos <= 0) {
      break;
    }
    posData = prevPosData;
    prevPosData = ((OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *) [positions getWithInt:pos - 1]);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenStreamToAutomaton)

@implementation OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)reset {
  arriving_ = -1;
  leaving_ = -1;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(reset);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "arriving_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "leaving_", "I", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStreamToAutomaton;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position = { "Position", "org.apache.lucene.analysis", ptrTable, methods, fields, 7, 0xa, 2, 2, 0, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position;
}

@end

void OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position_init(OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *self) {
  NSObject_init(self);
  self->arriving_ = -1;
  self->leaving_ = -1;
}

OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *new_OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position, init)
}

OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *create_OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position)

@implementation OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position *)newInstance {
  return create_OrgApacheLuceneAnalysisTokenStreamToAutomaton_Position_init();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStreamToAutomaton_Position;", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(newInstance);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStreamToAutomaton;", "Lorg/apache/lucene/util/RollingBuffer<Lorg/apache/lucene/analysis/TokenStreamToAutomaton$Position;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions = { "Positions", "org.apache.lucene.analysis", ptrTable, methods, NULL, 7, 0xa, 2, 0, 0, -1, -1, 1, -1 };
  return &_OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions;
}

@end

void OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions_init(OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions *self) {
  OrgApacheLuceneUtilRollingBuffer_init(self);
}

OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions *new_OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions, init)
}

OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions *create_OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenStreamToAutomaton_Positions)
