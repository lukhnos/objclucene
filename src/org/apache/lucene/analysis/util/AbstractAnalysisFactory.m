//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/AbstractAnalysisFactory.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/InputStreamReader.h"
#include "java/io/Reader.h"
#include "java/lang/Boolean.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/nio/charset/Charset.h"
#include "java/nio/charset/CharsetDecoder.h"
#include "java/nio/charset/CodingErrorAction.h"
#include "java/text/ParseException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"
#include "java/util/regex/PatternSyntaxException.h"
#include "org/apache/lucene/analysis/core/StopFilter.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/ResourceLoader.h"
#include "org/apache/lucene/analysis/util/WordlistLoader.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/apache/lucene/util/Version.h"
#include "org/lukhnos/portmobile/charset/StandardCharsets.h"

@interface OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory () {
 @public
  /*!
   @brief The original args, before any processing
   */
  id<JavaUtilMap> originalArgs_;
  /*!
   @brief whether the luceneMatchVersion arg is explicitly specified in the serialized schema
   */
  jboolean isExplicitLuceneMatchVersion_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory, originalArgs_, id<JavaUtilMap>)

inline JavaUtilRegexPattern *OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_get_ITEM_PATTERN();
static JavaUtilRegexPattern *OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_ITEM_PATTERN;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory, ITEM_PATTERN, JavaUtilRegexPattern *)

inline NSString *OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_get_CLASS_NAME();
static NSString *OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_CLASS_NAME = @"class";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory, CLASS_NAME, NSString *)

__attribute__((unused)) static id<JavaUtilList> OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader_withNSString_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, id<OrgApacheLuceneAnalysisUtilResourceLoader> loader, NSString *resource);

__attribute__((unused)) static id<JavaUtilList> OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, NSString *fileNames);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory)

NSString *OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_LUCENE_MATCH_VERSION_PARAM = @"luceneMatchVersion";

@implementation OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory

+ (NSString *)LUCENE_MATCH_VERSION_PARAM {
  return OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_LUCENE_MATCH_VERSION_PARAM;
}

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (id<JavaUtilMap>)getOriginalArgs {
  return originalArgs_;
}

- (OrgApacheLuceneUtilVersion *)getLuceneMatchVersion {
  return self->luceneMatchVersion_;
}

- (NSString *)requireWithJavaUtilMap:(id<JavaUtilMap>)args
                        withNSString:(NSString *)name {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  if (s == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$C", @"Configuration Error: missing parameter '", name, '\''));
  }
  return s;
}

- (NSString *)requireWithJavaUtilMap:(id<JavaUtilMap>)args
                        withNSString:(NSString *)name
              withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues {
  return [self requireWithJavaUtilMap:args withNSString:name withJavaUtilCollection:allowedValues withBoolean:true];
}

- (NSString *)requireWithJavaUtilMap:(id<JavaUtilMap>)args
                        withNSString:(NSString *)name
              withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues
                         withBoolean:(jboolean)caseSensitive {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  if (s == nil) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$C", @"Configuration Error: missing parameter '", name, '\''));
  }
  else {
    for (NSString * __strong allowedValue in nil_chk(allowedValues)) {
      if (caseSensitive) {
        if ([s isEqual:allowedValue]) {
          return s;
        }
      }
      else {
        if ([s equalsIgnoreCase:allowedValue]) {
          return s;
        }
      }
    }
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$@", @"Configuration Error: '", name, @"' value must be one of ", allowedValues));
  }
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name {
  return [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
                    withNSString:(NSString *)defaultVal {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  return s == nil ? defaultVal : s;
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
          withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues {
  return [self getWithJavaUtilMap:args withNSString:name withJavaUtilCollection:allowedValues withNSString:nil];
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
          withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues
                    withNSString:(NSString *)defaultVal {
  return [self getWithJavaUtilMap:args withNSString:name withJavaUtilCollection:allowedValues withNSString:defaultVal withBoolean:true];
}

- (NSString *)getWithJavaUtilMap:(id<JavaUtilMap>)args
                    withNSString:(NSString *)name
          withJavaUtilCollection:(id<JavaUtilCollection>)allowedValues
                    withNSString:(NSString *)defaultVal
                     withBoolean:(jboolean)caseSensitive {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  if (s == nil) {
    return defaultVal;
  }
  else {
    for (NSString * __strong allowedValue in nil_chk(allowedValues)) {
      if (caseSensitive) {
        if ([s isEqual:allowedValue]) {
          return s;
        }
      }
      else {
        if ([s equalsIgnoreCase:allowedValue]) {
          return s;
        }
      }
    }
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$@", @"Configuration Error: '", name, @"' value must be one of ", allowedValues));
  }
}

- (jint)requireIntWithJavaUtilMap:(id<JavaUtilMap>)args
                     withNSString:(NSString *)name {
  return JavaLangInteger_parseIntWithNSString_([self requireWithJavaUtilMap:args withNSString:name]);
}

- (jint)getIntWithJavaUtilMap:(id<JavaUtilMap>)args
                 withNSString:(NSString *)name
                      withInt:(jint)defaultVal {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  return s == nil ? defaultVal : JavaLangInteger_parseIntWithNSString_(s);
}

- (jboolean)requireBooleanWithJavaUtilMap:(id<JavaUtilMap>)args
                             withNSString:(NSString *)name {
  return JavaLangBoolean_parseBooleanWithNSString_([self requireWithJavaUtilMap:args withNSString:name]);
}

- (jboolean)getBooleanWithJavaUtilMap:(id<JavaUtilMap>)args
                         withNSString:(NSString *)name
                          withBoolean:(jboolean)defaultVal {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  return s == nil ? defaultVal : JavaLangBoolean_parseBooleanWithNSString_(s);
}

- (jfloat)requireFloatWithJavaUtilMap:(id<JavaUtilMap>)args
                         withNSString:(NSString *)name {
  return JavaLangFloat_parseFloatWithNSString_([self requireWithJavaUtilMap:args withNSString:name]);
}

- (jfloat)getFloatWithJavaUtilMap:(id<JavaUtilMap>)args
                     withNSString:(NSString *)name
                        withFloat:(jfloat)defaultVal {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  return s == nil ? defaultVal : JavaLangFloat_parseFloatWithNSString_(s);
}

- (jchar)requireCharWithJavaUtilMap:(id<JavaUtilMap>)args
                       withNSString:(NSString *)name {
  return [((NSString *) nil_chk([self requireWithJavaUtilMap:args withNSString:name])) charAtWithInt:0];
}

- (jchar)getCharWithJavaUtilMap:(id<JavaUtilMap>)args
                   withNSString:(NSString *)name
                       withChar:(jchar)defaultValue {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  if (s == nil) {
    return defaultValue;
  }
  else {
    if (((jint) [s length]) != 1) {
      @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$$", name, @" should be a char. \"", s, @"\" is invalid"));
    }
    else {
      return [s charAtWithInt:0];
    }
  }
}

- (id<JavaUtilSet>)getSetWithJavaUtilMap:(id<JavaUtilMap>)args
                            withNSString:(NSString *)name {
  NSString *s = [((id<JavaUtilMap>) nil_chk(args)) removeWithId:name];
  if (s == nil) {
    return nil;
  }
  else {
    id<JavaUtilSet> set = nil;
    JavaUtilRegexMatcher *matcher = [((JavaUtilRegexPattern *) nil_chk(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_ITEM_PATTERN)) matcherWithJavaLangCharSequence:s];
    if ([((JavaUtilRegexMatcher *) nil_chk(matcher)) find]) {
      set = create_JavaUtilHashSet_init();
      [set addWithId:[matcher groupWithInt:0]];
      while ([matcher find]) {
        [set addWithId:[matcher groupWithInt:0]];
      }
    }
    return set;
  }
}

- (JavaUtilRegexPattern *)getPatternWithJavaUtilMap:(id<JavaUtilMap>)args
                                       withNSString:(NSString *)name {
  @try {
    return JavaUtilRegexPattern_compileWithNSString_([self requireWithJavaUtilMap:args withNSString:name]);
  }
  @catch (JavaUtilRegexPatternSyntaxException *e) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_withNSException_(JreStrcat("$$$$", @"Configuration Error: '", name, @"' can not be parsed in ", [[self getClass] getSimpleName]), e);
  }
}

- (OrgApacheLuceneAnalysisUtilCharArraySet *)getWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader
                                                                                        withNSString:(NSString *)wordFiles
                                                                                         withBoolean:(jboolean)ignoreCase {
  id<JavaUtilList> files = OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(self, wordFiles);
  OrgApacheLuceneAnalysisUtilCharArraySet *words = nil;
  if ([((id<JavaUtilList>) nil_chk(files)) size] > 0) {
    words = create_OrgApacheLuceneAnalysisUtilCharArraySet_initWithInt_withBoolean_([files size] * 10, ignoreCase);
    for (NSString * __strong file in files) {
      id<JavaUtilList> wlist = OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader_withNSString_(self, loader, [((NSString *) nil_chk(file)) trim]);
      [words addAllWithJavaUtilCollection:OrgApacheLuceneAnalysisCoreStopFilter_makeStopSetWithJavaUtilList_withBoolean_(wlist, ignoreCase)];
    }
  }
  return words;
}

- (id<JavaUtilList>)getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader
                                                             withNSString:(NSString *)resource {
  return OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader_withNSString_(self, loader, resource);
}

- (OrgApacheLuceneAnalysisUtilCharArraySet *)getSnowballWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader
                                                                                                withNSString:(NSString *)wordFiles
                                                                                                 withBoolean:(jboolean)ignoreCase {
  id<JavaUtilList> files = OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(self, wordFiles);
  OrgApacheLuceneAnalysisUtilCharArraySet *words = nil;
  if ([((id<JavaUtilList>) nil_chk(files)) size] > 0) {
    words = create_OrgApacheLuceneAnalysisUtilCharArraySet_initWithInt_withBoolean_([files size] * 10, ignoreCase);
    for (NSString * __strong file in files) {
      JavaIoInputStream *stream = nil;
      JavaIoReader *reader = nil;
      @try {
        stream = [((id<OrgApacheLuceneAnalysisUtilResourceLoader>) nil_chk(loader)) openResourceWithNSString:[((NSString *) nil_chk(file)) trim]];
        JavaNioCharsetCharsetDecoder *decoder = [((JavaNioCharsetCharsetDecoder *) nil_chk([((JavaNioCharsetCharsetDecoder *) nil_chk([((JavaNioCharsetCharset *) nil_chk(JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8))) newDecoder])) onMalformedInputWithJavaNioCharsetCodingErrorAction:JreLoadStatic(JavaNioCharsetCodingErrorAction, REPORT)])) onUnmappableCharacterWithJavaNioCharsetCodingErrorAction:JreLoadStatic(JavaNioCharsetCodingErrorAction, REPORT)];
        reader = create_JavaIoInputStreamReader_initWithJavaIoInputStream_withJavaNioCharsetCharsetDecoder_(stream, decoder);
        OrgApacheLuceneAnalysisUtilWordlistLoader_getSnowballWordSetWithJavaIoReader_withOrgApacheLuceneAnalysisUtilCharArraySet_(reader, words);
      }
      @finally {
        OrgApacheLuceneUtilIOUtils_closeWhileHandlingExceptionWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ reader, stream } count:2 type:JavaIoCloseable_class_()]);
      }
    }
  }
  return words;
}

- (id<JavaUtilList>)splitFileNamesWithNSString:(NSString *)fileNames {
  return OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(self, fileNames);
}

- (NSString *)getClassArg {
  if (nil != originalArgs_) {
    NSString *className_ = [originalArgs_ getWithId:OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_CLASS_NAME];
    if (nil != className_) {
      return className_;
    }
  }
  return [[self getClass] getName];
}

- (jboolean)isExplicitLuceneMatchVersion {
  return isExplicitLuceneMatchVersion_;
}

- (void)setExplicitLuceneMatchVersionWithBoolean:(jboolean)isExplicitLuceneMatchVersion {
  self->isExplicitLuceneMatchVersion_ = isExplicitLuceneMatchVersion;
}

- (void)dealloc {
  RELEASE_(originalArgs_);
  RELEASE_(luceneMatchVersion_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory class]) {
    JreStrongAssign(&OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_ITEM_PATTERN, JavaUtilRegexPattern_compileWithNSString_(@"[^,\\s]+"));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "AbstractAnalysisFactory", NULL, 0x4, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "getOriginalArgs", NULL, "Ljava.util.Map;", 0x11, NULL, "()Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;" },
    { "getLuceneMatchVersion", NULL, "Lorg.apache.lucene.util.Version;", 0x11, NULL, NULL },
    { "requireWithJavaUtilMap:withNSString:", "require", "Ljava.lang.String;", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)Ljava/lang/String;" },
    { "requireWithJavaUtilMap:withNSString:withJavaUtilCollection:", "require", "Ljava.lang.String;", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;)Ljava/lang/String;" },
    { "requireWithJavaUtilMap:withNSString:withJavaUtilCollection:withBoolean:", "require", "Ljava.lang.String;", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;Z)Ljava/lang/String;" },
    { "getWithJavaUtilMap:withNSString:", "get", "Ljava.lang.String;", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)Ljava/lang/String;" },
    { "getWithJavaUtilMap:withNSString:withNSString:", "get", "Ljava.lang.String;", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;" },
    { "getWithJavaUtilMap:withNSString:withJavaUtilCollection:", "get", "Ljava.lang.String;", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;)Ljava/lang/String;" },
    { "getWithJavaUtilMap:withNSString:withJavaUtilCollection:withNSString:", "get", "Ljava.lang.String;", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;Ljava/lang/String;)Ljava/lang/String;" },
    { "getWithJavaUtilMap:withNSString:withJavaUtilCollection:withNSString:withBoolean:", "get", "Ljava.lang.String;", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;Ljava/lang/String;Z)Ljava/lang/String;" },
    { "requireIntWithJavaUtilMap:withNSString:", "requireInt", "I", 0x14, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)I" },
    { "getIntWithJavaUtilMap:withNSString:withInt:", "getInt", "I", 0x14, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;I)I" },
    { "requireBooleanWithJavaUtilMap:withNSString:", "requireBoolean", "Z", 0x14, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)Z" },
    { "getBooleanWithJavaUtilMap:withNSString:withBoolean:", "getBoolean", "Z", 0x14, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;Z)Z" },
    { "requireFloatWithJavaUtilMap:withNSString:", "requireFloat", "F", 0x14, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)F" },
    { "getFloatWithJavaUtilMap:withNSString:withFloat:", "getFloat", "F", 0x14, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;F)F" },
    { "requireCharWithJavaUtilMap:withNSString:", "requireChar", "C", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)C" },
    { "getCharWithJavaUtilMap:withNSString:withChar:", "getChar", "C", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;C)C" },
    { "getSetWithJavaUtilMap:withNSString:", "getSet", "Ljava.util.Set;", 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)Ljava/util/Set<Ljava/lang/String;>;" },
    { "getPatternWithJavaUtilMap:withNSString:", "getPattern", "Ljava.util.regex.Pattern;", 0x14, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Ljava/lang/String;)Ljava/util/regex/Pattern;" },
    { "getWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:withNSString:withBoolean:", "getWordSet", "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x14, "Ljava.io.IOException;", NULL },
    { "getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader:withNSString:", "getLines", "Ljava.util.List;", 0x14, "Ljava.io.IOException;", "(Lorg/apache/lucene/analysis/util/ResourceLoader;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;" },
    { "getSnowballWordSetWithOrgApacheLuceneAnalysisUtilResourceLoader:withNSString:withBoolean:", "getSnowballWordSet", "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x14, "Ljava.io.IOException;", NULL },
    { "splitFileNamesWithNSString:", "splitFileNames", "Ljava.util.List;", 0x14, NULL, "(Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;" },
    { "getClassArg", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isExplicitLuceneMatchVersion", NULL, "Z", 0x1, NULL, NULL },
    { "setExplicitLuceneMatchVersionWithBoolean:", "setExplicitLuceneMatchVersion", "V", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "LUCENE_MATCH_VERSION_PARAM", "LUCENE_MATCH_VERSION_PARAM", 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_LUCENE_MATCH_VERSION_PARAM, NULL, .constantValue.asLong = 0 },
    { "originalArgs_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;", .constantValue.asLong = 0 },
    { "luceneMatchVersion_", NULL, 0x14, "Lorg.apache.lucene.util.Version;", NULL, NULL, .constantValue.asLong = 0 },
    { "isExplicitLuceneMatchVersion_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "ITEM_PATTERN", "ITEM_PATTERN", 0x1a, "Ljava.util.regex.Pattern;", &OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_ITEM_PATTERN, NULL, .constantValue.asLong = 0 },
    { "CLASS_NAME", "CLASS_NAME", 0x1a, "Ljava.lang.String;", &OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_CLASS_NAME, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory = { 2, "AbstractAnalysisFactory", "org.apache.lucene.analysis.util", NULL, 0x401, 28, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;
}

@end

void OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, id<JavaUtilMap> args) {
  NSObject_init(self);
  self->isExplicitLuceneMatchVersion_ = false;
  JreStrongAssign(&self->originalArgs_, JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(create_JavaUtilHashMap_initWithJavaUtilMap_(args)));
  NSString *version_ = [self getWithJavaUtilMap:args withNSString:OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_LUCENE_MATCH_VERSION_PARAM];
  if (version_ == nil) {
    JreStrongAssign(&self->luceneMatchVersion_, JreLoadStatic(OrgApacheLuceneUtilVersion, LATEST));
  }
  else {
    @try {
      JreStrongAssign(&self->luceneMatchVersion_, OrgApacheLuceneUtilVersion_parseLenientlyWithNSString_(version_));
    }
    @catch (JavaTextParseException *pe) {
      @throw create_JavaLangIllegalArgumentException_initWithNSException_(pe);
    }
  }
  [((id<JavaUtilMap>) nil_chk(args)) removeWithId:OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_CLASS_NAME];
}

id<JavaUtilList> OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_getLinesWithOrgApacheLuceneAnalysisUtilResourceLoader_withNSString_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, id<OrgApacheLuceneAnalysisUtilResourceLoader> loader, NSString *resource) {
  return OrgApacheLuceneAnalysisUtilWordlistLoader_getLinesWithJavaIoInputStream_withJavaNioCharsetCharset_([((id<OrgApacheLuceneAnalysisUtilResourceLoader>) nil_chk(loader)) openResourceWithNSString:resource], JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8));
}

id<JavaUtilList> OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_splitFileNamesWithNSString_(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *self, NSString *fileNames) {
  if (fileNames == nil) return JavaUtilCollections_emptyList();
  id<JavaUtilList> result = create_JavaUtilArrayList_init();
  {
    IOSObjectArray *a__ = [fileNames split:@"(?<!\\\\),"];
    NSString * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    NSString * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      NSString *file = *b__++;
      [result addWithId:[((NSString *) nil_chk(file)) replaceAll:@"\\\\(?=,)" withReplacement:@""]];
    }
  }
  return result;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory)
