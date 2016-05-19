//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/StopwordAnalyzerBase.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/BufferedReader.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/Reader.h"
#include "java/nio/charset/Charset.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/analysis/util/StopwordAnalyzerBase.h"
#include "org/apache/lucene/analysis/util/WordlistLoader.h"
#include "org/apache/lucene/util/IOUtils.h"
#include "org/lukhnos/portmobile/charset/StandardCharsets.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"

@implementation OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase

- (OrgApacheLuceneAnalysisUtilCharArraySet *)getStopwordSet {
  return stopwords_;
}

- (instancetype)initWithOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)stopwords {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, stopwords);
  return self;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)loadStopwordSetWithBoolean:(jboolean)ignoreCase
                                                           withIOSClass:(IOSClass *)aClass
                                                           withNSString:(NSString *)resource
                                                           withNSString:(NSString *)comment {
  return OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithBoolean_withIOSClass_withNSString_withNSString_(ignoreCase, aClass, resource, comment);
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)loadStopwordSetWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)stopwords {
  return OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithOrgLukhnosPortmobileFilePath_(stopwords);
}

+ (OrgApacheLuceneAnalysisUtilCharArraySet *)loadStopwordSetWithJavaIoReader:(JavaIoReader *)stopwords {
  return OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithJavaIoReader_(stopwords);
}

- (void)dealloc {
  RELEASE_(stopwords_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getStopwordSet", NULL, "Lorg.apache.lucene.analysis.util.CharArraySet;", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisUtilCharArraySet:", "StopwordAnalyzerBase", NULL, 0x4, NULL, NULL },
    { "init", "StopwordAnalyzerBase", NULL, 0x4, NULL, NULL },
    { "loadStopwordSetWithBoolean:withIOSClass:withNSString:withNSString:", "loadStopwordSet", "Lorg.apache.lucene.analysis.util.CharArraySet;", 0xc, "Ljava.io.IOException;", "(ZLjava/lang/Class<+Lorg/apache/lucene/analysis/Analyzer;>;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/lucene/analysis/util/CharArraySet;" },
    { "loadStopwordSetWithOrgLukhnosPortmobileFilePath:", "loadStopwordSet", "Lorg.apache.lucene.analysis.util.CharArraySet;", 0xc, "Ljava.io.IOException;", NULL },
    { "loadStopwordSetWithJavaIoReader:", "loadStopwordSet", "Lorg.apache.lucene.analysis.util.CharArraySet;", 0xc, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stopwords_", NULL, 0x14, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase = { 2, "StopwordAnalyzerBase", "org.apache.lucene.analysis.util", NULL, 0x401, 6, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase;
}

@end

void OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase *self, OrgApacheLuceneAnalysisUtilCharArraySet *stopwords) {
  OrgApacheLuceneAnalysisAnalyzer_init(self);
  JreStrongAssign(&self->stopwords_, stopwords == nil ? JreLoadStatic(OrgApacheLuceneAnalysisUtilCharArraySet, EMPTY_SET) : OrgApacheLuceneAnalysisUtilCharArraySet_unmodifiableSetWithOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisUtilCharArraySet_copy__WithJavaUtilSet_(stopwords)));
}

void OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_init(OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase *self) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initWithOrgApacheLuceneAnalysisUtilCharArraySet_(self, nil);
}

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithBoolean_withIOSClass_withNSString_withNSString_(jboolean ignoreCase, IOSClass *aClass, NSString *resource, NSString *comment) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initialize();
  JavaIoReader *reader = nil;
  @try {
    reader = OrgApacheLuceneUtilIOUtils_getDecodingReaderWithJavaIoInputStream_withJavaNioCharsetCharset_([((IOSClass *) nil_chk(aClass)) getResourceAsStream:resource], JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8));
    return OrgApacheLuceneAnalysisUtilWordlistLoader_getWordSetWithJavaIoReader_withNSString_withOrgApacheLuceneAnalysisUtilCharArraySet_(reader, comment, create_OrgApacheLuceneAnalysisUtilCharArraySet_initWithInt_withBoolean_(16, ignoreCase));
  }
  @finally {
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ reader } count:1 type:JavaIoCloseable_class_()]);
  }
}

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *stopwords) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initialize();
  JavaIoReader *reader = nil;
  @try {
    reader = OrgLukhnosPortmobileFileFiles_newBufferedReaderWithOrgLukhnosPortmobileFilePath_withJavaNioCharsetCharset_(stopwords, JreLoadStatic(OrgLukhnosPortmobileCharsetStandardCharsets, UTF_8));
    return OrgApacheLuceneAnalysisUtilWordlistLoader_getWordSetWithJavaIoReader_(reader);
  }
  @finally {
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ reader } count:1 type:JavaIoCloseable_class_()]);
  }
}

OrgApacheLuceneAnalysisUtilCharArraySet *OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_loadStopwordSetWithJavaIoReader_(JavaIoReader *stopwords) {
  OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase_initialize();
  @try {
    return OrgApacheLuceneAnalysisUtilWordlistLoader_getWordSetWithJavaIoReader_(stopwords);
  }
  @finally {
    OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ stopwords } count:1 type:JavaIoCloseable_class_()]);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisUtilStopwordAnalyzerBase)
