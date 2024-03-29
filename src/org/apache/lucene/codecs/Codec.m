//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/codecs/Codec.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/ClassLoader.h"
#include "java/lang/IllegalStateException.h"
#include "java/util/Set.h"
#include "org/apache/lucene/codecs/Codec.h"
#include "org/apache/lucene/codecs/CompoundFormat.h"
#include "org/apache/lucene/codecs/DocValuesFormat.h"
#include "org/apache/lucene/codecs/FieldInfosFormat.h"
#include "org/apache/lucene/codecs/LiveDocsFormat.h"
#include "org/apache/lucene/codecs/NormsFormat.h"
#include "org/apache/lucene/codecs/PostingsFormat.h"
#include "org/apache/lucene/codecs/SegmentInfoFormat.h"
#include "org/apache/lucene/codecs/StoredFieldsFormat.h"
#include "org/apache/lucene/codecs/TermVectorsFormat.h"
#include "org/apache/lucene/util/NamedSPILoader.h"
#include "org/lukhnos/portmobile/util/Objects.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/codecs/Codec must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneCodecsCodec () {
 @public
  NSString *name_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneCodecsCodec, name_, NSString *)

/*!
 @brief This static holder class prevents classloading deadlock by delaying
  init of default codecs and available codecs until needed.
 */
@interface OrgApacheLuceneCodecsCodec_Holder : NSObject

- (instancetype)init;

+ (OrgApacheLuceneUtilNamedSPILoader *)getLoader;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneCodecsCodec_Holder)

inline OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsCodec_Holder_get_LOADER(void);
static OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsCodec_Holder_LOADER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneCodecsCodec_Holder, LOADER, OrgApacheLuceneUtilNamedSPILoader *)

inline OrgApacheLuceneCodecsCodec *OrgApacheLuceneCodecsCodec_Holder_get_defaultCodec(void);
inline OrgApacheLuceneCodecsCodec *OrgApacheLuceneCodecsCodec_Holder_set_defaultCodec(OrgApacheLuceneCodecsCodec *value);
static OrgApacheLuceneCodecsCodec *OrgApacheLuceneCodecsCodec_Holder_defaultCodec;
J2OBJC_STATIC_FIELD_OBJ(OrgApacheLuceneCodecsCodec_Holder, defaultCodec, OrgApacheLuceneCodecsCodec *)

__attribute__((unused)) static void OrgApacheLuceneCodecsCodec_Holder_init(OrgApacheLuceneCodecsCodec_Holder *self);

__attribute__((unused)) static OrgApacheLuceneCodecsCodec_Holder *new_OrgApacheLuceneCodecsCodec_Holder_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneCodecsCodec_Holder *create_OrgApacheLuceneCodecsCodec_Holder_init(void);

__attribute__((unused)) static OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsCodec_Holder_getLoader(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsCodec_Holder)

@implementation OrgApacheLuceneCodecsCodec

- (instancetype)initWithNSString:(NSString *)name {
  OrgApacheLuceneCodecsCodec_initWithNSString_(self, name);
  return self;
}

- (NSString *)getName {
  return name_;
}

- (OrgApacheLuceneCodecsPostingsFormat *)postingsFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsDocValuesFormat *)docValuesFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsStoredFieldsFormat *)storedFieldsFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsTermVectorsFormat *)termVectorsFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsFieldInfosFormat *)fieldInfosFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsSegmentInfoFormat *)segmentInfoFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsNormsFormat *)normsFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsLiveDocsFormat *)liveDocsFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsCompoundFormat *)compoundFormat {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (OrgApacheLuceneCodecsCodec *)forNameWithNSString:(NSString *)name {
  return OrgApacheLuceneCodecsCodec_forNameWithNSString_(name);
}

+ (id<JavaUtilSet>)availableCodecs {
  return OrgApacheLuceneCodecsCodec_availableCodecs();
}

+ (void)reloadCodecsWithJavaLangClassLoader:(JavaLangClassLoader *)classloader {
  OrgApacheLuceneCodecsCodec_reloadCodecsWithJavaLangClassLoader_(classloader);
}

+ (OrgApacheLuceneCodecsCodec *)getDefault {
  return OrgApacheLuceneCodecsCodec_getDefault();
}

+ (void)setDefaultWithOrgApacheLuceneCodecsCodec:(OrgApacheLuceneCodecsCodec *)codec {
  OrgApacheLuceneCodecsCodec_setDefaultWithOrgApacheLuceneCodecsCodec_(codec);
}

- (NSString *)description {
  return name_;
}

- (void)dealloc {
  RELEASE_(name_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x11, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsPostingsFormat;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsDocValuesFormat;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsStoredFieldsFormat;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsTermVectorsFormat;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsFieldInfosFormat;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsSegmentInfoFormat;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsNormsFormat;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsLiveDocsFormat;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsCompoundFormat;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsCodec;", 0x9, 1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaUtilSet;", 0x9, -1, -1, -1, 2, -1, -1 },
    { NULL, "V", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneCodecsCodec;", 0x9, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 5, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 7, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(getName);
  methods[2].selector = @selector(postingsFormat);
  methods[3].selector = @selector(docValuesFormat);
  methods[4].selector = @selector(storedFieldsFormat);
  methods[5].selector = @selector(termVectorsFormat);
  methods[6].selector = @selector(fieldInfosFormat);
  methods[7].selector = @selector(segmentInfoFormat);
  methods[8].selector = @selector(normsFormat);
  methods[9].selector = @selector(liveDocsFormat);
  methods[10].selector = @selector(compoundFormat);
  methods[11].selector = @selector(forNameWithNSString:);
  methods[12].selector = @selector(availableCodecs);
  methods[13].selector = @selector(reloadCodecsWithJavaLangClassLoader:);
  methods[14].selector = @selector(getDefault);
  methods[15].selector = @selector(setDefaultWithOrgApacheLuceneCodecsCodec:);
  methods[16].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;", "forName", "()Ljava/util/Set<Ljava/lang/String;>;", "reloadCodecs", "LJavaLangClassLoader;", "setDefault", "LOrgApacheLuceneCodecsCodec;", "toString", "LOrgApacheLuceneCodecsCodec_Holder;" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCodec = { "Codec", "org.apache.lucene.codecs", ptrTable, methods, fields, 7, 0x401, 17, 1, -1, 8, -1, -1, -1 };
  return &_OrgApacheLuceneCodecsCodec;
}

@end

void OrgApacheLuceneCodecsCodec_initWithNSString_(OrgApacheLuceneCodecsCodec *self, NSString *name) {
  NSObject_init(self);
  OrgApacheLuceneUtilNamedSPILoader_checkServiceNameWithNSString_(name);
  JreStrongAssign(&self->name_, name);
}

OrgApacheLuceneCodecsCodec *OrgApacheLuceneCodecsCodec_forNameWithNSString_(NSString *name) {
  OrgApacheLuceneCodecsCodec_initialize();
  return ((OrgApacheLuceneCodecsCodec *) [((OrgApacheLuceneUtilNamedSPILoader *) nil_chk(OrgApacheLuceneCodecsCodec_Holder_getLoader())) lookupWithNSString:name]);
}

id<JavaUtilSet> OrgApacheLuceneCodecsCodec_availableCodecs() {
  OrgApacheLuceneCodecsCodec_initialize();
  return [((OrgApacheLuceneUtilNamedSPILoader *) nil_chk(OrgApacheLuceneCodecsCodec_Holder_getLoader())) availableServices];
}

void OrgApacheLuceneCodecsCodec_reloadCodecsWithJavaLangClassLoader_(JavaLangClassLoader *classloader) {
  OrgApacheLuceneCodecsCodec_initialize();
  [((OrgApacheLuceneUtilNamedSPILoader *) nil_chk(OrgApacheLuceneCodecsCodec_Holder_getLoader())) reloadWithJavaLangClassLoader:classloader];
}

OrgApacheLuceneCodecsCodec *OrgApacheLuceneCodecsCodec_getDefault() {
  OrgApacheLuceneCodecsCodec_initialize();
  if (JreLoadStatic(OrgApacheLuceneCodecsCodec_Holder, defaultCodec) == nil) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"You tried to lookup the default Codec before all Codecs could be initialized. This likely happens if you try to get it from a Codec's ctor.");
  }
  return JreLoadStatic(OrgApacheLuceneCodecsCodec_Holder, defaultCodec);
}

void OrgApacheLuceneCodecsCodec_setDefaultWithOrgApacheLuceneCodecsCodec_(OrgApacheLuceneCodecsCodec *codec) {
  OrgApacheLuceneCodecsCodec_initialize();
  JreStrongAssign(JreLoadStaticRef(OrgApacheLuceneCodecsCodec_Holder, defaultCodec), OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(codec));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCodec)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneCodecsCodec_Holder)

@implementation OrgApacheLuceneCodecsCodec_Holder

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneCodecsCodec_Holder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (OrgApacheLuceneUtilNamedSPILoader *)getLoader {
  return OrgApacheLuceneCodecsCodec_Holder_getLoader();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilNamedSPILoader;", 0x8, -1, -1, -1, 0, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getLoader);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "LOADER", "LOrgApacheLuceneUtilNamedSPILoader;", .constantValue.asLong = 0, 0x1a, -1, 1, 2, -1 },
    { "defaultCodec", "LOrgApacheLuceneCodecsCodec;", .constantValue.asLong = 0, 0x8, -1, 3, -1, -1 },
  };
  static const void *ptrTable[] = { "()Lorg/apache/lucene/util/NamedSPILoader<Lorg/apache/lucene/codecs/Codec;>;", &OrgApacheLuceneCodecsCodec_Holder_LOADER, "Lorg/apache/lucene/util/NamedSPILoader<Lorg/apache/lucene/codecs/Codec;>;", &OrgApacheLuceneCodecsCodec_Holder_defaultCodec, "LOrgApacheLuceneCodecsCodec;" };
  static const J2ObjcClassInfo _OrgApacheLuceneCodecsCodec_Holder = { "Holder", "org.apache.lucene.codecs", ptrTable, methods, fields, 7, 0x1a, 2, 2, 4, -1, -1, -1, -1 };
  return &_OrgApacheLuceneCodecsCodec_Holder;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneCodecsCodec_Holder class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneCodecsCodec_Holder_LOADER, new_OrgApacheLuceneUtilNamedSPILoader_initWithIOSClass_(OrgApacheLuceneCodecsCodec_class_()));
    JreStrongAssign(&OrgApacheLuceneCodecsCodec_Holder_defaultCodec, [OrgApacheLuceneCodecsCodec_Holder_LOADER lookupWithNSString:@"Lucene53"]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneCodecsCodec_Holder)
  }
}

@end

void OrgApacheLuceneCodecsCodec_Holder_init(OrgApacheLuceneCodecsCodec_Holder *self) {
  NSObject_init(self);
}

OrgApacheLuceneCodecsCodec_Holder *new_OrgApacheLuceneCodecsCodec_Holder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneCodecsCodec_Holder, init)
}

OrgApacheLuceneCodecsCodec_Holder *create_OrgApacheLuceneCodecsCodec_Holder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneCodecsCodec_Holder, init)
}

OrgApacheLuceneUtilNamedSPILoader *OrgApacheLuceneCodecsCodec_Holder_getLoader() {
  OrgApacheLuceneCodecsCodec_Holder_initialize();
  if (OrgApacheLuceneCodecsCodec_Holder_LOADER == nil) {
    @throw create_JavaLangIllegalStateException_initWithNSString_(@"You tried to lookup a Codec by name before all Codecs could be initialized. This likely happens if you call Codec#forName from a Codec's ctor.");
  }
  return OrgApacheLuceneCodecsCodec_Holder_LOADER;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneCodecsCodec_Holder)
