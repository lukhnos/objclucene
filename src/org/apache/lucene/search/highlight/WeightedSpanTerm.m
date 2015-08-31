//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/WeightedSpanTerm.java
//

#include "J2ObjC_source.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/highlight/PositionSpan.h"
#include "org/apache/lucene/search/highlight/WeightedSpanTerm.h"
#include "org/apache/lucene/search/highlight/WeightedTerm.h"

@interface OrgApacheLuceneSearchHighlightWeightedSpanTerm () {
 @public
  id<JavaUtilList> positionSpans_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightWeightedSpanTerm, positionSpans_, id<JavaUtilList>)

@implementation OrgApacheLuceneSearchHighlightWeightedSpanTerm

- (instancetype)initWithFloat:(jfloat)weight
                 withNSString:(NSString *)term {
  OrgApacheLuceneSearchHighlightWeightedSpanTerm_initWithFloat_withNSString_(self, weight, term);
  return self;
}

- (instancetype)initWithFloat:(jfloat)weight
                 withNSString:(NSString *)term
                  withBoolean:(jboolean)positionSensitive {
  OrgApacheLuceneSearchHighlightWeightedSpanTerm_initWithFloat_withNSString_withBoolean_(self, weight, term, positionSensitive);
  return self;
}

- (jboolean)checkPositionWithInt:(jint)position {
  id<JavaUtilIterator> positionSpanIt = [((id<JavaUtilList>) nil_chk(positionSpans_)) iterator];
  while ([((id<JavaUtilIterator>) nil_chk(positionSpanIt)) hasNext]) {
    OrgApacheLuceneSearchHighlightPositionSpan *posSpan = [positionSpanIt next];
    if (((position >= ((OrgApacheLuceneSearchHighlightPositionSpan *) nil_chk(posSpan))->start_) && (position <= posSpan->end_))) {
      return YES;
    }
  }
  return NO;
}

- (void)addPositionSpansWithJavaUtilList:(id<JavaUtilList>)positionSpans {
  [((id<JavaUtilList>) nil_chk(self->positionSpans_)) addAllWithJavaUtilCollection:positionSpans];
}

- (jboolean)isPositionSensitive {
  return positionSensitive_;
}

- (void)setPositionSensitiveWithBoolean:(jboolean)positionSensitive {
  self->positionSensitive_ = positionSensitive;
}

- (id<JavaUtilList>)getPositionSpans {
  return positionSpans_;
}

- (void)dealloc {
  RELEASE_(positionSpans_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithFloat:withNSString:", "WeightedSpanTerm", NULL, 0x1, NULL, NULL },
    { "initWithFloat:withNSString:withBoolean:", "WeightedSpanTerm", NULL, 0x1, NULL, NULL },
    { "checkPositionWithInt:", "checkPosition", "Z", 0x1, NULL, NULL },
    { "addPositionSpansWithJavaUtilList:", "addPositionSpans", "V", 0x1, NULL, NULL },
    { "isPositionSensitive", NULL, "Z", 0x1, NULL, NULL },
    { "setPositionSensitiveWithBoolean:", "setPositionSensitive", "V", 0x1, NULL, NULL },
    { "getPositionSpans", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "positionSensitive_", NULL, 0x0, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "positionSpans_", NULL, 0x2, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/search/highlight/PositionSpan;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightWeightedSpanTerm = { 2, "WeightedSpanTerm", "org.apache.lucene.search.highlight", NULL, 0x1, 7, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchHighlightWeightedSpanTerm;
}

@end

void OrgApacheLuceneSearchHighlightWeightedSpanTerm_initWithFloat_withNSString_(OrgApacheLuceneSearchHighlightWeightedSpanTerm *self, jfloat weight, NSString *term) {
  OrgApacheLuceneSearchHighlightWeightedTerm_initWithFloat_withNSString_(self, weight, term);
  JreStrongAssignAndConsume(&self->positionSpans_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->positionSpans_, new_JavaUtilArrayList_init());
}

OrgApacheLuceneSearchHighlightWeightedSpanTerm *new_OrgApacheLuceneSearchHighlightWeightedSpanTerm_initWithFloat_withNSString_(jfloat weight, NSString *term) {
  OrgApacheLuceneSearchHighlightWeightedSpanTerm *self = [OrgApacheLuceneSearchHighlightWeightedSpanTerm alloc];
  OrgApacheLuceneSearchHighlightWeightedSpanTerm_initWithFloat_withNSString_(self, weight, term);
  return self;
}

void OrgApacheLuceneSearchHighlightWeightedSpanTerm_initWithFloat_withNSString_withBoolean_(OrgApacheLuceneSearchHighlightWeightedSpanTerm *self, jfloat weight, NSString *term, jboolean positionSensitive) {
  OrgApacheLuceneSearchHighlightWeightedTerm_initWithFloat_withNSString_(self, weight, term);
  JreStrongAssignAndConsume(&self->positionSpans_, new_JavaUtilArrayList_init());
  self->positionSensitive_ = positionSensitive;
}

OrgApacheLuceneSearchHighlightWeightedSpanTerm *new_OrgApacheLuceneSearchHighlightWeightedSpanTerm_initWithFloat_withNSString_withBoolean_(jfloat weight, NSString *term, jboolean positionSensitive) {
  OrgApacheLuceneSearchHighlightWeightedSpanTerm *self = [OrgApacheLuceneSearchHighlightWeightedSpanTerm alloc];
  OrgApacheLuceneSearchHighlightWeightedSpanTerm_initWithFloat_withNSString_withBoolean_(self, weight, term, positionSensitive);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightWeightedSpanTerm)