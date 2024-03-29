//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/SpanGradientFormatter.java
//

#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/search/highlight/GradientFormatter.h"
#include "org/apache/lucene/search/highlight/SpanGradientFormatter.h"
#include "org/apache/lucene/search/highlight/TokenGroup.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/highlight/SpanGradientFormatter must not be compiled with ARC (-fobjc-arc)"
#endif

inline NSString *OrgApacheLuceneSearchHighlightSpanGradientFormatter_get_TEMPLATE(void);
static NSString *OrgApacheLuceneSearchHighlightSpanGradientFormatter_TEMPLATE = @"<span style=\"background: #EEEEEE; color: #000000;\">...</span>";
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchHighlightSpanGradientFormatter, TEMPLATE, NSString *)

inline jint OrgApacheLuceneSearchHighlightSpanGradientFormatter_get_EXTRA(void);
static jint OrgApacheLuceneSearchHighlightSpanGradientFormatter_EXTRA;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneSearchHighlightSpanGradientFormatter, EXTRA, jint)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchHighlightSpanGradientFormatter)

@implementation OrgApacheLuceneSearchHighlightSpanGradientFormatter

- (instancetype)initWithFloat:(jfloat)maxScore
                 withNSString:(NSString *)minForegroundColor
                 withNSString:(NSString *)maxForegroundColor
                 withNSString:(NSString *)minBackgroundColor
                 withNSString:(NSString *)maxBackgroundColor {
  OrgApacheLuceneSearchHighlightSpanGradientFormatter_initWithFloat_withNSString_withNSString_withNSString_withNSString_(self, maxScore, minForegroundColor, maxForegroundColor, minBackgroundColor, maxBackgroundColor);
  return self;
}

- (NSString *)highlightTermWithNSString:(NSString *)originalText
withOrgApacheLuceneSearchHighlightTokenGroup:(OrgApacheLuceneSearchHighlightTokenGroup *)tokenGroup {
  if ([((OrgApacheLuceneSearchHighlightTokenGroup *) nil_chk(tokenGroup)) getTotalScore] == 0) return originalText;
  jfloat score = [tokenGroup getTotalScore];
  if (score == 0) {
    return originalText;
  }
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_initWithInt_([((NSString *) nil_chk(originalText)) java_length] + OrgApacheLuceneSearchHighlightSpanGradientFormatter_EXTRA);
  [sb appendWithNSString:@"<span style=\""];
  if (highlightForeground_) {
    [sb appendWithNSString:@"color: "];
    [sb appendWithNSString:[self getForegroundColorStringWithFloat:score]];
    [sb appendWithNSString:@"; "];
  }
  if (highlightBackground_) {
    [sb appendWithNSString:@"background: "];
    [sb appendWithNSString:[self getBackgroundColorStringWithFloat:score]];
    [sb appendWithNSString:@"; "];
  }
  [sb appendWithNSString:@"\">"];
  [sb appendWithNSString:originalText];
  [sb appendWithNSString:@"</span>"];
  return [sb description];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithFloat:withNSString:withNSString:withNSString:withNSString:);
  methods[1].selector = @selector(highlightTermWithNSString:withOrgApacheLuceneSearchHighlightTokenGroup:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "TEMPLATE", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 3, -1, -1 },
    { "EXTRA", "I", .constantValue.asLong = 0, 0x1a, -1, 4, -1, -1 },
  };
  static const void *ptrTable[] = { "FLNSString;LNSString;LNSString;LNSString;", "highlightTerm", "LNSString;LOrgApacheLuceneSearchHighlightTokenGroup;", &OrgApacheLuceneSearchHighlightSpanGradientFormatter_TEMPLATE, &OrgApacheLuceneSearchHighlightSpanGradientFormatter_EXTRA };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightSpanGradientFormatter = { "SpanGradientFormatter", "org.apache.lucene.search.highlight", ptrTable, methods, fields, 7, 0x1, 2, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchHighlightSpanGradientFormatter;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchHighlightSpanGradientFormatter class]) {
    OrgApacheLuceneSearchHighlightSpanGradientFormatter_EXTRA = [((NSString *) nil_chk(OrgApacheLuceneSearchHighlightSpanGradientFormatter_TEMPLATE)) java_length];
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchHighlightSpanGradientFormatter)
  }
}

@end

void OrgApacheLuceneSearchHighlightSpanGradientFormatter_initWithFloat_withNSString_withNSString_withNSString_withNSString_(OrgApacheLuceneSearchHighlightSpanGradientFormatter *self, jfloat maxScore, NSString *minForegroundColor, NSString *maxForegroundColor, NSString *minBackgroundColor, NSString *maxBackgroundColor) {
  OrgApacheLuceneSearchHighlightGradientFormatter_initWithFloat_withNSString_withNSString_withNSString_withNSString_(self, maxScore, minForegroundColor, maxForegroundColor, minBackgroundColor, maxBackgroundColor);
}

OrgApacheLuceneSearchHighlightSpanGradientFormatter *new_OrgApacheLuceneSearchHighlightSpanGradientFormatter_initWithFloat_withNSString_withNSString_withNSString_withNSString_(jfloat maxScore, NSString *minForegroundColor, NSString *maxForegroundColor, NSString *minBackgroundColor, NSString *maxBackgroundColor) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightSpanGradientFormatter, initWithFloat_withNSString_withNSString_withNSString_withNSString_, maxScore, minForegroundColor, maxForegroundColor, minBackgroundColor, maxBackgroundColor)
}

OrgApacheLuceneSearchHighlightSpanGradientFormatter *create_OrgApacheLuceneSearchHighlightSpanGradientFormatter_initWithFloat_withNSString_withNSString_withNSString_withNSString_(jfloat maxScore, NSString *minForegroundColor, NSString *maxForegroundColor, NSString *minBackgroundColor, NSString *maxBackgroundColor) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightSpanGradientFormatter, initWithFloat_withNSString_withNSString_withNSString_withNSString_, maxScore, minForegroundColor, maxForegroundColor, minBackgroundColor, maxBackgroundColor)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightSpanGradientFormatter)
