//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/classic/MultiFieldQueryParser.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/queryparser/classic/MultiFieldQueryParser.h"
#include "org/apache/lucene/queryparser/classic/ParseException.h"
#include "org/apache/lucene/queryparser/classic/QueryParser.h"
#include "org/apache/lucene/queryparser/classic/QueryParserBase.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/MultiPhraseQuery.h"
#include "org/apache/lucene/search/PhraseQuery.h"
#include "org/apache/lucene/search/Query.h"

@interface OrgApacheLuceneQueryparserClassicMultiFieldQueryParser ()

- (OrgApacheLuceneSearchQuery *)applySlopWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)q
                                                                withInt:(jint)slop;

@end

__attribute__((unused)) static OrgApacheLuceneSearchQuery *OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_applySlopWithOrgApacheLuceneSearchQuery_withInt_(OrgApacheLuceneQueryparserClassicMultiFieldQueryParser *self, OrgApacheLuceneSearchQuery *q, jint slop);

@implementation OrgApacheLuceneQueryparserClassicMultiFieldQueryParser

- (instancetype)initWithNSStringArray:(IOSObjectArray *)fields
  withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                      withJavaUtilMap:(id<JavaUtilMap>)boosts {
  OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initWithNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_(self, fields, analyzer, boosts);
  return self;
}

- (instancetype)initWithNSStringArray:(IOSObjectArray *)fields
  withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initWithNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_(self, fields, analyzer);
  return self;
}

- (OrgApacheLuceneSearchQuery *)getFieldQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)queryText
                                                  withInt:(jint)slop {
  if (field == nil) {
    id<JavaUtilList> clauses = [new_JavaUtilArrayList_init() autorelease];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(fields_))->size_; i++) {
      OrgApacheLuceneSearchQuery *q = [super getFieldQueryWithNSString:IOSObjectArray_Get(fields_, i) withNSString:queryText withBoolean:YES];
      if (q != nil) {
        if (boosts_ != nil) {
          JavaLangFloat *boost = [boosts_ getWithId:IOSObjectArray_Get(fields_, i)];
          if (boost != nil) {
            [q setBoostWithFloat:[boost floatValue]];
          }
        }
        q = OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_applySlopWithOrgApacheLuceneSearchQuery_withInt_(self, q, slop);
        [clauses addWithId:[new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(q, JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)) autorelease]];
      }
    }
    if ([clauses size] == 0) return nil;
    return [self getBooleanQueryWithJavaUtilList:clauses withBoolean:YES];
  }
  OrgApacheLuceneSearchQuery *q = [super getFieldQueryWithNSString:field withNSString:queryText withBoolean:YES];
  q = OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_applySlopWithOrgApacheLuceneSearchQuery_withInt_(self, q, slop);
  return q;
}

- (OrgApacheLuceneSearchQuery *)applySlopWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)q
                                                                withInt:(jint)slop {
  return OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_applySlopWithOrgApacheLuceneSearchQuery_withInt_(self, q, slop);
}

- (OrgApacheLuceneSearchQuery *)getFieldQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)queryText
                                              withBoolean:(jboolean)quoted {
  if (field == nil) {
    id<JavaUtilList> clauses = [new_JavaUtilArrayList_init() autorelease];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(fields_))->size_; i++) {
      OrgApacheLuceneSearchQuery *q = [super getFieldQueryWithNSString:IOSObjectArray_Get(fields_, i) withNSString:queryText withBoolean:quoted];
      if (q != nil) {
        if (boosts_ != nil) {
          JavaLangFloat *boost = [boosts_ getWithId:IOSObjectArray_Get(fields_, i)];
          if (boost != nil) {
            [q setBoostWithFloat:[boost floatValue]];
          }
        }
        [clauses addWithId:[new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(q, JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)) autorelease]];
      }
    }
    if ([clauses size] == 0) return nil;
    return [self getBooleanQueryWithJavaUtilList:clauses withBoolean:YES];
  }
  OrgApacheLuceneSearchQuery *q = [super getFieldQueryWithNSString:field withNSString:queryText withBoolean:quoted];
  return q;
}

- (OrgApacheLuceneSearchQuery *)getFuzzyQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)termStr
                                                withFloat:(jfloat)minSimilarity {
  if (field == nil) {
    id<JavaUtilList> clauses = [new_JavaUtilArrayList_init() autorelease];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(fields_))->size_; i++) {
      [clauses addWithId:[new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_([self getFuzzyQueryWithNSString:IOSObjectArray_Get(fields_, i) withNSString:termStr withFloat:minSimilarity], JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)) autorelease]];
    }
    return [self getBooleanQueryWithJavaUtilList:clauses withBoolean:YES];
  }
  return [super getFuzzyQueryWithNSString:field withNSString:termStr withFloat:minSimilarity];
}

- (OrgApacheLuceneSearchQuery *)getPrefixQueryWithNSString:(NSString *)field
                                              withNSString:(NSString *)termStr {
  if (field == nil) {
    id<JavaUtilList> clauses = [new_JavaUtilArrayList_init() autorelease];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(fields_))->size_; i++) {
      [clauses addWithId:[new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_([self getPrefixQueryWithNSString:IOSObjectArray_Get(fields_, i) withNSString:termStr], JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)) autorelease]];
    }
    return [self getBooleanQueryWithJavaUtilList:clauses withBoolean:YES];
  }
  return [super getPrefixQueryWithNSString:field withNSString:termStr];
}

- (OrgApacheLuceneSearchQuery *)getWildcardQueryWithNSString:(NSString *)field
                                                withNSString:(NSString *)termStr {
  if (field == nil) {
    id<JavaUtilList> clauses = [new_JavaUtilArrayList_init() autorelease];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(fields_))->size_; i++) {
      [clauses addWithId:[new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_([self getWildcardQueryWithNSString:IOSObjectArray_Get(fields_, i) withNSString:termStr], JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)) autorelease]];
    }
    return [self getBooleanQueryWithJavaUtilList:clauses withBoolean:YES];
  }
  return [super getWildcardQueryWithNSString:field withNSString:termStr];
}

- (OrgApacheLuceneSearchQuery *)getRangeQueryWithNSString:(NSString *)field
                                             withNSString:(NSString *)part1
                                             withNSString:(NSString *)part2
                                              withBoolean:(jboolean)startInclusive
                                              withBoolean:(jboolean)endInclusive {
  if (field == nil) {
    id<JavaUtilList> clauses = [new_JavaUtilArrayList_init() autorelease];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(fields_))->size_; i++) {
      [clauses addWithId:[new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_([self getRangeQueryWithNSString:IOSObjectArray_Get(fields_, i) withNSString:part1 withNSString:part2 withBoolean:startInclusive withBoolean:endInclusive], JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)) autorelease]];
    }
    return [self getBooleanQueryWithJavaUtilList:clauses withBoolean:YES];
  }
  return [super getRangeQueryWithNSString:field withNSString:part1 withNSString:part2 withBoolean:startInclusive withBoolean:endInclusive];
}

- (OrgApacheLuceneSearchQuery *)getRegexpQueryWithNSString:(NSString *)field
                                              withNSString:(NSString *)termStr {
  if (field == nil) {
    id<JavaUtilList> clauses = [new_JavaUtilArrayList_init() autorelease];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(fields_))->size_; i++) {
      [clauses addWithId:[new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_([self getRegexpQueryWithNSString:IOSObjectArray_Get(fields_, i) withNSString:termStr], JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)) autorelease]];
    }
    return [self getBooleanQueryWithJavaUtilList:clauses withBoolean:YES];
  }
  return [super getRegexpQueryWithNSString:field withNSString:termStr];
}

+ (OrgApacheLuceneSearchQuery *)parseWithNSStringArray:(IOSObjectArray *)queries
                                     withNSStringArray:(IOSObjectArray *)fields
                   withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  return OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_parseWithNSStringArray_withNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_(queries, fields, analyzer);
}

+ (OrgApacheLuceneSearchQuery *)parseWithNSString:(NSString *)query
                                withNSStringArray:(IOSObjectArray *)fields
withOrgApacheLuceneSearchBooleanClause_OccurEnumArray:(IOSObjectArray *)flags
              withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  return OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_parseWithNSString_withNSStringArray_withOrgApacheLuceneSearchBooleanClause_OccurEnumArray_withOrgApacheLuceneAnalysisAnalyzer_(query, fields, flags, analyzer);
}

+ (OrgApacheLuceneSearchQuery *)parseWithNSStringArray:(IOSObjectArray *)queries
                                     withNSStringArray:(IOSObjectArray *)fields
 withOrgApacheLuceneSearchBooleanClause_OccurEnumArray:(IOSObjectArray *)flags
                   withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  return OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_parseWithNSStringArray_withNSStringArray_withOrgApacheLuceneSearchBooleanClause_OccurEnumArray_withOrgApacheLuceneAnalysisAnalyzer_(queries, fields, flags, analyzer);
}

- (void)dealloc {
  RELEASE_(fields_);
  RELEASE_(boosts_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSStringArray:withOrgApacheLuceneAnalysisAnalyzer:withJavaUtilMap:", "MultiFieldQueryParser", NULL, 0x1, NULL, NULL },
    { "initWithNSStringArray:withOrgApacheLuceneAnalysisAnalyzer:", "MultiFieldQueryParser", NULL, 0x1, NULL, NULL },
    { "getFieldQueryWithNSString:withNSString:withInt:", "getFieldQuery", "Lorg.apache.lucene.search.Query;", 0x4, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
    { "applySlopWithOrgApacheLuceneSearchQuery:withInt:", "applySlop", "Lorg.apache.lucene.search.Query;", 0x2, NULL, NULL },
    { "getFieldQueryWithNSString:withNSString:withBoolean:", "getFieldQuery", "Lorg.apache.lucene.search.Query;", 0x4, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
    { "getFuzzyQueryWithNSString:withNSString:withFloat:", "getFuzzyQuery", "Lorg.apache.lucene.search.Query;", 0x4, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
    { "getPrefixQueryWithNSString:withNSString:", "getPrefixQuery", "Lorg.apache.lucene.search.Query;", 0x4, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
    { "getWildcardQueryWithNSString:withNSString:", "getWildcardQuery", "Lorg.apache.lucene.search.Query;", 0x4, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
    { "getRangeQueryWithNSString:withNSString:withNSString:withBoolean:withBoolean:", "getRangeQuery", "Lorg.apache.lucene.search.Query;", 0x4, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
    { "getRegexpQueryWithNSString:withNSString:", "getRegexpQuery", "Lorg.apache.lucene.search.Query;", 0x4, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
    { "parseWithNSStringArray:withNSStringArray:withOrgApacheLuceneAnalysisAnalyzer:", "parse", "Lorg.apache.lucene.search.Query;", 0x9, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
    { "parseWithNSString:withNSStringArray:withOrgApacheLuceneSearchBooleanClause_OccurEnumArray:withOrgApacheLuceneAnalysisAnalyzer:", "parse", "Lorg.apache.lucene.search.Query;", 0x9, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
    { "parseWithNSStringArray:withNSStringArray:withOrgApacheLuceneSearchBooleanClause_OccurEnumArray:withOrgApacheLuceneAnalysisAnalyzer:", "parse", "Lorg.apache.lucene.search.Query;", 0x9, "Lorg.apache.lucene.queryparser.classic.ParseException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "fields_", NULL, 0x4, "[Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "boosts_", NULL, 0x4, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserClassicMultiFieldQueryParser = { 2, "MultiFieldQueryParser", "org.apache.lucene.queryparser.classic", NULL, 0x1, 13, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserClassicMultiFieldQueryParser;
}

@end

void OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initWithNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_(OrgApacheLuceneQueryparserClassicMultiFieldQueryParser *self, IOSObjectArray *fields, OrgApacheLuceneAnalysisAnalyzer *analyzer, id<JavaUtilMap> boosts) {
  OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initWithNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_(self, fields, analyzer);
  JreStrongAssign(&self->boosts_, boosts);
}

OrgApacheLuceneQueryparserClassicMultiFieldQueryParser *new_OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initWithNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_(IOSObjectArray *fields, OrgApacheLuceneAnalysisAnalyzer *analyzer, id<JavaUtilMap> boosts) {
  OrgApacheLuceneQueryparserClassicMultiFieldQueryParser *self = [OrgApacheLuceneQueryparserClassicMultiFieldQueryParser alloc];
  OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initWithNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_withJavaUtilMap_(self, fields, analyzer, boosts);
  return self;
}

void OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initWithNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserClassicMultiFieldQueryParser *self, IOSObjectArray *fields, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneQueryparserClassicQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(self, nil, analyzer);
  JreStrongAssign(&self->fields_, fields);
}

OrgApacheLuceneQueryparserClassicMultiFieldQueryParser *new_OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initWithNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_(IOSObjectArray *fields, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneQueryparserClassicMultiFieldQueryParser *self = [OrgApacheLuceneQueryparserClassicMultiFieldQueryParser alloc];
  OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initWithNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_(self, fields, analyzer);
  return self;
}

OrgApacheLuceneSearchQuery *OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_applySlopWithOrgApacheLuceneSearchQuery_withInt_(OrgApacheLuceneQueryparserClassicMultiFieldQueryParser *self, OrgApacheLuceneSearchQuery *q, jint slop) {
  if ([q isKindOfClass:[OrgApacheLuceneSearchPhraseQuery class]]) {
    OrgApacheLuceneSearchPhraseQuery_Builder *builder = [new_OrgApacheLuceneSearchPhraseQuery_Builder_init() autorelease];
    [builder setSlopWithInt:slop];
    OrgApacheLuceneSearchPhraseQuery *pq = (OrgApacheLuceneSearchPhraseQuery *) check_class_cast(q, [OrgApacheLuceneSearchPhraseQuery class]);
    IOSObjectArray *terms = [((OrgApacheLuceneSearchPhraseQuery *) nil_chk(pq)) getTerms];
    IOSIntArray *positions = [pq getPositions];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(terms))->size_; ++i) {
      [builder addWithOrgApacheLuceneIndexTerm:IOSObjectArray_Get(terms, i) withInt:IOSIntArray_Get(nil_chk(positions), i)];
    }
    q = [builder build];
    [((OrgApacheLuceneSearchQuery *) nil_chk(q)) setBoostWithFloat:[pq getBoost]];
  }
  else if ([q isKindOfClass:[OrgApacheLuceneSearchMultiPhraseQuery class]]) {
    [((OrgApacheLuceneSearchMultiPhraseQuery *) nil_chk(((OrgApacheLuceneSearchMultiPhraseQuery *) check_class_cast(q, [OrgApacheLuceneSearchMultiPhraseQuery class])))) setSlopWithInt:slop];
  }
  return q;
}

OrgApacheLuceneSearchQuery *OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_parseWithNSStringArray_withNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_(IOSObjectArray *queries, IOSObjectArray *fields, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initialize();
  if (((IOSObjectArray *) nil_chk(queries))->size_ != ((IOSObjectArray *) nil_chk(fields))->size_) @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"queries.length != fields.length") autorelease];
  OrgApacheLuceneSearchBooleanQuery_Builder *bQuery = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() autorelease];
  for (jint i = 0; i < fields->size_; i++) {
    OrgApacheLuceneQueryparserClassicQueryParser *qp = [new_OrgApacheLuceneQueryparserClassicQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(IOSObjectArray_Get(fields, i), analyzer) autorelease];
    OrgApacheLuceneSearchQuery *q = [qp parseWithNSString:IOSObjectArray_Get(queries, i)];
    if (q != nil && (!([q isKindOfClass:[OrgApacheLuceneSearchBooleanQuery class]]) || [((id<JavaUtilList>) nil_chk([((OrgApacheLuceneSearchBooleanQuery *) check_class_cast(q, [OrgApacheLuceneSearchBooleanQuery class])) clauses])) size] > 0)) {
      [bQuery addWithOrgApacheLuceneSearchQuery:q withOrgApacheLuceneSearchBooleanClause_OccurEnum:JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)];
    }
  }
  return [bQuery build];
}

OrgApacheLuceneSearchQuery *OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_parseWithNSString_withNSStringArray_withOrgApacheLuceneSearchBooleanClause_OccurEnumArray_withOrgApacheLuceneAnalysisAnalyzer_(NSString *query, IOSObjectArray *fields, IOSObjectArray *flags, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initialize();
  if (((IOSObjectArray *) nil_chk(fields))->size_ != ((IOSObjectArray *) nil_chk(flags))->size_) @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"fields.length != flags.length") autorelease];
  OrgApacheLuceneSearchBooleanQuery_Builder *bQuery = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() autorelease];
  for (jint i = 0; i < fields->size_; i++) {
    OrgApacheLuceneQueryparserClassicQueryParser *qp = [new_OrgApacheLuceneQueryparserClassicQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(IOSObjectArray_Get(fields, i), analyzer) autorelease];
    OrgApacheLuceneSearchQuery *q = [qp parseWithNSString:query];
    if (q != nil && (!([q isKindOfClass:[OrgApacheLuceneSearchBooleanQuery class]]) || [((id<JavaUtilList>) nil_chk([((OrgApacheLuceneSearchBooleanQuery *) check_class_cast(q, [OrgApacheLuceneSearchBooleanQuery class])) clauses])) size] > 0)) {
      [bQuery addWithOrgApacheLuceneSearchQuery:q withOrgApacheLuceneSearchBooleanClause_OccurEnum:IOSObjectArray_Get(flags, i)];
    }
  }
  return [bQuery build];
}

OrgApacheLuceneSearchQuery *OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_parseWithNSStringArray_withNSStringArray_withOrgApacheLuceneSearchBooleanClause_OccurEnumArray_withOrgApacheLuceneAnalysisAnalyzer_(IOSObjectArray *queries, IOSObjectArray *fields, IOSObjectArray *flags, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneQueryparserClassicMultiFieldQueryParser_initialize();
  if (!(((IOSObjectArray *) nil_chk(queries))->size_ == ((IOSObjectArray *) nil_chk(fields))->size_ && queries->size_ == ((IOSObjectArray *) nil_chk(flags))->size_)) @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"queries, fields, and flags array have have different length") autorelease];
  OrgApacheLuceneSearchBooleanQuery_Builder *bQuery = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() autorelease];
  for (jint i = 0; i < fields->size_; i++) {
    OrgApacheLuceneQueryparserClassicQueryParser *qp = [new_OrgApacheLuceneQueryparserClassicQueryParser_initWithNSString_withOrgApacheLuceneAnalysisAnalyzer_(IOSObjectArray_Get(fields, i), analyzer) autorelease];
    OrgApacheLuceneSearchQuery *q = [qp parseWithNSString:IOSObjectArray_Get(queries, i)];
    if (q != nil && (!([q isKindOfClass:[OrgApacheLuceneSearchBooleanQuery class]]) || [((id<JavaUtilList>) nil_chk([((OrgApacheLuceneSearchBooleanQuery *) check_class_cast(q, [OrgApacheLuceneSearchBooleanQuery class])) clauses])) size] > 0)) {
      [bQuery addWithOrgApacheLuceneSearchQuery:q withOrgApacheLuceneSearchBooleanClause_OccurEnum:IOSObjectArray_Get(nil_chk(flags), i)];
    }
  }
  return [bQuery build];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserClassicMultiFieldQueryParser)
