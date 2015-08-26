//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hunspell/HunspellStemFilterFactory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/text/ParseException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/hunspell/Dictionary.h"
#include "org/apache/lucene/analysis/hunspell/HunspellStemFilter.h"
#include "org/apache/lucene/analysis/hunspell/HunspellStemFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/ResourceLoader.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory () {
 @public
  NSString *dictionaryFiles_;
  NSString *affixFile_;
  jboolean ignoreCase_;
  jboolean longestOnly_;
  OrgApacheLuceneAnalysisHunspellDictionary *dictionary_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory, dictionaryFiles_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory, affixFile_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory, dictionary_, OrgApacheLuceneAnalysisHunspellDictionary *)

static NSString *OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_PARAM_DICTIONARY_ = @"dictionary";
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory, PARAM_DICTIONARY_, NSString *)

static NSString *OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_PARAM_AFFIX_ = @"affix";
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory, PARAM_AFFIX_, NSString *)

static NSString *OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_PARAM_RECURSION_CAP_ = @"recursionCap";
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory, PARAM_RECURSION_CAP_, NSString *)

static NSString *OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_PARAM_IGNORE_CASE_ = @"ignoreCase";
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory, PARAM_IGNORE_CASE_, NSString *)

static NSString *OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_PARAM_LONGEST_ONLY_ = @"longestOnly";
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory, PARAM_LONGEST_ONLY_, NSString *)

@implementation OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader {
  IOSObjectArray *dicts = [((NSString *) nil_chk(dictionaryFiles_)) split:@","];
  JavaIoInputStream *affix = nil;
  id<JavaUtilList> dictionaries = [new_JavaUtilArrayList_init() autorelease];
  @try {
    dictionaries = [new_JavaUtilArrayList_init() autorelease];
    {
      IOSObjectArray *a__ = dicts;
      NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
      NSString * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        NSString *file = *b__++;
        [dictionaries addWithId:[((id<OrgApacheLuceneAnalysisUtilResourceLoader>) nil_chk(loader)) openResourceWithNSString:file]];
      }
    }
    affix = [((id<OrgApacheLuceneAnalysisUtilResourceLoader>) nil_chk(loader)) openResourceWithNSString:affixFile_];
    JreStrongAssignAndConsume(&self->dictionary_, new_OrgApacheLuceneAnalysisHunspellDictionary_initWithJavaIoInputStream_withJavaUtilList_withBoolean_(affix, dictionaries, ignoreCase_));
  }
  @catch (JavaTextParseException *e) {
    @throw [new_JavaIoIOException_initWithNSString_withJavaLangThrowable_(JreStrcat("$@$$C", @"Unable to load hunspell data! [dictionary=", dictionaries, @",affix=", affixFile_, ']'), e) autorelease];
  }
  @finally {
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ affix } count:1 type:JavaIoCloseable_class_()]);
    OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaLangIterable_(dictionaries);
  }
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream {
  return [new_OrgApacheLuceneAnalysisHunspellHunspellStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisHunspellDictionary_withBoolean_withBoolean_(tokenStream, dictionary_, YES, longestOnly_) autorelease];
}

- (void)dealloc {
  RELEASE_(dictionaryFiles_);
  RELEASE_(affixFile_);
  RELEASE_(dictionary_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "HunspellStemFilterFactory", NULL, 0x1, NULL, NULL },
    { "informWithOrgApacheLuceneAnalysisUtilResourceLoader:", "inform", "V", 0x1, "Ljava.io.IOException;", NULL },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "PARAM_DICTIONARY_", NULL, 0x1a, "Ljava.lang.String;", &OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_PARAM_DICTIONARY_, NULL, .constantValue.asLong = 0 },
    { "PARAM_AFFIX_", NULL, 0x1a, "Ljava.lang.String;", &OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_PARAM_AFFIX_, NULL, .constantValue.asLong = 0 },
    { "PARAM_RECURSION_CAP_", NULL, 0x1a, "Ljava.lang.String;", &OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_PARAM_RECURSION_CAP_, NULL, .constantValue.asLong = 0 },
    { "PARAM_IGNORE_CASE_", NULL, 0x1a, "Ljava.lang.String;", &OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_PARAM_IGNORE_CASE_, NULL, .constantValue.asLong = 0 },
    { "PARAM_LONGEST_ONLY_", NULL, 0x1a, "Ljava.lang.String;", &OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_PARAM_LONGEST_ONLY_, NULL, .constantValue.asLong = 0 },
    { "dictionaryFiles_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "affixFile_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "ignoreCase_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "longestOnly_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "dictionary_", NULL, 0x2, "Lorg.apache.lucene.analysis.hunspell.Dictionary;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory = { 2, "HunspellStemFilterFactory", "org.apache.lucene.analysis.hunspell", NULL, 0x1, 3, methods, 10, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory;
}

@end

void OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->dictionaryFiles_, [self requireWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_PARAM_DICTIONARY_]);
  JreStrongAssign(&self->affixFile_, [self getWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_PARAM_AFFIX_]);
  self->ignoreCase_ = [self getBooleanWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_PARAM_IGNORE_CASE_ withBoolean:NO];
  self->longestOnly_ = [self getBooleanWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_PARAM_LONGEST_ONLY_ withBoolean:NO];
  [self getBooleanWithJavaUtilMap:args withNSString:@"strictAffixParsing" withBoolean:YES];
  [self getIntWithJavaUtilMap:args withNSString:@"recursionCap" withInt:0];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args)) autorelease];
  }
}

OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory *new_OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory *self = [OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory alloc];
  OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisHunspellHunspellStemFilterFactory)
