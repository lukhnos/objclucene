//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/builders/TermsQueryBuilder.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/Throwable.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/TermToBytesRefAttribute.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/queryparser/xml/DOMUtils.h"
#include "org/apache/lucene/queryparser/xml/ParserException.h"
#include "org/apache/lucene/queryparser/xml/builders/TermsQueryBuilder.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/TermQuery.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/w3c/dom/Element.h"

@interface OrgApacheLuceneQueryparserXmlBuildersTermsQueryBuilder () {
 @public
  OrgApacheLuceneAnalysisAnalyzer *analyzer_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlBuildersTermsQueryBuilder, analyzer_, OrgApacheLuceneAnalysisAnalyzer *)

@implementation OrgApacheLuceneQueryparserXmlBuildersTermsQueryBuilder

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  OrgApacheLuceneQueryparserXmlBuildersTermsQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer);
  return self;
}

- (OrgApacheLuceneSearchQuery *)getQueryWithOrgW3cDomElement:(id<OrgW3cDomElement>)e {
  NSString *fieldName = OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithInheritanceOrFailWithOrgW3cDomElement_withNSString_(e, @"fieldName");
  NSString *text = OrgApacheLuceneQueryparserXmlDOMUtils_getNonBlankTextOrFailWithOrgW3cDomElement_(e);
  OrgApacheLuceneSearchBooleanQuery_Builder *bq = [new_OrgApacheLuceneSearchBooleanQuery_Builder_init() autorelease];
  [bq setDisableCoordWithBoolean:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withBoolean_(e, @"disableCoord", NO)];
  [bq setMinimumNumberShouldMatchWithInt:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withInt_(e, @"minimumNumberShouldMatch", 0)];
  {
    JavaLangThrowable *__mainException = nil;
    OrgApacheLuceneAnalysisTokenStream *ts = [((OrgApacheLuceneAnalysisAnalyzer *) nil_chk(analyzer_)) tokenStreamWithNSString:fieldName withNSString:text];
    @try {
      id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute> termAtt = [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(ts)) addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute_class_()];
      OrgApacheLuceneIndexTerm *term = nil;
      [ts reset];
      while ([ts incrementToken]) {
        term = [new_OrgApacheLuceneIndexTerm_initWithNSString_withOrgApacheLuceneUtilBytesRef_(fieldName, OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_([((id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute>) nil_chk(termAtt)) getBytesRef])) autorelease];
        [bq addWithOrgApacheLuceneSearchBooleanClause:[new_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_OccurEnum_([new_OrgApacheLuceneSearchTermQuery_initWithOrgApacheLuceneIndexTerm_(term) autorelease], JreLoadStatic(OrgApacheLuceneSearchBooleanClause_OccurEnum, SHOULD)) autorelease]];
      }
      [ts end];
    }
    @catch (JavaIoIOException *ioe) {
      __mainException = ioe;
      @throw [new_JavaLangRuntimeException_initWithNSString_(JreStrcat("$@", @"Error constructing terms from index:", ioe)) autorelease];
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
  OrgApacheLuceneSearchQuery *q = [bq build];
  [((OrgApacheLuceneSearchQuery *) nil_chk(q)) setBoostWithFloat:OrgApacheLuceneQueryparserXmlDOMUtils_getAttributeWithOrgW3cDomElement_withNSString_withFloat_(e, @"boost", 1.0f)];
  return q;
}

- (void)dealloc {
  RELEASE_(analyzer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisAnalyzer:", "TermsQueryBuilder", NULL, 0x1, NULL, NULL },
    { "getQueryWithOrgW3cDomElement:", "getQuery", "Lorg.apache.lucene.search.Query;", 0x1, "Lorg.apache.lucene.queryparser.xml.ParserException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "analyzer_", NULL, 0x12, "Lorg.apache.lucene.analysis.Analyzer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserXmlBuildersTermsQueryBuilder = { 2, "TermsQueryBuilder", "org.apache.lucene.queryparser.xml.builders", NULL, 0x1, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserXmlBuildersTermsQueryBuilder;
}

@end

void OrgApacheLuceneQueryparserXmlBuildersTermsQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneQueryparserXmlBuildersTermsQueryBuilder *self, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  NSObject_init(self);
  JreStrongAssign(&self->analyzer_, analyzer);
}

OrgApacheLuceneQueryparserXmlBuildersTermsQueryBuilder *new_OrgApacheLuceneQueryparserXmlBuildersTermsQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneQueryparserXmlBuildersTermsQueryBuilder *self = [OrgApacheLuceneQueryparserXmlBuildersTermsQueryBuilder alloc];
  OrgApacheLuceneQueryparserXmlBuildersTermsQueryBuilder_initWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserXmlBuildersTermsQueryBuilder)
