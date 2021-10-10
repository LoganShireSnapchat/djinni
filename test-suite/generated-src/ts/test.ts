// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from all.djinni

import { PersistingState } from "../../djinni/vendor/third-party/proto/ts/test2"
import { AddressBook, Person } from "../../djinni/vendor/third-party/proto/ts/test"
import { Outcome } from "@djinni_support/Outcome"

export interface /*record*/ RecordWithEmbeddedProto {
    person: Person;
}

export interface /*record*/ RecordWithEmbeddedCppProto {
    state: PersistingState;
}

export interface ProtoTests {
}
export interface ProtoTests_statics {
    protoToStrings(x: AddressBook): Array<string>;
    stringsToProto(x: Array<string>): AddressBook;
    embeddedProtoToString(x: RecordWithEmbeddedProto): string;
    stringToEmbeddedProto(x: string): RecordWithEmbeddedProto;
    cppProtoToString(x: PersistingState): string;
    stringToCppProto(x: string): PersistingState;
    embeddedCppProtoToString(x: RecordWithEmbeddedCppProto): string;
    stringToEmbeddedCppProto(x: string): RecordWithEmbeddedCppProto;
    protoListToStrings(x: Array<Person>): Array<string>;
    stringsToProtoList(x: Array<string>): Array<Person>;
    optionalProtoToString(x: Person): string;
    stringToOptionalProto(x: string): Person;
    stringToProtoOutcome(x: string): Outcome<Person, number>;
}

export interface /*record*/ NestedOutcome {
    o: Outcome<number, string>;
}

export interface TestOutcome {
}
export interface TestOutcome_statics {
    getSuccessOutcome(): Outcome<string, number>;
    getErrorOutcome(): Outcome<string, number>;
    putSuccessOutcome(x: Outcome<string, number>): string;
    putErrorOutcome(x: Outcome<string, number>): number;
    getNestedSuccessOutcome(): NestedOutcome;
    getNestedErrorOutcome(): NestedOutcome;
    putNestedSuccessOutcome(x: NestedOutcome): number;
    putNestedErrorOutcome(x: NestedOutcome): string;
}

export interface TestDuration {
}
export interface TestDuration_statics {
    hoursString(dt: number): string;
    minutesString(dt: number): string;
    secondsString(dt: number): string;
    millisString(dt: number): string;
    microsString(dt: number): string;
    nanosString(dt: number): string;
    hours(count: number): number;
    minutes(count: number): number;
    seconds(count: number): number;
    millis(count: number): number;
    micros(count: number): number;
    nanos(count: number): number;
    hoursf(count: number): number;
    minutesf(count: number): number;
    secondsf(count: number): number;
    millisf(count: number): number;
    microsf(count: number): number;
    nanosf(count: number): number;
    box(count: bigint): number;
    unbox(dt: number): bigint;
}

export interface /*record*/ RecordWithDurationAndDerivings {
    dt: number;
}

export interface /*record*/ DateRecord {
    createdAt: Date;
}

export interface /*record*/ MapDateRecord {
    datesById: Map<string, Date>;
}

export interface DataRefTest {
    sendData(data: Uint8Array): void;
    retriveAsBin(): Uint8Array;
    sendMutableData(data: Uint8Array): void;
    generateData(): Uint8Array;
    dataFromVec(): Uint8Array;
    dataFromStr(): Uint8Array;
    sendDataView(data: Uint8Array): Uint8Array;
    recvDataView(): Uint8Array;
}
export interface DataRefTest_statics {
    create(): DataRefTest;
}

/** enum for use in constants */
export enum ConstantEnum {
    SOME_VALUE = 0,
    SOME_OTHER_VALUE = 1,
}

/** Record containing enum constant */
export interface /*record*/ ConstantWithEnum {
}
export namespace ConstantWithEnum {
    export const CONST_ENUM = ConstantEnum.SOME_VALUE;
}

/** Interface containing enum constant */
export interface ConstantInterfaceWithEnum {
}
export namespace ConstantInterfaceWithEnum {
    export const CONST_ENUM = ConstantEnum.SOME_VALUE;
}

export enum AccessFlags {
    NOBODY = 0,
    OWNER_READ = 1 << 0,
    OWNER_WRITE = 1 << 1,
    OWNER_EXECUTE = 1 << 2,
    GROUP_READ = 1 << 3,
    GROUP_WRITE = 1 << 4,
    GROUP_EXECUTE = 1 << 5,
    SYSTEM_READ = 1 << 6,
    SYSTEM_WRITE = 1 << 7,
    SYSTEM_EXECUTE = 1 << 8,
    EVERYBODY = (1 << 9) - 1,
}

export enum EmptyFlags {
    NONE = 0,
    ALL = (1 << 0) - 1,
}

export interface FlagRoundtrip {
}
export interface FlagRoundtrip_statics {
    roundtripAccess(flag: AccessFlags): AccessFlags;
    roundtripEmpty(flag: EmptyFlags): EmptyFlags;
    roundtripAccessBoxed(flag: AccessFlags): AccessFlags;
    roundtripEmptyBoxed(flag: EmptyFlags): EmptyFlags;
}

export interface /*record*/ RecordWithFlags {
    access: AccessFlags;
}

export interface /*record*/ SupportCopying {
    x: number;
}

export interface /*record*/ Vec2 {
    x: number;
    y: number;
}

export interface TestArray {
}
export interface TestArray_statics {
    testStringArray(a: Array<string>): Array<string>;
    testIntArray(a: Int32Array): Int32Array;
    testRecordArray(a: Array<Vec2>): Array<Vec2>;
    testArrayOfArray(a: Array<Int32Array>): Array<Int32Array>;
}

/**
 * Underscore is used as a separator in Djinni names, so we don't really
 * anticipate it to be used as a prefix/suffix.  Some name styles behave
 * badly when it is.  However this test case ensures we at least don't crash.
 */
export interface /*record*/ VarnameRecord {
    Field: number;
}

export interface VarnameInterface {
    /**
     * We should also rewrite parameter names in docstrings.
     * RArg should be rewritten.
     * _i_arg_ should not.
     */
    Rmethod(RArg: VarnameRecord): VarnameRecord;
    Imethod(IArg: VarnameInterface): VarnameInterface;
}

/** Extended record */
export interface /*record*/ ExtendedRecord {
    foo: boolean;
}
export namespace ExtendedRecord {
    export const EXTENDED_RECORD_CONST =  {
        foo: true
    }
    ;
}

export interface /*record*/ RecordUsingExtendedRecord {
    er: ExtendedRecord;
}
export namespace RecordUsingExtendedRecord {
    export const CR =  {
        er:  {
            foo: false
        }

    }
    ;
}

export interface InterfaceUsingExtendedRecord {
    meth(er: ExtendedRecord): ExtendedRecord;
}
export namespace InterfaceUsingExtendedRecord {
    export const CR =  {
        er:  {
            foo: false
        }

    }
    ;
}

export interface ObjcOnlyListener {
}

export interface JavaOnlyListener {
}

/**
 * Generating and compiling this makes sure other languages don't break
 * on references to interfaces they don't need.
 */
export interface UsesSingleLanguageListeners {
    callForObjC(l: ObjcOnlyListener): void;
    returnForObjC(): ObjcOnlyListener;
    callForJava(l: JavaOnlyListener): void;
    returnForJava(): JavaOnlyListener;
}

/** Used for ObjC multiple inheritance tests */
export interface FirstListener {
    first(): void;
}

/** Used for ObjC multiple inheritance tests */
export interface SecondListener {
    second(): void;
}

/**
 * Tester for the ability to call two interfaces which might be
 * implemented on the same object.  That's not relevant in all
 * languages, due to the details of multiple inheritance and object
 * comparison.
 */
export interface ListenerCaller {
    callFirst(): void;
    callSecond(): void;
}
export interface ListenerCaller_statics {
    init(firstL: FirstListener, secondL: SecondListener): ListenerCaller;
}

/** Used for C++ multiple inheritance tests */
export interface ReturnOne {
    returnOne(): number;
}
export interface ReturnOne_statics {
    getInstance(): ReturnOne;
}

/** Used for C++ multiple inheritance tests */
export interface ReturnTwo {
    returnTwo(): number;
}
export interface ReturnTwo_statics {
    getInstance(): ReturnTwo;
}

/** Record for use in constants */
export interface /*record*/ ConstantRecord {
    someInteger: number;
    someString: string;
}

/** Record containing constants */
export interface /*record*/ Constants {
}
export namespace Constants {
    /** bool_constant has documentation. */
    export const BOOL_CONSTANT = true;
    export const I8_CONSTANT = 1;
    export const I16_CONSTANT = 2;
    export const I32_CONSTANT = 3;
    export const I64_CONSTANT = BigInt("4");
    export const F32_CONSTANT = 5.0;
    /**
     * f64_constant has long documentation.
     * (Second line of multi-line documentation.
     *   Indented third line of multi-line documentation.)
     */
    export const F64_CONSTANT = 5.0;
    export const OPT_BOOL_CONSTANT = true;
    export const OPT_I8_CONSTANT = 1;
    /** opt_i16_constant has documentation. */
    export const OPT_I16_CONSTANT = 2;
    export const OPT_I32_CONSTANT = 3;
    export const OPT_I64_CONSTANT = 4;
    /**
     * opt_f32_constant has long documentation.
     * (Second line of multi-line documentation.
     *   Indented third line of multi-line documentation.)
     */
    export const OPT_F32_CONSTANT = 5.0;
    export const OPT_F64_CONSTANT = 5.0;
    export const STRING_CONSTANT = "string-constant";
    export const OPT_STRING_CONSTANT = "string-constant";
    export const OBJECT_CONSTANT =  {
        someInteger: I32_CONSTANT,
        someString: STRING_CONSTANT
    }
    ;
    /**
     * No support for null optional constants
     * No support for optional constant records
     * No support for constant binary, list, set, map
     */
    export const DUMMY = false;
}

/** Interface containing constants */
export interface ConstantsInterface {
    /**
     * No support for null optional constants
     * No support for optional constant records
     * No support for constant binary, list, set, map
     */
    dummy(): void;
}
export namespace ConstantsInterface {
    export const BOOL_CONSTANT = true;
    export const I8_CONSTANT = 1;
    export const I16_CONSTANT = 2;
    /** i32_constant has documentation. */
    export const I32_CONSTANT = 3;
    /**
     * i64_constant has long documentation.
     * (Second line of multi-line documentation.
     *   Indented third line of multi-line documentation.)
     */
    export const I64_CONSTANT = BigInt("4");
    export const F32_CONSTANT = 5.0;
    export const F64_CONSTANT = 5.0;
    export const OPT_BOOL_CONSTANT = true;
    export const OPT_I8_CONSTANT = 1;
    /** opt_i16_constant has documentation. */
    export const OPT_I16_CONSTANT = 2;
    export const OPT_I32_CONSTANT = 3;
    export const OPT_I64_CONSTANT = 4;
    /**
     * opt_f32_constant has long documentation.
     * (Second line of multi-line documentation.
     *   Indented third line of multi-line documentation.)
     */
    export const OPT_F32_CONSTANT = 5.0;
    export const OPT_F64_CONSTANT = 5.0;
    export const STRING_CONSTANT = "string-constant";
    export const OPT_STRING_CONSTANT = "string-constant";
    export const OBJECT_CONSTANT =  {
        someInteger: I32_CONSTANT,
        someString: STRING_CONSTANT
    }
    ;
}

export interface /*record*/ AssortedPrimitives {
    b: boolean;
    eight: number;
    sixteen: number;
    thirtytwo: number;
    sixtyfour: bigint;
    fthirtytwo: number;
    fsixtyfour: number;
    oB: (boolean | null);
    oEight: (number | null);
    oSixteen: (number | null);
    oThirtytwo: (number | null);
    oSixtyfour: (bigint | null);
    oFthirtytwo: (number | null);
    oFsixtyfour: (number | null);
}

/**
 * Helper methods used by various different tests.
 * (Second line of multi-line documentation.
 *   Indented third line of multi-line documentation.)
 */
export interface TestHelpers {
}
export interface TestHelpers_statics {
    /** Method with documentation */
    getSetRecord(): SetRecord;
    /**
     * Method with long documentation
     * (Second line of multi-line documentation.
     *   Indented third line of multi-line documentation.)
     */
    checkSetRecord(rec: SetRecord): boolean;
    getPrimitiveList(): PrimitiveList;
    checkPrimitiveList(pl: PrimitiveList): boolean;
    getNestedCollection(): NestedCollection;
    checkNestedCollection(nc: NestedCollection): boolean;
    getMap(): Map<string, bigint>;
    checkMap(m: Map<string, bigint>): boolean;
    getEmptyMap(): Map<string, bigint>;
    checkEmptyMap(m: Map<string, bigint>): boolean;
    getMapListRecord(): MapListRecord;
    checkMapListRecord(m: MapListRecord): boolean;
    checkClientInterfaceAscii(i: ClientInterface): void;
    checkClientInterfaceNonascii(i: ClientInterface): void;
    checkClientInterfaceArgs(i: ClientInterface): void;
    checkEnumMap(m: Map<Color, string>): void;
    checkEnum(c: Color): void;
    tokenId(t: UserToken): UserToken;
    createCppToken(): UserToken;
    checkCppToken(t: UserToken): void;
    cppTokenId(t: UserToken): bigint;
    checkTokenType(t: UserToken, type: string): void;
    returnNone(): (number | null);
    /** Ensures that we generate integer translation code */
    assortedPrimitivesId(i: AssortedPrimitives): AssortedPrimitives;
    idBinary(b: Uint8Array): Uint8Array;
}

/**
 * Empty record
 * (Second line of multi-line documentation.
 *   Indented third line of multi-line documentation.)
 */
export interface /*record*/ EmptyRecord {
}

/**
 * Test for conflict of method name with an interface name.
 * See the comments about scopeSymbols in CppMarshal.scala for more info.
 */
export interface Conflict {
}

export interface ConflictUser {
    Conflict(): Conflict;
    conflictArg(cs: Set<Conflict>): boolean;
}

/**
 * we need to test optional interface
 * this one will be used
 */
export interface SampleInterface {
}

export interface UserToken {
    whoami(): string;
}

export enum Color {
    RED = 0,
    ORANGE = 1,
    YELLOW = 2,
    GREEN = 3,
    BLUE = 4,
    /**
     * "It is customary to list indigo as a color lying between blue and violet, but it has
     * never seemed to me that indigo is worth the dignity of being considered a separate
     * color. To my eyes it seems merely deep blue." --Isaac Asimov
     */
    INDIGO = 5,
    VIOLET = 6,
}

export interface /*record*/ EnumUsageRecord {
    e: Color;
    o: Color;
    l: Array<Color>;
    s: Set<Color>;
    m: Map<Color, Color>;
}

export interface EnumUsageInterface {
    e(e: Color): Color;
    o(o: Color): Color;
    l(l: Array<Color>): Array<Color>;
    s(s: Set<Color>): Set<Color>;
    m(m: Map<Color, Color>): Map<Color, Color>;
}

/** Record returned by a client */
export interface /*record*/ ClientReturnedRecord {
    recordId: bigint;
    content: string;
    misc: string;
}

/** Client interface */
export interface ClientInterface {
    /** Returns record of given string */
    getRecord(recordId: bigint, utf8string: string, misc: string): ClientReturnedRecord;
    identifierCheck(data: Uint8Array, r: number, jret: bigint): number;
    returnStr(): string;
    methTakingInterface(i: ClientInterface): string;
    methTakingOptionalInterface(i: ClientInterface): string;
}

export interface ReverseClientInterface {
    returnStr(): string;
    methTakingInterface(i: ReverseClientInterface): string;
    methTakingOptionalInterface(i: ReverseClientInterface): string;
}
export interface ReverseClientInterface_statics {
    create(): ReverseClientInterface;
}

export interface CppException {
    throwAnException(): number;
}
export interface CppException_statics {
    get(): CppException;
}

export interface /*record*/ PrimitiveList {
    list: Array<bigint>;
}

export interface /*record*/ MapRecord {
    map: Map<string, bigint>;
    imap: Map<number, number>;
}

export interface /*record*/ MapListRecord {
    mapList: Array<Map<string, bigint>>;
}

export interface /*record*/ NestedCollection {
    setList: Array<Set<string>>;
}

export interface /*record*/ RecordWithDerivings {
    eight: number;
    sixteen: number;
    thirtytwo: number;
    sixtyfour: bigint;
    fthirtytwo: number;
    fsixtyfour: number;
    d: Date;
    s: string;
}

export interface /*record*/ RecordWithNestedDerivings {
    key: number;
    rec: RecordWithDerivings;
}

export interface /*record*/ SetRecord {
    set: Set<string>;
    iset: Set<number>;
}

export interface Module_statics {
    ProtoTests: ProtoTests_statics;
    TestOutcome: TestOutcome_statics;
    TestDuration: TestDuration_statics;
    DataRefTest: DataRefTest_statics;
    FlagRoundtrip: FlagRoundtrip_statics;
    TestArray: TestArray_statics;
    ListenerCaller: ListenerCaller_statics;
    ReturnOne: ReturnOne_statics;
    ReturnTwo: ReturnTwo_statics;
    TestHelpers: TestHelpers_statics;
    ReverseClientInterface: ReverseClientInterface_statics;
    CppException: CppException_statics;
}
