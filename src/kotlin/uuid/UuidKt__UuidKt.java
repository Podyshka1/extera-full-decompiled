package kotlin.uuid;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.HexExtensionsKt;
import kotlin.time.InstantKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0001\n\u0002\b\n\u001a\n\u0010\u0003\u001a\u00020\u0004H\u0081\u0080\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0081\u0080\u0004\u001a\u0016\u0010\b\u001a\u00020\t*\u00020\u00072\u0006\u0010\n\u001a\u00020\u0001H\u0080\u0080\u0004\u001a.\u0010\u000b\u001a\u00020\f*\u00020\t2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0001H\u0081\u0080\u0004\u001a\u001e\u0010\u0011\u001a\u00020\f*\u00020\u00072\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\tH\u0080\u0080\u0004\u001a\u0012\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0081\u0080\u0004\u001a\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0081\u0080\u0004\u001af\u0010\u0017\u001a\u00020\f*\u00020\u00152\u0006\u0010\n\u001a\u00020\u00012K\u0010\u0018\u001aG\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001d\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\f0\u0019H\u0080\u0088\u0004ø\u0001\u0000\u001ab\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00152K\u0010\u0018\u001aG\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001d\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u001f0\u0019H\u0081\u0088\u0004ø\u0001\u0000\u001a\u0012\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0015H\u0081\u0080\u0004\u001a\u0014\u0010\"\u001a\u0004\u0018\u00010\u00042\u0006\u0010!\u001a\u00020\u0015H\u0081\u0080\u0004\u001ab\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00152K\u0010\u0018\u001aG\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001c\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(\u001d\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u001a\u0012\b\b\u001b\u0012\u0004\b\b(#\u0012\u0004\u0012\u00020\u001f0\u0019H\u0081\u0088\u0004ø\u0001\u0000\u001a\u001b\u0010$\u001a\u00020\u0015*\u00020\u00152\u0006\u0010%\u001a\u00020\u0001H\u0082\u0080\u0004¢\u0006\u0002\b&\u001a\u001b\u0010$\u001a\u00020\u0015*\u00020\u00072\u0006\u0010'\u001a\u00020\u0001H\u0082\u0080\u0004¢\u0006\u0002\b&\u001a\"\u0010(\u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00152\u0006\u0010#\u001a\u00020\u0001H\u0080\u0080\u0004\"\u000f\u0010\u0000\u001a\u00020\u0001X\u0082Ô\b¢\u0006\u0002\n\u0000\"\u000f\u0010\u0002\u001a\u00020\u0001X\u0082Ô\b¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006)"}, d2 = {"UUID_HEX_LENGTH", _UrlKt.FRAGMENT_ENCODE_SET, "UUID_HEX_DASH_LENGTH", "secureRandomUuid", "Lkotlin/uuid/Uuid;", "uuidFromRandomBytes", "randomBytes", _UrlKt.FRAGMENT_ENCODE_SET, "getLongAtCommonImpl", _UrlKt.FRAGMENT_ENCODE_SET, "index", "formatBytesIntoCommonImpl", _UrlKt.FRAGMENT_ENCODE_SET, "dst", "dstOffset", "startIndex", "endIndex", "setLongAtCommonImpl", "value", "uuidParseHexDashCommonImpl", "hexDashString", _UrlKt.FRAGMENT_ENCODE_SET, "uuidParseHexDashOrNullCommonImpl", "uuidCheckHyphenAt", "onError", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "inputString", "errorDescription", "errorPosition", _UrlKt.FRAGMENT_ENCODE_SET, "uuidParseHexCommonImpl", "hexString", "uuidParseHexOrNullCommonImpl", "errorIndex", "truncateForErrorMessage", "maxLength", "truncateForErrorMessage$UuidKt__UuidKt", "maxSize", "uuidThrowUnexpectedCharacterException", "kotlin-stdlib"}, m910k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/uuid/UuidKt")
@SourceDebugExtension({"SMAP\nUuid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Uuid.kt\nkotlin/uuid/UuidKt__UuidKt\n+ 2 HexExtensions.kt\nkotlin/text/HexExtensionsKt\n*L\n1#1,1051:1\n893#1,5:1052\n898#1:1066\n885#1,2:1067\n899#1:1069\n900#1:1076\n885#1,2:1077\n901#1:1079\n902#1:1086\n885#1,2:1087\n903#1:1089\n904#1:1096\n885#1,2:1097\n905#1:1099\n907#1,3:1106\n893#1,5:1109\n898#1:1123\n885#1,2:1124\n899#1:1126\n900#1:1133\n885#1,2:1134\n901#1:1136\n902#1:1143\n885#1,2:1144\n903#1:1146\n904#1:1153\n885#1,2:1154\n905#1:1156\n907#1,3:1163\n885#1,2:1175\n885#1,2:1186\n885#1,2:1197\n885#1,2:1208\n939#1:1219\n940#1:1229\n941#1:1236\n939#1:1237\n940#1:1247\n941#1:1254\n1201#2,3:1057\n1229#2,5:1060\n1205#2:1065\n1229#2,5:1070\n1205#2:1075\n1229#2,5:1080\n1205#2:1085\n1229#2,5:1090\n1205#2:1095\n1229#2,5:1100\n1205#2:1105\n1201#2,3:1114\n1229#2,5:1117\n1205#2:1122\n1229#2,5:1127\n1205#2:1132\n1229#2,5:1137\n1205#2:1142\n1229#2,5:1147\n1205#2:1152\n1229#2,5:1157\n1205#2:1162\n1201#2,3:1166\n1229#2,5:1169\n1205#2:1174\n1201#2,3:1177\n1229#2,5:1180\n1205#2:1185\n1201#2,3:1188\n1229#2,5:1191\n1205#2:1196\n1201#2,3:1199\n1229#2,5:1202\n1205#2:1207\n1201#2,3:1210\n1229#2,5:1213\n1205#2:1218\n1201#2,3:1220\n1229#2,5:1223\n1205#2:1228\n1229#2,5:1230\n1205#2:1235\n1201#2,3:1238\n1229#2,5:1241\n1205#2:1246\n1229#2,5:1248\n1205#2:1253\n1201#2,3:1255\n1229#2,5:1258\n1205#2:1263\n1201#2,3:1264\n1229#2,5:1267\n1205#2:1272\n*S KotlinDebug\n*F\n+ 1 Uuid.kt\nkotlin/uuid/UuidKt__UuidKt\n*L\n869#1:1052,5\n869#1:1066\n869#1:1067,2\n869#1:1069\n869#1:1076\n869#1:1077,2\n869#1:1079\n869#1:1086\n869#1:1087,2\n869#1:1089\n869#1:1096\n869#1:1097,2\n869#1:1099\n869#1:1106,3\n876#1:1109,5\n876#1:1123\n876#1:1124,2\n876#1:1126\n876#1:1133\n876#1:1134,2\n876#1:1136\n876#1:1143\n876#1:1144,2\n876#1:1146\n876#1:1153\n876#1:1154,2\n876#1:1156\n876#1:1163,3\n898#1:1175,2\n900#1:1186,2\n902#1:1197,2\n904#1:1208,2\n921#1:1219\n921#1:1229\n921#1:1236\n928#1:1237\n928#1:1247\n928#1:1254\n869#1:1057,3\n869#1:1060,5\n869#1:1065\n869#1:1070,5\n869#1:1075\n869#1:1080,5\n869#1:1085\n869#1:1090,5\n869#1:1095\n869#1:1100,5\n869#1:1105\n876#1:1114,3\n876#1:1117,5\n876#1:1122\n876#1:1127,5\n876#1:1132\n876#1:1137,5\n876#1:1142\n876#1:1147,5\n876#1:1152\n876#1:1157,5\n876#1:1162\n897#1:1166,3\n897#1:1169,5\n897#1:1174\n899#1:1177,3\n899#1:1180,5\n899#1:1185\n901#1:1188,3\n901#1:1191,5\n901#1:1196\n903#1:1199,3\n903#1:1202,5\n903#1:1207\n905#1:1210,3\n905#1:1213,5\n905#1:1218\n921#1:1220,3\n921#1:1223,5\n921#1:1228\n921#1:1230,5\n921#1:1235\n928#1:1238,3\n928#1:1241,5\n928#1:1246\n928#1:1248,5\n928#1:1253\n939#1:1255,3\n939#1:1258,5\n939#1:1263\n940#1:1264,3\n940#1:1267,5\n940#1:1272\n*E\n"})
class UuidKt__UuidKt extends UuidKt__UuidJVMKt {
    private static final int UUID_HEX_DASH_LENGTH = 36;
    private static final int UUID_HEX_LENGTH = 32;

    @ExperimentalUuidApi
    public static final Uuid secureRandomUuid() {
        byte[] bArr = new byte[16];
        UuidKt__UuidJVMKt.secureRandomBytes(bArr);
        return uuidFromRandomBytes(bArr);
    }

    @ExperimentalUuidApi
    public static final Uuid uuidFromRandomBytes(byte[] bArr) {
        byte b2 = (byte) (bArr[6] & 15);
        bArr[6] = b2;
        bArr[6] = (byte) (b2 | 64);
        byte b3 = (byte) (bArr[8] & 63);
        bArr[8] = b3;
        bArr[8] = (byte) (b3 | ByteCompanionObject.MIN_VALUE);
        return Uuid.Companion.fromByteArray(bArr);
    }

    public static final long getLongAtCommonImpl(byte[] bArr, int i) {
        return (((long) bArr[i + 7]) & 255) | ((((long) bArr[i]) & 255) << 56) | ((((long) bArr[i + 1]) & 255) << 48) | ((((long) bArr[i + 2]) & 255) << 40) | ((((long) bArr[i + 3]) & 255) << 32) | ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8);
    }

    @ExperimentalUuidApi
    public static final void formatBytesIntoCommonImpl(long j, byte[] bArr, int i, int i2, int i3) {
        int i4 = 7 - i2;
        int i5 = 8 - i3;
        if (i5 > i4) {
            return;
        }
        while (true) {
            int i6 = HexExtensionsKt.getBYTE_TO_LOWER_CASE_HEX_DIGITS()[(int) ((j >> (i4 << 3)) & 255)];
            int i7 = i + 1;
            bArr[i] = (byte) (i6 >> 8);
            i += 2;
            bArr[i7] = (byte) i6;
            if (i4 == i5) {
                return;
            } else {
                i4--;
            }
        }
    }

    public static final void setLongAtCommonImpl(byte[] bArr, int i, long j) {
        int i2 = 7;
        while (-1 < i2) {
            bArr[i] = (byte) (j >> (i2 << 3));
            i2--;
            i++;
        }
    }

    public static final void uuidCheckHyphenAt(String str, int i, Function3<? super String, ? super String, ? super Integer, Unit> function3) {
        if (str.charAt(i) != '-') {
            function3.invoke(str, "'-' (hyphen)", Integer.valueOf(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String truncateForErrorMessage$UuidKt__UuidKt(String str, int i) {
        return str.length() <= i ? str : str.substring(0, i).concat("...");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String truncateForErrorMessage$UuidKt__UuidKt(byte[] bArr, int i) {
        return ArraysKt.joinToString$default(bArr, (CharSequence) null, (CharSequence) "[", (CharSequence) "]", i, (CharSequence) null, (Function1) null, 49, (Object) null);
    }

    public static final Void uuidThrowUnexpectedCharacterException(String str, String str2, int i) {
        throw new IllegalArgumentException("Expected " + str2 + " at index " + i + ", but was '" + str.charAt(i) + '\'');
    }

    @ExperimentalUuidApi
    public static final Uuid uuidParseHexCommonImpl(String str) {
        int i = 0;
        long j = 0;
        while (true) {
            if (i >= 16) {
                long j2 = 0;
                for (int i2 = 16; i2 < 32; i2++) {
                    long j3 = j2 << 4;
                    char cCharAt = str.charAt(i2);
                    if ((cCharAt >>> '\b') == 0 && HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt] >= 0) {
                        j2 = j3 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt];
                    } else {
                        uuidThrowUnexpectedCharacterException(str, "a hexadecimal digit", i2);
                    }
                }
                return Uuid.Companion.fromLongs(j, j2);
            }
            long j4 = j << 4;
            char cCharAt2 = str.charAt(i);
            if ((cCharAt2 >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt2] < 0) {
                break;
            }
            j = j4 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt2];
            i++;
        }
        uuidThrowUnexpectedCharacterException(str, "a hexadecimal digit", i);
        InstantKt$$ExternalSyntheticBUOutline0.m944m();
        return null;
    }

    @ExperimentalUuidApi
    public static final Uuid uuidParseHexCommonImpl(String str, Function3 function3) {
        int i = 0;
        long j = 0;
        while (true) {
            if (i >= 16) {
                long j2 = 0;
                for (int i2 = 16; i2 < 32; i2++) {
                    long j3 = j2 << 4;
                    char cCharAt = str.charAt(i2);
                    if ((cCharAt >>> '\b') == 0 && HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt] >= 0) {
                        j2 = j3 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt];
                    } else {
                        function3.invoke(str, "a hexadecimal digit", Integer.valueOf(i2));
                        InstantKt$$ExternalSyntheticBUOutline0.m944m();
                        return null;
                    }
                }
                return Uuid.Companion.fromLongs(j, j2);
            }
            long j4 = j << 4;
            char cCharAt2 = str.charAt(i);
            if ((cCharAt2 >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt2] < 0) {
                break;
            }
            j = j4 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt2];
            i++;
        }
        function3.invoke(str, "a hexadecimal digit", Integer.valueOf(i));
        InstantKt$$ExternalSyntheticBUOutline0.m944m();
        return null;
    }

    @ExperimentalUuidApi
    public static final Uuid uuidParseHexDashCommonImpl(String str) {
        int i = 0;
        long j = 0;
        while (true) {
            int i2 = 8;
            if (i < 8) {
                long j2 = j << 4;
                char cCharAt = str.charAt(i);
                if ((cCharAt >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt] < 0) {
                    break;
                }
                j = j2 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt];
                i++;
            } else {
                if (str.charAt(8) == '-') {
                    i = 9;
                    long j3 = 0;
                    while (true) {
                        i2 = 13;
                        if (i < 13) {
                            long j4 = j3 << 4;
                            char cCharAt2 = str.charAt(i);
                            if ((cCharAt2 >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt2] < 0) {
                                break;
                            }
                            j3 = j4 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt2];
                            i++;
                        } else if (str.charAt(13) == '-') {
                            i = 14;
                            long j5 = 0;
                            while (true) {
                                i2 = 18;
                                if (i < 18) {
                                    long j6 = j5 << 4;
                                    char cCharAt3 = str.charAt(i);
                                    if ((cCharAt3 >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt3] < 0) {
                                        break;
                                    }
                                    j5 = j6 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt3];
                                    i++;
                                } else if (str.charAt(18) == '-') {
                                    i = 19;
                                    long j7 = 0;
                                    while (true) {
                                        i2 = 23;
                                        if (i < 23) {
                                            long j8 = j7 << 4;
                                            char cCharAt4 = str.charAt(i);
                                            if ((cCharAt4 >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt4] < 0) {
                                                break;
                                            }
                                            j7 = j8 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt4];
                                            i++;
                                        } else if (str.charAt(23) == '-') {
                                            i = 24;
                                            long j9 = 0;
                                            while (i < 36) {
                                                long j10 = j9 << 4;
                                                char cCharAt5 = str.charAt(i);
                                                if ((cCharAt5 >>> '\b') == 0 && HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt5] >= 0) {
                                                    j9 = j10 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt5];
                                                    i++;
                                                }
                                            }
                                            return Uuid.Companion.fromLongs((j << 32) | (j3 << 16) | j5, (j7 << 48) | j9);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                uuidThrowUnexpectedCharacterException(str, "'-' (hyphen)", i2);
            }
        }
        uuidThrowUnexpectedCharacterException(str, "a hexadecimal digit", i);
        InstantKt$$ExternalSyntheticBUOutline0.m944m();
        return null;
    }

    @ExperimentalUuidApi
    public static final Uuid uuidParseHexDashCommonImpl(String str, Function3 function3) {
        long j = 0;
        for (int i = 0; i < 8; i++) {
            long j2 = j << 4;
            char cCharAt = str.charAt(i);
            if ((cCharAt >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt] < 0) {
                function3.invoke(str, "a hexadecimal digit", Integer.valueOf(i));
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return null;
            }
            j = j2 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt];
        }
        if (str.charAt(8) != '-') {
            function3.invoke(str, "'-' (hyphen)", 8);
        }
        long j3 = 0;
        for (int i2 = 9; i2 < 13; i2++) {
            long j4 = j3 << 4;
            char cCharAt2 = str.charAt(i2);
            if ((cCharAt2 >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt2] < 0) {
                function3.invoke(str, "a hexadecimal digit", Integer.valueOf(i2));
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return null;
            }
            j3 = j4 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt2];
        }
        if (str.charAt(13) != '-') {
            function3.invoke(str, "'-' (hyphen)", 13);
        }
        long j5 = 0;
        for (int i3 = 14; i3 < 18; i3++) {
            long j6 = j5 << 4;
            char cCharAt3 = str.charAt(i3);
            if ((cCharAt3 >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt3] < 0) {
                function3.invoke(str, "a hexadecimal digit", Integer.valueOf(i3));
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return null;
            }
            j5 = j6 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt3];
        }
        if (str.charAt(18) != '-') {
            function3.invoke(str, "'-' (hyphen)", 18);
        }
        long j7 = 0;
        for (int i4 = 19; i4 < 23; i4++) {
            long j8 = j7 << 4;
            char cCharAt4 = str.charAt(i4);
            if ((cCharAt4 >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt4] < 0) {
                function3.invoke(str, "a hexadecimal digit", Integer.valueOf(i4));
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return null;
            }
            j7 = j8 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt4];
        }
        if (str.charAt(23) != '-') {
            function3.invoke(str, "'-' (hyphen)", 23);
        }
        long j9 = 0;
        for (int i5 = 24; i5 < 36; i5++) {
            long j10 = j9 << 4;
            char cCharAt5 = str.charAt(i5);
            if ((cCharAt5 >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt5] < 0) {
                function3.invoke(str, "a hexadecimal digit", Integer.valueOf(i5));
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return null;
            }
            j9 = j10 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt5];
        }
        return Uuid.Companion.fromLongs((j << 32) | (j3 << 16) | j5, (j7 << 48) | j9);
    }

    @ExperimentalUuidApi
    public static final Uuid uuidParseHexDashOrNullCommonImpl(String str) {
        long j = 0;
        for (int i = 0; i < 8; i++) {
            long j2 = j << 4;
            char cCharAt = str.charAt(i);
            if ((cCharAt >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt] < 0) {
                return null;
            }
            j = j2 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt];
        }
        if (str.charAt(8) != '-') {
            return null;
        }
        long j3 = 0;
        for (int i2 = 9; i2 < 13; i2++) {
            long j4 = j3 << 4;
            char cCharAt2 = str.charAt(i2);
            if ((cCharAt2 >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt2] < 0) {
                return null;
            }
            j3 = j4 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt2];
        }
        if (str.charAt(13) != '-') {
            return null;
        }
        long j5 = 0;
        for (int i3 = 14; i3 < 18; i3++) {
            long j6 = j5 << 4;
            char cCharAt3 = str.charAt(i3);
            if ((cCharAt3 >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt3] < 0) {
                return null;
            }
            j5 = j6 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt3];
        }
        if (str.charAt(18) != '-') {
            return null;
        }
        long j7 = 0;
        for (int i4 = 19; i4 < 23; i4++) {
            long j8 = j7 << 4;
            char cCharAt4 = str.charAt(i4);
            if ((cCharAt4 >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt4] < 0) {
                return null;
            }
            j7 = j8 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt4];
        }
        if (str.charAt(23) != '-') {
            return null;
        }
        long j9 = 0;
        for (int i5 = 24; i5 < 36; i5++) {
            long j10 = j9 << 4;
            char cCharAt5 = str.charAt(i5);
            if ((cCharAt5 >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt5] < 0) {
                return null;
            }
            j9 = j10 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt5];
        }
        return Uuid.Companion.fromLongs((j << 32) | (j3 << 16) | j5, (j7 << 48) | j9);
    }

    @ExperimentalUuidApi
    public static final Uuid uuidParseHexOrNullCommonImpl(String str) {
        int i = 0;
        long j = 0;
        while (true) {
            if (i >= 16) {
                long j2 = 0;
                for (int i2 = 16; i2 < 32; i2++) {
                    long j3 = j2 << 4;
                    char cCharAt = str.charAt(i2);
                    if ((cCharAt >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt] < 0) {
                        return null;
                    }
                    j2 = j3 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt];
                }
                return Uuid.Companion.fromLongs(j, j2);
            }
            long j4 = j << 4;
            char cCharAt2 = str.charAt(i);
            if ((cCharAt2 >>> '\b') != 0 || HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt2] < 0) {
                break;
            }
            j = j4 | HexExtensionsKt.HEX_DIGITS_TO_LONG_DECIMAL[cCharAt2];
            i++;
        }
        return null;
    }
}
