//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexReaderContext.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Error.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/CompositeReaderContext.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReaderContext.h"

@implementation OrgApacheLuceneIndexIndexReaderContext

- (instancetype)initWithOrgApacheLuceneIndexCompositeReaderContext:(OrgApacheLuceneIndexCompositeReaderContext *)parent
                                                           withInt:(jint)ordInParent
                                                           withInt:(jint)docBaseInParent {
  OrgApacheLuceneIndexIndexReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withInt_withInt_(self, parent, ordInParent, docBaseInParent);
  return self;
}

- (OrgApacheLuceneIndexIndexReader *)reader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<JavaUtilList>)leaves {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (id<JavaUtilList>)children {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)dealloc {
  RELEASE_(parent_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexCompositeReaderContext:withInt:withInt:", "IndexReaderContext", NULL, 0x0, NULL, NULL },
    { "reader", NULL, "Lorg.apache.lucene.index.IndexReader;", 0x401, NULL, NULL },
    { "leaves", NULL, "Ljava.util.List;", 0x401, "Ljava.lang.UnsupportedOperationException;", NULL },
    { "children", NULL, "Ljava.util.List;", 0x401, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "parent_", NULL, 0x11, "Lorg.apache.lucene.index.CompositeReaderContext;", NULL, NULL, .constantValue.asLong = 0 },
    { "isTopLevel_", NULL, 0x11, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "docBaseInParent_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "ordInParent_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIndexReaderContext = { 2, "IndexReaderContext", "org.apache.lucene.index", NULL, 0x401, 4, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexIndexReaderContext;
}

@end

void OrgApacheLuceneIndexIndexReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withInt_withInt_(OrgApacheLuceneIndexIndexReaderContext *self, OrgApacheLuceneIndexCompositeReaderContext *parent, jint ordInParent, jint docBaseInParent) {
  NSObject_init(self);
  if (!([self isKindOfClass:[OrgApacheLuceneIndexCompositeReaderContext class]] || [self isKindOfClass:[OrgApacheLuceneIndexLeafReaderContext class]])) @throw [new_JavaLangError_initWithNSString_(@"This class should never be extended by custom code!") autorelease];
  JreStrongAssign(&self->parent_, parent);
  self->docBaseInParent_ = docBaseInParent;
  self->ordInParent_ = ordInParent;
  self->isTopLevel_ = (parent == nil);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIndexReaderContext)
