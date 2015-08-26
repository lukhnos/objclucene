//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/hunspell/Dictionary.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisHunspellDictionary_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisHunspellDictionary_RESTRICT
#define OrgApacheLuceneAnalysisHunspellDictionary_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisHunspellDictionary_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisHunspellDictionary_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisHunspellDictionary_) && (OrgApacheLuceneAnalysisHunspellDictionary_INCLUDE_ALL || OrgApacheLuceneAnalysisHunspellDictionary_INCLUDE)
#define _OrgApacheLuceneAnalysisHunspellDictionary_

@class IOSByteArray;
@class IOSCharArray;
@class IOSIntArray;
@class JavaIoInputStream;
@class JavaLangStringBuilder;
@class JavaUtilArrayList;
@class JavaUtilRegexPattern;
@class OrgApacheLuceneAnalysisHunspellDictionary_FlagParsingStrategy;
@class OrgApacheLuceneUtilBytesRef;
@class OrgApacheLuceneUtilBytesRefBuilder;
@class OrgApacheLuceneUtilBytesRefHash;
@class OrgApacheLuceneUtilFstFST;
@class OrgApacheLuceneUtilIntsRef;
@protocol JavaLangCharSequence;
@protocol JavaUtilList;
@protocol JavaUtilMap;

#define OrgApacheLuceneAnalysisHunspellDictionary_FLAG_SEPARATOR 0x001f
#define OrgApacheLuceneAnalysisHunspellDictionary_MORPH_SEPARATOR 0x001e

@interface OrgApacheLuceneAnalysisHunspellDictionary : NSObject {
 @public
  OrgApacheLuceneUtilFstFST *prefixes_;
  OrgApacheLuceneUtilFstFST *suffixes_;
  JavaUtilArrayList *patterns_;
  OrgApacheLuceneUtilFstFST *words_;
  OrgApacheLuceneUtilBytesRefHash *flagLookup_;
  IOSCharArray *stripData_;
  IOSIntArray *stripOffsets_;
  IOSByteArray *affixData_;
  jboolean hasStemExceptions_;
  jboolean ignoreCase_;
  jboolean complexPrefixes_;
  jboolean twoStageAffix_;
  jint circumfix_;
  jint keepcase_;
  jint needaffix_;
  jint onlyincompound_;
  OrgApacheLuceneUtilFstFST *iconv_;
  OrgApacheLuceneUtilFstFST *oconv_;
  jboolean needsInputCleaning_;
  jboolean needsOutputCleaning_;
  jboolean fullStrip_;
  NSString *language_;
  jboolean alternateCasing_;
}

#pragma mark Public

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)affix
                    withJavaIoInputStream:(JavaIoInputStream *)dictionary;

- (instancetype)initWithJavaIoInputStream:(JavaIoInputStream *)affix
                         withJavaUtilList:(id<JavaUtilList>)dictionaries
                              withBoolean:(jboolean)ignoreCase;

#pragma mark Package-Private

+ (void)applyMappingsWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst
                         withJavaLangStringBuilder:(JavaLangStringBuilder *)sb;

- (jchar)caseFoldWithChar:(jchar)c;

- (id<JavaLangCharSequence>)cleanInputWithJavaLangCharSequence:(id<JavaLangCharSequence>)input
                                     withJavaLangStringBuilder:(JavaLangStringBuilder *)reuse;

+ (IOSCharArray *)decodeFlagsWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)b;

+ (void)encodeFlagsWithOrgApacheLuceneUtilBytesRefBuilder:(OrgApacheLuceneUtilBytesRefBuilder *)b
                                            withCharArray:(IOSCharArray *)flags;

+ (NSString *)escapeDashWithNSString:(NSString *)re;

+ (NSString *)getDictionaryEncodingWithJavaIoInputStream:(JavaIoInputStream *)affix;

+ (OrgApacheLuceneAnalysisHunspellDictionary_FlagParsingStrategy *)getFlagParsingStrategyWithNSString:(NSString *)flagLine;

- (NSString *)getStemExceptionWithInt:(jint)id_;

+ (jboolean)hasFlagWithCharArray:(IOSCharArray *)flags
                        withChar:(jchar)flag;

+ (jint)indexOfSpaceOrTabWithNSString:(NSString *)text
                              withInt:(jint)start;

- (OrgApacheLuceneUtilIntsRef *)lookupWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst
                                                      withCharArray:(IOSCharArray *)word
                                                            withInt:(jint)offset
                                                            withInt:(jint)length;

- (OrgApacheLuceneUtilIntsRef *)lookupPrefixWithCharArray:(IOSCharArray *)word
                                                  withInt:(jint)offset
                                                  withInt:(jint)length;

- (OrgApacheLuceneUtilIntsRef *)lookupSuffixWithCharArray:(IOSCharArray *)word
                                                  withInt:(jint)offset
                                                  withInt:(jint)length;

- (OrgApacheLuceneUtilIntsRef *)lookupWordWithCharArray:(IOSCharArray *)word
                                                withInt:(jint)offset
                                                withInt:(jint)length;

+ (jint)morphBoundaryWithNSString:(NSString *)line;

- (NSString *)unescapeEntryWithNSString:(NSString *)entry_;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisHunspellDictionary)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellDictionary, prefixes_, OrgApacheLuceneUtilFstFST *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellDictionary, suffixes_, OrgApacheLuceneUtilFstFST *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellDictionary, patterns_, JavaUtilArrayList *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellDictionary, words_, OrgApacheLuceneUtilFstFST *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellDictionary, flagLookup_, OrgApacheLuceneUtilBytesRefHash *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellDictionary, stripData_, IOSCharArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellDictionary, stripOffsets_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellDictionary, affixData_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellDictionary, iconv_, OrgApacheLuceneUtilFstFST *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellDictionary, oconv_, OrgApacheLuceneUtilFstFST *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisHunspellDictionary, language_, NSString *)

FOUNDATION_EXPORT IOSCharArray *OrgApacheLuceneAnalysisHunspellDictionary_NOFLAGS_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisHunspellDictionary, NOFLAGS_, IOSCharArray *)

FOUNDATION_EXPORT JavaUtilRegexPattern *OrgApacheLuceneAnalysisHunspellDictionary_ENCODING_PATTERN_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisHunspellDictionary, ENCODING_PATTERN_, JavaUtilRegexPattern *)

FOUNDATION_EXPORT id<JavaUtilMap> OrgApacheLuceneAnalysisHunspellDictionary_CHARSET_ALIASES_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisHunspellDictionary, CHARSET_ALIASES_, id<JavaUtilMap>)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHunspellDictionary_initWithJavaIoInputStream_withJavaIoInputStream_(OrgApacheLuceneAnalysisHunspellDictionary *self, JavaIoInputStream *affix, JavaIoInputStream *dictionary);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHunspellDictionary *new_OrgApacheLuceneAnalysisHunspellDictionary_initWithJavaIoInputStream_withJavaIoInputStream_(JavaIoInputStream *affix, JavaIoInputStream *dictionary) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHunspellDictionary_initWithJavaIoInputStream_withJavaUtilList_withBoolean_(OrgApacheLuceneAnalysisHunspellDictionary *self, JavaIoInputStream *affix, id<JavaUtilList> dictionaries, jboolean ignoreCase);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHunspellDictionary *new_OrgApacheLuceneAnalysisHunspellDictionary_initWithJavaIoInputStream_withJavaUtilList_withBoolean_(JavaIoInputStream *affix, id<JavaUtilList> dictionaries, jboolean ignoreCase) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisHunspellDictionary_escapeDashWithNSString_(NSString *re);

FOUNDATION_EXPORT NSString *OrgApacheLuceneAnalysisHunspellDictionary_getDictionaryEncodingWithJavaIoInputStream_(JavaIoInputStream *affix);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisHunspellDictionary_FlagParsingStrategy *OrgApacheLuceneAnalysisHunspellDictionary_getFlagParsingStrategyWithNSString_(NSString *flagLine);

FOUNDATION_EXPORT jint OrgApacheLuceneAnalysisHunspellDictionary_morphBoundaryWithNSString_(NSString *line);

FOUNDATION_EXPORT jint OrgApacheLuceneAnalysisHunspellDictionary_indexOfSpaceOrTabWithNSString_withInt_(NSString *text, jint start);

FOUNDATION_EXPORT IOSCharArray *OrgApacheLuceneAnalysisHunspellDictionary_decodeFlagsWithOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUtilBytesRef *b);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHunspellDictionary_encodeFlagsWithOrgApacheLuceneUtilBytesRefBuilder_withCharArray_(OrgApacheLuceneUtilBytesRefBuilder *b, IOSCharArray *flags);

FOUNDATION_EXPORT jboolean OrgApacheLuceneAnalysisHunspellDictionary_hasFlagWithCharArray_withChar_(IOSCharArray *flags, jchar flag);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHunspellDictionary_applyMappingsWithOrgApacheLuceneUtilFstFST_withJavaLangStringBuilder_(OrgApacheLuceneUtilFstFST *fst, JavaLangStringBuilder *sb);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisHunspellDictionary)

#endif

#if !defined (_OrgApacheLuceneAnalysisHunspellDictionary_FlagParsingStrategy_) && (OrgApacheLuceneAnalysisHunspellDictionary_INCLUDE_ALL || OrgApacheLuceneAnalysisHunspellDictionary_FlagParsingStrategy_INCLUDE)
#define _OrgApacheLuceneAnalysisHunspellDictionary_FlagParsingStrategy_

@class IOSCharArray;

@interface OrgApacheLuceneAnalysisHunspellDictionary_FlagParsingStrategy : NSObject

#pragma mark Package-Private

- (instancetype)init;

- (jchar)parseFlagWithNSString:(NSString *)rawFlag;

- (IOSCharArray *)parseFlagsWithNSString:(NSString *)rawFlags;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisHunspellDictionary_FlagParsingStrategy)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisHunspellDictionary_FlagParsingStrategy_init(OrgApacheLuceneAnalysisHunspellDictionary_FlagParsingStrategy *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisHunspellDictionary_FlagParsingStrategy)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisHunspellDictionary_INCLUDE_ALL")
