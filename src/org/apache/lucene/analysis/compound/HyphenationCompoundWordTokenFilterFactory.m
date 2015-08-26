//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/HyphenationCompoundWordTokenFilterFactory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/compound/CompoundWordTokenFilterBase.h"
#include "org/apache/lucene/analysis/compound/HyphenationCompoundWordTokenFilter.h"
#include "org/apache/lucene/analysis/compound/HyphenationCompoundWordTokenFilterFactory.h"
#include "org/apache/lucene/analysis/compound/Lucene43HyphenationCompoundWordTokenFilter.h"
#include "org/apache/lucene/analysis/compound/hyphenation/HyphenationTree.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/ResourceLoader.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/Version.h"
#include "org/xml/sax/InputSource.h"

@interface OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory () {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *dictionary_;
  OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *hyphenator_;
  NSString *dictFile_;
  NSString *hypFile_;
  NSString *encoding_;
  jint minWordSize_;
  jint minSubwordSize_;
  jint maxSubwordSize_;
  jboolean onlyLongestMatch_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory, dictionary_, OrgApacheLuceneAnalysisUtilCharArraySet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory, hyphenator_, OrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory, dictFile_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory, hypFile_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory, encoding_, NSString *)

@implementation OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader {
  JavaIoInputStream *stream = nil;
  @try {
    if (dictFile_ != nil) JreStrongAssign(&dictionary_, [self getWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:loader withNSString:dictFile_ withBoolean:NO]);
    stream = [((id<OrgApacheLuceneAnalysisUtilResourceLoader>) nil_chk(loader)) openResourceWithNSString:hypFile_];
    OrgXmlSaxInputSource *is = [new_OrgXmlSaxInputSource_initWithJavaIoInputStream_(stream) autorelease];
    [is setEncodingWithNSString:encoding_];
    [is setSystemIdWithNSString:hypFile_];
    if ([((OrgApacheLuceneUtilVersion *) nil_chk(luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0_)]) {
      JreStrongAssign(&hyphenator_, OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_getHyphenationTreeWithOrgXmlSaxInputSource_(is));
    }
    else {
      JreStrongAssign(&hyphenator_, OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_getHyphenationTreeWithOrgXmlSaxInputSource_(is));
    }
  }
  @finally {
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ stream } count:1 type:JavaIoCloseable_class_()]);
  }
}

- (OrgApacheLuceneAnalysisTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  if ([((OrgApacheLuceneUtilVersion *) nil_chk(luceneMatchVersion_)) onOrAfterWithOrgApacheLuceneUtilVersion:JreLoadStatic(OrgApacheLuceneUtilVersion, LUCENE_4_4_0_)]) {
    return [new_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(input, hyphenator_, dictionary_, minWordSize_, minSubwordSize_, maxSubwordSize_, onlyLongestMatch_) autorelease];
  }
  return [new_OrgApacheLuceneAnalysisCompoundLucene43HyphenationCompoundWordTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisCompoundHyphenationHyphenationTree_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(input, hyphenator_, dictionary_, minWordSize_, minSubwordSize_, maxSubwordSize_, onlyLongestMatch_) autorelease];
}

- (void)dealloc {
  RELEASE_(dictionary_);
  RELEASE_(hyphenator_);
  RELEASE_(dictFile_);
  RELEASE_(hypFile_);
  RELEASE_(encoding_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "HyphenationCompoundWordTokenFilterFactory", NULL, 0x1, NULL, NULL },
    { "informWithOrgApacheLuceneAnalysisUtilResourceLoader:", "inform", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenFilter;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "dictionary_", NULL, 0x2, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "hyphenator_", NULL, 0x2, "Lorg.apache.lucene.analysis.compound.hyphenation.HyphenationTree;", NULL, NULL, .constantValue.asLong = 0 },
    { "dictFile_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "hypFile_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "encoding_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "minWordSize_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minSubwordSize_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxSubwordSize_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "onlyLongestMatch_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory = { 2, "HyphenationCompoundWordTokenFilterFactory", "org.apache.lucene.analysis.compound", NULL, 0x1, 3, methods, 9, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory;
}

@end

void OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->dictFile_, [self getWithJavaUtilMap:args withNSString:@"dictionary"]);
  JreStrongAssign(&self->encoding_, [self getWithJavaUtilMap:args withNSString:@"encoding"]);
  JreStrongAssign(&self->hypFile_, [self requireWithJavaUtilMap:args withNSString:@"hyphenator"]);
  self->minWordSize_ = [self getIntWithJavaUtilMap:args withNSString:@"minWordSize" withInt:OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_WORD_SIZE];
  self->minSubwordSize_ = [self getIntWithJavaUtilMap:args withNSString:@"minSubwordSize" withInt:OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MIN_SUBWORD_SIZE];
  self->maxSubwordSize_ = [self getIntWithJavaUtilMap:args withNSString:@"maxSubwordSize" withInt:OrgApacheLuceneAnalysisCompoundCompoundWordTokenFilterBase_DEFAULT_MAX_SUBWORD_SIZE];
  self->onlyLongestMatch_ = [self getBooleanWithJavaUtilMap:args withNSString:@"onlyLongestMatch" withBoolean:NO];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args)) autorelease];
  }
}

OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory *new_OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory *self = [OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory alloc];
  OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCompoundHyphenationCompoundWordTokenFilterFactory)
