//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/charfilter/NormalizeCharMap.java
//

#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Character.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/RuntimeException.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "java/util/TreeMap.h"
#include "org/apache/lucene/analysis/charfilter/NormalizeCharMap.h"
#include "org/apache/lucene/util/CharsRef.h"
#include "org/apache/lucene/util/IntsRef.h"
#include "org/apache/lucene/util/IntsRefBuilder.h"
#include "org/apache/lucene/util/fst/Builder.h"
#include "org/apache/lucene/util/fst/CharSequenceOutputs.h"
#include "org/apache/lucene/util/fst/FST.h"
#include "org/apache/lucene/util/fst/Outputs.h"
#include "org/apache/lucene/util/fst/Util.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/charfilter/NormalizeCharMap must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisCharfilterNormalizeCharMap ()

- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)map;

@end

__attribute__((unused)) static void OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *self, OrgApacheLuceneUtilFstFST *map);

__attribute__((unused)) static OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *new_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFST *map) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *create_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFST *map);

@interface OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder () {
 @public
  id<JavaUtilMap> pendingPairs_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder, pendingPairs_, id<JavaUtilMap>)

@implementation OrgApacheLuceneAnalysisCharfilterNormalizeCharMap

- (instancetype)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)map {
  OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(self, map);
  return self;
}

- (void)dealloc {
  RELEASE_(map_);
  RELEASE_(cachedRootArcs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, 1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneUtilFstFST:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "map_", "LOrgApacheLuceneUtilFstFST;", .constantValue.asLong = 0, 0x10, -1, -1, 2, -1 },
    { "cachedRootArcs_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x10, -1, -1, 3, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneUtilFstFST;", "(Lorg/apache/lucene/util/fst/FST<Lorg/apache/lucene/util/CharsRef;>;)V", "Lorg/apache/lucene/util/fst/FST<Lorg/apache/lucene/util/CharsRef;>;", "Ljava/util/Map<Ljava/lang/Character;Lorg/apache/lucene/util/fst/FST$Arc<Lorg/apache/lucene/util/CharsRef;>;>;", "LOrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCharfilterNormalizeCharMap = { "NormalizeCharMap", "org.apache.lucene.analysis.charfilter", ptrTable, methods, fields, 7, 0x1, 1, 2, -1, 4, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap;
}

@end

void OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *self, OrgApacheLuceneUtilFstFST *map) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->cachedRootArcs_, new_JavaUtilHashMap_init());
  JreStrongAssign(&self->map_, map);
  if (map != nil) {
    @try {
      OrgApacheLuceneUtilFstFST_Arc *scratchArc = create_OrgApacheLuceneUtilFstFST_Arc_init();
      OrgApacheLuceneUtilFstFST_BytesReader *fstReader = [map getBytesReader];
      [map getFirstArcWithOrgApacheLuceneUtilFstFST_Arc:scratchArc];
      if (OrgApacheLuceneUtilFstFST_targetHasArcsWithOrgApacheLuceneUtilFstFST_Arc_(scratchArc)) {
        [map readFirstRealTargetArcWithLong:scratchArc->target_ withOrgApacheLuceneUtilFstFST_Arc:scratchArc withOrgApacheLuceneUtilFstFST_BytesReader:fstReader];
        while (true) {
          JreAssert(scratchArc->label_ != OrgApacheLuceneUtilFstFST_END_LABEL, @"org/apache/lucene/analysis/charfilter/NormalizeCharMap.java:58 condition failed: assert scratchArc.label != FST.END_LABEL;");
          [self->cachedRootArcs_ putWithId:JavaLangCharacter_valueOfWithChar_((jchar) scratchArc->label_) withId:[create_OrgApacheLuceneUtilFstFST_Arc_init() copyFromWithOrgApacheLuceneUtilFstFST_Arc:scratchArc]];
          if ([scratchArc isLast]) {
            break;
          }
          [map readNextRealArcWithOrgApacheLuceneUtilFstFST_Arc:scratchArc withOrgApacheLuceneUtilFstFST_BytesReader:fstReader];
        }
      }
    }
    @catch (JavaIoIOException *ioe) {
      @throw create_JavaLangRuntimeException_initWithJavaLangThrowable_(ioe);
    }
  }
}

OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *new_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFST *map) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap, initWithOrgApacheLuceneUtilFstFST_, map)
}

OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *create_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFST *map) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap, initWithOrgApacheLuceneUtilFstFST_, map)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap)

@implementation OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)addWithNSString:(NSString *)match
           withNSString:(NSString *)replacement {
  if ([((NSString *) nil_chk(match)) java_length] == 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"cannot match the empty string");
  }
  if ([((id<JavaUtilMap>) nil_chk(pendingPairs_)) containsKeyWithId:match]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$$$", @"match \"", match, @"\" was already added"));
  }
  [pendingPairs_ putWithId:match withId:replacement];
}

- (OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *)build {
  OrgApacheLuceneUtilFstFST *map;
  @try {
    OrgApacheLuceneUtilFstOutputs *outputs = OrgApacheLuceneUtilFstCharSequenceOutputs_getSingleton();
    OrgApacheLuceneUtilFstBuilder *builder = create_OrgApacheLuceneUtilFstBuilder_initWithOrgApacheLuceneUtilFstFST_INPUT_TYPE_withOrgApacheLuceneUtilFstOutputs_(JreLoadEnum(OrgApacheLuceneUtilFstFST_INPUT_TYPE, BYTE2), outputs);
    OrgApacheLuceneUtilIntsRefBuilder *scratch = create_OrgApacheLuceneUtilIntsRefBuilder_init();
    for (id<JavaUtilMap_Entry> __strong ent in nil_chk([((id<JavaUtilMap>) nil_chk(pendingPairs_)) entrySet])) {
      [builder addWithOrgApacheLuceneUtilIntsRef:OrgApacheLuceneUtilFstUtil_toUTF16WithJavaLangCharSequence_withOrgApacheLuceneUtilIntsRefBuilder_([((id<JavaUtilMap_Entry>) nil_chk(ent)) getKey], scratch) withId:create_OrgApacheLuceneUtilCharsRef_initWithNSString_([ent getValue])];
    }
    map = [builder finish];
    [pendingPairs_ clear];
  }
  @catch (JavaIoIOException *ioe) {
    @throw create_JavaLangRuntimeException_initWithJavaLangThrowable_(ioe);
  }
  return create_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_initWithOrgApacheLuceneUtilFstFST_(map);
}

- (void)dealloc {
  RELEASE_(pendingPairs_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisCharfilterNormalizeCharMap;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addWithNSString:withNSString:);
  methods[2].selector = @selector(build);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "pendingPairs_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 2, -1 },
  };
  static const void *ptrTable[] = { "add", "LNSString;LNSString;", "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;", "LOrgApacheLuceneAnalysisCharfilterNormalizeCharMap;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder = { "Builder", "org.apache.lucene.analysis.charfilter", ptrTable, methods, fields, 7, 0x9, 3, 1, 3, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder;
}

@end

void OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder_init(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->pendingPairs_, new_JavaUtilTreeMap_init());
}

OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder *new_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder, init)
}

OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder *create_OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder)
