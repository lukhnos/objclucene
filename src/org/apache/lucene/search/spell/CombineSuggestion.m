//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/CombineSuggestion.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/search/spell/CombineSuggestion.h"
#include "org/apache/lucene/search/spell/SuggestWord.h"

@implementation OrgApacheLuceneSearchSpellCombineSuggestion

- (instancetype)initWithOrgApacheLuceneSearchSpellSuggestWord:(OrgApacheLuceneSearchSpellSuggestWord *)suggestion
                                                 withIntArray:(IOSIntArray *)originalTermIndexes {
  OrgApacheLuceneSearchSpellCombineSuggestion_initWithOrgApacheLuceneSearchSpellSuggestWord_withIntArray_(self, suggestion, originalTermIndexes);
  return self;
}

- (void)dealloc {
  RELEASE_(originalTermIndexes_);
  RELEASE_(suggestion_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchSpellSuggestWord:withIntArray:", "CombineSuggestion", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "originalTermIndexes_", NULL, 0x11, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "suggestion_", NULL, 0x11, "Lorg.apache.lucene.search.spell.SuggestWord;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSpellCombineSuggestion = { 2, "CombineSuggestion", "org.apache.lucene.search.spell", NULL, 0x1, 1, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSpellCombineSuggestion;
}

@end

void OrgApacheLuceneSearchSpellCombineSuggestion_initWithOrgApacheLuceneSearchSpellSuggestWord_withIntArray_(OrgApacheLuceneSearchSpellCombineSuggestion *self, OrgApacheLuceneSearchSpellSuggestWord *suggestion, IOSIntArray *originalTermIndexes) {
  NSObject_init(self);
  JreStrongAssign(&self->suggestion_, suggestion);
  JreStrongAssign(&self->originalTermIndexes_, originalTermIndexes);
}

OrgApacheLuceneSearchSpellCombineSuggestion *new_OrgApacheLuceneSearchSpellCombineSuggestion_initWithOrgApacheLuceneSearchSpellSuggestWord_withIntArray_(OrgApacheLuceneSearchSpellSuggestWord *suggestion, IOSIntArray *originalTermIndexes) {
  OrgApacheLuceneSearchSpellCombineSuggestion *self = [OrgApacheLuceneSearchSpellCombineSuggestion alloc];
  OrgApacheLuceneSearchSpellCombineSuggestion_initWithOrgApacheLuceneSearchSpellSuggestWord_withIntArray_(self, suggestion, originalTermIndexes);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSpellCombineSuggestion)
