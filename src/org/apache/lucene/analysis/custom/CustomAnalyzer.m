//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/custom/CustomAnalyzer.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/Tokenizer.h"
#include "org/apache/lucene/analysis/custom/CustomAnalyzer.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/CharFilterFactory.h"
#include "org/apache/lucene/analysis/util/ClasspathResourceLoader.h"
#include "org/apache/lucene/analysis/util/FilesystemResourceLoader.h"
#include "org/apache/lucene/analysis/util/ResourceLoader.h"
#include "org/apache/lucene/analysis/util/ResourceLoaderAware.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"
#include "org/apache/lucene/analysis/util/TokenizerFactory.h"
#include "org/apache/lucene/util/SetOnce.h"
#include "org/apache/lucene/util/Version.h"
#include "org/lukhnos/portmobile/file/Path.h"
#include "org/lukhnos/portmobile/util/Objects.h"

@interface OrgApacheLuceneAnalysisCustomCustomAnalyzer () {
 @public
  IOSObjectArray *charFilters_;
  OrgApacheLuceneAnalysisUtilTokenizerFactory *tokenizer_;
  IOSObjectArray *tokenFilters_;
  JavaLangInteger *posIncGap_, *offsetGap_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCustomCustomAnalyzer, charFilters_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCustomCustomAnalyzer, tokenizer_, OrgApacheLuceneAnalysisUtilTokenizerFactory *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCustomCustomAnalyzer, tokenFilters_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCustomCustomAnalyzer, posIncGap_, JavaLangInteger *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCustomCustomAnalyzer, offsetGap_, JavaLangInteger *)

@interface OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder () {
 @public
  id<OrgApacheLuceneAnalysisUtilResourceLoader> loader_;
  OrgApacheLuceneUtilSetOnce *defaultMatchVersion_;
  id<JavaUtilList> charFilters_;
  OrgApacheLuceneUtilSetOnce *tokenizer_;
  id<JavaUtilList> tokenFilters_;
  OrgApacheLuceneUtilSetOnce *posIncGap_;
  OrgApacheLuceneUtilSetOnce *offsetGap_;
  jboolean componentsAdded_;
}

- (id<JavaUtilMap>)applyDefaultParamsWithJavaUtilMap:(id<JavaUtilMap>)map;

- (id<JavaUtilMap>)paramsToMapWithNSStringArray:(IOSObjectArray *)params;

- (id)applyResourceLoaderWithId:(id)factory;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder, loader_, id<OrgApacheLuceneAnalysisUtilResourceLoader>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder, defaultMatchVersion_, OrgApacheLuceneUtilSetOnce *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder, charFilters_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder, tokenizer_, OrgApacheLuceneUtilSetOnce *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder, tokenFilters_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder, posIncGap_, OrgApacheLuceneUtilSetOnce *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder, offsetGap_, OrgApacheLuceneUtilSetOnce *)

__attribute__((unused)) static id<JavaUtilMap> OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_applyDefaultParamsWithJavaUtilMap_(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *self, id<JavaUtilMap> map);

__attribute__((unused)) static id<JavaUtilMap> OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_paramsToMapWithNSStringArray_(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *self, IOSObjectArray *params);

__attribute__((unused)) static id OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_applyResourceLoaderWithId_(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *self, id factory);

@implementation OrgApacheLuceneAnalysisCustomCustomAnalyzer

+ (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)builder {
  return OrgApacheLuceneAnalysisCustomCustomAnalyzer_builder();
}

+ (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)builderWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)configDir {
  return OrgApacheLuceneAnalysisCustomCustomAnalyzer_builderWithOrgLukhnosPortmobileFilePath_(configDir);
}

+ (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)builderWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader {
  return OrgApacheLuceneAnalysisCustomCustomAnalyzer_builderWithOrgApacheLuceneAnalysisUtilResourceLoader_(loader);
}

- (instancetype)initWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)defaultMatchVersion
withOrgApacheLuceneAnalysisUtilCharFilterFactoryArray:(IOSObjectArray *)charFilters
   withOrgApacheLuceneAnalysisUtilTokenizerFactory:(OrgApacheLuceneAnalysisUtilTokenizerFactory *)tokenizer
withOrgApacheLuceneAnalysisUtilTokenFilterFactoryArray:(IOSObjectArray *)tokenFilters
                               withJavaLangInteger:(JavaLangInteger *)posIncGap
                               withJavaLangInteger:(JavaLangInteger *)offsetGap {
  OrgApacheLuceneAnalysisCustomCustomAnalyzer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneAnalysisUtilCharFilterFactoryArray_withOrgApacheLuceneAnalysisUtilTokenizerFactory_withOrgApacheLuceneAnalysisUtilTokenFilterFactoryArray_withJavaLangInteger_withJavaLangInteger_(self, defaultMatchVersion, charFilters, tokenizer, tokenFilters, posIncGap, offsetGap);
  return self;
}

- (JavaIoReader *)initReaderWithNSString:(NSString *)fieldName
                        withJavaIoReader:(JavaIoReader *)reader {
  {
    IOSObjectArray *a__ = charFilters_;
    OrgApacheLuceneAnalysisUtilCharFilterFactory * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneAnalysisUtilCharFilterFactory * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneAnalysisUtilCharFilterFactory *charFilter = *b__++;
      reader = [((OrgApacheLuceneAnalysisUtilCharFilterFactory *) nil_chk(charFilter)) createWithJavaIoReader:reader];
    }
  }
  return reader;
}

- (OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents *)createComponentsWithNSString:(NSString *)fieldName {
  OrgApacheLuceneAnalysisTokenizer *tk = [((OrgApacheLuceneAnalysisUtilTokenizerFactory *) nil_chk(tokenizer_)) create];
  OrgApacheLuceneAnalysisTokenStream *ts = tk;
  {
    IOSObjectArray *a__ = tokenFilters_;
    OrgApacheLuceneAnalysisUtilTokenFilterFactory * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneAnalysisUtilTokenFilterFactory * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneAnalysisUtilTokenFilterFactory *filter = *b__++;
      ts = [((OrgApacheLuceneAnalysisUtilTokenFilterFactory *) nil_chk(filter)) createWithOrgApacheLuceneAnalysisTokenStream:ts];
    }
  }
  return [new_OrgApacheLuceneAnalysisAnalyzer_TokenStreamComponents_initWithOrgApacheLuceneAnalysisTokenizer_withOrgApacheLuceneAnalysisTokenStream_(tk, ts) autorelease];
}

- (jint)getPositionIncrementGapWithNSString:(NSString *)fieldName {
  return (posIncGap_ == nil) ? [super getPositionIncrementGapWithNSString:fieldName] : [posIncGap_ intValue];
}

- (jint)getOffsetGapWithNSString:(NSString *)fieldName {
  return (offsetGap_ == nil) ? [super getOffsetGapWithNSString:fieldName] : [offsetGap_ intValue];
}

- (id<JavaUtilList>)getCharFilterFactories {
  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(JavaUtilArrays_asListWithNSObjectArray_(charFilters_));
}

- (OrgApacheLuceneAnalysisUtilTokenizerFactory *)getTokenizerFactory {
  return tokenizer_;
}

- (id<JavaUtilList>)getTokenFilterFactories {
  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(JavaUtilArrays_asListWithNSObjectArray_(tokenFilters_));
}

- (NSString *)description {
  JavaLangStringBuilder *sb = [((JavaLangStringBuilder *) [new_JavaLangStringBuilder_initWithNSString_([[self getClass] getSimpleName]) autorelease]) appendWithChar:'('];
  {
    IOSObjectArray *a__ = charFilters_;
    OrgApacheLuceneAnalysisUtilCharFilterFactory * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneAnalysisUtilCharFilterFactory * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneAnalysisUtilCharFilterFactory *filter = *b__++;
      [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(sb)) appendWithId:filter])) appendWithChar:','];
    }
  }
  [((JavaLangStringBuilder *) nil_chk(sb)) appendWithId:tokenizer_];
  {
    IOSObjectArray *a__ = tokenFilters_;
    OrgApacheLuceneAnalysisUtilTokenFilterFactory * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneAnalysisUtilTokenFilterFactory * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneAnalysisUtilTokenFilterFactory *filter = *b__++;
      [((JavaLangStringBuilder *) nil_chk([sb appendWithChar:','])) appendWithId:filter];
    }
  }
  return [((JavaLangStringBuilder *) nil_chk([sb appendWithChar:')'])) description];
}

- (void)dealloc {
  RELEASE_(charFilters_);
  RELEASE_(tokenizer_);
  RELEASE_(tokenFilters_);
  RELEASE_(posIncGap_);
  RELEASE_(offsetGap_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "builder", NULL, "Lorg.apache.lucene.analysis.custom.CustomAnalyzer$Builder;", 0x9, NULL, NULL },
    { "builderWithOrgLukhnosPortmobileFilePath:", "builder", "Lorg.apache.lucene.analysis.custom.CustomAnalyzer$Builder;", 0x9, NULL, NULL },
    { "builderWithOrgApacheLuceneAnalysisUtilResourceLoader:", "builder", "Lorg.apache.lucene.analysis.custom.CustomAnalyzer$Builder;", 0x9, NULL, NULL },
    { "initWithOrgApacheLuceneUtilVersion:withOrgApacheLuceneAnalysisUtilCharFilterFactoryArray:withOrgApacheLuceneAnalysisUtilTokenizerFactory:withOrgApacheLuceneAnalysisUtilTokenFilterFactoryArray:withJavaLangInteger:withJavaLangInteger:", "CustomAnalyzer", NULL, 0x0, NULL, NULL },
    { "initReaderWithNSString:withJavaIoReader:", "initReader", "Ljava.io.Reader;", 0x4, NULL, NULL },
    { "createComponentsWithNSString:", "createComponents", "Lorg.apache.lucene.analysis.Analyzer$TokenStreamComponents;", 0x4, NULL, NULL },
    { "getPositionIncrementGapWithNSString:", "getPositionIncrementGap", "I", 0x1, NULL, NULL },
    { "getOffsetGapWithNSString:", "getOffsetGap", "I", 0x1, NULL, NULL },
    { "getCharFilterFactories", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "getTokenizerFactory", NULL, "Lorg.apache.lucene.analysis.util.TokenizerFactory;", 0x1, NULL, NULL },
    { "getTokenFilterFactories", NULL, "Ljava.util.List;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "charFilters_", NULL, 0x12, "[Lorg.apache.lucene.analysis.util.CharFilterFactory;", NULL, NULL, .constantValue.asLong = 0 },
    { "tokenizer_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.TokenizerFactory;", NULL, NULL, .constantValue.asLong = 0 },
    { "tokenFilters_", NULL, 0x12, "[Lorg.apache.lucene.analysis.util.TokenFilterFactory;", NULL, NULL, .constantValue.asLong = 0 },
    { "posIncGap_", NULL, 0x12, "Ljava.lang.Integer;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetGap_", NULL, 0x12, "Ljava.lang.Integer;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.custom.CustomAnalyzer$Builder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCustomCustomAnalyzer = { 2, "CustomAnalyzer", "org.apache.lucene.analysis.custom", NULL, 0x11, 12, methods, 5, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCustomCustomAnalyzer;
}

@end

OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *OrgApacheLuceneAnalysisCustomCustomAnalyzer_builder() {
  OrgApacheLuceneAnalysisCustomCustomAnalyzer_initialize();
  return OrgApacheLuceneAnalysisCustomCustomAnalyzer_builderWithOrgApacheLuceneAnalysisUtilResourceLoader_([new_OrgApacheLuceneAnalysisUtilClasspathResourceLoader_init() autorelease]);
}

OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *OrgApacheLuceneAnalysisCustomCustomAnalyzer_builderWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *configDir) {
  OrgApacheLuceneAnalysisCustomCustomAnalyzer_initialize();
  return OrgApacheLuceneAnalysisCustomCustomAnalyzer_builderWithOrgApacheLuceneAnalysisUtilResourceLoader_([new_OrgApacheLuceneAnalysisUtilFilesystemResourceLoader_initWithOrgLukhnosPortmobileFilePath_(configDir) autorelease]);
}

OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *OrgApacheLuceneAnalysisCustomCustomAnalyzer_builderWithOrgApacheLuceneAnalysisUtilResourceLoader_(id<OrgApacheLuceneAnalysisUtilResourceLoader> loader) {
  OrgApacheLuceneAnalysisCustomCustomAnalyzer_initialize();
  return [new_OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_initWithOrgApacheLuceneAnalysisUtilResourceLoader_(loader) autorelease];
}

void OrgApacheLuceneAnalysisCustomCustomAnalyzer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneAnalysisUtilCharFilterFactoryArray_withOrgApacheLuceneAnalysisUtilTokenizerFactory_withOrgApacheLuceneAnalysisUtilTokenFilterFactoryArray_withJavaLangInteger_withJavaLangInteger_(OrgApacheLuceneAnalysisCustomCustomAnalyzer *self, OrgApacheLuceneUtilVersion *defaultMatchVersion, IOSObjectArray *charFilters, OrgApacheLuceneAnalysisUtilTokenizerFactory *tokenizer, IOSObjectArray *tokenFilters, JavaLangInteger *posIncGap, JavaLangInteger *offsetGap) {
  OrgApacheLuceneAnalysisAnalyzer_init(self);
  JreStrongAssign(&self->charFilters_, charFilters);
  JreStrongAssign(&self->tokenizer_, tokenizer);
  JreStrongAssign(&self->tokenFilters_, tokenFilters);
  JreStrongAssign(&self->posIncGap_, posIncGap);
  JreStrongAssign(&self->offsetGap_, offsetGap);
  if (defaultMatchVersion != nil) {
    [self setVersionWithOrgApacheLuceneUtilVersion:defaultMatchVersion];
  }
}

OrgApacheLuceneAnalysisCustomCustomAnalyzer *new_OrgApacheLuceneAnalysisCustomCustomAnalyzer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneAnalysisUtilCharFilterFactoryArray_withOrgApacheLuceneAnalysisUtilTokenizerFactory_withOrgApacheLuceneAnalysisUtilTokenFilterFactoryArray_withJavaLangInteger_withJavaLangInteger_(OrgApacheLuceneUtilVersion *defaultMatchVersion, IOSObjectArray *charFilters, OrgApacheLuceneAnalysisUtilTokenizerFactory *tokenizer, IOSObjectArray *tokenFilters, JavaLangInteger *posIncGap, JavaLangInteger *offsetGap) {
  OrgApacheLuceneAnalysisCustomCustomAnalyzer *self = [OrgApacheLuceneAnalysisCustomCustomAnalyzer alloc];
  OrgApacheLuceneAnalysisCustomCustomAnalyzer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneAnalysisUtilCharFilterFactoryArray_withOrgApacheLuceneAnalysisUtilTokenizerFactory_withOrgApacheLuceneAnalysisUtilTokenFilterFactoryArray_withJavaLangInteger_withJavaLangInteger_(self, defaultMatchVersion, charFilters, tokenizer, tokenFilters, posIncGap, offsetGap);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCustomCustomAnalyzer)

@implementation OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder

- (instancetype)initWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader {
  OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_initWithOrgApacheLuceneAnalysisUtilResourceLoader_(self, loader);
  return self;
}

- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)withDefaultMatchVersionWithOrgApacheLuceneUtilVersion:(OrgApacheLuceneUtilVersion *)version_ {
  OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(version_, @"version may not be null");
  if (componentsAdded_) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(@"You may only set the default match version before adding tokenizers, token filters, or char filters.") autorelease];
  }
  [((OrgApacheLuceneUtilSetOnce *) nil_chk(self->defaultMatchVersion_)) setWithId:version_];
  return self;
}

- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)withPositionIncrementGapWithInt:(jint)posIncGap {
  if (posIncGap < 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"posIncGap must be >= 0") autorelease];
  }
  [((OrgApacheLuceneUtilSetOnce *) nil_chk(self->posIncGap_)) setWithId:JavaLangInteger_valueOfWithInt_(posIncGap)];
  return self;
}

- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)withOffsetGapWithInt:(jint)offsetGap {
  if (offsetGap < 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"offsetGap must be >= 0") autorelease];
  }
  [((OrgApacheLuceneUtilSetOnce *) nil_chk(self->offsetGap_)) setWithId:JavaLangInteger_valueOfWithInt_(offsetGap)];
  return self;
}

- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)withTokenizerWithNSString:(NSString *)name
                                                                 withNSStringArray:(IOSObjectArray *)params {
  return [self withTokenizerWithNSString:name withJavaUtilMap:OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_paramsToMapWithNSStringArray_(self, params)];
}

- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)withTokenizerWithNSString:(NSString *)name
                                                                   withJavaUtilMap:(id<JavaUtilMap>)params {
  OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(name, @"Tokenizer name may not be null");
  [((OrgApacheLuceneUtilSetOnce *) nil_chk(tokenizer_)) setWithId:OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_applyResourceLoaderWithId_(self, OrgApacheLuceneAnalysisUtilTokenizerFactory_forNameWithNSString_withJavaUtilMap_(name, OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_applyDefaultParamsWithJavaUtilMap_(self, params)))];
  componentsAdded_ = YES;
  return self;
}

- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)addTokenFilterWithNSString:(NSString *)name
                                                                  withNSStringArray:(IOSObjectArray *)params {
  return [self addTokenFilterWithNSString:name withJavaUtilMap:OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_paramsToMapWithNSStringArray_(self, params)];
}

- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)addTokenFilterWithNSString:(NSString *)name
                                                                    withJavaUtilMap:(id<JavaUtilMap>)params {
  OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(name, @"TokenFilter name may not be null");
  [((id<JavaUtilList>) nil_chk(tokenFilters_)) addWithId:OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_applyResourceLoaderWithId_(self, OrgApacheLuceneAnalysisUtilTokenFilterFactory_forNameWithNSString_withJavaUtilMap_(name, OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_applyDefaultParamsWithJavaUtilMap_(self, params)))];
  componentsAdded_ = YES;
  return self;
}

- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)addCharFilterWithNSString:(NSString *)name
                                                                 withNSStringArray:(IOSObjectArray *)params {
  return [self addCharFilterWithNSString:name withJavaUtilMap:OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_paramsToMapWithNSStringArray_(self, params)];
}

- (OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *)addCharFilterWithNSString:(NSString *)name
                                                                   withJavaUtilMap:(id<JavaUtilMap>)params {
  OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(name, @"CharFilter name may not be null");
  [((id<JavaUtilList>) nil_chk(charFilters_)) addWithId:OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_applyResourceLoaderWithId_(self, OrgApacheLuceneAnalysisUtilCharFilterFactory_forNameWithNSString_withJavaUtilMap_(name, OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_applyDefaultParamsWithJavaUtilMap_(self, params)))];
  componentsAdded_ = YES;
  return self;
}

- (OrgApacheLuceneAnalysisCustomCustomAnalyzer *)build {
  if ([((OrgApacheLuceneUtilSetOnce *) nil_chk(tokenizer_)) get] == nil) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(@"You have to set at least a tokenizer.") autorelease];
  }
  return [new_OrgApacheLuceneAnalysisCustomCustomAnalyzer_initWithOrgApacheLuceneUtilVersion_withOrgApacheLuceneAnalysisUtilCharFilterFactoryArray_withOrgApacheLuceneAnalysisUtilTokenizerFactory_withOrgApacheLuceneAnalysisUtilTokenFilterFactoryArray_withJavaLangInteger_withJavaLangInteger_([((OrgApacheLuceneUtilSetOnce *) nil_chk(defaultMatchVersion_)) get], [charFilters_ toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[((id<JavaUtilList>) nil_chk(charFilters_)) size] type:OrgApacheLuceneAnalysisUtilCharFilterFactory_class_()]], [tokenizer_ get], [tokenFilters_ toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[((id<JavaUtilList>) nil_chk(tokenFilters_)) size] type:OrgApacheLuceneAnalysisUtilTokenFilterFactory_class_()]], [((OrgApacheLuceneUtilSetOnce *) nil_chk(posIncGap_)) get], [((OrgApacheLuceneUtilSetOnce *) nil_chk(offsetGap_)) get]) autorelease];
}

- (id<JavaUtilMap>)applyDefaultParamsWithJavaUtilMap:(id<JavaUtilMap>)map {
  return OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_applyDefaultParamsWithJavaUtilMap_(self, map);
}

- (id<JavaUtilMap>)paramsToMapWithNSStringArray:(IOSObjectArray *)params {
  return OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_paramsToMapWithNSStringArray_(self, params);
}

- (id)applyResourceLoaderWithId:(id)factory {
  return OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_applyResourceLoaderWithId_(self, factory);
}

- (void)dealloc {
  RELEASE_(loader_);
  RELEASE_(defaultMatchVersion_);
  RELEASE_(charFilters_);
  RELEASE_(tokenizer_);
  RELEASE_(tokenFilters_);
  RELEASE_(posIncGap_);
  RELEASE_(offsetGap_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisUtilResourceLoader:", "Builder", NULL, 0x0, NULL, NULL },
    { "withDefaultMatchVersionWithOrgApacheLuceneUtilVersion:", "withDefaultMatchVersion", "Lorg.apache.lucene.analysis.custom.CustomAnalyzer$Builder;", 0x1, NULL, NULL },
    { "withPositionIncrementGapWithInt:", "withPositionIncrementGap", "Lorg.apache.lucene.analysis.custom.CustomAnalyzer$Builder;", 0x1, NULL, NULL },
    { "withOffsetGapWithInt:", "withOffsetGap", "Lorg.apache.lucene.analysis.custom.CustomAnalyzer$Builder;", 0x1, NULL, NULL },
    { "withTokenizerWithNSString:withNSStringArray:", "withTokenizer", "Lorg.apache.lucene.analysis.custom.CustomAnalyzer$Builder;", 0x81, "Ljava.io.IOException;", NULL },
    { "withTokenizerWithNSString:withJavaUtilMap:", "withTokenizer", "Lorg.apache.lucene.analysis.custom.CustomAnalyzer$Builder;", 0x1, "Ljava.io.IOException;", NULL },
    { "addTokenFilterWithNSString:withNSStringArray:", "addTokenFilter", "Lorg.apache.lucene.analysis.custom.CustomAnalyzer$Builder;", 0x81, "Ljava.io.IOException;", NULL },
    { "addTokenFilterWithNSString:withJavaUtilMap:", "addTokenFilter", "Lorg.apache.lucene.analysis.custom.CustomAnalyzer$Builder;", 0x1, "Ljava.io.IOException;", NULL },
    { "addCharFilterWithNSString:withNSStringArray:", "addCharFilter", "Lorg.apache.lucene.analysis.custom.CustomAnalyzer$Builder;", 0x81, "Ljava.io.IOException;", NULL },
    { "addCharFilterWithNSString:withJavaUtilMap:", "addCharFilter", "Lorg.apache.lucene.analysis.custom.CustomAnalyzer$Builder;", 0x1, "Ljava.io.IOException;", NULL },
    { "build", NULL, "Lorg.apache.lucene.analysis.custom.CustomAnalyzer;", 0x1, NULL, NULL },
    { "applyDefaultParamsWithJavaUtilMap:", "applyDefaultParams", "Ljava.util.Map;", 0x2, NULL, NULL },
    { "paramsToMapWithNSStringArray:", "paramsToMap", "Ljava.util.Map;", 0x82, NULL, NULL },
    { "applyResourceLoaderWithId:", "applyResourceLoader", "TT;", 0x2, "Ljava.io.IOException;", "<T:Ljava/lang/Object;>(TT;)TT;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "loader_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.ResourceLoader;", NULL, NULL, .constantValue.asLong = 0 },
    { "defaultMatchVersion_", NULL, 0x12, "Lorg.apache.lucene.util.SetOnce;", NULL, "Lorg/apache/lucene/util/SetOnce<Lorg/apache/lucene/util/Version;>;", .constantValue.asLong = 0 },
    { "charFilters_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/analysis/util/CharFilterFactory;>;", .constantValue.asLong = 0 },
    { "tokenizer_", NULL, 0x12, "Lorg.apache.lucene.util.SetOnce;", NULL, "Lorg/apache/lucene/util/SetOnce<Lorg/apache/lucene/analysis/util/TokenizerFactory;>;", .constantValue.asLong = 0 },
    { "tokenFilters_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/analysis/util/TokenFilterFactory;>;", .constantValue.asLong = 0 },
    { "posIncGap_", NULL, 0x12, "Lorg.apache.lucene.util.SetOnce;", NULL, "Lorg/apache/lucene/util/SetOnce<Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "offsetGap_", NULL, 0x12, "Lorg.apache.lucene.util.SetOnce;", NULL, "Lorg/apache/lucene/util/SetOnce<Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
    { "componentsAdded_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder = { 2, "Builder", "org.apache.lucene.analysis.custom", "CustomAnalyzer", 0x19, 14, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder;
}

@end

void OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_initWithOrgApacheLuceneAnalysisUtilResourceLoader_(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *self, id<OrgApacheLuceneAnalysisUtilResourceLoader> loader) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->defaultMatchVersion_, new_OrgApacheLuceneUtilSetOnce_init());
  JreStrongAssignAndConsume(&self->charFilters_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->tokenizer_, new_OrgApacheLuceneUtilSetOnce_init());
  JreStrongAssignAndConsume(&self->tokenFilters_, new_JavaUtilArrayList_init());
  JreStrongAssignAndConsume(&self->posIncGap_, new_OrgApacheLuceneUtilSetOnce_init());
  JreStrongAssignAndConsume(&self->offsetGap_, new_OrgApacheLuceneUtilSetOnce_init());
  self->componentsAdded_ = NO;
  JreStrongAssign(&self->loader_, loader);
}

OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *new_OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_initWithOrgApacheLuceneAnalysisUtilResourceLoader_(id<OrgApacheLuceneAnalysisUtilResourceLoader> loader) {
  OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *self = [OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder alloc];
  OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_initWithOrgApacheLuceneAnalysisUtilResourceLoader_(self, loader);
  return self;
}

id<JavaUtilMap> OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_applyDefaultParamsWithJavaUtilMap_(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *self, id<JavaUtilMap> map) {
  if ([((OrgApacheLuceneUtilSetOnce *) nil_chk(self->defaultMatchVersion_)) get] != nil && ![((id<JavaUtilMap>) nil_chk(map)) containsKeyWithId:OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_LUCENE_MATCH_VERSION_PARAM_]) {
    [map putWithId:OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_LUCENE_MATCH_VERSION_PARAM_ withId:[((OrgApacheLuceneUtilVersion *) nil_chk([self->defaultMatchVersion_ get])) description]];
  }
  return map;
}

id<JavaUtilMap> OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_paramsToMapWithNSStringArray_(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *self, IOSObjectArray *params) {
  if (((IOSObjectArray *) nil_chk(params))->size_ % 2 != 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"Key-value pairs expected, so the number of params must be even.") autorelease];
  }
  id<JavaUtilMap> map = [new_JavaUtilHashMap_init() autorelease];
  for (jint i = 0; i < params->size_; i += 2) {
    OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(IOSObjectArray_Get(params, i), @"Key of param may not be null.");
    [map putWithId:IOSObjectArray_Get(params, i) withId:IOSObjectArray_Get(params, i + 1)];
  }
  return map;
}

id OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder_applyResourceLoaderWithId_(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder *self, id factory) {
  if ([OrgApacheLuceneAnalysisUtilResourceLoaderAware_class_() isInstance:factory]) {
    [((id<OrgApacheLuceneAnalysisUtilResourceLoaderAware>) nil_chk(((id<OrgApacheLuceneAnalysisUtilResourceLoaderAware>) check_protocol_cast(factory, OrgApacheLuceneAnalysisUtilResourceLoaderAware_class_())))) informWithOrgApacheLuceneAnalysisUtilResourceLoader:self->loader_];
  }
  return factory;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCustomCustomAnalyzer_Builder)
