//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/ContainSpans.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/spans/ConjunctionSpans.h"
#include "org/apache/lucene/search/spans/ContainSpans.h"
#include "org/apache/lucene/search/spans/SpanCollector.h"
#include "org/apache/lucene/search/spans/Spans.h"
#include "org/lukhnos/portmobile/util/Objects.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/spans/ContainSpans must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneSearchSpansContainSpans

- (instancetype)initPackagePrivateWithOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)bigSpans
                                  withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)littleSpans
                                  withOrgApacheLuceneSearchSpansSpans:(OrgApacheLuceneSearchSpansSpans *)sourceSpans {
  OrgApacheLuceneSearchSpansContainSpans_initPackagePrivateWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(self, bigSpans, littleSpans, sourceSpans);
  return self;
}

- (jint)startPosition {
  return atFirstInCurrentDoc_ ? -1 : oneExhaustedInCurrentDoc_ ? OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS : [((OrgApacheLuceneSearchSpansSpans *) nil_chk(sourceSpans_)) startPosition];
}

- (jint)endPosition {
  return atFirstInCurrentDoc_ ? -1 : oneExhaustedInCurrentDoc_ ? OrgApacheLuceneSearchSpansSpans_NO_MORE_POSITIONS : [((OrgApacheLuceneSearchSpansSpans *) nil_chk(sourceSpans_)) endPosition];
}

- (jint)width {
  return [((OrgApacheLuceneSearchSpansSpans *) nil_chk(sourceSpans_)) width];
}

- (void)collectWithOrgApacheLuceneSearchSpansSpanCollector:(id<OrgApacheLuceneSearchSpansSpanCollector>)collector {
  [((OrgApacheLuceneSearchSpansSpans *) nil_chk(bigSpans_)) collectWithOrgApacheLuceneSearchSpansSpanCollector:collector];
  [((OrgApacheLuceneSearchSpansSpans *) nil_chk(littleSpans_)) collectWithOrgApacheLuceneSearchSpansSpanCollector:collector];
}

- (void)dealloc {
  RELEASE_(sourceSpans_);
  RELEASE_(bigSpans_);
  RELEASE_(littleSpans_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneSearchSpansSpans:withOrgApacheLuceneSearchSpansSpans:withOrgApacheLuceneSearchSpansSpans:);
  methods[1].selector = @selector(startPosition);
  methods[2].selector = @selector(endPosition);
  methods[3].selector = @selector(width);
  methods[4].selector = @selector(collectWithOrgApacheLuceneSearchSpansSpanCollector:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "sourceSpans_", "LOrgApacheLuceneSearchSpansSpans;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "bigSpans_", "LOrgApacheLuceneSearchSpansSpans;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "littleSpans_", "LOrgApacheLuceneSearchSpansSpans;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchSpansSpans;LOrgApacheLuceneSearchSpansSpans;LOrgApacheLuceneSearchSpansSpans;", "collect", "LOrgApacheLuceneSearchSpansSpanCollector;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpansContainSpans = { "ContainSpans", "org.apache.lucene.search.spans", ptrTable, methods, fields, 7, 0x400, 5, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSpansContainSpans;
}

@end

void OrgApacheLuceneSearchSpansContainSpans_initPackagePrivateWithOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_withOrgApacheLuceneSearchSpansSpans_(OrgApacheLuceneSearchSpansContainSpans *self, OrgApacheLuceneSearchSpansSpans *bigSpans, OrgApacheLuceneSearchSpansSpans *littleSpans, OrgApacheLuceneSearchSpansSpans *sourceSpans) {
  OrgApacheLuceneSearchSpansConjunctionSpans_initPackagePrivateWithJavaUtilList_(self, JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ bigSpans, littleSpans } count:2 type:OrgApacheLuceneSearchSpansSpans_class_()]));
  JreStrongAssign(&self->bigSpans_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(bigSpans));
  JreStrongAssign(&self->littleSpans_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(littleSpans));
  JreStrongAssign(&self->sourceSpans_, OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(sourceSpans));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpansContainSpans)
