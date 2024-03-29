//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/complexPhrase/ComplexPhraseQueryParser.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/RuntimeException.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/queryparser/classic/ParseException.h"
#include "org/apache/lucene/queryparser/classic/QueryParser.h"
#include "org/apache/lucene/queryparser/complexPhrase/ComplexPhraseQueryParser.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/MultiTermQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/TermQuery.h"
#include "org/apache/lucene/search/TermRangeQuery.h"
#include "org/apache/lucene/search/spans/SpanNearQuery.h"
#include "org/apache/lucene/search/spans/SpanNotQuery.h"
#include "org/apache/lucene/search/spans/SpanOrQuery.h"
#include "org/apache/lucene/search/spans/SpanQuery.h"
#include "org/apache/lucene/search/spans/SpanTermQuery.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/complexPhrase/ComplexPhraseQueryParser must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser () {
 @public
  JavaUtilArrayList *complexPhrases_;
  jboolean isPass2ResolvingPhrases_;
  jboolean inOrder_;
  OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *currentPhraseQuery_;
}

- (void)checkPhraseClauseIsForSameFieldWithNSString:(NSString *)field;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser, complexPhrases_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser, currentPhraseQuery_, OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *)

__attribute__((unused)) static void OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_checkPhraseClauseIsForSameFieldWithNSString_(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser *self, NSString *field);

@interface OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery () {
 @public
  jboolean inOrder_;
  IOSObjectArray *contents_;
}

- (void)addComplexPhraseClauseWithJavaUtilList:(id<JavaUtilList>)spanClauses
         withOrgApacheLuceneSearchBooleanQuery:(OrgApacheLuceneSearchBooleanQuery *)qc;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery, contents_, IOSObjectArray *)

__attribute__((unused)) static void OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_addComplexPhraseClauseWithJavaUtilList_withOrgApacheLuceneSearchBooleanQuery_(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *self, id<JavaUtilList> spanClauses, OrgApacheLuceneSearchBooleanQuery *qc);

@implementation OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser

- (void)setInOrderWithBoolean:(jboolean)inOrder {
  self->inOrder_ = inOrder;
}

- (instancetype)initWithNSString:(NSString *)f
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)a {
  OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(self, f, a);
  return self;
}

- (OrgApacheLuceneSearchQuery *)getFieldQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)queryText
                                                  withInt:(jint)slop {
  OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *cpq = create_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_initWithNSString_withNSString_withInt_withBoolean_(field, queryText, slop, inOrder_);
  [((JavaUtilArrayList *) nil_chk(complexPhrases_)) addWithId:cpq];
  return cpq;
}

- (OrgApacheLuceneSearchQuery *)parseWithNSString:(NSString *)query {
  if (isPass2ResolvingPhrases_) {
    OrgApacheLuceneSearchMultiTermQuery_RewriteMethod *oldMethod = JreRetainedLocalValue([self getMultiTermRewriteMethod]);
    @try {
      [self setMultiTermRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:JreLoadStatic(OrgApacheLuceneSearchMultiTermQuery, SCORING_BOOLEAN_REWRITE)];
      return [super parseWithNSString:query];
    }
    @finally {
      [self setMultiTermRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:oldMethod];
    }
  }
  JreStrongAssignAndConsume(&complexPhrases_, new_JavaUtilArrayList_init());
  OrgApacheLuceneSearchQuery *q = [super parseWithNSString:query];
  isPass2ResolvingPhrases_ = true;
  @try {
    for (id<JavaUtilIterator> iterator = JreRetainedLocalValue([((JavaUtilArrayList *) nil_chk(complexPhrases_)) iterator]); [((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]; ) {
      JreStrongAssign(&currentPhraseQuery_, [iterator next]);
      [((OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *) nil_chk(currentPhraseQuery_)) parsePhraseElementsWithOrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser:self];
    }
  }
  @finally {
    isPass2ResolvingPhrases_ = false;
  }
  return q;
}

- (OrgApacheLuceneSearchQuery *)newTermQueryWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  if (isPass2ResolvingPhrases_) {
    @try {
      OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_checkPhraseClauseIsForSameFieldWithNSString_(self, [((OrgApacheLuceneIndexTerm *) nil_chk(term)) field]);
    }
    @catch (OrgApacheLuceneQueryparserClassicParseException *pe) {
      @throw create_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(@"Error parsing complex phrase", pe);
    }
  }
  return [super newTermQueryWithOrgApacheLuceneIndexTerm:term];
}

- (void)checkPhraseClauseIsForSameFieldWithNSString:(NSString *)field {
  OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_checkPhraseClauseIsForSameFieldWithNSString_(self, field);
}

- (OrgApacheLuceneSearchQuery *)getWildcardQueryWithNSString:(NSString *)field
                                                withNSString:(NSString *)termStr {
  if (isPass2ResolvingPhrases_) {
    OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_checkPhraseClauseIsForSameFieldWithNSString_(self, field);
  }
  return [super getWildcardQueryWithNSString:field withNSString:termStr];
}

- (OrgApacheLuceneSearchQuery *)getRangeQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)part1
                                             withNSString:(NSString *)part2
                                              withBoolean:(jboolean)startInclusive
                                              withBoolean:(jboolean)endInclusive {
  if (isPass2ResolvingPhrases_) {
    OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_checkPhraseClauseIsForSameFieldWithNSString_(self, field);
  }
  return [super getRangeQueryWithNSString:field withNSString:part1 withNSString:part2 withBoolean:startInclusive withBoolean:endInclusive];
}

- (OrgApacheLuceneSearchQuery *)newRangeQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)part1
                                             withNSString:(NSString *)part2
                                              withBoolean:(jboolean)startInclusive
                                              withBoolean:(jboolean)endInclusive {
  if (isPass2ResolvingPhrases_) {
    OrgApacheLuceneSearchTermRangeQuery *rangeQuery = OrgApacheLuceneSearchTermRangeQuery_newStringRangeWithNSString_withNSString_withNSString_withBoolean_withBoolean_(field, part1, part2, startInclusive, endInclusive);
    [((OrgApacheLuceneSearchTermRangeQuery *) nil_chk(rangeQuery)) setRewriteMethodWithOrgApacheLuceneSearchMultiTermQuery_RewriteMethod:JreLoadStatic(OrgApacheLuceneSearchMultiTermQuery, SCORING_BOOLEAN_REWRITE)];
    return rangeQuery;
  }
  return [super newRangeQueryWithNSString:field withNSString:part1 withNSString:part2 withBoolean:startInclusive withBoolean:endInclusive];
}

- (OrgApacheLuceneSearchQuery *)getFuzzyQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)termStr
                                                withFloat:(jfloat)minSimilarity {
  if (isPass2ResolvingPhrases_) {
    OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_checkPhraseClauseIsForSameFieldWithNSString_(self, field);
  }
  return [super getFuzzyQueryWithNSString:field withNSString:termStr withFloat:minSimilarity];
}

- (void)dealloc {
  RELEASE_(complexPhrases_);
  RELEASE_(currentPhraseQuery_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x4, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 5, 6, 7, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x4, 8, 9, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 10, 6, 7, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x4, 11, 12, 7, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x4, 13, 14, 7, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x4, 15, 14, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x4, 16, 17, 7, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(setInOrderWithBoolean:);
  methods[1].selector = @selector(initWithNSString:withOrgApacheLuceneAnalysisAnalyzer:);
  methods[2].selector = @selector(getFieldQueryWithNSString:withNSString:withInt:);
  methods[3].selector = @selector(parseWithNSString:);
  methods[4].selector = @selector(newTermQueryWithOrgApacheLuceneIndexTerm:);
  methods[5].selector = @selector(checkPhraseClauseIsForSameFieldWithNSString:);
  methods[6].selector = @selector(getWildcardQueryWithNSString:withNSString:);
  methods[7].selector = @selector(getRangeQueryWithNSString:withNSString:withNSString:withBoolean:withBoolean:);
  methods[8].selector = @selector(newRangeQueryWithNSString:withNSString:withNSString:withBoolean:withBoolean:);
  methods[9].selector = @selector(getFuzzyQueryWithNSString:withNSString:withFloat:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "complexPhrases_", "LJavaUtilArrayList;", .constantValue.asLong = 0, 0x2, -1, -1, 18, -1 },
    { "isPass2ResolvingPhrases_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "inOrder_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentPhraseQuery_", "LOrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "setInOrder", "Z", "LNSString;LOrgApacheLuceneAnalysisAnalyzer;", "getFieldQuery", "LNSString;LNSString;I", "parse", "LNSString;", "LOrgApacheLuceneQueryparserClassicParseException;", "newTermQuery", "LOrgApacheLuceneIndexTerm;", "checkPhraseClauseIsForSameField", "getWildcardQuery", "LNSString;LNSString;", "getRangeQuery", "LNSString;LNSString;LNSString;ZZ", "newRangeQuery", "getFuzzyQuery", "LNSString;LNSString;F", "Ljava/util/ArrayList<Lorg/apache/lucene/queryparser/complexPhrase/ComplexPhraseQueryParser$ComplexPhraseQuery;>;", "LOrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser = { "ComplexPhraseQueryParser", "org.apache.lucene.queryparser.complexPhrase", ptrTable, methods, fields, 7, 0x1, 10, 4, -1, 19, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser;
}

@end

void OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser *self, NSString *f, OrgApacheLuceneAnalysisAnalyzer *a) {
  OrgApacheLuceneQueryparserClassicQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(self, f, a);
  JreStrongAssign(&self->complexPhrases_, nil);
  self->inOrder_ = true;
  JreStrongAssign(&self->currentPhraseQuery_, nil);
}

OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser *new_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *f, OrgApacheLuceneAnalysisAnalyzer *a) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser, initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_, f, a)
}

OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser *create_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(NSString *f, OrgApacheLuceneAnalysisAnalyzer *a) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser, initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_, f, a)
}

void OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_checkPhraseClauseIsForSameFieldWithNSString_(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser *self, NSString *field) {
  if (![((NSString *) nil_chk(field)) isEqual:((OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *) nil_chk(self->currentPhraseQuery_))->field_]) {
    @throw create_OrgApacheLuceneQueryparserClassicParseException_initWithNSString_(JreStrcat("$$$$C", @"Cannot have clause for field \"", field, @"\" nested in phrase  for field \"", ((OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *) nil_chk(self->currentPhraseQuery_))->field_, '"'));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser)

@implementation OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery

- (instancetype)initWithNSString:(NSString *)field
                    withNSString:(NSString *)phrasedQueryStringContents
                         withInt:(jint)slopFactor
                     withBoolean:(jboolean)inOrder {
  OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_initWithNSString_withNSString_withInt_withBoolean_(self, field, phrasedQueryStringContents, slopFactor, inOrder);
  return self;
}

- (void)parsePhraseElementsWithOrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser:(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser *)qp {
  NSString *oldDefaultParserField = JreRetainedLocalValue(((OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser *) nil_chk(qp))->field_);
  @try {
    JreStrongAssign(&qp->field_, self->field_);
    IOSObjectArray_Set(nil_chk(contents_), 0, [qp parseWithNSString:phrasedQueryStringContents_]);
  }
  @finally {
    JreStrongAssign(&qp->field_, oldDefaultParserField);
  }
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  OrgApacheLuceneSearchQuery *contents = IOSObjectArray_Get(nil_chk(self->contents_), 0);
  if ([contents isKindOfClass:[OrgApacheLuceneSearchTermQuery class]]) {
    return contents;
  }
  jint numNegatives = 0;
  if (!([contents isKindOfClass:[OrgApacheLuceneSearchBooleanQuery class]])) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$$C", @"Unknown query type \"", [[((OrgApacheLuceneSearchQuery *) nil_chk(contents)) java_getClass] getName], @"\" found in phrase query string \"", phrasedQueryStringContents_, '"'));
  }
  OrgApacheLuceneSearchBooleanQuery *bq = (OrgApacheLuceneSearchBooleanQuery *) cast_chk(contents, [OrgApacheLuceneSearchBooleanQuery class]);
  IOSObjectArray *allSpanClauses = [IOSObjectArray arrayWithLength:[((id<JavaUtilList>) nil_chk([((OrgApacheLuceneSearchBooleanQuery *) nil_chk(bq)) clauses])) size] type:OrgApacheLuceneSearchSpansSpanQuery_class_()];
  jint i = 0;
  for (OrgApacheLuceneSearchBooleanClause * __strong clause in bq) {
    OrgApacheLuceneSearchQuery *qc = JreRetainedLocalValue([((OrgApacheLuceneSearchBooleanClause *) nil_chk(clause)) getQuery]);
    qc = [create_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(reader) rewriteWithOrgApacheLuceneSearchQuery:qc];
    if ([((OrgApacheLuceneSearchBooleanClause_Occur *) nil_chk([clause getOccur])) isEqual:JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, MUST_NOT)]) {
      numNegatives++;
    }
    if ([qc isKindOfClass:[OrgApacheLuceneSearchBooleanQuery class]]) {
      JavaUtilArrayList *sc = create_JavaUtilArrayList_init();
      OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_addComplexPhraseClauseWithJavaUtilList_withOrgApacheLuceneSearchBooleanQuery_(self, sc, (OrgApacheLuceneSearchBooleanQuery *) qc);
      if ([sc size] > 0) {
        IOSObjectArray_Set(allSpanClauses, i, [sc getWithInt:0]);
      }
      else {
        IOSObjectArray_SetAndConsume(allSpanClauses, i, new_OrgApacheLuceneSearchSpansSpanTermQuery_initWithOrgApacheLuceneIndexTerm_(create_OrgApacheLuceneIndexTerm_initWithNSString_withNSString_(field_, @"Dummy clause because no terms found - must match nothing")));
      }
    }
    else {
      if ([qc isKindOfClass:[OrgApacheLuceneSearchTermQuery class]]) {
        OrgApacheLuceneSearchTermQuery *tq = (OrgApacheLuceneSearchTermQuery *) qc;
        IOSObjectArray_SetAndConsume(allSpanClauses, i, new_OrgApacheLuceneSearchSpansSpanTermQuery_initWithOrgApacheLuceneIndexTerm_([((OrgApacheLuceneSearchTermQuery *) nil_chk(tq)) getTerm]));
      }
      else {
        @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$$C", @"Unknown query type \"", [[((OrgApacheLuceneSearchQuery *) nil_chk(qc)) java_getClass] getName], @"\" found in phrase query string \"", phrasedQueryStringContents_, '"'));
      }
    }
    i += 1;
  }
  if (numNegatives == 0) {
    return create_OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(allSpanClauses, slopFactor_, inOrder_);
  }
  JavaUtilArrayList *positiveClauses = create_JavaUtilArrayList_init();
  i = 0;
  for (OrgApacheLuceneSearchBooleanClause * __strong clause in bq) {
    if (![((OrgApacheLuceneSearchBooleanClause_Occur *) nil_chk([((OrgApacheLuceneSearchBooleanClause *) nil_chk(clause)) getOccur])) isEqual:JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, MUST_NOT)]) {
      [positiveClauses addWithId:IOSObjectArray_Get(allSpanClauses, i)];
    }
    i += 1;
  }
  IOSObjectArray *includeClauses = [positiveClauses toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[positiveClauses size] type:OrgApacheLuceneSearchSpansSpanQuery_class_()]];
  OrgApacheLuceneSearchSpansSpanQuery *include = nil;
  if (((IOSObjectArray *) nil_chk(includeClauses))->size_ == 1) {
    include = IOSObjectArray_Get(includeClauses, 0);
  }
  else {
    include = create_OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(includeClauses, slopFactor_ + numNegatives, inOrder_);
  }
  OrgApacheLuceneSearchSpansSpanNearQuery *exclude = create_OrgApacheLuceneSearchSpansSpanNearQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_withInt_withBoolean_(allSpanClauses, slopFactor_, inOrder_);
  OrgApacheLuceneSearchSpansSpanNotQuery *snot = create_OrgApacheLuceneSearchSpansSpanNotQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_(include, exclude);
  return snot;
}

- (void)addComplexPhraseClauseWithJavaUtilList:(id<JavaUtilList>)spanClauses
         withOrgApacheLuceneSearchBooleanQuery:(OrgApacheLuceneSearchBooleanQuery *)qc {
  OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_addComplexPhraseClauseWithJavaUtilList_withOrgApacheLuceneSearchBooleanQuery_(self, spanClauses, qc);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return JreStrcat("C$C", '"', phrasedQueryStringContents_, '"');
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = ((jint) [super hash]);
  result = prime * result + ((field_ == nil) ? 0 : ((jint) [((NSString *) nil_chk(field_)) hash]));
  result = prime * result + ((phrasedQueryStringContents_ == nil) ? 0 : ((jint) [((NSString *) nil_chk(phrasedQueryStringContents_)) hash]));
  result = prime * result + slopFactor_;
  result = prime * result + (inOrder_ ? 1 : 0);
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (JreObjectEqualsEquals(self, obj)) return true;
  if (obj == nil) return false;
  if (!JreObjectEqualsEquals([self java_getClass], [obj java_getClass])) return false;
  if (![super isEqual:obj]) {
    return false;
  }
  OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *other = (OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *) cast_chk(obj, [OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery class]);
  if (field_ == nil) {
    if (other->field_ != nil) return false;
  }
  else if (![field_ isEqual:other->field_]) return false;
  if (phrasedQueryStringContents_ == nil) {
    if (other->phrasedQueryStringContents_ != nil) return false;
  }
  else if (![phrasedQueryStringContents_ isEqual:other->phrasedQueryStringContents_]) return false;
  if (slopFactor_ != other->slopFactor_) return false;
  return inOrder_ == other->inOrder_;
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(phrasedQueryStringContents_);
  RELEASE_(contents_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x4, 1, 2, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 4, 5, 6, -1, -1, -1 },
    { NULL, "V", 0x2, 7, 8, -1, 9, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 12, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 13, 14, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withNSString:withInt:withBoolean:);
  methods[1].selector = @selector(parsePhraseElementsWithOrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser:);
  methods[2].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:);
  methods[3].selector = @selector(addComplexPhraseClauseWithJavaUtilList:withOrgApacheLuceneSearchBooleanQuery:);
  methods[4].selector = @selector(toStringWithNSString:);
  methods[5].selector = @selector(hash);
  methods[6].selector = @selector(isEqual:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "phrasedQueryStringContents_", "LNSString;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "slopFactor_", "I", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "inOrder_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "contents_", "[LOrgApacheLuceneSearchQuery;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;IZ", "parsePhraseElements", "LOrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser;", "LOrgApacheLuceneQueryparserClassicParseException;", "rewrite", "LOrgApacheLuceneIndexIndexReader;", "LJavaIoIOException;", "addComplexPhraseClause", "LJavaUtilList;LOrgApacheLuceneSearchBooleanQuery;", "(Ljava/util/List<Lorg/apache/lucene/search/spans/SpanQuery;>;Lorg/apache/lucene/search/BooleanQuery;)V", "toString", "LNSString;", "hashCode", "equals", "LNSObject;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery = { "ComplexPhraseQuery", "org.apache.lucene.queryparser.complexPhrase", ptrTable, methods, fields, 7, 0x8, 7, 5, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery;
}

@end

void OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_initWithNSString_withNSString_withInt_withBoolean_(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *self, NSString *field, NSString *phrasedQueryStringContents, jint slopFactor, jboolean inOrder) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssignAndConsume(&self->contents_, [IOSObjectArray newArrayWithLength:1 type:OrgApacheLuceneSearchQuery_class_()]);
  JreStrongAssign(&self->field_, field);
  JreStrongAssign(&self->phrasedQueryStringContents_, phrasedQueryStringContents);
  self->slopFactor_ = slopFactor;
  self->inOrder_ = inOrder;
}

OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *new_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_initWithNSString_withNSString_withInt_withBoolean_(NSString *field, NSString *phrasedQueryStringContents, jint slopFactor, jboolean inOrder) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery, initWithNSString_withNSString_withInt_withBoolean_, field, phrasedQueryStringContents, slopFactor, inOrder)
}

OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *create_OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_initWithNSString_withNSString_withInt_withBoolean_(NSString *field, NSString *phrasedQueryStringContents, jint slopFactor, jboolean inOrder) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery, initWithNSString_withNSString_withInt_withBoolean_, field, phrasedQueryStringContents, slopFactor, inOrder)
}

void OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_addComplexPhraseClauseWithJavaUtilList_withOrgApacheLuceneSearchBooleanQuery_(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery *self, id<JavaUtilList> spanClauses, OrgApacheLuceneSearchBooleanQuery *qc) {
  JavaUtilArrayList *ors = create_JavaUtilArrayList_init();
  JavaUtilArrayList *nots = create_JavaUtilArrayList_init();
  for (OrgApacheLuceneSearchBooleanClause * __strong clause in nil_chk(qc)) {
    OrgApacheLuceneSearchQuery *childQuery = JreRetainedLocalValue([((OrgApacheLuceneSearchBooleanClause *) nil_chk(clause)) getQuery]);
    JavaUtilArrayList *chosenList = JreRetainedLocalValue(ors);
    if ([clause getOccur] == JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, MUST_NOT)) {
      chosenList = nots;
    }
    if ([childQuery isKindOfClass:[OrgApacheLuceneSearchTermQuery class]]) {
      OrgApacheLuceneSearchTermQuery *tq = (OrgApacheLuceneSearchTermQuery *) childQuery;
      OrgApacheLuceneSearchSpansSpanTermQuery *stq = create_OrgApacheLuceneSearchSpansSpanTermQuery_initWithOrgApacheLuceneIndexTerm_([((OrgApacheLuceneSearchTermQuery *) nil_chk(tq)) getTerm]);
      [stq setBoostWithFloat:[tq getBoost]];
      [chosenList addWithId:stq];
    }
    else if ([childQuery isKindOfClass:[OrgApacheLuceneSearchBooleanQuery class]]) {
      OrgApacheLuceneSearchBooleanQuery *cbq = (OrgApacheLuceneSearchBooleanQuery *) childQuery;
      OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery_addComplexPhraseClauseWithJavaUtilList_withOrgApacheLuceneSearchBooleanQuery_(self, chosenList, cbq);
    }
    else {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$", @"Unknown query type:", [[((OrgApacheLuceneSearchQuery *) nil_chk(childQuery)) java_getClass] getName]));
    }
  }
  if ([ors size] == 0) {
    return;
  }
  OrgApacheLuceneSearchSpansSpanOrQuery *soq = create_OrgApacheLuceneSearchSpansSpanOrQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_([ors toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[ors size] type:OrgApacheLuceneSearchSpansSpanQuery_class_()]]);
  if ([nots size] == 0) {
    [((id<JavaUtilList>) nil_chk(spanClauses)) addWithId:soq];
  }
  else {
    OrgApacheLuceneSearchSpansSpanOrQuery *snqs = create_OrgApacheLuceneSearchSpansSpanOrQuery_initWithOrgApacheLuceneSearchSpansSpanQueryArray_([nots toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[nots size] type:OrgApacheLuceneSearchSpansSpanQuery_class_()]]);
    OrgApacheLuceneSearchSpansSpanNotQuery *snq = create_OrgApacheLuceneSearchSpansSpanNotQuery_initWithOrgApacheLuceneSearchSpansSpanQuery_withOrgApacheLuceneSearchSpansSpanQuery_(soq, snqs);
    [((id<JavaUtilList>) nil_chk(spanClauses)) addWithId:snq];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserComplexPhraseComplexPhraseQueryParser_ComplexPhraseQuery)
