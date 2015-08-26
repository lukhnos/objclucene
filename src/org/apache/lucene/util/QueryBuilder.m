//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/QueryBuilder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/CachingTokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/TermToBytesRefAttribute.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/MultiPhraseQuery.h"
#include "org/apache/lucene/search/PhraseQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/TermQuery.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/QueryBuilder.h"

@interface OrgApacheLuceneUtilQueryBuilder () {
 @public
  OrgApacheLuceneAnalysisAnalyzer *analyzer_;
  jboolean enablePositionIncrements_;
}

- (OrgApacheLuceneSearchQuery *)analyzeTermWithNSString:(NSString *)field
                 withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream;

- (OrgApacheLuceneSearchQuery *)analyzeBooleanWithNSString:(NSString *)field
                    withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream;

- (void)addWithOrgApacheLuceneSearchBooleanQuery_Builder:(OrgApacheLuceneSearchBooleanQuery_Builder *)q
                   withOrgApacheLuceneSearchBooleanQuery:(OrgApacheLuceneSearchBooleanQuery *)current
        withOrgApacheLuceneSearchBooleanClause_OccurEnum:(OrgApacheLuceneSearchBooleanClause_OccurEnum *)operator_;

- (OrgApacheLuceneSearchQuery *)analyzeMultiBooleanWithNSString:(NSString *)field
                         withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream
               withOrgApacheLuceneSearchBooleanClause_OccurEnum:(OrgApacheLuceneSearchBooleanClause_OccurEnum *)operator_;

- (OrgApacheLuceneSearchQuery *)analyzePhraseWithNSString:(NSString *)field
                   withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream
                                                  withInt:(jint)slop;

- (OrgApacheLuceneSearchQuery *)analyzeMultiPhraseWithNSString:(NSString *)field
                        withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream
                                                       withInt:(jint)slop;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilQueryBuilder, analyzer_, OrgApacheLuceneAnalysisAnalyzer *)

__attribute__((unused)) static OrgApacheLuceneSearchQuery *OrgApacheLuceneUtilQueryBuilder_createFieldQueryWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneSearchBooleanClause_OccurEnum_withNSString_withNSString_withBoolean_withInt_(OrgApacheLuceneUtilQueryBuilder *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneSearchBooleanClause_OccurEnum *operator_, NSString *field, NSString *queryText, jboolean quoted, jint phraseSlop);

__attribute__((unused)) static OrgApacheLuceneSearchQuery *OrgApacheLuceneUtilQueryBuilder_analyzeTermWithNSString_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneUtilQueryBuilder *self, NSString *field, OrgApacheLuceneAnalysisTokenStream *stream);

__attribute__((unused)) static OrgApacheLuceneSearchQuery *OrgApacheLuceneUtilQueryBuilder_analyzeBooleanWithNSString_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneUtilQueryBuilder *self, NSString *field, OrgApacheLuceneAnalysisTokenStream *stream);

__attribute__((unused)) static void OrgApacheLuceneUtilQueryBuilder_addWithOrgApacheLuceneSearchBooleanQuery_Builder_withOrgApacheLuceneSearchBooleanQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(OrgApacheLuceneUtilQueryBuilder *self, OrgApacheLuceneSearchBooleanQuery_Builder *q, OrgApacheLuceneSearchBooleanQuery *current, OrgApacheLuceneSearchBooleanClause_OccurEnum *operator_);

__attribute__((unused)) static OrgApacheLuceneSearchQuery *OrgApacheLuceneUtilQueryBuilder_analyzeMultiBooleanWithNSString_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(OrgApacheLuceneUtilQueryBuilder *self, NSString *field, OrgApacheLuceneAnalysisTokenStream *stream, OrgApacheLuceneSearchBooleanClause_OccurEnum *operator_);

__attribute__((unused)) static OrgApacheLuceneSearchQuery *OrgApacheLuceneUtilQueryBuilder_analyzePhraseWithNSString_withOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneUtilQueryBuilder *self, NSString *field, OrgApacheLuceneAnalysisTokenStream *stream, jint slop);

__attribute__((unused)) static OrgApacheLuceneSearchQuery *OrgApacheLuceneUtilQueryBuilder_analyzeMultiPhraseWithNSString_withOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneUtilQueryBuilder *self, NSString *field, OrgApacheLuceneAnalysisTokenStream *stream, jint slop);

@implementation OrgApacheLuceneUtilQueryBuilder

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  OrgApacheLuceneUtilQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer);
  return self;
}

- (OrgApacheLuceneSearchQuery *)createBooleanQueryWithNSString:(NSString *)field
                                                  withNSString:(NSString *)queryText {
  return [self createBooleanQueryWithNSString:field withNSString:queryText withOrgApacheLuceneSearchBooleanClause_OccurEnum:JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)];
}

- (OrgApacheLuceneSearchQuery *)createBooleanQueryWithNSString:(NSString *)field
                                                  withNSString:(NSString *)queryText
              withOrgApacheLuceneSearchBooleanClause_OccurEnum:(OrgApacheLuceneSearchBooleanClause_OccurEnum *)operator_ {
  if (operator_ != JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD) && operator_ != JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, MUST)) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"invalid operator: only SHOULD or MUST are allowed") autorelease];
  }
  return OrgApacheLuceneUtilQueryBuilder_createFieldQueryWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneSearchBooleanClause_OccurEnum_withNSString_withNSString_withBoolean_withInt_(self, analyzer_, operator_, field, queryText, NO, 0);
}

- (OrgApacheLuceneSearchQuery *)createPhraseQueryWithNSString:(NSString *)field
                                                 withNSString:(NSString *)queryText {
  return [self createPhraseQueryWithNSString:field withNSString:queryText withInt:0];
}

- (OrgApacheLuceneSearchQuery *)createPhraseQueryWithNSString:(NSString *)field
                                                 withNSString:(NSString *)queryText
                                                      withInt:(jint)phraseSlop {
  return OrgApacheLuceneUtilQueryBuilder_createFieldQueryWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneSearchBooleanClause_OccurEnum_withNSString_withNSString_withBoolean_withInt_(self, analyzer_, JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, MUST), field, queryText, YES, phraseSlop);
}

- (OrgApacheLuceneSearchQuery *)createMinShouldMatchQueryWithNSString:(NSString *)field
                                                         withNSString:(NSString *)queryText
                                                            withFloat:(jfloat)fraction {
  if (JavaLangFloat_isNaNWithFloat_(fraction) || fraction < 0 || fraction > 1) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"fraction should be >= 0 and <= 1") autorelease];
  }
  if (fraction == 1) {
    return [self createBooleanQueryWithNSString:field withNSString:queryText withOrgApacheLuceneSearchBooleanClause_OccurEnum:JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, MUST)];
  }
  OrgApacheLuceneSearchQuery *query = OrgApacheLuceneUtilQueryBuilder_createFieldQueryWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneSearchBooleanClause_OccurEnum_withNSString_withNSString_withBoolean_withInt_(self, analyzer_, JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD), field, queryText, NO, 0);
  if ([query isKindOfClass:[OrgApacheLuceneSearchBooleanQuery class]]) {
    OrgApacheLuceneSearchBooleanQuery *bq = (OrgApacheLuceneSearchBooleanQuery *) check_class_cast(query, [OrgApacheLuceneSearchBooleanQuery class]);
    OrgApacheLuceneSearchBooleanQuery_Builder *builder = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() autorelease];
    [builder setDisableCoordWithBoolean:[((OrgApacheLuceneSearchBooleanQuery *) nil_chk(bq)) isCoordDisabled]];
    [builder setMinimumNumberShouldMatchWithInt:JreFpToInt((fraction * [((id<JavaUtilList>) nil_chk([bq clauses])) size]))];
    for (OrgApacheLuceneSearchBooleanClause * __strong clause in bq) {
      [builder addWithOrgApacheLuceneSearchBooleanClause:clause];
    }
    query = [builder build];
  }
  return query;
}

- (OrgApacheLuceneAnalysisAnalyzer *)getAnalyzer {
  return analyzer_;
}

- (void)setAnalyzerWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  JreStrongAssign(&self->analyzer_, analyzer);
}

- (jboolean)getEnablePositionIncrements {
  return enablePositionIncrements_;
}

- (void)setEnablePositionIncrementsWithBoolean:(jboolean)enable {
  self->enablePositionIncrements_ = enable;
}

- (OrgApacheLuceneSearchQuery *)createFieldQueryWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                   withOrgApacheLuceneSearchBooleanClause_OccurEnum:(OrgApacheLuceneSearchBooleanClause_OccurEnum *)operator_
                                                                       withNSString:(NSString *)field
                                                                       withNSString:(NSString *)queryText
                                                                        withBoolean:(jboolean)quoted
                                                                            withInt:(jint)phraseSlop {
  return OrgApacheLuceneUtilQueryBuilder_createFieldQueryWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneSearchBooleanClause_OccurEnum_withNSString_withNSString_withBoolean_withInt_(self, analyzer, operator_, field, queryText, quoted, phraseSlop);
}

- (OrgApacheLuceneSearchQuery *)analyzeTermWithNSString:(NSString *)field
                 withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream {
  return OrgApacheLuceneUtilQueryBuilder_analyzeTermWithNSString_withOrgApacheLuceneAnalysisTokenStream_(self, field, stream);
}

- (OrgApacheLuceneSearchQuery *)analyzeBooleanWithNSString:(NSString *)field
                    withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream {
  return OrgApacheLuceneUtilQueryBuilder_analyzeBooleanWithNSString_withOrgApacheLuceneAnalysisTokenStream_(self, field, stream);
}

- (void)addWithOrgApacheLuceneSearchBooleanQuery_Builder:(OrgApacheLuceneSearchBooleanQuery_Builder *)q
                   withOrgApacheLuceneSearchBooleanQuery:(OrgApacheLuceneSearchBooleanQuery *)current
        withOrgApacheLuceneSearchBooleanClause_OccurEnum:(OrgApacheLuceneSearchBooleanClause_OccurEnum *)operator_ {
  OrgApacheLuceneUtilQueryBuilder_addWithOrgApacheLuceneSearchBooleanQuery_Builder_withOrgApacheLuceneSearchBooleanQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(self, q, current, operator_);
}

- (OrgApacheLuceneSearchQuery *)analyzeMultiBooleanWithNSString:(NSString *)field
                         withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream
               withOrgApacheLuceneSearchBooleanClause_OccurEnum:(OrgApacheLuceneSearchBooleanClause_OccurEnum *)operator_ {
  return OrgApacheLuceneUtilQueryBuilder_analyzeMultiBooleanWithNSString_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(self, field, stream, operator_);
}

- (OrgApacheLuceneSearchQuery *)analyzePhraseWithNSString:(NSString *)field
                   withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream
                                                  withInt:(jint)slop {
  return OrgApacheLuceneUtilQueryBuilder_analyzePhraseWithNSString_withOrgApacheLuceneAnalysisTokenStream_withInt_(self, field, stream, slop);
}

- (OrgApacheLuceneSearchQuery *)analyzeMultiPhraseWithNSString:(NSString *)field
                        withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream
                                                       withInt:(jint)slop {
  return OrgApacheLuceneUtilQueryBuilder_analyzeMultiPhraseWithNSString_withOrgApacheLuceneAnalysisTokenStream_withInt_(self, field, stream, slop);
}

- (OrgApacheLuceneSearchBooleanQuery_Builder *)newBooleanQueryWithBoolean:(jboolean)disableCoord {
  OrgApacheLuceneSearchBooleanQuery_Builder *builder = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() autorelease];
  [builder setDisableCoordWithBoolean:disableCoord];
  return builder;
}

- (OrgApacheLuceneSearchQuery *)newTermQueryWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  return [new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(term) autorelease];
}

- (OrgApacheLuceneSearchMultiPhraseQuery *)newMultiPhraseQuery {
  return [new_OrgApacheLuceneSearchMultiPhraseQuery_init() autorelease];
}

- (void)dealloc {
  RELEASE_(analyzer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisAnalyzer:", "QueryBuilder", NULL, 0x1, NULL, NULL },
    { "createBooleanQueryWithNSString:withNSString:", "createBooleanQuery", "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "createBooleanQueryWithNSString:withNSString:withOrgApacheLuceneSearchBooleanClause_OccurEnum:", "createBooleanQuery", "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "createPhraseQueryWithNSString:withNSString:", "createPhraseQuery", "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "createPhraseQueryWithNSString:withNSString:withInt:", "createPhraseQuery", "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "createMinShouldMatchQueryWithNSString:withNSString:withFloat:", "createMinShouldMatchQuery", "Lorg.apache.lucene.search.Query;", 0x1, NULL, NULL },
    { "getAnalyzer", NULL, "Lorg.apache.lucene.analysis.Analyzer;", 0x1, NULL, NULL },
    { "setAnalyzerWithOrgApacheLuceneAnalysisAnalyzer:", "setAnalyzer", "V", 0x1, NULL, NULL },
    { "getEnablePositionIncrements", NULL, "Z", 0x1, NULL, NULL },
    { "setEnablePositionIncrementsWithBoolean:", "setEnablePositionIncrements", "V", 0x1, NULL, NULL },
    { "createFieldQueryWithOrgApacheLuceneAnalysisAnalyzer:withOrgApacheLuceneSearchBooleanClause_OccurEnum:withNSString:withNSString:withBoolean:withInt:", "createFieldQuery", "Lorg.apache.lucene.search.Query;", 0x14, NULL, NULL },
    { "analyzeTermWithNSString:withOrgApacheLuceneAnalysisTokenStream:", "analyzeTerm", "Lorg.apache.lucene.search.Query;", 0x2, "Ljava.io.IOException;", NULL },
    { "analyzeBooleanWithNSString:withOrgApacheLuceneAnalysisTokenStream:", "analyzeBoolean", "Lorg.apache.lucene.search.Query;", 0x2, "Ljava.io.IOException;", NULL },
    { "addWithOrgApacheLuceneSearchBooleanQuery_Builder:withOrgApacheLuceneSearchBooleanQuery:withOrgApacheLuceneSearchBooleanClause_OccurEnum:", "add", "V", 0x2, NULL, NULL },
    { "analyzeMultiBooleanWithNSString:withOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneSearchBooleanClause_OccurEnum:", "analyzeMultiBoolean", "Lorg.apache.lucene.search.Query;", 0x2, "Ljava.io.IOException;", NULL },
    { "analyzePhraseWithNSString:withOrgApacheLuceneAnalysisTokenStream:withInt:", "analyzePhrase", "Lorg.apache.lucene.search.Query;", 0x2, "Ljava.io.IOException;", NULL },
    { "analyzeMultiPhraseWithNSString:withOrgApacheLuceneAnalysisTokenStream:withInt:", "analyzeMultiPhrase", "Lorg.apache.lucene.search.Query;", 0x2, "Ljava.io.IOException;", NULL },
    { "newBooleanQueryWithBoolean:", "newBooleanQuery", "Lorg.apache.lucene.search.BooleanQuery$Builder;", 0x4, NULL, NULL },
    { "newTermQueryWithOrgApacheLuceneIndexTerm:", "newTermQuery", "Lorg.apache.lucene.search.Query;", 0x4, NULL, NULL },
    { "newMultiPhraseQuery", NULL, "Lorg.apache.lucene.search.MultiPhraseQuery;", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "analyzer_", NULL, 0x2, "Lorg.apache.lucene.analysis.Analyzer;", NULL, NULL, .constantValue.asLong = 0 },
    { "enablePositionIncrements_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilQueryBuilder = { 2, "QueryBuilder", "org.apache.lucene.util", NULL, 0x1, 20, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilQueryBuilder;
}

@end

void OrgApacheLuceneUtilQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneUtilQueryBuilder *self, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  NSObject_init(self);
  self->enablePositionIncrements_ = YES;
  JreStrongAssign(&self->analyzer_, analyzer);
}

OrgApacheLuceneUtilQueryBuilder *new_OrgApacheLuceneUtilQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneUtilQueryBuilder *self = [OrgApacheLuceneUtilQueryBuilder alloc];
  OrgApacheLuceneUtilQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer);
  return self;
}

OrgApacheLuceneSearchQuery *OrgApacheLuceneUtilQueryBuilder_createFieldQueryWithOrgApacheLuceneAnalysisAnalyzer_withOrgApacheLuceneSearchBooleanClause_OccurEnum_withNSString_withNSString_withBoolean_withInt_(OrgApacheLuceneUtilQueryBuilder *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, OrgApacheLuceneSearchBooleanClause_OccurEnum *operator_, NSString *field, NSString *queryText, jboolean quoted, jint phraseSlop) {
  JreAssert((operator_ == JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD) || operator_ == JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, MUST)), (@"org/apache/lucene/util/QueryBuilder.java:200 condition failed: assert operator == BooleanClause.Occur.SHOULD || operator == BooleanClause.Occur.MUST;"));
  {
    JavaLangThrowable *__mainException = nil;
    OrgApacheLuceneAnalysisTokenStream *source = [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer)) tokenStreamWithNSString:field withNSString:queryText];
    OrgApacheLuceneAnalysisCachingTokenFilter *stream = [new_OrgApacheLuceneAnalysisCachingTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(source) autorelease];
    @try {
      id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute> termAtt = [stream getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_()];
      id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncAtt = [stream addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()];
      if (termAtt == nil) {
        return nil;
      }
      jint numTokens = 0;
      jint positionCount = 0;
      jboolean hasSynonyms = NO;
      [stream reset];
      while ([stream incrementToken]) {
        numTokens++;
        jint positionIncrement = [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncAtt)) getPositionIncrement];
        if (positionIncrement != 0) {
          positionCount += positionIncrement;
        }
        else {
          hasSynonyms = YES;
        }
      }
      if (numTokens == 0) {
        return nil;
      }
      else if (numTokens == 1) {
        return OrgApacheLuceneUtilQueryBuilder_analyzeTermWithNSString_withOrgApacheLuceneAnalysisTokenStream_(self, field, stream);
      }
      else if (quoted && positionCount > 1) {
        if (hasSynonyms) {
          return OrgApacheLuceneUtilQueryBuilder_analyzeMultiPhraseWithNSString_withOrgApacheLuceneAnalysisTokenStream_withInt_(self, field, stream, phraseSlop);
        }
        else {
          return OrgApacheLuceneUtilQueryBuilder_analyzePhraseWithNSString_withOrgApacheLuceneAnalysisTokenStream_withInt_(self, field, stream, phraseSlop);
        }
      }
      else {
        if (positionCount == 1) {
          return OrgApacheLuceneUtilQueryBuilder_analyzeBooleanWithNSString_withOrgApacheLuceneAnalysisTokenStream_(self, field, stream);
        }
        else {
          return OrgApacheLuceneUtilQueryBuilder_analyzeMultiBooleanWithNSString_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(self, field, stream, operator_);
        }
      }
    }
    @catch (JavaIoIOException *e) {
      __mainException = e;
      @throw [new_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(@"Error analyzing query text", e) autorelease];
    }
    @finally {
      @try {
        [stream close];
      }
      @catch (JavaLangThrowable *e) {
        if (__mainException) {
          [__mainException addSuppressedWithJavaLangThrowable:e];
        } else {
          __mainException = e;
        }
      }
      @try {
        [source close];
      }
      @catch (JavaLangThrowable *e) {
        if (__mainException) {
          [__mainException addSuppressedWithJavaLangThrowable:e];
        } else {
          __mainException = e;
        }
      }
      if (__mainException) {
        @throw __mainException;
      }
    }
  }
}

OrgApacheLuceneSearchQuery *OrgApacheLuceneUtilQueryBuilder_analyzeTermWithNSString_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneUtilQueryBuilder *self, NSString *field, OrgApacheLuceneAnalysisTokenStream *stream) {
  id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute> termAtt = [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(stream)) getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_()];
  [stream reset];
  if (![stream incrementToken]) {
    @throw [new_JavaLangAssertionError_init() autorelease];
  }
  return [self newTermQueryWithOrgApacheLuceneIndexTerm:[new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(field, OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_([((id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute>) nil_chk(termAtt)) getBytesRef])) autorelease]];
}

OrgApacheLuceneSearchQuery *OrgApacheLuceneUtilQueryBuilder_analyzeBooleanWithNSString_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneUtilQueryBuilder *self, NSString *field, OrgApacheLuceneAnalysisTokenStream *stream) {
  OrgApacheLuceneSearchBooleanQuery_Builder *q = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() autorelease];
  [q setDisableCoordWithBoolean:YES];
  id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute> termAtt = [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(stream)) getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_()];
  [stream reset];
  while ([stream incrementToken]) {
    OrgApacheLuceneSearchQuery *currentQuery = [self newTermQueryWithOrgApacheLuceneIndexTerm:[new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(field, OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_([((id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute>) nil_chk(termAtt)) getBytesRef])) autorelease]];
    [q addWithOrgApacheLuceneSearchQuery:currentQuery withOrgApacheLuceneSearchBooleanClause_OccurEnum:JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)];
  }
  return [q build];
}

void OrgApacheLuceneUtilQueryBuilder_addWithOrgApacheLuceneSearchBooleanQuery_Builder_withOrgApacheLuceneSearchBooleanQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(OrgApacheLuceneUtilQueryBuilder *self, OrgApacheLuceneSearchBooleanQuery_Builder *q, OrgApacheLuceneSearchBooleanQuery *current, OrgApacheLuceneSearchBooleanClause_OccurEnum *operator_) {
  if ([((id<JavaUtilList>) nil_chk([((OrgApacheLuceneSearchBooleanQuery *) nil_chk(current)) clauses])) isEmpty]) {
    return;
  }
  if ([((id<JavaUtilList>) nil_chk([current clauses])) size] == 1) {
    [((OrgApacheLuceneSearchBooleanQuery_Builder *) nil_chk(q)) addWithOrgApacheLuceneSearchQuery:[((OrgApacheLuceneSearchBooleanClause *) nil_chk([((id<JavaUtilIterator>) nil_chk([((id<JavaUtilList>) nil_chk([current clauses])) iterator])) next])) getQuery] withOrgApacheLuceneSearchBooleanClause_OccurEnum:operator_];
  }
  else {
    [((OrgApacheLuceneSearchBooleanQuery_Builder *) nil_chk(q)) addWithOrgApacheLuceneSearchQuery:current withOrgApacheLuceneSearchBooleanClause_OccurEnum:operator_];
  }
}

OrgApacheLuceneSearchQuery *OrgApacheLuceneUtilQueryBuilder_analyzeMultiBooleanWithNSString_withOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(OrgApacheLuceneUtilQueryBuilder *self, NSString *field, OrgApacheLuceneAnalysisTokenStream *stream, OrgApacheLuceneSearchBooleanClause_OccurEnum *operator_) {
  OrgApacheLuceneSearchBooleanQuery_Builder *q = [self newBooleanQueryWithBoolean:NO];
  OrgApacheLuceneSearchBooleanQuery_Builder *currentQuery = [self newBooleanQueryWithBoolean:YES];
  id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute> termAtt = [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(stream)) getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_()];
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncrAtt = [stream getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()];
  [stream reset];
  while ([stream incrementToken]) {
    OrgApacheLuceneUtilBytesRef *bytes = [((id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute>) nil_chk(termAtt)) getBytesRef];
    if ([((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt)) getPositionIncrement] != 0) {
      OrgApacheLuceneUtilQueryBuilder_addWithOrgApacheLuceneSearchBooleanQuery_Builder_withOrgApacheLuceneSearchBooleanQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(self, q, [((OrgApacheLuceneSearchBooleanQuery_Builder *) nil_chk(currentQuery)) build], operator_);
      currentQuery = [self newBooleanQueryWithBoolean:YES];
    }
    [((OrgApacheLuceneSearchBooleanQuery_Builder *) nil_chk(currentQuery)) addWithOrgApacheLuceneSearchQuery:[self newTermQueryWithOrgApacheLuceneIndexTerm:[new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(field, OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(bytes)) autorelease]] withOrgApacheLuceneSearchBooleanClause_OccurEnum:JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)];
  }
  OrgApacheLuceneUtilQueryBuilder_addWithOrgApacheLuceneSearchBooleanQuery_Builder_withOrgApacheLuceneSearchBooleanQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_(self, q, [((OrgApacheLuceneSearchBooleanQuery_Builder *) nil_chk(currentQuery)) build], operator_);
  return [((OrgApacheLuceneSearchBooleanQuery_Builder *) nil_chk(q)) build];
}

OrgApacheLuceneSearchQuery *OrgApacheLuceneUtilQueryBuilder_analyzePhraseWithNSString_withOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneUtilQueryBuilder *self, NSString *field, OrgApacheLuceneAnalysisTokenStream *stream, jint slop) {
  OrgApacheLuceneSearchPhraseQuery_Builder *builder = [new_OrgApacheLuceneSearchPhraseQuery_Builder_init() autorelease];
  [builder setSlopWithInt:slop];
  id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute> termAtt = [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(stream)) getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_()];
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncrAtt = [stream getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()];
  jint position = -1;
  [stream reset];
  while ([stream incrementToken]) {
    OrgApacheLuceneUtilBytesRef *bytes = [((id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute>) nil_chk(termAtt)) getBytesRef];
    if (self->enablePositionIncrements_) {
      position += [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt)) getPositionIncrement];
    }
    else {
      position += 1;
    }
    [builder addWithOrgApacheLuceneIndexTerm:[new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(field, bytes) autorelease] withInt:position];
  }
  return [builder build];
}

OrgApacheLuceneSearchQuery *OrgApacheLuceneUtilQueryBuilder_analyzeMultiPhraseWithNSString_withOrgApacheLuceneAnalysisTokenStream_withInt_(OrgApacheLuceneUtilQueryBuilder *self, NSString *field, OrgApacheLuceneAnalysisTokenStream *stream, jint slop) {
  OrgApacheLuceneSearchMultiPhraseQuery *mpq = [self newMultiPhraseQuery];
  [((OrgApacheLuceneSearchMultiPhraseQuery *) nil_chk(mpq)) setSlopWithInt:slop];
  id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute> termAtt = [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(stream)) getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_()];
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncrAtt = [stream getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()];
  jint position = -1;
  id<JavaUtilList> multiTerms = [new_JavaUtilArrayList_init() autorelease];
  [stream reset];
  while ([stream incrementToken]) {
    jint positionIncrement = [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt)) getPositionIncrement];
    if (positionIncrement > 0 && [multiTerms size] > 0) {
      if (self->enablePositionIncrements_) {
        [mpq addWithOrgApacheLuceneIndexTermArray:[multiTerms toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneIndexTerm_class_()]] withInt:position];
      }
      else {
        [mpq addWithOrgApacheLuceneIndexTermArray:[multiTerms toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneIndexTerm_class_()]]];
      }
      [multiTerms clear];
    }
    position += positionIncrement;
    [multiTerms addWithId:[new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(field, OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_([((id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute>) nil_chk(termAtt)) getBytesRef])) autorelease]];
  }
  if (self->enablePositionIncrements_) {
    [mpq addWithOrgApacheLuceneIndexTermArray:[multiTerms toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneIndexTerm_class_()]] withInt:position];
  }
  else {
    [mpq addWithOrgApacheLuceneIndexTermArray:[multiTerms toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneIndexTerm_class_()]]];
  }
  return mpq;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilQueryBuilder)
