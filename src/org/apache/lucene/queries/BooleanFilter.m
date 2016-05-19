//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queries/src/java/org/apache/lucene/queries/BooleanFilter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/ArrayList.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/queries/BooleanFilter.h"
#include "org/apache/lucene/queries/FilterClause.h"
#include "org/apache/lucene/search/BitsFilteredDocIdSet.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/util/BitDocIdSet.h"
#include "org/apache/lucene/util/Bits.h"

@interface OrgApacheLuceneQueriesBooleanFilter () {
 @public
  id<JavaUtilList> clauses_;
}

+ (OrgApacheLuceneSearchDocIdSetIterator *)getDISIWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                                        withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueriesBooleanFilter, clauses_, id<JavaUtilList>)

__attribute__((unused)) static OrgApacheLuceneSearchDocIdSetIterator *OrgApacheLuceneQueriesBooleanFilter_getDISIWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchFilter *filter, OrgApacheLuceneIndexLeafReaderContext *context);

@implementation OrgApacheLuceneQueriesBooleanFilter

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  OrgApacheLuceneUtilBitDocIdSet_Builder *res = nil;
  OrgApacheLuceneIndexLeafReader *reader = [((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader];
  jboolean hasShouldClauses = false;
  for (OrgApacheLuceneQueriesFilterClause * __strong fc in nil_chk(clauses_)) {
    if ([((OrgApacheLuceneQueriesFilterClause *) nil_chk(fc)) getOccur] == JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, SHOULD)) {
      hasShouldClauses = true;
      OrgApacheLuceneSearchDocIdSetIterator *disi = OrgApacheLuceneQueriesBooleanFilter_getDISIWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneIndexLeafReaderContext_([fc getFilter], context);
      if (disi == nil) continue;
      if (res == nil) {
        res = create_OrgApacheLuceneUtilBitDocIdSet_Builder_initWithInt_([((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) maxDoc]);
      }
      [res or__WithOrgApacheLuceneSearchDocIdSetIterator:disi];
    }
  }
  if (hasShouldClauses && res == nil) return nil;
  for (OrgApacheLuceneQueriesFilterClause * __strong fc in clauses_) {
    if ([((OrgApacheLuceneQueriesFilterClause *) nil_chk(fc)) getOccur] == JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, MUST_NOT)) {
      if (res == nil) {
        JreAssert((!hasShouldClauses), (@"org/apache/lucene/queries/BooleanFilter.java:79 condition failed: assert !hasShouldClauses;"));
        res = create_OrgApacheLuceneUtilBitDocIdSet_Builder_initWithInt_withBoolean_([((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) maxDoc], true);
      }
      OrgApacheLuceneSearchDocIdSetIterator *disi = OrgApacheLuceneQueriesBooleanFilter_getDISIWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneIndexLeafReaderContext_([fc getFilter], context);
      if (disi != nil) {
        [res andNotWithOrgApacheLuceneSearchDocIdSetIterator:disi];
      }
    }
  }
  for (OrgApacheLuceneQueriesFilterClause * __strong fc in clauses_) {
    if ([((OrgApacheLuceneQueriesFilterClause *) nil_chk(fc)) getOccur] == JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, MUST)) {
      OrgApacheLuceneSearchDocIdSetIterator *disi = OrgApacheLuceneQueriesBooleanFilter_getDISIWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneIndexLeafReaderContext_([fc getFilter], context);
      if (disi == nil) {
        return nil;
      }
      if (res == nil) {
        res = create_OrgApacheLuceneUtilBitDocIdSet_Builder_initWithInt_([((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) maxDoc]);
        [res or__WithOrgApacheLuceneSearchDocIdSetIterator:disi];
      }
      else {
        [res and__WithOrgApacheLuceneSearchDocIdSetIterator:disi];
      }
    }
  }
  if (res == nil) {
    return nil;
  }
  return OrgApacheLuceneSearchBitsFilteredDocIdSet_wrapWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneUtilBits_([res build], acceptDocs);
}

+ (OrgApacheLuceneSearchDocIdSetIterator *)getDISIWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                                        withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  return OrgApacheLuceneQueriesBooleanFilter_getDISIWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneIndexLeafReaderContext_(filter, context);
}

- (void)addWithOrgApacheLuceneQueriesFilterClause:(OrgApacheLuceneQueriesFilterClause *)filterClause {
  [((id<JavaUtilList>) nil_chk(clauses_)) addWithId:filterClause];
}

- (void)addWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
withOrgApacheLuceneSearchBooleanClause_Occur:(OrgApacheLuceneSearchBooleanClause_Occur *)occur {
  [self addWithOrgApacheLuceneQueriesFilterClause:create_OrgApacheLuceneQueriesFilterClause_initWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneSearchBooleanClause_Occur_(filter, occur)];
}

- (id<JavaUtilList>)clauses {
  return clauses_;
}

- (id<JavaUtilIterator>)iterator {
  return [((id<JavaUtilList>) nil_chk([self clauses])) iterator];
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) {
    return true;
  }
  if ([super isEqual:obj] == false) {
    return false;
  }
  OrgApacheLuceneQueriesBooleanFilter *other = (OrgApacheLuceneQueriesBooleanFilter *) cast_chk(obj, [OrgApacheLuceneQueriesBooleanFilter class]);
  return [((id<JavaUtilList>) nil_chk(clauses_)) isEqual:((OrgApacheLuceneQueriesBooleanFilter *) nil_chk(other))->clauses_];
}

- (NSUInteger)hash {
  return 31 * ((jint) [super hash]) + ((jint) [((id<JavaUtilList>) nil_chk(clauses_)) hash]);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_initWithNSString_(@"BooleanFilter(");
  jint minLen = [buffer length];
  for (OrgApacheLuceneQueriesFilterClause * __strong c in nil_chk(clauses_)) {
    if ([buffer length] > minLen) {
      [buffer appendWithChar:' '];
    }
    [buffer appendWithId:c];
  }
  return [((JavaLangStringBuilder *) nil_chk([buffer appendWithChar:')'])) description];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneQueriesBooleanFilter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

- (void)dealloc {
  RELEASE_(clauses_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:", "getDocIdSet", "Lorg.apache.lucene.search.DocIdSet;", 0x1, "Ljava.io.IOException;", NULL },
    { "getDISIWithOrgApacheLuceneSearchFilter:withOrgApacheLuceneIndexLeafReaderContext:", "getDISI", "Lorg.apache.lucene.search.DocIdSetIterator;", 0xa, "Ljava.io.IOException;", NULL },
    { "addWithOrgApacheLuceneQueriesFilterClause:", "add", "V", 0x1, NULL, NULL },
    { "addWithOrgApacheLuceneSearchFilter:withOrgApacheLuceneSearchBooleanClause_Occur:", "add", "V", 0x11, NULL, NULL },
    { "clauses", NULL, "Ljava.util.List;", 0x1, NULL, "()Ljava/util/List<Lorg/apache/lucene/queries/FilterClause;>;" },
    { "iterator", NULL, "Ljava.util.Iterator;", 0x11, NULL, "()Ljava/util/Iterator<Lorg/apache/lucene/queries/FilterClause;>;" },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", "BooleanFilter", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "clauses_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<Lorg/apache/lucene/queries/FilterClause;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueriesBooleanFilter = { 2, "BooleanFilter", "org.apache.lucene.queries", NULL, 0x1, 10, methods, 1, fields, 0, NULL, 0, NULL, NULL, "Lorg/apache/lucene/search/Filter;Ljava/lang/Iterable<Lorg/apache/lucene/queries/FilterClause;>;" };
  return &_OrgApacheLuceneQueriesBooleanFilter;
}

@end

OrgApacheLuceneSearchDocIdSetIterator *OrgApacheLuceneQueriesBooleanFilter_getDISIWithOrgApacheLuceneSearchFilter_withOrgApacheLuceneIndexLeafReaderContext_(OrgApacheLuceneSearchFilter *filter, OrgApacheLuceneIndexLeafReaderContext *context) {
  OrgApacheLuceneQueriesBooleanFilter_initialize();
  OrgApacheLuceneSearchDocIdSet *set = [((OrgApacheLuceneSearchFilter *) nil_chk(filter)) getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneUtilBits:nil];
  return set == nil ? nil : [set iterator];
}

void OrgApacheLuceneQueriesBooleanFilter_init(OrgApacheLuceneQueriesBooleanFilter *self) {
  OrgApacheLuceneSearchFilter_init(self);
  JreStrongAssignAndConsume(&self->clauses_, new_JavaUtilArrayList_init());
}

OrgApacheLuceneQueriesBooleanFilter *new_OrgApacheLuceneQueriesBooleanFilter_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneQueriesBooleanFilter, init)
}

OrgApacheLuceneQueriesBooleanFilter *create_OrgApacheLuceneQueriesBooleanFilter_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneQueriesBooleanFilter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueriesBooleanFilter)
