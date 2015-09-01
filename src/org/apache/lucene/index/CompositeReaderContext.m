//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/CompositeReaderContext.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/UnsupportedOperationException.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/CompositeReader.h"
#include "org/apache/lucene/index/CompositeReaderContext.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexReaderContext.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"

@interface OrgApacheLuceneIndexCompositeReaderContext () {
 @public
  id<JavaUtilList> children_;
  id<JavaUtilList> leaves_;
  OrgApacheLuceneIndexCompositeReader *reader_;
}

- (instancetype)initWithOrgApacheLuceneIndexCompositeReaderContext:(OrgApacheLuceneIndexCompositeReaderContext *)parent
                           withOrgApacheLuceneIndexCompositeReader:(OrgApacheLuceneIndexCompositeReader *)reader
                                                           withInt:(jint)ordInParent
                                                           withInt:(jint)docbaseInParent
                                                  withJavaUtilList:(id<JavaUtilList>)children
                                                  withJavaUtilList:(id<JavaUtilList>)leaves;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCompositeReaderContext, children_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCompositeReaderContext, leaves_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCompositeReaderContext, reader_, OrgApacheLuceneIndexCompositeReader *)

__attribute__((unused)) static void OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexCompositeReader_withInt_withInt_withJavaUtilList_withJavaUtilList_(OrgApacheLuceneIndexCompositeReaderContext *self, OrgApacheLuceneIndexCompositeReaderContext *parent, OrgApacheLuceneIndexCompositeReader *reader, jint ordInParent, jint docbaseInParent, id<JavaUtilList> children, id<JavaUtilList> leaves);

__attribute__((unused)) static OrgApacheLuceneIndexCompositeReaderContext *new_OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexCompositeReader_withInt_withInt_withJavaUtilList_withJavaUtilList_(OrgApacheLuceneIndexCompositeReaderContext *parent, OrgApacheLuceneIndexCompositeReader *reader, jint ordInParent, jint docbaseInParent, id<JavaUtilList> children, id<JavaUtilList> leaves) NS_RETURNS_RETAINED;

@interface OrgApacheLuceneIndexCompositeReaderContext_Builder : NSObject {
 @public
  OrgApacheLuceneIndexCompositeReader *reader_;
  id<JavaUtilList> leaves_;
  jint leafDocBase_;
}

- (instancetype)initWithOrgApacheLuceneIndexCompositeReader:(OrgApacheLuceneIndexCompositeReader *)reader;

- (OrgApacheLuceneIndexCompositeReaderContext *)build;

- (OrgApacheLuceneIndexIndexReaderContext *)buildWithOrgApacheLuceneIndexCompositeReaderContext:(OrgApacheLuceneIndexCompositeReaderContext *)parent
                                                            withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                                        withInt:(jint)ord
                                                                                        withInt:(jint)docBase;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexCompositeReaderContext_Builder)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCompositeReaderContext_Builder, reader_, OrgApacheLuceneIndexCompositeReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexCompositeReaderContext_Builder, leaves_, id<JavaUtilList>)

__attribute__((unused)) static void OrgApacheLuceneIndexCompositeReaderContext_Builder_initWithOrgApacheLuceneIndexCompositeReader_(OrgApacheLuceneIndexCompositeReaderContext_Builder *self, OrgApacheLuceneIndexCompositeReader *reader);

__attribute__((unused)) static OrgApacheLuceneIndexCompositeReaderContext_Builder *new_OrgApacheLuceneIndexCompositeReaderContext_Builder_initWithOrgApacheLuceneIndexCompositeReader_(OrgApacheLuceneIndexCompositeReader *reader) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneIndexIndexReaderContext *OrgApacheLuceneIndexCompositeReaderContext_Builder_buildWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexIndexReader_withInt_withInt_(OrgApacheLuceneIndexCompositeReaderContext_Builder *self, OrgApacheLuceneIndexCompositeReaderContext *parent, OrgApacheLuceneIndexIndexReader *reader, jint ord, jint docBase);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexCompositeReaderContext_Builder)

@implementation OrgApacheLuceneIndexCompositeReaderContext

+ (OrgApacheLuceneIndexCompositeReaderContext *)createWithOrgApacheLuceneIndexCompositeReader:(OrgApacheLuceneIndexCompositeReader *)reader {
  return OrgApacheLuceneIndexCompositeReaderContext_createWithOrgApacheLuceneIndexCompositeReader_(reader);
}

- (instancetype)initWithOrgApacheLuceneIndexCompositeReaderContext:(OrgApacheLuceneIndexCompositeReaderContext *)parent
                           withOrgApacheLuceneIndexCompositeReader:(OrgApacheLuceneIndexCompositeReader *)reader
                                                           withInt:(jint)ordInParent
                                                           withInt:(jint)docbaseInParent
                                                  withJavaUtilList:(id<JavaUtilList>)children {
  OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexCompositeReader_withInt_withInt_withJavaUtilList_(self, parent, reader, ordInParent, docbaseInParent, children);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexCompositeReader:(OrgApacheLuceneIndexCompositeReader *)reader
                                           withJavaUtilList:(id<JavaUtilList>)children
                                           withJavaUtilList:(id<JavaUtilList>)leaves {
  OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReader_withJavaUtilList_withJavaUtilList_(self, reader, children, leaves);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexCompositeReaderContext:(OrgApacheLuceneIndexCompositeReaderContext *)parent
                           withOrgApacheLuceneIndexCompositeReader:(OrgApacheLuceneIndexCompositeReader *)reader
                                                           withInt:(jint)ordInParent
                                                           withInt:(jint)docbaseInParent
                                                  withJavaUtilList:(id<JavaUtilList>)children
                                                  withJavaUtilList:(id<JavaUtilList>)leaves {
  OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexCompositeReader_withInt_withInt_withJavaUtilList_withJavaUtilList_(self, parent, reader, ordInParent, docbaseInParent, children, leaves);
  return self;
}

- (id<JavaUtilList>)leaves {
  if (!isTopLevel_) @throw [new_JavaLangUnsupportedOperationException_initWithNSString_(@"This is not a top-level context.") autorelease];
  JreAssert((leaves_ != nil), (@"org/apache/lucene/index/CompositeReaderContext.java:66 condition failed: assert leaves != null;"));
  return leaves_;
}

- (OrgApacheLuceneIndexCompositeReader *)reader {
  return reader_;
}

- (void)dealloc {
  RELEASE_(children_);
  RELEASE_(leaves_);
  RELEASE_(reader_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createWithOrgApacheLuceneIndexCompositeReader:", "create", "Lorg.apache.lucene.index.CompositeReaderContext;", 0x8, NULL, NULL },
    { "initWithOrgApacheLuceneIndexCompositeReaderContext:withOrgApacheLuceneIndexCompositeReader:withInt:withInt:withJavaUtilList:", "CompositeReaderContext", NULL, 0x0, NULL, NULL },
    { "initWithOrgApacheLuceneIndexCompositeReader:withJavaUtilList:withJavaUtilList:", "CompositeReaderContext", NULL, 0x0, NULL, NULL },
    { "initWithOrgApacheLuceneIndexCompositeReaderContext:withOrgApacheLuceneIndexCompositeReader:withInt:withInt:withJavaUtilList:withJavaUtilList:", "CompositeReaderContext", NULL, 0x2, NULL, NULL },
    { "leaves", NULL, "Ljava.util.List;", 0x1, "Ljava.lang.UnsupportedOperationException;", NULL },
    { "reader", NULL, "Lorg.apache.lucene.index.CompositeReader;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "children_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/index/IndexReaderContext;>;", .constantValue.asLong = 0 },
    { "leaves_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/index/LeafReaderContext;>;", .constantValue.asLong = 0 },
    { "reader_", NULL, 0x12, "Lorg.apache.lucene.index.CompositeReader;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.CompositeReaderContext$Builder;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexCompositeReaderContext = { 2, "CompositeReaderContext", "org.apache.lucene.index", NULL, 0x11, 6, methods, 3, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexCompositeReaderContext;
}

@end

OrgApacheLuceneIndexCompositeReaderContext *OrgApacheLuceneIndexCompositeReaderContext_createWithOrgApacheLuceneIndexCompositeReader_(OrgApacheLuceneIndexCompositeReader *reader) {
  OrgApacheLuceneIndexCompositeReaderContext_initialize();
  return [((OrgApacheLuceneIndexCompositeReaderContext_Builder *) [new_OrgApacheLuceneIndexCompositeReaderContext_Builder_initWithOrgApacheLuceneIndexCompositeReader_(reader) autorelease]) build];
}

void OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexCompositeReader_withInt_withInt_withJavaUtilList_(OrgApacheLuceneIndexCompositeReaderContext *self, OrgApacheLuceneIndexCompositeReaderContext *parent, OrgApacheLuceneIndexCompositeReader *reader, jint ordInParent, jint docbaseInParent, id<JavaUtilList> children) {
  OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexCompositeReader_withInt_withInt_withJavaUtilList_withJavaUtilList_(self, parent, reader, ordInParent, docbaseInParent, children, nil);
}

OrgApacheLuceneIndexCompositeReaderContext *new_OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexCompositeReader_withInt_withInt_withJavaUtilList_(OrgApacheLuceneIndexCompositeReaderContext *parent, OrgApacheLuceneIndexCompositeReader *reader, jint ordInParent, jint docbaseInParent, id<JavaUtilList> children) {
  OrgApacheLuceneIndexCompositeReaderContext *self = [OrgApacheLuceneIndexCompositeReaderContext alloc];
  OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexCompositeReader_withInt_withInt_withJavaUtilList_(self, parent, reader, ordInParent, docbaseInParent, children);
  return self;
}

void OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReader_withJavaUtilList_withJavaUtilList_(OrgApacheLuceneIndexCompositeReaderContext *self, OrgApacheLuceneIndexCompositeReader *reader, id<JavaUtilList> children, id<JavaUtilList> leaves) {
  OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexCompositeReader_withInt_withInt_withJavaUtilList_withJavaUtilList_(self, nil, reader, 0, 0, children, leaves);
}

OrgApacheLuceneIndexCompositeReaderContext *new_OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReader_withJavaUtilList_withJavaUtilList_(OrgApacheLuceneIndexCompositeReader *reader, id<JavaUtilList> children, id<JavaUtilList> leaves) {
  OrgApacheLuceneIndexCompositeReaderContext *self = [OrgApacheLuceneIndexCompositeReaderContext alloc];
  OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReader_withJavaUtilList_withJavaUtilList_(self, reader, children, leaves);
  return self;
}

void OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexCompositeReader_withInt_withInt_withJavaUtilList_withJavaUtilList_(OrgApacheLuceneIndexCompositeReaderContext *self, OrgApacheLuceneIndexCompositeReaderContext *parent, OrgApacheLuceneIndexCompositeReader *reader, jint ordInParent, jint docbaseInParent, id<JavaUtilList> children, id<JavaUtilList> leaves) {
  OrgApacheLuceneIndexIndexReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withInt_withInt_(self, parent, ordInParent, docbaseInParent);
  JreStrongAssign(&self->children_, JavaUtilCollections_unmodifiableListWithJavaUtilList_(children));
  JreStrongAssign(&self->leaves_, leaves == nil ? nil : JavaUtilCollections_unmodifiableListWithJavaUtilList_(leaves));
  JreStrongAssign(&self->reader_, reader);
}

OrgApacheLuceneIndexCompositeReaderContext *new_OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexCompositeReader_withInt_withInt_withJavaUtilList_withJavaUtilList_(OrgApacheLuceneIndexCompositeReaderContext *parent, OrgApacheLuceneIndexCompositeReader *reader, jint ordInParent, jint docbaseInParent, id<JavaUtilList> children, id<JavaUtilList> leaves) {
  OrgApacheLuceneIndexCompositeReaderContext *self = [OrgApacheLuceneIndexCompositeReaderContext alloc];
  OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexCompositeReader_withInt_withInt_withJavaUtilList_withJavaUtilList_(self, parent, reader, ordInParent, docbaseInParent, children, leaves);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexCompositeReaderContext)

@implementation OrgApacheLuceneIndexCompositeReaderContext_Builder

- (instancetype)initWithOrgApacheLuceneIndexCompositeReader:(OrgApacheLuceneIndexCompositeReader *)reader {
  OrgApacheLuceneIndexCompositeReaderContext_Builder_initWithOrgApacheLuceneIndexCompositeReader_(self, reader);
  return self;
}

- (OrgApacheLuceneIndexCompositeReaderContext *)build {
  return (OrgApacheLuceneIndexCompositeReaderContext *) check_class_cast(OrgApacheLuceneIndexCompositeReaderContext_Builder_buildWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexIndexReader_withInt_withInt_(self, nil, reader_, 0, 0), [OrgApacheLuceneIndexCompositeReaderContext class]);
}

- (OrgApacheLuceneIndexIndexReaderContext *)buildWithOrgApacheLuceneIndexCompositeReaderContext:(OrgApacheLuceneIndexCompositeReaderContext *)parent
                                                            withOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                                        withInt:(jint)ord
                                                                                        withInt:(jint)docBase {
  return OrgApacheLuceneIndexCompositeReaderContext_Builder_buildWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexIndexReader_withInt_withInt_(self, parent, reader, ord, docBase);
}

- (void)dealloc {
  RELEASE_(reader_);
  RELEASE_(leaves_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexCompositeReader:", "Builder", NULL, 0x1, NULL, NULL },
    { "build", NULL, "Lorg.apache.lucene.index.CompositeReaderContext;", 0x1, NULL, NULL },
    { "buildWithOrgApacheLuceneIndexCompositeReaderContext:withOrgApacheLuceneIndexIndexReader:withInt:withInt:", "build", "Lorg.apache.lucene.index.IndexReaderContext;", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "reader_", NULL, 0x12, "Lorg.apache.lucene.index.CompositeReader;", NULL, NULL, .constantValue.asLong = 0 },
    { "leaves_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/index/LeafReaderContext;>;", .constantValue.asLong = 0 },
    { "leafDocBase_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexCompositeReaderContext_Builder = { 2, "Builder", "org.apache.lucene.index", "CompositeReaderContext", 0x1a, 3, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexCompositeReaderContext_Builder;
}

@end

void OrgApacheLuceneIndexCompositeReaderContext_Builder_initWithOrgApacheLuceneIndexCompositeReader_(OrgApacheLuceneIndexCompositeReaderContext_Builder *self, OrgApacheLuceneIndexCompositeReader *reader) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->leaves_, new_JavaUtilArrayList_init());
  self->leafDocBase_ = 0;
  JreStrongAssign(&self->reader_, reader);
}

OrgApacheLuceneIndexCompositeReaderContext_Builder *new_OrgApacheLuceneIndexCompositeReaderContext_Builder_initWithOrgApacheLuceneIndexCompositeReader_(OrgApacheLuceneIndexCompositeReader *reader) {
  OrgApacheLuceneIndexCompositeReaderContext_Builder *self = [OrgApacheLuceneIndexCompositeReaderContext_Builder alloc];
  OrgApacheLuceneIndexCompositeReaderContext_Builder_initWithOrgApacheLuceneIndexCompositeReader_(self, reader);
  return self;
}

OrgApacheLuceneIndexIndexReaderContext *OrgApacheLuceneIndexCompositeReaderContext_Builder_buildWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexIndexReader_withInt_withInt_(OrgApacheLuceneIndexCompositeReaderContext_Builder *self, OrgApacheLuceneIndexCompositeReaderContext *parent, OrgApacheLuceneIndexIndexReader *reader, jint ord, jint docBase) {
  if ([reader isKindOfClass:[OrgApacheLuceneIndexLeafReader class]]) {
    OrgApacheLuceneIndexLeafReader *ar = (OrgApacheLuceneIndexLeafReader *) check_class_cast(reader, [OrgApacheLuceneIndexLeafReader class]);
    OrgApacheLuceneIndexLeafReaderContext *atomic = [new_OrgApacheLuceneIndexLeafReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexLeafReader_withInt_withInt_withInt_withInt_(parent, ar, ord, docBase, [((id<JavaUtilList>) nil_chk(self->leaves_)) size], self->leafDocBase_) autorelease];
    [self->leaves_ addWithId:atomic];
    self->leafDocBase_ += [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) maxDoc];
    return atomic;
  }
  else {
    OrgApacheLuceneIndexCompositeReader *cr = (OrgApacheLuceneIndexCompositeReader *) check_class_cast(reader, [OrgApacheLuceneIndexCompositeReader class]);
    id<JavaUtilList> sequentialSubReaders = [((OrgApacheLuceneIndexCompositeReader *) nil_chk(cr)) getSequentialSubReaders];
    id<JavaUtilList> children = JavaUtilArrays_asListWithNSObjectArray_([IOSObjectArray arrayWithLength:[((id<JavaUtilList>) nil_chk(sequentialSubReaders)) size] type:OrgApacheLuceneIndexIndexReaderContext_class_()]);
    OrgApacheLuceneIndexCompositeReaderContext *newParent;
    if (parent == nil) {
      newParent = [new_OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReader_withJavaUtilList_withJavaUtilList_(cr, children, self->leaves_) autorelease];
    }
    else {
      newParent = [new_OrgApacheLuceneIndexCompositeReaderContext_initWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexCompositeReader_withInt_withInt_withJavaUtilList_(parent, cr, ord, docBase, children) autorelease];
    }
    jint newDocBase = 0;
    for (jint i = 0, c = [sequentialSubReaders size]; i < c; i++) {
      OrgApacheLuceneIndexIndexReader *r = [sequentialSubReaders getWithInt:i];
      [((id<JavaUtilList>) nil_chk(children)) setWithInt:i withId:OrgApacheLuceneIndexCompositeReaderContext_Builder_buildWithOrgApacheLuceneIndexCompositeReaderContext_withOrgApacheLuceneIndexIndexReader_withInt_withInt_(self, newParent, r, i, newDocBase)];
      newDocBase += [((OrgApacheLuceneIndexIndexReader *) nil_chk(r)) maxDoc];
    }
    JreAssert((newDocBase == [cr maxDoc]), (@"org/apache/lucene/index/CompositeReaderContext.java:117 condition failed: assert newDocBase == cr.maxDoc();"));
    return newParent;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexCompositeReaderContext_Builder)
