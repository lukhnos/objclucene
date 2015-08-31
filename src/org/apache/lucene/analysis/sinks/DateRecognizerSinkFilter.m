//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/sinks/DateRecognizerSinkFilter.java
//

#include "J2ObjC_source.h"
#include "java/text/DateFormat.h"
#include "java/text/ParseException.h"
#include "java/util/Date.h"
#include "java/util/Locale.h"
#include "org/apache/lucene/analysis/sinks/DateRecognizerSinkFilter.h"
#include "org/apache/lucene/analysis/sinks/TeeSinkTokenFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"

NSString *OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_DATE_TYPE_ = @"date";

@implementation OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter

- (instancetype)init {
  OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_init(self);
  return self;
}

- (instancetype)initWithJavaTextDateFormat:(JavaTextDateFormat *)dateFormat {
  OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_initWithJavaTextDateFormat_(self, dateFormat);
  return self;
}

- (jboolean)acceptWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)source {
  if (termAtt_ == nil) {
    JreStrongAssign(&termAtt_, [((OrgApacheLuceneUtilAttributeSource *) nil_chk(source)) addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  }
  @try {
    JavaUtilDate *date = [((JavaTextDateFormat *) nil_chk(dateFormat_)) parseWithNSString:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) description]];
    if (date != nil) {
      return YES;
    }
  }
  @catch (JavaTextParseException *e) {
  }
  return NO;
}

- (void)dealloc {
  RELEASE_(dateFormat_);
  RELEASE_(termAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "DateRecognizerSinkFilter", NULL, 0x1, NULL, NULL },
    { "initWithJavaTextDateFormat:", "DateRecognizerSinkFilter", NULL, 0x1, NULL, NULL },
    { "acceptWithOrgApacheLuceneUtilAttributeSource:", "accept", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DATE_TYPE_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_DATE_TYPE_, NULL, .constantValue.asLong = 0 },
    { "dateFormat_", NULL, 0x4, "Ljava.text.DateFormat;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x4, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter = { 2, "DateRecognizerSinkFilter", "org.apache.lucene.analysis.sinks", NULL, 0x1, 3, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter;
}

@end

void OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_init(OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter *self) {
  OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_initWithJavaTextDateFormat_(self, JavaTextDateFormat_getDateInstanceWithInt_withJavaUtilLocale_(JavaTextDateFormat_DEFAULT, JreLoadStatic(JavaUtilLocale, ROOT_)));
}

OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter *new_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_init() {
  OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter *self = [OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter alloc];
  OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_init(self);
  return self;
}

void OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_initWithJavaTextDateFormat_(OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter *self, JavaTextDateFormat *dateFormat) {
  OrgApacheLuceneAnalysisSinksTeeSinkTokenFilter_SinkFilter_init(self);
  JreStrongAssign(&self->dateFormat_, dateFormat);
}

OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter *new_OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_initWithJavaTextDateFormat_(JavaTextDateFormat *dateFormat) {
  OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter *self = [OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter alloc];
  OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter_initWithJavaTextDateFormat_(self, dateFormat);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisSinksDateRecognizerSinkFilter)