//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/BooleanQuery.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Boolean.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/Iterable.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/ArrayList.h"
#include "java/util/Arrays.h"
#include "java/util/Collections.h"
#include "java/util/Iterator.h"
#include "java/util/List.h"
#include "java/util/Spliterator.h"
#include "java/util/function/Consumer.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/search/BooleanClause.h"
#include "org/apache/lucene/search/BooleanQuery.h"
#include "org/apache/lucene/search/BooleanWeight.h"
#include "org/apache/lucene/search/ConstantScoreQuery.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/util/ToStringUtils.h"
#include "org/lukhnos/portmobile/util/Objects.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/BooleanQuery must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchBooleanQuery () {
 @public
  jboolean mutable__;
  jboolean disableCoord_;
  jint minimumNumberShouldMatch_;
  id<JavaUtilList> clauses_;
}

- (instancetype)initWithBoolean:(jboolean)disableCoord
                        withInt:(jint)minimumNumberShouldMatch
withOrgApacheLuceneSearchBooleanClauseArray:(IOSObjectArray *)clauses;

- (OrgApacheLuceneSearchBooleanQuery *)rewriteNoScoring;

- (void)ensureMutableWithNSString:(NSString *)method;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBooleanQuery, clauses_, id<JavaUtilList>)

inline jint OrgApacheLuceneSearchBooleanQuery_get_maxClauseCount(void);
inline jint OrgApacheLuceneSearchBooleanQuery_set_maxClauseCount(jint value);
inline jint *OrgApacheLuceneSearchBooleanQuery_getRef_maxClauseCount(void);
static jint OrgApacheLuceneSearchBooleanQuery_maxClauseCount = 1024;
J2OBJC_STATIC_FIELD_PRIMITIVE(OrgApacheLuceneSearchBooleanQuery, maxClauseCount, jint)

__attribute__((unused)) static void OrgApacheLuceneSearchBooleanQuery_initWithBoolean_withInt_withOrgApacheLuceneSearchBooleanClauseArray_(OrgApacheLuceneSearchBooleanQuery *self, jboolean disableCoord, jint minimumNumberShouldMatch, IOSObjectArray *clauses);

__attribute__((unused)) static OrgApacheLuceneSearchBooleanQuery *new_OrgApacheLuceneSearchBooleanQuery_initWithBoolean_withInt_withOrgApacheLuceneSearchBooleanClauseArray_(jboolean disableCoord, jint minimumNumberShouldMatch, IOSObjectArray *clauses) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchBooleanQuery *create_OrgApacheLuceneSearchBooleanQuery_initWithBoolean_withInt_withOrgApacheLuceneSearchBooleanClauseArray_(jboolean disableCoord, jint minimumNumberShouldMatch, IOSObjectArray *clauses);

__attribute__((unused)) static OrgApacheLuceneSearchBooleanQuery *OrgApacheLuceneSearchBooleanQuery_rewriteNoScoring(OrgApacheLuceneSearchBooleanQuery *self);

__attribute__((unused)) static void OrgApacheLuceneSearchBooleanQuery_ensureMutableWithNSString_(OrgApacheLuceneSearchBooleanQuery *self, NSString *method);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchBooleanQuery__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchBooleanQuery__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchBooleanQuery__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchBooleanQuery__Annotations$3(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchBooleanQuery__Annotations$4(void);

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchBooleanQuery__Annotations$5(void);

@interface OrgApacheLuceneSearchBooleanQuery_Builder () {
 @public
  jboolean disableCoord_;
  jint minimumNumberShouldMatch_;
  id<JavaUtilList> clauses_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchBooleanQuery_Builder, clauses_, id<JavaUtilList>)

@implementation OrgApacheLuceneSearchBooleanQuery

+ (jint)getMaxClauseCount {
  return OrgApacheLuceneSearchBooleanQuery_getMaxClauseCount();
}

+ (void)setMaxClauseCountWithInt:(jint)maxClauseCount {
  OrgApacheLuceneSearchBooleanQuery_setMaxClauseCountWithInt_(maxClauseCount);
}

- (instancetype)initWithBoolean:(jboolean)disableCoord
                        withInt:(jint)minimumNumberShouldMatch
withOrgApacheLuceneSearchBooleanClauseArray:(IOSObjectArray *)clauses {
  OrgApacheLuceneSearchBooleanQuery_initWithBoolean_withInt_withOrgApacheLuceneSearchBooleanClauseArray_(self, disableCoord, minimumNumberShouldMatch, clauses);
  return self;
}

- (jboolean)isCoordDisabled {
  return disableCoord_;
}

- (jint)getMinimumNumberShouldMatch {
  return minimumNumberShouldMatch_;
}

- (id<JavaUtilList>)clauses {
  return clauses_;
}

- (id<JavaUtilIterator>)iterator {
  return [((id<JavaUtilList>) nil_chk(clauses_)) iterator];
}

- (OrgApacheLuceneSearchBooleanQuery *)rewriteNoScoring {
  return OrgApacheLuceneSearchBooleanQuery_rewriteNoScoring(self);
}

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores {
  OrgApacheLuceneSearchBooleanQuery *query = self;
  if (needsScores == false) {
    query = OrgApacheLuceneSearchBooleanQuery_rewriteNoScoring(self);
  }
  return create_OrgApacheLuceneSearchBooleanWeight_initPackagePrivateWithOrgApacheLuceneSearchBooleanQuery_withOrgApacheLuceneSearchIndexSearcher_withBoolean_withBoolean_(query, searcher, needsScores, disableCoord_);
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  if (minimumNumberShouldMatch_ == 0 && [((id<JavaUtilList>) nil_chk(clauses_)) size] == 1) {
    OrgApacheLuceneSearchBooleanClause *c = JreRetainedLocalValue([((id<JavaUtilList>) nil_chk(clauses_)) getWithInt:0]);
    if (![((OrgApacheLuceneSearchBooleanClause *) nil_chk(c)) isProhibited]) {
      OrgApacheLuceneSearchQuery *query = JreRetainedLocalValue([((OrgApacheLuceneSearchQuery *) nil_chk([c getQuery])) rewriteWithOrgApacheLuceneIndexIndexReader:reader]);
      if ([c isScoring]) {
        if ([self getBoost] != 1.0f) {
          if (JreObjectEqualsEquals(query, [c getQuery])) {
            query = [((OrgApacheLuceneSearchQuery *) nil_chk(query)) java_clone];
          }
          [((OrgApacheLuceneSearchQuery *) nil_chk(query)) setBoostWithFloat:[self getBoost] * [query getBoost]];
        }
      }
      else {
        query = create_OrgApacheLuceneSearchConstantScoreQuery_initWithOrgApacheLuceneSearchQuery_(query);
        [query setBoostWithFloat:0];
      }
      return query;
    }
  }
  OrgApacheLuceneSearchBooleanQuery_Builder *builder = create_OrgApacheLuceneSearchBooleanQuery_Builder_init();
  [builder setDisableCoordWithBoolean:[self isCoordDisabled]];
  [builder setMinimumNumberShouldMatchWithInt:[self getMinimumNumberShouldMatch]];
  jboolean actuallyRewritten = false;
  for (OrgApacheLuceneSearchBooleanClause * __strong clause in self) {
    OrgApacheLuceneSearchQuery *query = JreRetainedLocalValue([((OrgApacheLuceneSearchBooleanClause *) nil_chk(clause)) getQuery]);
    OrgApacheLuceneSearchQuery *rewritten = JreRetainedLocalValue([((OrgApacheLuceneSearchQuery *) nil_chk(query)) rewriteWithOrgApacheLuceneIndexIndexReader:reader]);
    if (!JreObjectEqualsEquals(rewritten, query)) {
      actuallyRewritten = true;
    }
    [builder addWithOrgApacheLuceneSearchQuery:rewritten withOrgApacheLuceneSearchBooleanClause_Occur:[clause getOccur]];
  }
  if (actuallyRewritten) {
    OrgApacheLuceneSearchBooleanQuery *rewritten = JreRetainedLocalValue([builder build]);
    [((OrgApacheLuceneSearchBooleanQuery *) nil_chk(rewritten)) setBoostWithFloat:[self getBoost]];
    return rewritten;
  }
  return [super rewriteWithOrgApacheLuceneIndexIndexReader:reader];
}

- (NSString *)toStringWithNSString:(NSString *)field {
  JavaLangStringBuilder *buffer = create_JavaLangStringBuilder_init();
  jboolean needParens = [self getBoost] != 1.0 || [self getMinimumNumberShouldMatch] > 0;
  if (needParens) {
    [buffer appendWithNSString:@"("];
  }
  jint i = 0;
  for (OrgApacheLuceneSearchBooleanClause * __strong c in self) {
    [buffer appendWithNSString:[((OrgApacheLuceneSearchBooleanClause_Occur *) nil_chk([((OrgApacheLuceneSearchBooleanClause *) nil_chk(c)) getOccur])) description]];
    OrgApacheLuceneSearchQuery *subQuery = JreRetainedLocalValue([c getQuery]);
    if ([subQuery isKindOfClass:[OrgApacheLuceneSearchBooleanQuery class]]) {
      [buffer appendWithNSString:@"("];
      [buffer appendWithNSString:[((OrgApacheLuceneSearchQuery *) nil_chk(subQuery)) toStringWithNSString:field]];
      [buffer appendWithNSString:@")"];
    }
    else {
      [buffer appendWithNSString:[((OrgApacheLuceneSearchQuery *) nil_chk(subQuery)) toStringWithNSString:field]];
    }
    if (i != [((id<JavaUtilList>) nil_chk(clauses_)) size] - 1) {
      [buffer appendWithNSString:@" "];
    }
    i += 1;
  }
  if (needParens) {
    [buffer appendWithNSString:@")"];
  }
  if ([self getMinimumNumberShouldMatch] > 0) {
    [buffer appendWithChar:'~'];
    [buffer appendWithInt:[self getMinimumNumberShouldMatch]];
  }
  if ([self getBoost] != 1.0f) {
    [buffer appendWithNSString:OrgApacheLuceneUtilToStringUtils_boostWithFloat_([self getBoost])];
  }
  return [buffer description];
}

- (jboolean)isEqual:(id)o {
  if ([super isEqual:o] == false) {
    return false;
  }
  OrgApacheLuceneSearchBooleanQuery *that = (OrgApacheLuceneSearchBooleanQuery *) cast_chk(o, [OrgApacheLuceneSearchBooleanQuery class]);
  return [self getMinimumNumberShouldMatch] == [((OrgApacheLuceneSearchBooleanQuery *) nil_chk(that)) getMinimumNumberShouldMatch] && self->disableCoord_ == that->disableCoord_ && [((id<JavaUtilList>) nil_chk(clauses_)) isEqual:that->clauses_];
}

- (NSUInteger)hash {
  return 31 * ((jint) [super hash]) + OrgLukhnosPortmobileUtilObjects_hash__WithNSObjectArray_([IOSObjectArray arrayWithObjects:(id[]){ JavaLangBoolean_valueOfWithBoolean_(disableCoord_), JavaLangInteger_valueOfWithInt_(minimumNumberShouldMatch_), clauses_ } count:3 type:NSObject_class_()]);
}

- (IOSObjectArray *)getClauses {
  return [((id<JavaUtilList>) nil_chk(clauses_)) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[clauses_ size] type:OrgApacheLuceneSearchBooleanClause_class_()]];
}

- (OrgApacheLuceneSearchBooleanQuery *)java_clone {
  OrgApacheLuceneSearchBooleanQuery *clone = (OrgApacheLuceneSearchBooleanQuery *) cast_chk([super java_clone], [OrgApacheLuceneSearchBooleanQuery class]);
  JreStrongAssignAndConsume(&((OrgApacheLuceneSearchBooleanQuery *) nil_chk(clone))->clauses_, new_JavaUtilArrayList_initWithJavaUtilCollection_(clauses_));
  return clone;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchBooleanQuery_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithBoolean:(jboolean)disableCoord {
  OrgApacheLuceneSearchBooleanQuery_initWithBoolean_(self, disableCoord);
  return self;
}

- (void)ensureMutableWithNSString:(NSString *)method {
  OrgApacheLuceneSearchBooleanQuery_ensureMutableWithNSString_(self, method);
}

- (void)setMinimumNumberShouldMatchWithInt:(jint)min {
  OrgApacheLuceneSearchBooleanQuery_ensureMutableWithNSString_(self, @"setMinimumNumberShouldMatch");
  self->minimumNumberShouldMatch_ = min;
}

- (void)addWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
withOrgApacheLuceneSearchBooleanClause_Occur:(OrgApacheLuceneSearchBooleanClause_Occur *)occur {
  [self addWithOrgApacheLuceneSearchBooleanClause:create_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_Occur_(query, occur)];
}

- (void)addWithOrgApacheLuceneSearchBooleanClause:(OrgApacheLuceneSearchBooleanClause *)clause {
  OrgApacheLuceneSearchBooleanQuery_ensureMutableWithNSString_(self, @"add");
  OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_withNSString_(clause, @"BooleanClause must not be null");
  if ([((id<JavaUtilList>) nil_chk(clauses_)) size] >= OrgApacheLuceneSearchBooleanQuery_maxClauseCount) {
    @throw create_OrgApacheLuceneSearchBooleanQuery_TooManyClauses_init();
  }
  [((id<JavaUtilList>) nil_chk(clauses_)) addWithId:clause];
}

- (void)forEachWithJavaUtilFunctionConsumer:(id<JavaUtilFunctionConsumer>)arg0 {
  JavaLangIterable_forEachWithJavaUtilFunctionConsumer_(self, arg0);
}

- (id<JavaUtilSpliterator>)spliterator {
  return JavaLangIterable_spliterator(self);
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf);
}

- (void)dealloc {
  RELEASE_(clauses_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "I", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilList;", 0x1, -1, -1, -1, 3, -1, -1 },
    { NULL, "LJavaUtilIterator;", 0x11, -1, -1, -1, 4, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchBooleanQuery;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchWeight;", 0x1, 5, 6, 7, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 8, 9, 7, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 12, 13, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 14, -1, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneSearchBooleanClause;", 0x1, -1, -1, -1, -1, 15, -1 },
    { NULL, "LOrgApacheLuceneSearchBooleanQuery;", 0x1, 16, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, 17, -1 },
    { NULL, NULL, 0x1, -1, 18, -1, -1, 19, -1 },
    { NULL, "V", 0x2, 20, 11, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 21, 1, -1, -1, 22, -1 },
    { NULL, "V", 0x1, 23, 24, -1, -1, 25, -1 },
    { NULL, "V", 0x1, 23, 26, -1, -1, 27, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(getMaxClauseCount);
  methods[1].selector = @selector(setMaxClauseCountWithInt:);
  methods[2].selector = @selector(initWithBoolean:withInt:withOrgApacheLuceneSearchBooleanClauseArray:);
  methods[3].selector = @selector(isCoordDisabled);
  methods[4].selector = @selector(getMinimumNumberShouldMatch);
  methods[5].selector = @selector(clauses);
  methods[6].selector = @selector(iterator);
  methods[7].selector = @selector(rewriteNoScoring);
  methods[8].selector = @selector(createWeightWithOrgApacheLuceneSearchIndexSearcher:withBoolean:);
  methods[9].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:);
  methods[10].selector = @selector(toStringWithNSString:);
  methods[11].selector = @selector(isEqual:);
  methods[12].selector = @selector(hash);
  methods[13].selector = @selector(getClauses);
  methods[14].selector = @selector(java_clone);
  methods[15].selector = @selector(init);
  methods[16].selector = @selector(initWithBoolean:);
  methods[17].selector = @selector(ensureMutableWithNSString:);
  methods[18].selector = @selector(setMinimumNumberShouldMatchWithInt:);
  methods[19].selector = @selector(addWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchBooleanClause_Occur:);
  methods[20].selector = @selector(addWithOrgApacheLuceneSearchBooleanClause:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "maxClauseCount", "I", .constantValue.asLong = 0, 0xa, -1, 28, -1, -1 },
    { "mutable__", "Z", .constantValue.asLong = 0, 0x12, 29, -1, -1, -1 },
    { "disableCoord_", "Z", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "minimumNumberShouldMatch_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "clauses_", "LJavaUtilList;", .constantValue.asLong = 0, 0x2, -1, -1, 30, -1 },
  };
  static const void *ptrTable[] = { "setMaxClauseCount", "I", "ZI[LOrgApacheLuceneSearchBooleanClause;", "()Ljava/util/List<Lorg/apache/lucene/search/BooleanClause;>;", "()Ljava/util/Iterator<Lorg/apache/lucene/search/BooleanClause;>;", "createWeight", "LOrgApacheLuceneSearchIndexSearcher;Z", "LJavaIoIOException;", "rewrite", "LOrgApacheLuceneIndexIndexReader;", "toString", "LNSString;", "equals", "LNSObject;", "hashCode", (void *)&OrgApacheLuceneSearchBooleanQuery__Annotations$0, "clone", (void *)&OrgApacheLuceneSearchBooleanQuery__Annotations$1, "Z", (void *)&OrgApacheLuceneSearchBooleanQuery__Annotations$2, "ensureMutable", "setMinimumNumberShouldMatch", (void *)&OrgApacheLuceneSearchBooleanQuery__Annotations$3, "add", "LOrgApacheLuceneSearchQuery;LOrgApacheLuceneSearchBooleanClause_Occur;", (void *)&OrgApacheLuceneSearchBooleanQuery__Annotations$4, "LOrgApacheLuceneSearchBooleanClause;", (void *)&OrgApacheLuceneSearchBooleanQuery__Annotations$5, &OrgApacheLuceneSearchBooleanQuery_maxClauseCount, "mutable", "Ljava/util/List<Lorg/apache/lucene/search/BooleanClause;>;", "LOrgApacheLuceneSearchBooleanQuery_TooManyClauses;LOrgApacheLuceneSearchBooleanQuery_Builder;", "Lorg/apache/lucene/search/Query;Ljava/lang/Iterable<Lorg/apache/lucene/search/BooleanClause;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBooleanQuery = { "BooleanQuery", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 21, 5, -1, 31, -1, 32, -1 };
  return &_OrgApacheLuceneSearchBooleanQuery;
}

@end

jint OrgApacheLuceneSearchBooleanQuery_getMaxClauseCount() {
  OrgApacheLuceneSearchBooleanQuery_initialize();
  return OrgApacheLuceneSearchBooleanQuery_maxClauseCount;
}

void OrgApacheLuceneSearchBooleanQuery_setMaxClauseCountWithInt_(jint maxClauseCount) {
  OrgApacheLuceneSearchBooleanQuery_initialize();
  if (maxClauseCount < 1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"maxClauseCount must be >= 1");
  }
  OrgApacheLuceneSearchBooleanQuery_maxClauseCount = maxClauseCount;
}

void OrgApacheLuceneSearchBooleanQuery_initWithBoolean_withInt_withOrgApacheLuceneSearchBooleanClauseArray_(OrgApacheLuceneSearchBooleanQuery *self, jboolean disableCoord, jint minimumNumberShouldMatch, IOSObjectArray *clauses) {
  OrgApacheLuceneSearchQuery_init(self);
  self->disableCoord_ = disableCoord;
  self->minimumNumberShouldMatch_ = minimumNumberShouldMatch;
  JreStrongAssign(&self->clauses_, JavaUtilCollections_unmodifiableListWithJavaUtilList_(JavaUtilArrays_asListWithNSObjectArray_(clauses)));
  self->mutable__ = false;
}

OrgApacheLuceneSearchBooleanQuery *new_OrgApacheLuceneSearchBooleanQuery_initWithBoolean_withInt_withOrgApacheLuceneSearchBooleanClauseArray_(jboolean disableCoord, jint minimumNumberShouldMatch, IOSObjectArray *clauses) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchBooleanQuery, initWithBoolean_withInt_withOrgApacheLuceneSearchBooleanClauseArray_, disableCoord, minimumNumberShouldMatch, clauses)
}

OrgApacheLuceneSearchBooleanQuery *create_OrgApacheLuceneSearchBooleanQuery_initWithBoolean_withInt_withOrgApacheLuceneSearchBooleanClauseArray_(jboolean disableCoord, jint minimumNumberShouldMatch, IOSObjectArray *clauses) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchBooleanQuery, initWithBoolean_withInt_withOrgApacheLuceneSearchBooleanClauseArray_, disableCoord, minimumNumberShouldMatch, clauses)
}

OrgApacheLuceneSearchBooleanQuery *OrgApacheLuceneSearchBooleanQuery_rewriteNoScoring(OrgApacheLuceneSearchBooleanQuery *self) {
  OrgApacheLuceneSearchBooleanQuery_Builder *newQuery = create_OrgApacheLuceneSearchBooleanQuery_Builder_init();
  [newQuery setMinimumNumberShouldMatchWithInt:[self getMinimumNumberShouldMatch]];
  for (OrgApacheLuceneSearchBooleanClause * __strong clause in nil_chk(self->clauses_)) {
    if ([((OrgApacheLuceneSearchBooleanClause *) nil_chk(clause)) getOccur] == JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, MUST)) {
      [newQuery addWithOrgApacheLuceneSearchQuery:[clause getQuery] withOrgApacheLuceneSearchBooleanClause_Occur:JreLoadEnum(OrgApacheLuceneSearchBooleanClause_Occur, FILTER)];
    }
    else {
      [newQuery addWithOrgApacheLuceneSearchBooleanClause:clause];
    }
  }
  return [newQuery build];
}

void OrgApacheLuceneSearchBooleanQuery_init(OrgApacheLuceneSearchBooleanQuery *self) {
  OrgApacheLuceneSearchBooleanQuery_initWithBoolean_(self, false);
}

OrgApacheLuceneSearchBooleanQuery *new_OrgApacheLuceneSearchBooleanQuery_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchBooleanQuery, init)
}

OrgApacheLuceneSearchBooleanQuery *create_OrgApacheLuceneSearchBooleanQuery_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchBooleanQuery, init)
}

void OrgApacheLuceneSearchBooleanQuery_initWithBoolean_(OrgApacheLuceneSearchBooleanQuery *self, jboolean disableCoord) {
  OrgApacheLuceneSearchQuery_init(self);
  JreStrongAssignAndConsume(&self->clauses_, new_JavaUtilArrayList_init());
  self->disableCoord_ = disableCoord;
  self->minimumNumberShouldMatch_ = 0;
  self->mutable__ = true;
}

OrgApacheLuceneSearchBooleanQuery *new_OrgApacheLuceneSearchBooleanQuery_initWithBoolean_(jboolean disableCoord) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchBooleanQuery, initWithBoolean_, disableCoord)
}

OrgApacheLuceneSearchBooleanQuery *create_OrgApacheLuceneSearchBooleanQuery_initWithBoolean_(jboolean disableCoord) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchBooleanQuery, initWithBoolean_, disableCoord)
}

void OrgApacheLuceneSearchBooleanQuery_ensureMutableWithNSString_(OrgApacheLuceneSearchBooleanQuery *self, NSString *method) {
  if (self->mutable__ == false) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$$", @"This BooleanQuery has been created with the new BooleanQuery.Builder API. It must not be modified afterwards. The ", method, @" method only exists for backward compatibility"));
  }
}

IOSObjectArray *OrgApacheLuceneSearchBooleanQuery__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchBooleanQuery__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchBooleanQuery__Annotations$2() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchBooleanQuery__Annotations$3() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchBooleanQuery__Annotations$4() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgApacheLuceneSearchBooleanQuery__Annotations$5() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBooleanQuery)

@implementation OrgApacheLuceneSearchBooleanQuery_TooManyClauses

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchBooleanQuery_TooManyClauses_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchBooleanQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBooleanQuery_TooManyClauses = { "TooManyClauses", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x9, 1, 0, 0, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchBooleanQuery_TooManyClauses;
}

@end

void OrgApacheLuceneSearchBooleanQuery_TooManyClauses_init(OrgApacheLuceneSearchBooleanQuery_TooManyClauses *self) {
  JavaLangRuntimeException_initWithNSString_(self, JreStrcat("$I", @"maxClauseCount is set to ", JreLoadStatic(OrgApacheLuceneSearchBooleanQuery, maxClauseCount)));
}

OrgApacheLuceneSearchBooleanQuery_TooManyClauses *new_OrgApacheLuceneSearchBooleanQuery_TooManyClauses_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchBooleanQuery_TooManyClauses, init)
}

OrgApacheLuceneSearchBooleanQuery_TooManyClauses *create_OrgApacheLuceneSearchBooleanQuery_TooManyClauses_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchBooleanQuery_TooManyClauses, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBooleanQuery_TooManyClauses)

@implementation OrgApacheLuceneSearchBooleanQuery_Builder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchBooleanQuery_Builder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchBooleanQuery_Builder *)setDisableCoordWithBoolean:(jboolean)disableCoord {
  self->disableCoord_ = disableCoord;
  return self;
}

- (OrgApacheLuceneSearchBooleanQuery_Builder *)setMinimumNumberShouldMatchWithInt:(jint)min {
  self->minimumNumberShouldMatch_ = min;
  return self;
}

- (OrgApacheLuceneSearchBooleanQuery_Builder *)addWithOrgApacheLuceneSearchBooleanClause:(OrgApacheLuceneSearchBooleanClause *)clause {
  [self addWithOrgApacheLuceneSearchQuery:[((OrgApacheLuceneSearchBooleanClause *) nil_chk(clause)) getQuery] withOrgApacheLuceneSearchBooleanClause_Occur:[clause getOccur]];
  return self;
}

- (OrgApacheLuceneSearchBooleanQuery_Builder *)addWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                    withOrgApacheLuceneSearchBooleanClause_Occur:(OrgApacheLuceneSearchBooleanClause_Occur *)occur {
  if ([((id<JavaUtilList>) nil_chk(clauses_)) size] >= JreLoadStatic(OrgApacheLuceneSearchBooleanQuery, maxClauseCount)) {
    @throw create_OrgApacheLuceneSearchBooleanQuery_TooManyClauses_init();
  }
  [clauses_ addWithId:create_OrgApacheLuceneSearchBooleanClause_initWithOrgApacheLuceneSearchQuery_withOrgApacheLuceneSearchBooleanClause_Occur_(query, occur)];
  return self;
}

- (OrgApacheLuceneSearchBooleanQuery *)build {
  return create_OrgApacheLuceneSearchBooleanQuery_initWithBoolean_withInt_withOrgApacheLuceneSearchBooleanClauseArray_(disableCoord_, minimumNumberShouldMatch_, [((id<JavaUtilList>) nil_chk(clauses_)) toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:0 type:OrgApacheLuceneSearchBooleanClause_class_()]]);
}

- (void)dealloc {
  RELEASE_(clauses_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchBooleanQuery_Builder;", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchBooleanQuery_Builder;", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchBooleanQuery_Builder;", 0x1, 4, 5, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchBooleanQuery_Builder;", 0x1, 4, 6, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchBooleanQuery;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setDisableCoordWithBoolean:);
  methods[2].selector = @selector(setMinimumNumberShouldMatchWithInt:);
  methods[3].selector = @selector(addWithOrgApacheLuceneSearchBooleanClause:);
  methods[4].selector = @selector(addWithOrgApacheLuceneSearchQuery:withOrgApacheLuceneSearchBooleanClause_Occur:);
  methods[5].selector = @selector(build);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "disableCoord_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "minimumNumberShouldMatch_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "clauses_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 7, -1 },
  };
  static const void *ptrTable[] = { "setDisableCoord", "Z", "setMinimumNumberShouldMatch", "I", "add", "LOrgApacheLuceneSearchBooleanClause;", "LOrgApacheLuceneSearchQuery;LOrgApacheLuceneSearchBooleanClause_Occur;", "Ljava/util/List<Lorg/apache/lucene/search/BooleanClause;>;", "LOrgApacheLuceneSearchBooleanQuery;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchBooleanQuery_Builder = { "Builder", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x9, 6, 3, 8, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchBooleanQuery_Builder;
}

@end

void OrgApacheLuceneSearchBooleanQuery_Builder_init(OrgApacheLuceneSearchBooleanQuery_Builder *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->clauses_, new_JavaUtilArrayList_init());
}

OrgApacheLuceneSearchBooleanQuery_Builder *new_OrgApacheLuceneSearchBooleanQuery_Builder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchBooleanQuery_Builder, init)
}

OrgApacheLuceneSearchBooleanQuery_Builder *create_OrgApacheLuceneSearchBooleanQuery_Builder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchBooleanQuery_Builder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchBooleanQuery_Builder)
