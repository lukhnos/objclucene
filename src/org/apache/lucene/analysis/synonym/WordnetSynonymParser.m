//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/synonym/WordnetSynonymParser.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/LineNumberReader.h"
#include "java/io/Reader.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Throwable.h"
#include "java/text/ParseException.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/synonym/SynonymMap.h"
#include "org/apache/lucene/analysis/synonym/WordnetSynonymParser.h"
#include "org/apache/lucene/util/CharsRef.h"
#include "org/apache/lucene/util/CharsRefBuilder.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/synonym/WordnetSynonymParser must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisSynonymWordnetSynonymParser () {
 @public
  jboolean expand_;
}

- (OrgApacheLuceneUtilCharsRef *)parseSynonymWithNSString:(NSString *)line
                   withOrgApacheLuceneUtilCharsRefBuilder:(OrgApacheLuceneUtilCharsRefBuilder *)reuse;

- (void)addInternalWithOrgApacheLuceneUtilCharsRefArray:(IOSObjectArray *)synset
                                                withInt:(jint)size;

@end

__attribute__((unused)) static OrgApacheLuceneUtilCharsRef *OrgApacheLuceneAnalysisSynonymWordnetSynonymParser_parseSynonymWithNSString_withOrgApacheLuceneUtilCharsRefBuilder_(OrgApacheLuceneAnalysisSynonymWordnetSynonymParser *self, NSString *line, OrgApacheLuceneUtilCharsRefBuilder *reuse);

__attribute__((unused)) static void OrgApacheLuceneAnalysisSynonymWordnetSynonymParser_addInternalWithOrgApacheLuceneUtilCharsRefArray_withInt_(OrgApacheLuceneAnalysisSynonymWordnetSynonymParser *self, IOSObjectArray *synset, jint size);

@implementation OrgApacheLuceneAnalysisSynonymWordnetSynonymParser

- (instancetype)initWithBoolean:(jboolean)dedup
                    withBoolean:(jboolean)expand
withOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  OrgApacheLuceneAnalysisSynonymWordnetSynonymParser_initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_(self, dedup, expand, analyzer);
  return self;
}

- (void)parseWithJavaIoReader:(JavaIoReader *)inArg {
  JavaIoLineNumberReader *br = create_JavaIoLineNumberReader_initWithJavaIoReader_(inArg);
  @try {
    NSString *line = nil;
    NSString *lastSynSetID = @"";
    IOSObjectArray *synset = [IOSObjectArray arrayWithLength:8 type:OrgApacheLuceneUtilCharsRef_class_()];
    jint synsetSize = 0;
    while ((line = [br readLine]) != nil) {
      NSString *synSetID = [((NSString *) nil_chk(line)) java_substring:2 endIndex:11];
      if (![((NSString *) nil_chk(synSetID)) isEqual:lastSynSetID]) {
        OrgApacheLuceneAnalysisSynonymWordnetSynonymParser_addInternalWithOrgApacheLuceneUtilCharsRefArray_withInt_(self, synset, synsetSize);
        synsetSize = 0;
      }
      if (synset->size_ <= synsetSize + 1) {
        synset = JavaUtilArrays_copyOfWithNSObjectArray_withInt_(synset, synset->size_ * 2);
      }
      IOSObjectArray_Set(nil_chk(synset), synsetSize, OrgApacheLuceneAnalysisSynonymWordnetSynonymParser_parseSynonymWithNSString_withOrgApacheLuceneUtilCharsRefBuilder_(self, line, create_OrgApacheLuceneUtilCharsRefBuilder_init()));
      synsetSize++;
      lastSynSetID = synSetID;
    }
    OrgApacheLuceneAnalysisSynonymWordnetSynonymParser_addInternalWithOrgApacheLuceneUtilCharsRefArray_withInt_(self, synset, synsetSize);
  }
  @catch (JavaLangIllegalArgumentException *e) {
    JavaTextParseException *ex = create_JavaTextParseException_initWithNSString_withInt_(JreStrcat("$I", @"Invalid synonym rule at line ", [br getLineNumber]), 0);
    [ex initCauseWithJavaLangThrowable:e];
    @throw ex;
  }
  @finally {
    [br close];
  }
}

- (OrgApacheLuceneUtilCharsRef *)parseSynonymWithNSString:(NSString *)line
                   withOrgApacheLuceneUtilCharsRefBuilder:(OrgApacheLuceneUtilCharsRefBuilder *)reuse {
  return OrgApacheLuceneAnalysisSynonymWordnetSynonymParser_parseSynonymWithNSString_withOrgApacheLuceneUtilCharsRefBuilder_(self, line, reuse);
}

- (void)addInternalWithOrgApacheLuceneUtilCharsRefArray:(IOSObjectArray *)synset
                                                withInt:(jint)size {
  OrgApacheLuceneAnalysisSynonymWordnetSynonymParser_addInternalWithOrgApacheLuceneUtilCharsRefArray_withInt_(self, synset, size);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilCharsRef;", 0x2, 4, 5, 6, -1, -1, -1 },
    { NULL, "V", 0x2, 7, 8, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithBoolean:withBoolean:withOrgApacheLuceneAnalysisAnalyzer:);
  methods[1].selector = @selector(parseWithJavaIoReader:);
  methods[2].selector = @selector(parseSynonymWithNSString:withOrgApacheLuceneUtilCharsRefBuilder:);
  methods[3].selector = @selector(addInternalWithOrgApacheLuceneUtilCharsRefArray:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "expand_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "ZZLOrgApacheLuceneAnalysisAnalyzer;", "parse", "LJavaIoReader;", "LJavaIoIOException;LJavaTextParseException;", "parseSynonym", "LNSString;LOrgApacheLuceneUtilCharsRefBuilder;", "LJavaIoIOException;", "addInternal", "[LOrgApacheLuceneUtilCharsRef;I" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisSynonymWordnetSynonymParser = { "WordnetSynonymParser", "org.apache.lucene.analysis.synonym", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisSynonymWordnetSynonymParser;
}

@end

void OrgApacheLuceneAnalysisSynonymWordnetSynonymParser_initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisSynonymWordnetSynonymParser *self, jboolean dedup, jboolean expand, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneAnalysisSynonymSynonymMap_Parser_initWithBoolean_withOrgApacheLuceneAnalysisAnalyzer_(self, dedup, analyzer);
  self->expand_ = expand;
}

OrgApacheLuceneAnalysisSynonymWordnetSynonymParser *new_OrgApacheLuceneAnalysisSynonymWordnetSynonymParser_initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_(jboolean dedup, jboolean expand, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisSynonymWordnetSynonymParser, initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_, dedup, expand, analyzer)
}

OrgApacheLuceneAnalysisSynonymWordnetSynonymParser *create_OrgApacheLuceneAnalysisSynonymWordnetSynonymParser_initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_(jboolean dedup, jboolean expand, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisSynonymWordnetSynonymParser, initWithBoolean_withBoolean_withOrgApacheLuceneAnalysisAnalyzer_, dedup, expand, analyzer)
}

OrgApacheLuceneUtilCharsRef *OrgApacheLuceneAnalysisSynonymWordnetSynonymParser_parseSynonymWithNSString_withOrgApacheLuceneUtilCharsRefBuilder_(OrgApacheLuceneAnalysisSynonymWordnetSynonymParser *self, NSString *line, OrgApacheLuceneUtilCharsRefBuilder *reuse) {
  if (reuse == nil) {
    reuse = create_OrgApacheLuceneUtilCharsRefBuilder_init();
  }
  jint start = [((NSString *) nil_chk(line)) java_indexOf:'\''] + 1;
  jint end = [line java_lastIndexOf:'\''];
  NSString *text = [((NSString *) nil_chk([line java_substring:start endIndex:end])) java_replace:@"''" withSequence:@"'"];
  return [self analyzeWithNSString:text withOrgApacheLuceneUtilCharsRefBuilder:reuse];
}

void OrgApacheLuceneAnalysisSynonymWordnetSynonymParser_addInternalWithOrgApacheLuceneUtilCharsRefArray_withInt_(OrgApacheLuceneAnalysisSynonymWordnetSynonymParser *self, IOSObjectArray *synset, jint size) {
  if (size <= 1) {
    return;
  }
  if (self->expand_) {
    for (jint i = 0; i < size; i++) {
      for (jint j = 0; j < size; j++) {
        [self addWithOrgApacheLuceneUtilCharsRef:IOSObjectArray_Get(nil_chk(synset), i) withOrgApacheLuceneUtilCharsRef:IOSObjectArray_Get(synset, j) withBoolean:false];
      }
    }
  }
  else {
    for (jint i = 0; i < size; i++) {
      [self addWithOrgApacheLuceneUtilCharsRef:IOSObjectArray_Get(nil_chk(synset), i) withOrgApacheLuceneUtilCharsRef:IOSObjectArray_Get(synset, 0) withBoolean:false];
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisSynonymWordnetSynonymParser)
