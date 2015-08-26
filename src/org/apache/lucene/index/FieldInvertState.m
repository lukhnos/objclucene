//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FieldInvertState.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PayloadAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/TermToBytesRefAttribute.h"
#include "org/apache/lucene/index/FieldInvertState.h"
#include "org/apache/lucene/util/AttributeSource.h"

@implementation OrgApacheLuceneIndexFieldInvertState

- (instancetype)initWithNSString:(NSString *)name {
  OrgApacheLuceneIndexFieldInvertState_initWithNSString_(self, name);
  return self;
}

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)position
                         withInt:(jint)length
                         withInt:(jint)numOverlap
                         withInt:(jint)offset
                       withFloat:(jfloat)boost {
  OrgApacheLuceneIndexFieldInvertState_initWithNSString_withInt_withInt_withInt_withInt_withFloat_(self, name, position, length, numOverlap, offset, boost);
  return self;
}

- (void)reset {
  position_ = -1;
  length_ = 0;
  numOverlap_ = 0;
  offset_ = 0;
  maxTermFrequency_ = 0;
  uniqueTermCount_ = 0;
  boost_ = 1.0f;
  lastStartOffset_ = 0;
  lastPosition_ = 0;
}

- (void)setAttributeSourceWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)attributeSource {
  if (self->attributeSource_ != attributeSource) {
    JreStrongAssign(&self->attributeSource_, attributeSource);
    JreStrongAssign(&termAttribute_, [((OrgApacheLuceneUtilAttributeSource *) nil_chk(attributeSource)) getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_()]);
    JreStrongAssign(&posIncrAttribute_, [attributeSource addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
    JreStrongAssign(&offsetAttribute_, [attributeSource addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
    JreStrongAssign(&payloadAttribute_, [attributeSource getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPayloadAttribute_class_()]);
  }
}

- (jint)getPosition {
  return position_;
}

- (jint)getLength {
  return length_;
}

- (void)setLengthWithInt:(jint)length {
  self->length_ = length;
}

- (jint)getNumOverlap {
  return numOverlap_;
}

- (void)setNumOverlapWithInt:(jint)numOverlap {
  self->numOverlap_ = numOverlap;
}

- (jint)getOffset {
  return offset_;
}

- (jfloat)getBoost {
  return boost_;
}

- (void)setBoostWithFloat:(jfloat)boost {
  self->boost_ = boost;
}

- (jint)getMaxTermFrequency {
  return maxTermFrequency_;
}

- (jint)getUniqueTermCount {
  return uniqueTermCount_;
}

- (OrgApacheLuceneUtilAttributeSource *)getAttributeSource {
  return attributeSource_;
}

- (NSString *)getName {
  return name_;
}

- (void)dealloc {
  RELEASE_(name_);
  RELEASE_(attributeSource_);
  RELEASE_(offsetAttribute_);
  RELEASE_(posIncrAttribute_);
  RELEASE_(payloadAttribute_);
  RELEASE_(termAttribute_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "FieldInvertState", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withInt:withInt:withInt:withInt:withFloat:", "FieldInvertState", NULL, 0x1, NULL, NULL },
    { "reset", NULL, "V", 0x0, NULL, NULL },
    { "setAttributeSourceWithOrgApacheLuceneUtilAttributeSource:", "setAttributeSource", "V", 0x0, NULL, NULL },
    { "getPosition", NULL, "I", 0x1, NULL, NULL },
    { "getLength", NULL, "I", 0x1, NULL, NULL },
    { "setLengthWithInt:", "setLength", "V", 0x1, NULL, NULL },
    { "getNumOverlap", NULL, "I", 0x1, NULL, NULL },
    { "setNumOverlapWithInt:", "setNumOverlap", "V", 0x1, NULL, NULL },
    { "getOffset", NULL, "I", 0x1, NULL, NULL },
    { "getBoost", NULL, "F", 0x1, NULL, NULL },
    { "setBoostWithFloat:", "setBoost", "V", 0x1, NULL, NULL },
    { "getMaxTermFrequency", NULL, "I", 0x1, NULL, NULL },
    { "getUniqueTermCount", NULL, "I", 0x1, NULL, NULL },
    { "getAttributeSource", NULL, "Lorg.apache.lucene.util.AttributeSource;", 0x1, NULL, NULL },
    { "getName", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "name_", NULL, 0x0, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "position_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "length_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "numOverlap_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "offset_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxTermFrequency_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "uniqueTermCount_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "boost_", NULL, 0x0, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "lastStartOffset_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "lastPosition_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "attributeSource_", NULL, 0x0, "Lorg.apache.lucene.util.AttributeSource;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAttribute_", NULL, 0x0, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posIncrAttribute_", NULL, 0x0, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "payloadAttribute_", NULL, 0x0, "Lorg.apache.lucene.analysis.tokenattributes.PayloadAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAttribute_", NULL, 0x0, "Lorg.apache.lucene.analysis.tokenattributes.TermToBytesRefAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFieldInvertState = { 2, "FieldInvertState", "org.apache.lucene.index", NULL, 0x11, 16, methods, 15, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexFieldInvertState;
}

@end

void OrgApacheLuceneIndexFieldInvertState_initWithNSString_(OrgApacheLuceneIndexFieldInvertState *self, NSString *name) {
  NSObject_init(self);
  self->lastStartOffset_ = 0;
  self->lastPosition_ = 0;
  JreStrongAssign(&self->name_, name);
}

OrgApacheLuceneIndexFieldInvertState *new_OrgApacheLuceneIndexFieldInvertState_initWithNSString_(NSString *name) {
  OrgApacheLuceneIndexFieldInvertState *self = [OrgApacheLuceneIndexFieldInvertState alloc];
  OrgApacheLuceneIndexFieldInvertState_initWithNSString_(self, name);
  return self;
}

void OrgApacheLuceneIndexFieldInvertState_initWithNSString_withInt_withInt_withInt_withInt_withFloat_(OrgApacheLuceneIndexFieldInvertState *self, NSString *name, jint position, jint length, jint numOverlap, jint offset, jfloat boost) {
  NSObject_init(self);
  self->lastStartOffset_ = 0;
  self->lastPosition_ = 0;
  JreStrongAssign(&self->name_, name);
  self->position_ = position;
  self->length_ = length;
  self->numOverlap_ = numOverlap;
  self->offset_ = offset;
  self->boost_ = boost;
}

OrgApacheLuceneIndexFieldInvertState *new_OrgApacheLuceneIndexFieldInvertState_initWithNSString_withInt_withInt_withInt_withInt_withFloat_(NSString *name, jint position, jint length, jint numOverlap, jint offset, jfloat boost) {
  OrgApacheLuceneIndexFieldInvertState *self = [OrgApacheLuceneIndexFieldInvertState alloc];
  OrgApacheLuceneIndexFieldInvertState_initWithNSString_withInt_withInt_withInt_withInt_withFloat_(self, name, position, length, numOverlap, offset, boost);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFieldInvertState)
