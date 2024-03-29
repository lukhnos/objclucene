//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/hyphenation/Hyphen.java
//

#include "J2ObjC_source.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/analysis/compound/hyphenation/Hyphen.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/compound/hyphenation/Hyphen must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneAnalysisCompoundHyphenationHyphen

- (instancetype)initWithNSString:(NSString *)pre
                    withNSString:(NSString *)no
                    withNSString:(NSString *)post {
  OrgApacheLuceneAnalysisCompoundHyphenationHyphen_initWithNSString_withNSString_withNSString_(self, pre, no, post);
  return self;
}

- (instancetype)initWithNSString:(NSString *)pre {
  OrgApacheLuceneAnalysisCompoundHyphenationHyphen_initWithNSString_(self, pre);
  return self;
}

- (NSString *)description {
  if (noBreak_ == nil && postBreak_ == nil && preBreak_ != nil && [preBreak_ isEqual:@"-"]) {
    return @"-";
  }
  JavaLangStringBuilder *res = create_JavaLangStringBuilder_initWithNSString_(@"{");
  [res appendWithNSString:preBreak_];
  [res appendWithNSString:@"}{"];
  [res appendWithNSString:postBreak_];
  [res appendWithNSString:@"}{"];
  [res appendWithNSString:noBreak_];
  [res appendWithChar:'}'];
  return [res description];
}

- (void)dealloc {
  RELEASE_(preBreak_);
  RELEASE_(noBreak_);
  RELEASE_(postBreak_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 2, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withNSString:withNSString:);
  methods[1].selector = @selector(initWithNSString:);
  methods[2].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "preBreak_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "noBreak_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
    { "postBreak_", "LNSString;", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;LNSString;LNSString;", "LNSString;", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCompoundHyphenationHyphen = { "Hyphen", "org.apache.lucene.analysis.compound.hyphenation", ptrTable, methods, fields, 7, 0x1, 3, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisCompoundHyphenationHyphen;
}

@end

void OrgApacheLuceneAnalysisCompoundHyphenationHyphen_initWithNSString_withNSString_withNSString_(OrgApacheLuceneAnalysisCompoundHyphenationHyphen *self, NSString *pre, NSString *no, NSString *post) {
  NSObject_init(self);
  JreStrongAssign(&self->preBreak_, pre);
  JreStrongAssign(&self->noBreak_, no);
  JreStrongAssign(&self->postBreak_, post);
}

OrgApacheLuceneAnalysisCompoundHyphenationHyphen *new_OrgApacheLuceneAnalysisCompoundHyphenationHyphen_initWithNSString_withNSString_withNSString_(NSString *pre, NSString *no, NSString *post) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCompoundHyphenationHyphen, initWithNSString_withNSString_withNSString_, pre, no, post)
}

OrgApacheLuceneAnalysisCompoundHyphenationHyphen *create_OrgApacheLuceneAnalysisCompoundHyphenationHyphen_initWithNSString_withNSString_withNSString_(NSString *pre, NSString *no, NSString *post) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCompoundHyphenationHyphen, initWithNSString_withNSString_withNSString_, pre, no, post)
}

void OrgApacheLuceneAnalysisCompoundHyphenationHyphen_initWithNSString_(OrgApacheLuceneAnalysisCompoundHyphenationHyphen *self, NSString *pre) {
  NSObject_init(self);
  JreStrongAssign(&self->preBreak_, pre);
  JreStrongAssign(&self->noBreak_, nil);
  JreStrongAssign(&self->postBreak_, nil);
}

OrgApacheLuceneAnalysisCompoundHyphenationHyphen *new_OrgApacheLuceneAnalysisCompoundHyphenationHyphen_initWithNSString_(NSString *pre) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCompoundHyphenationHyphen, initWithNSString_, pre)
}

OrgApacheLuceneAnalysisCompoundHyphenationHyphen *create_OrgApacheLuceneAnalysisCompoundHyphenationHyphen_initWithNSString_(NSString *pre) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCompoundHyphenationHyphen, initWithNSString_, pre)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCompoundHyphenationHyphen)
