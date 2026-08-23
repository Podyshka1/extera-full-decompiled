package okhttp3.internal;

import java.io.EOFException;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.idn.IdnaMappingTableInstanceKt;
import okhttp3.internal.idn.Punycode;
import okio.Buffer;

/* JADX INFO: loaded from: classes.dex */
public final class _HostnamesCommonKt {
    private static final Regex VERIFY_AS_IP_ADDRESS = new Regex("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    public static final boolean canParseAsIpAddress(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return VERIFY_AS_IP_ADDRESS.matches(str);
    }

    public static final boolean containsInvalidLabelLengths(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        if (1 <= length && length < 254) {
            int i = 0;
            while (true) {
                String str2 = str;
                int iIndexOf$default = StringsKt.indexOf$default((CharSequence) str2, '.', i, false, 4, (Object) null);
                int length2 = iIndexOf$default == -1 ? str2.length() - i : iIndexOf$default - i;
                if (1 > length2 || length2 >= 64) {
                    break;
                }
                if (iIndexOf$default == -1 || iIndexOf$default == str2.length() - 1) {
                    break;
                }
                i = iIndexOf$default + 1;
                str = str2;
            }
            return false;
        }
        return true;
    }

    public static final boolean containsInvalidHostnameAsciiCodes(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (Intrinsics.compare((int) cCharAt, 31) <= 0 || Intrinsics.compare((int) cCharAt, 127) >= 0 || StringsKt.indexOf$default((CharSequence) " #%/:?@[\\]", cCharAt, 0, false, 6, (Object) null) != -1) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0095, code lost:
    
        if (r11 == 16) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0097, code lost:
    
        if (r12 != (-1)) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0099, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009a, code lost:
    
        kotlin.collections.ArraysKt.copyInto(r8, r8, 16 - (r11 - r12), r12, r11);
        kotlin.collections.ArraysKt.fill(r8, (byte) 0, r12, (16 - r11) + r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a6, code lost:
    
        return r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final byte[] decodeIpv6(String str, int i, int i2) {
        int i3;
        String input = str;
        Intrinsics.checkNotNullParameter(input, "input");
        byte[] bArr = new byte[16];
        int i4 = i;
        int i5 = 0;
        int i6 = -1;
        int i7 = -1;
        while (true) {
            if (i4 < i2) {
                if (i5 != 16) {
                    int i8 = i4 + 2;
                    if (i8 <= i2 && StringsKt.startsWith$default(input, "::", i4, false, 4, null)) {
                        if (i6 == -1) {
                            i5 += 2;
                            if (i8 != i2) {
                                input = str;
                                i6 = i5;
                                i7 = i8;
                                int i9 = 0;
                                i4 = i7;
                                while (i4 < i2) {
                                }
                                i3 = i4 - i7;
                                if (i3 == 0) {
                                    break;
                                }
                                break;
                                break;
                            }
                            i6 = i5;
                            break;
                        }
                        return null;
                    }
                    if (i5 != 0) {
                        if (StringsKt.startsWith$default(str, ":", i4, false, 4, null)) {
                            i4++;
                        } else {
                            if (!StringsKt.startsWith$default(str, ".", i4, false, 4, null) || !decodeIpv4Suffix(str, i7, i2, bArr, i5 - 2)) {
                                return null;
                            }
                            i5 += 2;
                        }
                    }
                    input = str;
                    i7 = i4;
                    int i92 = 0;
                    i4 = i7;
                    while (i4 < i2) {
                        int hexDigit = _UtilCommonKt.parseHexDigit(input.charAt(i4));
                        if (hexDigit == -1) {
                            break;
                        }
                        i92 = (i92 << 4) + hexDigit;
                        i4++;
                    }
                    i3 = i4 - i7;
                    if (i3 == 0 || i3 > 4) {
                        break;
                    }
                    int i10 = i5 + 1;
                    bArr[i5] = (byte) ((i92 >>> 8) & 255);
                    i5 += 2;
                    bArr[i10] = (byte) (i92 & 255);
                } else {
                    return null;
                }
            } else {
                break;
            }
        }
        return null;
    }

    public static final boolean decodeIpv4Suffix(String input, int i, int i2, byte[] address, int i3) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(address, "address");
        int i4 = i3;
        while (i < i2) {
            if (i4 == address.length) {
                return false;
            }
            if (i4 != i3) {
                if (input.charAt(i) != '.') {
                    return false;
                }
                i++;
            }
            int i5 = i;
            int i6 = 0;
            while (i5 < i2) {
                char cCharAt = input.charAt(i5);
                if (Intrinsics.compare((int) cCharAt, 48) < 0 || Intrinsics.compare((int) cCharAt, 57) > 0) {
                    break;
                }
                if ((i6 == 0 && i != i5) || (i6 = ((i6 * 10) + cCharAt) - 48) > 255) {
                    return false;
                }
                i5++;
            }
            if (i5 - i == 0) {
                return false;
            }
            address[i4] = (byte) i6;
            i4++;
            i = i5;
        }
        return i4 == i3 + 4;
    }

    public static final String inet6AddressToAscii(byte[] address) {
        Intrinsics.checkNotNullParameter(address, "address");
        int i = -1;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < address.length) {
            int i5 = i3;
            while (i5 < 16 && address[i5] == 0 && address[i5 + 1] == 0) {
                i5 += 2;
            }
            int i6 = i5 - i3;
            if (i6 > i4 && i6 >= 4) {
                i = i3;
                i4 = i6;
            }
            i3 = i5 + 2;
        }
        Buffer buffer = new Buffer();
        while (i2 < address.length) {
            if (i2 == i) {
                buffer.writeByte(58);
                i2 += i4;
                if (i2 == 16) {
                    buffer.writeByte(58);
                }
            } else {
                if (i2 > 0) {
                    buffer.writeByte(58);
                }
                buffer.writeHexadecimalUnsignedLong((_UtilCommonKt.and(address[i2], 255) << 8) | _UtilCommonKt.and(address[i2 + 1], 255));
                i2 += 2;
            }
        }
        return buffer.readUtf8();
    }

    public static final byte[] canonicalizeInetAddress(byte[] address) {
        Intrinsics.checkNotNullParameter(address, "address");
        return isMappedIpv4Address(address) ? ArraysKt.sliceArray(address, RangesKt.until(12, 16)) : address;
    }

    private static final boolean isMappedIpv4Address(byte[] bArr) {
        if (bArr.length != 16) {
            return false;
        }
        for (int i = 0; i < 10; i++) {
            if (bArr[i] != 0) {
                return false;
            }
        }
        return bArr[10] == -1 && bArr[11] == -1;
    }

    public static final String inet4AddressToAscii(byte[] address) {
        Intrinsics.checkNotNullParameter(address, "address");
        if (address.length != 4) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        return new Buffer().writeDecimalLong(_UtilCommonKt.and(address[0], 255)).writeByte(46).writeDecimalLong(_UtilCommonKt.and(address[1], 255)).writeByte(46).writeDecimalLong(_UtilCommonKt.and(address[2], 255)).writeByte(46).writeDecimalLong(_UtilCommonKt.and(address[3], 255)).readUtf8();
    }

    public static final String toCanonicalHost(String str) {
        byte[] bArrDecodeIpv6;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) ":", false, 2, (Object) null)) {
            if (StringsKt.startsWith$default(str, "[", false, 2, (Object) null) && StringsKt.endsWith$default(str, "]", false, 2, (Object) null)) {
                bArrDecodeIpv6 = decodeIpv6(str, 1, str.length() - 1);
            } else {
                bArrDecodeIpv6 = decodeIpv6(str, 0, str.length());
            }
            if (bArrDecodeIpv6 == null) {
                return null;
            }
            byte[] bArrCanonicalizeInetAddress = canonicalizeInetAddress(bArrDecodeIpv6);
            if (bArrCanonicalizeInetAddress.length == 16) {
                return inet6AddressToAscii(bArrCanonicalizeInetAddress);
            }
            if (bArrCanonicalizeInetAddress.length == 4) {
                return inet4AddressToAscii(bArrCanonicalizeInetAddress);
            }
            throw new AssertionError("Invalid IPv6 address: '" + str + '\'');
        }
        String strIdnToAscii = idnToAscii(str);
        if (strIdnToAscii == null || strIdnToAscii.length() == 0 || containsInvalidHostnameAsciiCodes(strIdnToAscii) || containsInvalidLabelLengths(strIdnToAscii)) {
            return null;
        }
        return strIdnToAscii;
    }

    public static final String idnToAscii(String host) throws EOFException {
        Intrinsics.checkNotNullParameter(host, "host");
        Buffer bufferWriteUtf8 = new Buffer().writeUtf8(host);
        Buffer buffer = new Buffer();
        while (!bufferWriteUtf8.exhausted()) {
            if (!IdnaMappingTableInstanceKt.getIDNA_MAPPING_TABLE().map(bufferWriteUtf8.readUtf8CodePoint(), buffer)) {
                return null;
            }
        }
        bufferWriteUtf8.writeUtf8(_NormalizeJvmKt.normalizeNfc(buffer.readUtf8()));
        Punycode punycode = Punycode.INSTANCE;
        String strDecode = punycode.decode(bufferWriteUtf8.readUtf8());
        if (strDecode != null && Intrinsics.areEqual(strDecode, _NormalizeJvmKt.normalizeNfc(strDecode))) {
            return punycode.encode(strDecode);
        }
        return null;
    }
}
