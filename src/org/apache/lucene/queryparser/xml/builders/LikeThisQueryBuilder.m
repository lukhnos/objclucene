//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/LikeThisQueryBuilder.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Throwable.h"
#include "java/util/HashSet.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/queries/mlt/MoreLikeThisQuery.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/builders/LikeThisQueryBuilder.h"
#include "org/apache/lucene/search/Query.h"
#include "org/w3c/dom/Element.h"

#define OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_MAX_QUERY_TERMS 20
#define OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_MIN_TERM_FREQUENCY 1
#define OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_PERCENT_TERMS_TO_MATCH 30.0f

@interface OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder () {
 @public
  OrgApacheLuceneAnalysisAnalyzer *analyzer_;
  IOSObjectArray *defaultFieldNames_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder, analyzer_, OrgApacheLuceneAnalysisAnalyzer *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder, defaultFieldNames_, IOSObjectArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder, DEFAULT_MAX_QUERY_TERMS, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder, DEFAULT_MIN_TERM_FREQUENCY, jint)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder, DEFAULT_PERCENT_TERMS_TO_MATCH, jfloat)

@implementation OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                      withNSStringArray:(IOSObjectArray *)defaultFieldNames {
  OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_withNSStringArray_(self, analyzer, defaultFieldNames);
  return self;
}

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  NSString *fieldsList = [((id<OrgW3cDomElement>) nil_chk(e)) getAttributeWithNSString:@"fieldNames"];
  IOSObjectArray *fields = defaultFieldNames_;
  if ((fieldsList != nil) && (((jint) [((NSString *) nil_chk([fieldsList trim])) length]) > 0)) {
    fields = [((NSString *) nil_chk([fieldsList trim])) split:@","];
    for (jint i = 0; i < ((IOSObjectArray *) nil_chk(fields))->size_; i++) {
      IOSObjectArray_Set(fields, i, [((NSString *) nil_chk(IOSObjectArray_Get(fields, i))) trim]);
    }
  }
  NSString *stopWords = [e getAttributeWithNSString:@"stopWords"];
  id<JavaUtilSet> stopWordsSet = nil;
  if ((stopWords != nil) && (fields != nil)) {
    stopWordsSet = [new_JavaUtilHashSet_init() autorelease];
    {
      IOSObjectArray *a__ = fields;
      NSString * const *b__ = a__->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *field = *b__++;
        {
          JavaLangThrowable *__mainException = nil;
          OrgApacheLuceneAnalysisTokenStream *ts = [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer_)) tokenStreamWithNSString:field withNSString:stopWords];
          @try {
            id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt = [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(ts)) addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()];
            [ts reset];
            while ([ts incrementToken]) {
              [stopWordsSet addWithId:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt)) description]];
            }
            [ts end];
          }
          @catch (JavaIoIOException *ioe) {
            __mainException = ioe;
            @throw [new_OrgApacheLuceneQueryparserXmlParserException_initWithNSString_(JreStrcat("$$C$", @"IoException parsing stop words list in ", [[self getClass] getName], ':', [((JavaIoIOException *) nil_chk(ioe)) getLocalizedMessage])) autorelease];
          }
          @finally {
            @try {
              [ts close];
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
    }
  }
  OrgApacheLuceneQueriesMltMoreLikeThisQuery *mlt = [new_OrgApacheLuceneQueriesMltMoreLikeThisQuery_initWithNSString_withNSStringArray_withOrgApacheLuceneAnalysisAnalyzer_withNSString_(OrgApacheLuceneQueryparserXmlDOMUtils_getTextWithOrgW3cDomNode_(e), fields, analyzer_, IOSObjectArray_Get(nil_chk(fields), 0)) autorelease];
  [mlt setMaxQueryTermsWithInt:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(e, @"maxQueryTerms", OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_MAX_QUERY_TERMS)];
  [mlt setMinTermFrequencyWithInt:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(e, @"minTermFrequency", OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_MIN_TERM_FREQUENCY)];
  [mlt setPercentTermsToMatchWithFloat:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(e, @"percentTermsToMatch", OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_PERCENT_TERMS_TO_MATCH) / 100];
  [mlt setStopWordsWithJavaUtilSet:stopWordsSet];
  jint minDocFreq = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(e, @"minDocFreq", -1);
  if (minDocFreq >= 0) {
    [mlt setMinDocFreqWithInt:minDocFreq];
  }
  [mlt setBoostWithFloat:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(e, @"boost", 1.0f)];
  return mlt;
}

- (void)dealloc {
  RELEASE_(analyzer_);
  RELEASE_(defaultFieldNames_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisAnalyzer:withNSStringArray:", "LikeThisQueryBuilder", NULL, 0x1, NULL, NULL },
    { "getQueryWithOrgW3cDomElement:", "getQuery", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MAX_QUERY_TERMS", "DEFAULT_MAX_QUERY_TERMS", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_MAX_QUERY_TERMS },
    { "DEFAULT_MIN_TERM_FREQUENCY", "DEFAULT_MIN_TERM_FREQUENCY", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_MIN_TERM_FREQUENCY },
    { "DEFAULT_PERCENT_TERMS_TO_MATCH", "DEFAULT_PERCENT_TERMS_TO_MATCH", 0x1a, "F", NULL, NULL, .constantValue.asFloat = OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_DEFAULT_PERCENT_TERMS_TO_MATCH },
    { "analyzer_", NULL, 0x12, "Lorg.apache.lucene.analysis.Analyzer;", NULL, NULL, .constantValue.asLong = 0 },
    { "defaultFieldNames_", NULL, 0x12, "[Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder = { 2, "LikeThisQueryBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 2, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_withNSStringArray_(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder *self, OrgApacheLuceneAnalysisAnalyzer *analyzer, IOSObjectArray *defaultFieldNames) {
  NSObject_init(self);
  JreStrongAssign(&self->analyzer_, analyzer);
  JreStrongAssign(&self->defaultFieldNames_, defaultFieldNames);
}

OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_withNSStringArray_(OrgApacheLuceneAnalysisAnalyzer *analyzer, IOSObjectArray *defaultFieldNames) {
  OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder *self = [OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder alloc];
  OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_withNSStringArray_(self, analyzer, defaultFieldNames);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersLikeThisQueryBuilder)
