//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/CommonTermsQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Float.h"
#include "java/lang/Math.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/index/TermContext.h"
#include "org/apache/lucene/index/TermState.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/queries/CommonTermsQuery.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/MatchNoDocsQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/TermQuery.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/ToStringUtils.h"

@interface OrgApacheLuceneQueriesCommonTermsQuery ()

- (jint)minNrShouldMatchWithFloat:(jfloat)minNrShouldMatch
                          withInt:(jint)numOptional;

@end

__attribute__((unused)) static jint OrgApacheLuceneQueriesCommonTermsQuery_minNrShouldMatchWithFloat_withInt_(OrgApacheLuceneQueriesCommonTermsQuery *self, jfloat minNrShouldMatch, jint numOptional);

@implementation OrgApacheLuceneQueriesCommonTermsQuery

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  if ([((id<JavaUtilList>) nil_chk(self->terms_)) isEmpty]) {
    return [new_OrgApacheLuceneSearchMatchNoDocsQuery_init() autorelease];
  }
  else if ([self->terms_ size] == 1) {
    OrgApacheLuceneSearchQuery *tq = [self newTermQueryWithOrgApacheLuceneIndexTerm:[self->terms_ getWithInt:0] withOrgApacheLuceneIndexTermContext:nil];
    [((OrgApacheLuceneSearchQuery *) nil_chk(tq)) setBoostWithFloat:[self getBoost]];
    return tq;
  }
  id<JavaUtilList> leaves = [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) leaves];
  jint maxDoc = [reader maxDoc];
  IOSObjectArray *contextArray = [IOSObjectArray arrayWithLength:[terms_ size] type:OrgApacheLuceneIndexTermContext_class_()];
  IOSObjectArray *queryTerms = [self->terms_ toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneIndexTerm_class_()]];
  [self collectTermContextWithOrgApacheLuceneIndexIndexReader:reader withJavaUtilList:leaves withOrgApacheLuceneIndexTermContextArray:contextArray withOrgApacheLuceneIndexTermArray:queryTerms];
  return [self buildQueryWithInt:maxDoc withOrgApacheLuceneIndexTermContextArray:contextArray withOrgApacheLuceneIndexTermArray:queryTerms];
}

- (jint)calcLowFreqMinimumNumberShouldMatchWithInt:(jint)numOptional {
  return OrgApacheLuceneQueriesCommonTermsQuery_minNrShouldMatchWithFloat_withInt_(self, lowFreqMinNrShouldMatch_, numOptional);
}

- (jint)calcHighFreqMinimumNumberShouldMatchWithInt:(jint)numOptional {
  return OrgApacheLuceneQueriesCommonTermsQuery_minNrShouldMatchWithFloat_withInt_(self, highFreqMinNrShouldMatch_, numOptional);
}

- (jint)minNrShouldMatchWithFloat:(jfloat)minNrShouldMatch
                          withInt:(jint)numOptional {
  return OrgApacheLuceneQueriesCommonTermsQuery_minNrShouldMatchWithFloat_withInt_(self, minNrShouldMatch, numOptional);
}

- (OrgApacheLuceneSearchQuery *)buildQueryWithInt:(jint)maxDoc
         withOrgApacheLuceneIndexTermContextArray:(IOSObjectArray *)contextArray
                withOrgApacheLuceneIndexTermArray:(IOSObjectArray *)queryTerms {
  id<JavaUtilList> lowFreqQueries = [new_JavaUtilArrayList_init() autorelease];
  id<JavaUtilList> highFreqQueries = [new_JavaUtilArrayList_init() autorelease];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(queryTerms))->size_; i++) {
    OrgApacheLuceneIndexTermContext *termContext = IOSObjectArray_Get(nil_chk(contextArray), i);
    if (termContext == nil) {
      [lowFreqQueries addWithId:[self newTermQueryWithOrgApacheLuceneIndexTerm:IOSObjectArray_Get(queryTerms, i) withOrgApacheLuceneIndexTermContext:nil]];
    }
    else {
      if ((maxTermFrequency_ >= 1.0f && [termContext docFreq] > maxTermFrequency_) || ([termContext docFreq] > JreFpToInt(JavaLangMath_ceilWithDouble_(maxTermFrequency_ * (jfloat) maxDoc)))) {
        [highFreqQueries addWithId:[self newTermQueryWithOrgApacheLuceneIndexTerm:IOSObjectArray_Get(queryTerms, i) withOrgApacheLuceneIndexTermContext:termContext]];
      }
      else {
        [lowFreqQueries addWithId:[self newTermQueryWithOrgApacheLuceneIndexTerm:IOSObjectArray_Get(queryTerms, i) withOrgApacheLuceneIndexTermContext:termContext]];
      }
    }
  }
  jint numLowFreqClauses = [lowFreqQueries size];
  jint numHighFreqClauses = [highFreqQueries size];
  OrgApacheLuceneSearchBooleanClause_OccurEnum *lowFreqOccur = self->lowFreqOccur_;
  OrgApacheLuceneSearchBooleanClause_OccurEnum *highFreqOccur = self->highFreqOccur_;
  jint lowFreqMinShouldMatch = 0;
  jint highFreqMinShouldMatch = 0;
  if (lowFreqOccur == JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD) && numLowFreqClauses > 0) {
    lowFreqMinShouldMatch = [self calcLowFreqMinimumNumberShouldMatchWithInt:numLowFreqClauses];
  }
  if (highFreqOccur == JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD) && numHighFreqClauses > 0) {
    highFreqMinShouldMatch = [self calcHighFreqMinimumNumberShouldMatchWithInt:numHighFreqClauses];
  }
  if ([lowFreqQueries isEmpty]) {
    if (highFreqMinShouldMatch == 0 && highFreqOccur != JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, MUST)) {
      highFreqOccur = JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, MUST);
    }
  }
  OrgApacheLuceneSearchBooleanQuery_Builder *builder = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() autorelease];
  [builder setDisableCoordWithBoolean:YES];
  if ([lowFreqQueries isEmpty] == NO) {
    OrgApacheLuceneSearchBooleanQuery_Builder *lowFreq = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() autorelease];
    [lowFreq setDisableCoordWithBoolean:disableCoord_];
    for (OrgApacheLuceneSearchQuery * __strong query in lowFreqQueries) {
      [lowFreq addWithOrgApacheLuceneSearchQuery:query withOrgApacheLuceneSearchBooleanClause_OccurEnum:lowFreqOccur];
    }
    [lowFreq setMinimumNumberShouldMatchWithInt:lowFreqMinShouldMatch];
    OrgApacheLuceneSearchQuery *lowFreqQuery = [lowFreq build];
    [((OrgApacheLuceneSearchQuery *) nil_chk(lowFreqQuery)) setBoostWithFloat:lowFreqBoost_];
    [builder addWithOrgApacheLuceneSearchQuery:lowFreqQuery withOrgApacheLuceneSearchBooleanClause_OccurEnum:JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, MUST)];
  }
  if ([highFreqQueries isEmpty] == NO) {
    OrgApacheLuceneSearchBooleanQuery_Builder *highFreq = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() autorelease];
    [highFreq setDisableCoordWithBoolean:disableCoord_];
    for (OrgApacheLuceneSearchQuery * __strong query in highFreqQueries) {
      [highFreq addWithOrgApacheLuceneSearchQuery:query withOrgApacheLuceneSearchBooleanClause_OccurEnum:highFreqOccur];
    }
    [highFreq setMinimumNumberShouldMatchWithInt:highFreqMinShouldMatch];
    OrgApacheLuceneSearchQuery *highFreqQuery = [highFreq build];
    [((OrgApacheLuceneSearchQuery *) nil_chk(highFreqQuery)) setBoostWithFloat:highFreqBoost_];
    [builder addWithOrgApacheLuceneSearchQuery:highFreqQuery withOrgApacheLuceneSearchBooleanClause_OccurEnum:JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)];
  }
  OrgApacheLuceneSearchQuery *rewritten = [builder build];
  [((OrgApacheLuceneSearchQuery *) nil_chk(rewritten)) setBoostWithFloat:[self getBoost]];
  return rewritten;
}

- (void)collectTermContextWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                             withJavaUtilList:(id<JavaUtilList>)leaves
                     withOrgApacheLuceneIndexTermContextArray:(IOSObjectArray *)contextArray
                            withOrgApacheLuceneIndexTermArray:(IOSObjectArray *)queryTerms {
  OrgApacheLuceneIndexTermsEnum *termsEnum = nil;
  for (OrgApacheLuceneIndexLeafReaderContext * __strong context in nil_chk(leaves)) {
    OrgApacheLuceneIndexFields *fields = [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader])) fields];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(queryTerms))->size_; i++) {
      OrgApacheLuceneIndexTerm *term = IOSObjectArray_Get(queryTerms, i);
      OrgApacheLuceneIndexTermContext *termContext = IOSObjectArray_Get(nil_chk(contextArray), i);
      OrgApacheLuceneIndexTerms *terms = [((OrgApacheLuceneIndexFields *) nil_chk(fields)) termsWithNSString:[((OrgApacheLuceneIndexTerm *) nil_chk(term)) field]];
      if (terms == nil) {
        continue;
      }
      termsEnum = [((OrgApacheLuceneIndexTerms *) nil_chk(terms)) iterator];
      JreAssert((termsEnum != nil), (@"org/apache/lucene/queries/CommonTermsQuery.java:263 condition failed: assert termsEnum != null;"));
      if (termsEnum == JreLoadStatic(OrgApacheLuceneIndexTermsEnum, EMPTY_)) continue;
      if ([((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) seekExactWithOrgApacheLuceneUtilBytesRef:[term bytes]]) {
        if (termContext == nil) {
          IOSObjectArray_SetAndConsume(contextArray, i, new_OrgApacheLuceneIndexTermContext_initWithOrgApacheLuceneIndexIndexReaderContext_withOrgApacheLuceneIndexTermState_withInt_withInt_withLong_([((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) getContext], [termsEnum termState], context->ord_, [termsEnum docFreq], [termsEnum totalTermFreq]));
        }
        else {
          [termContext register__WithOrgApacheLuceneIndexTermState:[termsEnum termState] withInt:context->ord_ withInt:[termsEnum docFreq] withLong:[termsEnum totalTermFreq]];
        }
      }
    }
  }
}

- (jfloat)getLowFreqMinimumNumberShouldMatch {
  return lowFreqMinNrShouldMatch_;
}

- (jfloat)getHighFreqMinimumNumberShouldMatch {
  return highFreqMinNrShouldMatch_;
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = [new_JavaLangStringBuilder_init() autorelease];
  jboolean needParens = ([self getBoost] != 1.0) || ([self getLowFreqMinimumNumberShouldMatch] > 0);
  if (needParens) {
    [buffer appendWithNSString:@"("];
  }
  for (jint i = 0; i < [((id<JavaUtilList>) nil_chk(terms_)) size]; i++) {
    OrgApacheLuceneIndexTerm *t = [terms_ getWithInt:i];
    [buffer appendWithNSString:[((OrgApacheLuceneSearchQuery *) nil_chk([self newTermQueryWithOrgApacheLuceneIndexTerm:t withOrgApacheLuceneIndexTermContext:nil])) description]];
    if (i != [terms_ size] - 1) [buffer appendWithNSString:@", "];
  }
  if (needParens) {
    [buffer appendWithNSString:@")"];
  }
  if ([self getLowFreqMinimumNumberShouldMatch] > 0 || [self getHighFreqMinimumNumberShouldMatch] > 0) {
    [buffer appendWithChar:'~'];
    [buffer appendWithNSString:@"("];
    [buffer appendWithFloat:[self getLowFreqMinimumNumberShouldMatch]];
    [buffer appendWithFloat:[self getHighFreqMinimumNumberShouldMatch]];
    [buffer appendWithNSString:@")"];
  }
  if ([self getBoost] != 1.0f) {
    [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  }
  return [buffer description];
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = ((jint) [super hash]);
  result = prime * result + (disableCoord_ ? 1231 : 1237);
  result = prime * result + JavaLangFloat_floatToIntBitsWithFloat_(highFreqBoost_);
  result = prime * result + ((highFreqOccur_ == nil) ? 0 : ((jint) [highFreqOccur_ hash]));
  result = prime * result + JavaLangFloat_floatToIntBitsWithFloat_(lowFreqBoost_);
  result = prime * result + ((lowFreqOccur_ == nil) ? 0 : ((jint) [lowFreqOccur_ hash]));
  result = prime * result + JavaLangFloat_floatToIntBitsWithFloat_(maxTermFrequency_);
  result = prime * result + JavaLangFloat_floatToIntBitsWithFloat_(lowFreqMinNrShouldMatch_);
  result = prime * result + JavaLangFloat_floatToIntBitsWithFloat_(highFreqMinNrShouldMatch_);
  result = prime * result + ((terms_ == nil) ? 0 : ((jint) [terms_ hash]));
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return YES;
  if (![super isEqual:obj]) return NO;
  if ([self getClass] != [nil_chk(obj) getClass]) return NO;
  OrgApacheLuceneQueriesCommonTermsQuery *other = (OrgApacheLuceneQueriesCommonTermsQuery *) check_class_cast(obj, [OrgApacheLuceneQueriesCommonTermsQuery class]);
  if (disableCoord_ != other->disableCoord_) return NO;
  if (JavaLangFloat_floatToIntBitsWithFloat_(highFreqBoost_) != JavaLangFloat_floatToIntBitsWithFloat_(other->highFreqBoost_)) return NO;
  if (highFreqOccur_ != other->highFreqOccur_) return NO;
  if (JavaLangFloat_floatToIntBitsWithFloat_(lowFreqBoost_) != JavaLangFloat_floatToIntBitsWithFloat_(other->lowFreqBoost_)) return NO;
  if (lowFreqOccur_ != other->lowFreqOccur_) return NO;
  if (JavaLangFloat_floatToIntBitsWithFloat_(maxTermFrequency_) != JavaLangFloat_floatToIntBitsWithFloat_(other->maxTermFrequency_)) return NO;
  if (lowFreqMinNrShouldMatch_ != other->lowFreqMinNrShouldMatch_) return NO;
  if (highFreqMinNrShouldMatch_ != other->highFreqMinNrShouldMatch_) return NO;
  if (terms_ == nil) {
    if (other->terms_ != nil) return NO;
  }
  else if (![terms_ isEqual:other->terms_]) return NO;
  return YES;
}

- (OrgApacheLuceneSearchQuery *)newTermQueryWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                     withOrgApacheLuceneIndexTermContext:(OrgApacheLuceneIndexTermContext *)context {
  return context == nil ? [new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(term) autorelease] : [new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_withOrgApacheLuceneIndexTermContext_(term, context) autorelease];
}

- (instancetype)init {
  OrgApacheLuceneQueriesCommonTermsQuery_init(self);
  return self;
}

- (void)dealloc {
  RELEASE_(terms_);
  RELEASE_(lowFreqOccur_);
  RELEASE_(highFreqOccur_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "rewriteWithOrgApacheLuceneIndexIndexReader:", "rewrite", "Lorg.apache.lucene.search.Query;", 0x1, "Ljava.io.IOException;", NULL },
    { "calcLowFreqMinimumNumberShouldMatchWithInt:", "calcLowFreqMinimumNumberShouldMatch", "I", 0x4, NULL, NULL },
    { "calcHighFreqMinimumNumberShouldMatchWithInt:", "calcHighFreqMinimumNumberShouldMatch", "I", 0x4, NULL, NULL },
    { "minNrShouldMatchWithFloat:withInt:", "minNrShouldMatch", "I", 0x12, NULL, NULL },
    { "buildQueryWithInt:withOrgApacheLuceneIndexTermContextArray:withOrgApacheLuceneIndexTermArray:", "buildQuery", "Lorg.apache.lucene.search.Query;", 0x4, NULL, NULL },
    { "collectTermContextWithOrgApacheLuceneIndexIndexReader:withJavaUtilList:withOrgApacheLuceneIndexTermContextArray:withOrgApacheLuceneIndexTermArray:", "collectTermContext", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "getLowFreqMinimumNumberShouldMatch", NULL, "F", 0x1, NULL, NULL },
    { "getHighFreqMinimumNumberShouldMatch", NULL, "F", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "newTermQueryWithOrgApacheLuceneIndexTerm:withOrgApacheLuceneIndexTermContext:", "newTermQuery", "Lorg.apache.lucene.search.Query;", 0x4, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "terms_", NULL, 0x14, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/index/Term;>;", .constantValue.asLong = 0 },
    { "disableCoord_", NULL, 0x14, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "maxTermFrequency_", NULL, 0x14, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "lowFreqOccur_", NULL, 0x14, "Lorg.apache.lucene.search.BooleanClause$Occur;", NULL, NULL, .constantValue.asLong = 0 },
    { "highFreqOccur_", NULL, 0x14, "Lorg.apache.lucene.search.BooleanClause$Occur;", NULL, NULL, .constantValue.asLong = 0 },
    { "lowFreqBoost_", NULL, 0x4, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "highFreqBoost_", NULL, 0x4, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "lowFreqMinNrShouldMatch_", NULL, 0x4, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "highFreqMinNrShouldMatch_", NULL, 0x4, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesCommonTermsQuery = { 2, "CommonTermsQuery", "org.apache.lucene.queries", NULL, 0x1, 13, methods, 9, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueriesCommonTermsQuery;
}

@end

jint OrgApacheLuceneQueriesCommonTermsQuery_minNrShouldMatchWithFloat_withInt_(OrgApacheLuceneQueriesCommonTermsQuery *self, jfloat minNrShouldMatch, jint numOptional) {
  if (minNrShouldMatch >= 1.0f || minNrShouldMatch == 0.0f) {
    return JreFpToInt(minNrShouldMatch);
  }
  return JavaLangMath_roundWithFloat_(minNrShouldMatch * numOptional);
}

void OrgApacheLuceneQueriesCommonTermsQuery_init(OrgApacheLuceneQueriesCommonTermsQuery *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->terms_, new_JavaUtilArrayList_init());
  self->lowFreqBoost_ = 1.0f;
  self->highFreqBoost_ = 1.0f;
  self->lowFreqMinNrShouldMatch_ = 0;
  self->highFreqMinNrShouldMatch_ = 0;
}

OrgApacheLuceneQueriesCommonTermsQuery *new_OrgApacheLuceneQueriesCommonTermsQuery_init() {
  OrgApacheLuceneQueriesCommonTermsQuery *self = [OrgApacheLuceneQueriesCommonTermsQuery alloc];
  OrgApacheLuceneQueriesCommonTermsQuery_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesCommonTermsQuery)
