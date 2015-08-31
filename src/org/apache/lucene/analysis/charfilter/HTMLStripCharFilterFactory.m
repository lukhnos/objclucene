//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/charfilter/HTMLStripCharFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/io/Reader.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/regex/Pattern.h"
#include "org/apache/lucene/analysis/charfilter/HTMLStripCharFilter.h"
#include "org/apache/lucene/analysis/charfilter/HTMLStripCharFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/CharFilterFactory.h"

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory)

JavaUtilRegexPattern *OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_TAG_NAME_PATTERN_;

@implementation OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilter *)createWithJavaIoReader:(JavaIoReader *)input {
  OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilter *charFilter;
  if (nil == escapedTags_) {
    charFilter = [new_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilter_initWithJavaIoReader_(input) autorelease];
  }
  else {
    charFilter = [new_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilter_initWithJavaIoReader_withJavaUtilSet_(input, escapedTags_) autorelease];
  }
  return charFilter;
}

- (void)dealloc {
  RELEASE_(escapedTags_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory class]) {
    JreStrongAssign(&OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_TAG_NAME_PATTERN_, JavaUtilRegexPattern_compileWithNSString_(@"[^\\s,]+"));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "HTMLStripCharFilterFactory", NULL, 0x1, NULL, NULL },
    { "createWithJavaIoReader:", "create", "Lorg.apache.lucene.analysis.charfilter.HTMLStripCharFilter;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "escapedTags_", NULL, 0x10, "Ljava.util.Set;", NULL, "Ljava/util/Set<Ljava/lang/String;>;", .constantValue.asLong = 0 },
    { "TAG_NAME_PATTERN_", NULL, 0x18, "Ljava.util.regex.Pattern;", &OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_TAG_NAME_PATTERN_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory = { 2, "HTMLStripCharFilterFactory", "org.apache.lucene.analysis.charfilter", NULL, 0x1, 2, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory;
}

@end

void OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilCharFilterFactory_initWithJavaUtilMap_(self, args);
  JreStrongAssign(&self->escapedTags_, [self getSetWithJavaUtilMap:args withNSString:@"escapedTags"]);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args)) autorelease];
  }
}

OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory *new_OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory *self = [OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory alloc];
  OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCharfilterHTMLStripCharFilterFactory)