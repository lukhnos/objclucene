//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/ext/ParserExtension.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/queryparser/ext/ExtensionQuery.h"
#include "org/apache/lucene/queryparser/ext/ParserExtension.h"
#include "org/apache/lucene/search/Query.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/queryparser/ext/ParserExtension must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneQueryparserExtParserExtension

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueryparserExtParserExtension_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchQuery *)parseWithOrgApacheLuceneQueryparserExtExtensionQuery:(OrgApacheLuceneQueryparserExtExtensionQuery *)query {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x401, 0, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(parseWithOrgApacheLuceneQueryparserExtExtensionQuery:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "parse", "LOrgApacheLuceneQueryparserExtExtensionQuery;", "LOrgApacheLuceneQueryparserClassicParseException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserExtParserExtension = { "ParserExtension", "org.apache.lucene.queryparser.ext", ptrTable, methods, NULL, 7, 0x401, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneQueryparserExtParserExtension;
}

@end

void OrgApacheLuceneQueryparserExtParserExtension_init(OrgApacheLuceneQueryparserExtParserExtension *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserExtParserExtension)
