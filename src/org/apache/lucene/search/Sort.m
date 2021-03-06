//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/Sort.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/StringBuilder.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Sort.h"
#include "org/apache/lucene/search/SortField.h"

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchSort)

OrgApacheLuceneSearchSort *OrgApacheLuceneSearchSort_RELEVANCE;
OrgApacheLuceneSearchSort *OrgApacheLuceneSearchSort_INDEXORDER;

@implementation OrgApacheLuceneSearchSort

+ (OrgApacheLuceneSearchSort *)RELEVANCE {
  return OrgApacheLuceneSearchSort_RELEVANCE;
}

+ (OrgApacheLuceneSearchSort *)INDEXORDER {
  return OrgApacheLuceneSearchSort_INDEXORDER;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchSort_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneSearchSortField:(OrgApacheLuceneSearchSortField *)field {
  OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortField_(self, field);
  return self;
}

- (instancetype)initWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields {
  OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortFieldArray_(self, fields);
  return self;
}

- (void)setSortWithOrgApacheLuceneSearchSortField:(OrgApacheLuceneSearchSortField *)field {
  JreStrongAssignAndConsume(&self->fields_, [IOSObjectArray newArrayWithObjects:(id[]){ field } count:1 type:OrgApacheLuceneSearchSortField_class_()]);
}

- (void)setSortWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields {
  JreStrongAssign(&self->fields_, fields);
}

- (IOSObjectArray *)getSort {
  return fields_;
}

- (OrgApacheLuceneSearchSort *)rewriteWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher {
  jboolean changed = false;
  IOSObjectArray *rewrittenSortFields = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(fields_))->size_ type:OrgApacheLuceneSearchSortField_class_()];
  for (jint i = 0; i < fields_->size_; i++) {
    IOSObjectArray_Set(rewrittenSortFields, i, [((OrgApacheLuceneSearchSortField *) nil_chk(IOSObjectArray_Get(fields_, i))) rewriteWithOrgApacheLuceneSearchIndexSearcher:searcher]);
    if (IOSObjectArray_Get(nil_chk(fields_), i) != IOSObjectArray_Get(rewrittenSortFields, i)) {
      changed = true;
    }
  }
  return (changed) ? create_OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortFieldArray_(rewrittenSortFields) : self;
}

- (NSString *)description {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(fields_))->size_; i++) {
    [buffer appendWithNSString:[((OrgApacheLuceneSearchSortField *) nil_chk(IOSObjectArray_Get(fields_, i))) description]];
    if ((i + 1) < ((IOSObjectArray *) nil_chk(fields_))->size_) [buffer appendWithChar:','];
  }
  return [buffer description];
}

- (jboolean)isEqual:(id)o {
  if (self == o) return true;
  if (!([o isKindOfClass:[OrgApacheLuceneSearchSort class]])) return false;
  OrgApacheLuceneSearchSort *other = (OrgApacheLuceneSearchSort *) cast_chk(o, [OrgApacheLuceneSearchSort class]);
  return JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(self->fields_, ((OrgApacheLuceneSearchSort *) nil_chk(other))->fields_);
}

- (NSUInteger)hash {
  return (jint) 0x45aaf665 + JavaUtilArrays_hashCodeWithNSObjectArray_(fields_);
}

- (jboolean)needsScores {
  {
    IOSObjectArray *a__ = fields_;
    OrgApacheLuceneSearchSortField * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneSearchSortField * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneSearchSortField *sortField = *b__++;
      if ([((OrgApacheLuceneSearchSortField *) nil_chk(sortField)) needsScores]) {
        return true;
      }
    }
  }
  return false;
}

- (void)dealloc {
  RELEASE_(fields_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchSort class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSort_RELEVANCE, new_OrgApacheLuceneSearchSort_init());
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchSort_INDEXORDER, new_OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortField_(JreLoadStatic(OrgApacheLuceneSearchSortField, FIELD_DOC)));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchSort)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "Sort", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchSortField:", "Sort", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchSortFieldArray:", "Sort", NULL, 0x81, NULL, NULL },
    { "setSortWithOrgApacheLuceneSearchSortField:", "setSort", "V", 0x1, NULL, NULL },
    { "setSortWithOrgApacheLuceneSearchSortFieldArray:", "setSort", "V", 0x81, NULL, NULL },
    { "getSort", NULL, "[Lorg.apache.lucene.search.SortField;", 0x1, NULL, NULL },
    { "rewriteWithOrgApacheLuceneSearchIndexSearcher:", "rewrite", "Lorg.apache.lucene.search.Sort;", 0x1, "Ljava.io.IOException;", NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "needsScores", NULL, "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "RELEVANCE", "RELEVANCE", 0x19, "Lorg.apache.lucene.search.Sort;", &OrgApacheLuceneSearchSort_RELEVANCE, NULL, .constantValue.asLong = 0 },
    { "INDEXORDER", "INDEXORDER", 0x19, "Lorg.apache.lucene.search.Sort;", &OrgApacheLuceneSearchSort_INDEXORDER, NULL, .constantValue.asLong = 0 },
    { "fields_", NULL, 0x0, "[Lorg.apache.lucene.search.SortField;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSort = { 2, "Sort", "org.apache.lucene.search", NULL, 0x1, 11, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSort;
}

@end

void OrgApacheLuceneSearchSort_init(OrgApacheLuceneSearchSort *self) {
  OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortField_(self, JreLoadStatic(OrgApacheLuceneSearchSortField, FIELD_SCORE));
}

OrgApacheLuceneSearchSort *new_OrgApacheLuceneSearchSort_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSort, init)
}

OrgApacheLuceneSearchSort *create_OrgApacheLuceneSearchSort_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSort, init)
}

void OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortField_(OrgApacheLuceneSearchSort *self, OrgApacheLuceneSearchSortField *field) {
  NSObject_init(self);
  [self setSortWithOrgApacheLuceneSearchSortField:field];
}

OrgApacheLuceneSearchSort *new_OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortField_(OrgApacheLuceneSearchSortField *field) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSort, initWithOrgApacheLuceneSearchSortField_, field)
}

OrgApacheLuceneSearchSort *create_OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortField_(OrgApacheLuceneSearchSortField *field) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSort, initWithOrgApacheLuceneSearchSortField_, field)
}

void OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortFieldArray_(OrgApacheLuceneSearchSort *self, IOSObjectArray *fields) {
  NSObject_init(self);
  [self setSortWithOrgApacheLuceneSearchSortFieldArray:fields];
}

OrgApacheLuceneSearchSort *new_OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortFieldArray_(IOSObjectArray *fields) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSort, initWithOrgApacheLuceneSearchSortFieldArray_, fields)
}

OrgApacheLuceneSearchSort *create_OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortFieldArray_(IOSObjectArray *fields) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSort, initWithOrgApacheLuceneSearchSortFieldArray_, fields)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSort)
