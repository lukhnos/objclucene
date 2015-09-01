//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/MultiFields.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/concurrent/ConcurrentHashMap.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/MultiBits.h"
#include "org/apache/lucene/index/MultiFields.h"
#include "org/apache/lucene/index/MultiTerms.h"
#include "org/apache/lucene/index/ReaderSlice.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/MergedIterator.h"

@interface OrgApacheLuceneIndexMultiFields () {
 @public
  IOSObjectArray *subs_;
  IOSObjectArray *subSlices_;
  id<JavaUtilMap> terms_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiFields, subs_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiFields, subSlices_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMultiFields, terms_, id<JavaUtilMap>)

@implementation OrgApacheLuceneIndexMultiFields

+ (OrgApacheLuceneIndexFields *)getFieldsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  return OrgApacheLuceneIndexMultiFields_getFieldsWithOrgApacheLuceneIndexIndexReader_(reader);
}

+ (id<OrgApacheLuceneUtilBits>)getLiveDocsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  return OrgApacheLuceneIndexMultiFields_getLiveDocsWithOrgApacheLuceneIndexIndexReader_(reader);
}

+ (OrgApacheLuceneIndexTerms *)getTermsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r
                                                              withNSString:(NSString *)field {
  return OrgApacheLuceneIndexMultiFields_getTermsWithOrgApacheLuceneIndexIndexReader_withNSString_(r, field);
}

- (instancetype)initWithOrgApacheLuceneIndexFieldsArray:(IOSObjectArray *)subs
               withOrgApacheLuceneIndexReaderSliceArray:(IOSObjectArray *)subSlices {
  OrgApacheLuceneIndexMultiFields_initWithOrgApacheLuceneIndexFieldsArray_withOrgApacheLuceneIndexReaderSliceArray_(self, subs, subSlices);
  return self;
}

- (id<JavaUtilIterator>)iterator {
  IOSObjectArray *subIterators = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(subs_))->size_ type:JavaUtilIterator_class_()];
  for (jint i = 0; i < subs_->size_; i++) {
    IOSObjectArray_Set(subIterators, i, [((OrgApacheLuceneIndexFields *) nil_chk(IOSObjectArray_Get(subs_, i))) iterator]);
  }
  return [new_OrgApacheLuceneUtilMergedIterator_initWithJavaUtilIteratorArray_(subIterators) autorelease];
}

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field {
  OrgApacheLuceneIndexTerms *result = [((id<JavaUtilMap>) nil_chk(terms_)) getWithId:field];
  if (result != nil) return result;
  id<JavaUtilList> subs2 = [new_JavaUtilArrayList_init() autorelease];
  id<JavaUtilList> slices2 = [new_JavaUtilArrayList_init() autorelease];
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subs_))->size_; i++) {
    OrgApacheLuceneIndexTerms *terms = [((OrgApacheLuceneIndexFields *) nil_chk(IOSObjectArray_Get(subs_, i))) termsWithNSString:field];
    if (terms != nil) {
      [subs2 addWithId:terms];
      [slices2 addWithId:IOSObjectArray_Get(nil_chk(subSlices_), i)];
    }
  }
  if ([subs2 size] == 0) {
    result = nil;
  }
  else {
    result = [new_OrgApacheLuceneIndexMultiTerms_initWithOrgApacheLuceneIndexTermsArray_withOrgApacheLuceneIndexReaderSliceArray_([subs2 toArrayWithNSObjectArray:JreLoadStatic(OrgApacheLuceneIndexTerms, EMPTY_ARRAY_)], [slices2 toArrayWithNSObjectArray:JreLoadStatic(OrgApacheLuceneIndexReaderSlice, EMPTY_ARRAY_)]) autorelease];
    [terms_ putWithId:field withId:result];
  }
  return result;
}

- (jint)size {
  return -1;
}

+ (OrgApacheLuceneIndexFieldInfos *)getMergedFieldInfosWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  return OrgApacheLuceneIndexMultiFields_getMergedFieldInfosWithOrgApacheLuceneIndexIndexReader_(reader);
}

- (void)dealloc {
  RELEASE_(subs_);
  RELEASE_(subSlices_);
  RELEASE_(terms_);
  [super dealloc];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getFieldsWithOrgApacheLuceneIndexIndexReader:", "getFields", "Lorg.apache.lucene.index.Fields;", 0x9, "Ljava.io.IOException;", NULL },
    { "getLiveDocsWithOrgApacheLuceneIndexIndexReader:", "getLiveDocs", "Lorg.apache.lucene.util.Bits;", 0x9, NULL, NULL },
    { "getTermsWithOrgApacheLuceneIndexIndexReader:withNSString:", "getTerms", "Lorg.apache.lucene.index.Terms;", 0x9, "Ljava.io.IOException;", NULL },
    { "initWithOrgApacheLuceneIndexFieldsArray:withOrgApacheLuceneIndexReaderSliceArray:", "MultiFields", NULL, 0x1, NULL, NULL },
    { "iterator", NULL, "Ljava.util.Iterator;", 0x1, NULL, NULL },
    { "termsWithNSString:", "terms", "Lorg.apache.lucene.index.Terms;", 0x1, "Ljava.io.IOException;", NULL },
    { "size", NULL, "I", 0x1, NULL, NULL },
    { "getMergedFieldInfosWithOrgApacheLuceneIndexIndexReader:", "getMergedFieldInfos", "Lorg.apache.lucene.index.FieldInfos;", 0x9, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "subs_", NULL, 0x12, "[Lorg.apache.lucene.index.Fields;", NULL, NULL, .constantValue.asLong = 0 },
    { "subSlices_", NULL, 0x12, "[Lorg.apache.lucene.index.ReaderSlice;", NULL, NULL, .constantValue.asLong = 0 },
    { "terms_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/index/Terms;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexMultiFields = { 2, "MultiFields", "org.apache.lucene.index", NULL, 0x11, 8, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexMultiFields;
}

@end

OrgApacheLuceneIndexFields *OrgApacheLuceneIndexMultiFields_getFieldsWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexIndexReader *reader) {
  OrgApacheLuceneIndexMultiFields_initialize();
  id<JavaUtilList> leaves = [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) leaves];
  {
    id<JavaUtilList> fields;
    id<JavaUtilList> slices;
    switch ([((id<JavaUtilList>) nil_chk(leaves)) size]) {
      case 1:
      return [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk([leaves getWithInt:0])) reader])) fields];
      default:
      fields = [new_JavaUtilArrayList_init() autorelease];
      slices = [new_JavaUtilArrayList_init() autorelease];
      for (OrgApacheLuceneIndexLeafReaderContext * __strong ctx in leaves) {
        OrgApacheLuceneIndexLeafReader *r = [((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(ctx)) reader];
        OrgApacheLuceneIndexFields *f = [((OrgApacheLuceneIndexLeafReader *) nil_chk(r)) fields];
        [fields addWithId:f];
        [slices addWithId:[new_OrgApacheLuceneIndexReaderSlice_initWithInt_withInt_withInt_(ctx->docBase_, [r maxDoc], [fields size] - 1) autorelease]];
      }
      if ([fields size] == 1) {
        return [fields getWithInt:0];
      }
      else {
        return [new_OrgApacheLuceneIndexMultiFields_initWithOrgApacheLuceneIndexFieldsArray_withOrgApacheLuceneIndexReaderSliceArray_([fields toArrayWithNSObjectArray:JreLoadStatic(OrgApacheLuceneIndexFields, EMPTY_ARRAY_)], [slices toArrayWithNSObjectArray:JreLoadStatic(OrgApacheLuceneIndexReaderSlice, EMPTY_ARRAY_)]) autorelease];
      }
    }
  }
}

id<OrgApacheLuceneUtilBits> OrgApacheLuceneIndexMultiFields_getLiveDocsWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexIndexReader *reader) {
  OrgApacheLuceneIndexMultiFields_initialize();
  if ([((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) hasDeletions]) {
    id<JavaUtilList> leaves = [reader leaves];
    jint size = [((id<JavaUtilList>) nil_chk(leaves)) size];
    JreAssert((size > 0), (@"A reader with deletions must have at least one leave"));
    if (size == 1) {
      return [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk([leaves getWithInt:0])) reader])) getLiveDocs];
    }
    IOSObjectArray *liveDocs = [IOSObjectArray arrayWithLength:size type:OrgApacheLuceneUtilBits_class_()];
    IOSIntArray *starts = [IOSIntArray arrayWithLength:size + 1];
    for (jint i = 0; i < size; i++) {
      OrgApacheLuceneIndexLeafReaderContext *ctx = [leaves getWithInt:i];
      IOSObjectArray_Set(liveDocs, i, [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(ctx)) reader])) getLiveDocs]);
      *IOSIntArray_GetRef(starts, i) = ctx->docBase_;
    }
    *IOSIntArray_GetRef(starts, size) = [reader maxDoc];
    return [new_OrgApacheLuceneIndexMultiBits_initWithOrgApacheLuceneUtilBitsArray_withIntArray_withBoolean_(liveDocs, starts, YES) autorelease];
  }
  else {
    return nil;
  }
}

OrgApacheLuceneIndexTerms *OrgApacheLuceneIndexMultiFields_getTermsWithOrgApacheLuceneIndexIndexReader_withNSString_(OrgApacheLuceneIndexIndexReader *r, NSString *field) {
  OrgApacheLuceneIndexMultiFields_initialize();
  return [((OrgApacheLuceneIndexFields *) nil_chk(OrgApacheLuceneIndexMultiFields_getFieldsWithOrgApacheLuceneIndexIndexReader_(r))) termsWithNSString:field];
}

void OrgApacheLuceneIndexMultiFields_initWithOrgApacheLuceneIndexFieldsArray_withOrgApacheLuceneIndexReaderSliceArray_(OrgApacheLuceneIndexMultiFields *self, IOSObjectArray *subs, IOSObjectArray *subSlices) {
  OrgApacheLuceneIndexFields_init(self);
  JreStrongAssignAndConsume(&self->terms_, new_JavaUtilConcurrentConcurrentHashMap_init());
  JreStrongAssign(&self->subs_, subs);
  JreStrongAssign(&self->subSlices_, subSlices);
}

OrgApacheLuceneIndexMultiFields *new_OrgApacheLuceneIndexMultiFields_initWithOrgApacheLuceneIndexFieldsArray_withOrgApacheLuceneIndexReaderSliceArray_(IOSObjectArray *subs, IOSObjectArray *subSlices) {
  OrgApacheLuceneIndexMultiFields *self = [OrgApacheLuceneIndexMultiFields alloc];
  OrgApacheLuceneIndexMultiFields_initWithOrgApacheLuceneIndexFieldsArray_withOrgApacheLuceneIndexReaderSliceArray_(self, subs, subSlices);
  return self;
}

OrgApacheLuceneIndexFieldInfos *OrgApacheLuceneIndexMultiFields_getMergedFieldInfosWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexIndexReader *reader) {
  OrgApacheLuceneIndexMultiFields_initialize();
  OrgApacheLuceneIndexFieldInfos_Builder *builder = [new_OrgApacheLuceneIndexFieldInfos_Builder_init() autorelease];
  for (OrgApacheLuceneIndexLeafReaderContext * __strong ctx in nil_chk([((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) leaves])) {
    [builder addWithOrgApacheLuceneIndexFieldInfos:[((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(ctx)) reader])) getFieldInfos]];
  }
  return [builder finish];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexMultiFields)
