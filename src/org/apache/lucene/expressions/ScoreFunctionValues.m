//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./expressions/src/java/org/apache/lucene/expressions/ScoreFunctionValues.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"
#include "org/apache/lucene/expressions/ScoreFunctionValues.h"
#include "org/apache/lucene/queries/function/ValueSource.h"
#include "org/apache/lucene/queries/function/docvalues/DoubleDocValues.h"
#include "org/apache/lucene/search/Scorer.h"

@implementation OrgApacheLuceneExpressionsScoreFunctionValues

- (instancetype)initWithOrgApacheLuceneQueriesFunctionValueSource:(OrgApacheLuceneQueriesFunctionValueSource *)parent
                                  withOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer {
  OrgApacheLuceneExpressionsScoreFunctionValues_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneSearchScorer_(self, parent, scorer);
  return self;
}

- (jdouble)doubleValWithInt:(jint)document {
  @try {
    JreAssert((document == [((OrgApacheLuceneSearchScorer *) nil_chk(scorer_)) docID]), (@"org/apache/lucene/expressions/ScoreFunctionValues.java:40 condition failed: assert document == scorer.docID();"));
    return [scorer_ score];
  }
  @catch (JavaIoIOException *exception) {
    @throw [new_JavaLangRuntimeException_initWithJavaLangThrowable_(exception) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(scorer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueriesFunctionValueSource:withOrgApacheLuceneSearchScorer:", "ScoreFunctionValues", NULL, 0x0, NULL, NULL },
    { "doubleValWithInt:", "doubleVal", "D", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "scorer_", NULL, 0x10, "Lorg.apache.lucene.search.Scorer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneExpressionsScoreFunctionValues = { 2, "ScoreFunctionValues", "org.apache.lucene.expressions", NULL, 0x0, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneExpressionsScoreFunctionValues;
}

@end

void OrgApacheLuceneExpressionsScoreFunctionValues_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneExpressionsScoreFunctionValues *self, OrgApacheLuceneQueriesFunctionValueSource *parent, OrgApacheLuceneSearchScorer *scorer) {
  OrgApacheLuceneQueriesFunctionDocvaluesDoubleDocValues_initWithOrgApacheLuceneQueriesFunctionValueSource_(self, parent);
  JreStrongAssign(&self->scorer_, scorer);
}

OrgApacheLuceneExpressionsScoreFunctionValues *new_OrgApacheLuceneExpressionsScoreFunctionValues_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneSearchScorer_(OrgApacheLuceneQueriesFunctionValueSource *parent, OrgApacheLuceneSearchScorer *scorer) {
  OrgApacheLuceneExpressionsScoreFunctionValues *self = [OrgApacheLuceneExpressionsScoreFunctionValues alloc];
  OrgApacheLuceneExpressionsScoreFunctionValues_initWithOrgApacheLuceneQueriesFunctionValueSource_withOrgApacheLuceneSearchScorer_(self, parent, scorer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneExpressionsScoreFunctionValues)
