package kotlin.collections.unsigned;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.UnsignedKt;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000j\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u001f\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001d\u0010\u0000\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0004\b\t\u0010\n\u001a\u001d\u0010\u0000\u001a\u00020\u000b*\u00020\f2\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0004\b\r\u0010\u000e\u001a\u001d\u0010\u0000\u001a\u00020\u000f*\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0088\u0004¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u001b\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u0014*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u001b\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u0014*\u00020\bH\u0087\u0080\u0004¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u001b\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0014*\u00020\fH\u0087\u0080\u0004¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u001b\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0014*\u00020\u0010H\u0087\u0080\u0004¢\u0006\u0004\b\u001b\u0010\u001c\u001a1\u0010\u001d\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u00042\b\b\u0002\u0010 \u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0004\b!\u0010\"\u001a1\u0010\u001d\u001a\u00020\u0004*\u00020\b2\u0006\u0010\u001e\u001a\u00020\u00072\b\b\u0002\u0010\u001f\u001a\u00020\u00042\b\b\u0002\u0010 \u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0004\b#\u0010$\u001a1\u0010\u001d\u001a\u00020\u0004*\u00020\f2\u0006\u0010\u001e\u001a\u00020\u000b2\b\b\u0002\u0010\u001f\u001a\u00020\u00042\b\b\u0002\u0010 \u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0004\b%\u0010&\u001a1\u0010\u001d\u001a\u00020\u0004*\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u000f2\b\b\u0002\u0010\u001f\u001a\u00020\u00042\b\b\u0002\u0010 \u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0004\b'\u0010(\u001a\u0017\u0010)\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0004\b*\u0010+\u001a\u0017\u0010)\u001a\u0004\u0018\u00010\u0007*\u00020\bH\u0087\u0080\u0004¢\u0006\u0004\b,\u0010-\u001a\u0017\u0010)\u001a\u0004\u0018\u00010\u000b*\u00020\fH\u0087\u0080\u0004¢\u0006\u0004\b.\u0010/\u001a\u0017\u0010)\u001a\u0004\u0018\u00010\u000f*\u00020\u0010H\u0087\u0080\u0004¢\u0006\u0004\b0\u00101\u001a>\u00102\u001a\u0004\u0018\u00010\u0001\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u00022\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H306H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\b7\u00108\u001a>\u00102\u001a\u0004\u0018\u00010\u0007\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002H306H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\b9\u0010:\u001a>\u00102\u001a\u0004\u0018\u00010\u000b\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\f2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u0002H306H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\b;\u0010<\u001a>\u00102\u001a\u0004\u0018\u00010\u000f\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u00102\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002H306H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\b=\u0010>\u001a3\u0010?\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u00010Aj\n\u0012\u0006\b\u0000\u0012\u00020\u0001`BH\u0087\u0080\u0004¢\u0006\u0004\bC\u0010D\u001a3\u0010?\u001a\u0004\u0018\u00010\u0007*\u00020\b2\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u00070Aj\n\u0012\u0006\b\u0000\u0012\u00020\u0007`BH\u0087\u0080\u0004¢\u0006\u0004\bE\u0010F\u001a3\u0010?\u001a\u0004\u0018\u00010\u000b*\u00020\f2\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u000b0Aj\n\u0012\u0006\b\u0000\u0012\u00020\u000b`BH\u0087\u0080\u0004¢\u0006\u0004\bG\u0010H\u001a3\u0010?\u001a\u0004\u0018\u00010\u000f*\u00020\u00102\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u000f0Aj\n\u0012\u0006\b\u0000\u0012\u00020\u000f`BH\u0087\u0080\u0004¢\u0006\u0004\bI\u0010J\u001a\u0017\u0010K\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0004\bL\u0010+\u001a\u0017\u0010K\u001a\u0004\u0018\u00010\u0007*\u00020\bH\u0087\u0080\u0004¢\u0006\u0004\bM\u0010-\u001a\u0017\u0010K\u001a\u0004\u0018\u00010\u000b*\u00020\fH\u0087\u0080\u0004¢\u0006\u0004\bN\u0010/\u001a\u0017\u0010K\u001a\u0004\u0018\u00010\u000f*\u00020\u0010H\u0087\u0080\u0004¢\u0006\u0004\bO\u00101\u001a>\u0010P\u001a\u0004\u0018\u00010\u0001\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u00022\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H306H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\bQ\u00108\u001a>\u0010P\u001a\u0004\u0018\u00010\u0007\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002H306H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\bR\u0010:\u001a>\u0010P\u001a\u0004\u0018\u00010\u000b\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\f2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u0002H306H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\bS\u0010<\u001a>\u0010P\u001a\u0004\u0018\u00010\u000f\"\u000e\b\u0000\u00103*\b\u0012\u0004\u0012\u0002H304*\u00020\u00102\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u0002H306H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\bT\u0010>\u001a3\u0010U\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u00010Aj\n\u0012\u0006\b\u0000\u0012\u00020\u0001`BH\u0087\u0080\u0004¢\u0006\u0004\bV\u0010D\u001a3\u0010U\u001a\u0004\u0018\u00010\u0007*\u00020\b2\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u00070Aj\n\u0012\u0006\b\u0000\u0012\u00020\u0007`BH\u0087\u0080\u0004¢\u0006\u0004\bW\u0010F\u001a3\u0010U\u001a\u0004\u0018\u00010\u000b*\u00020\f2\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u000b0Aj\n\u0012\u0006\b\u0000\u0012\u00020\u000b`BH\u0087\u0080\u0004¢\u0006\u0004\bX\u0010H\u001a3\u0010U\u001a\u0004\u0018\u00010\u000f*\u00020\u00102\u001a\u0010@\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\u000f0Aj\n\u0012\u0006\b\u0000\u0012\u00020\u000f`BH\u0087\u0080\u0004¢\u0006\u0004\bY\u0010J\u001a,\u0010Z\u001a\u00020[*\u00020\u00022\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020[06H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\b\\\u0010]\u001a,\u0010Z\u001a\u00020[*\u00020\b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020[06H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\b\\\u0010^\u001a,\u0010Z\u001a\u00020[*\u00020\f2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020[06H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\b\\\u0010_\u001a,\u0010Z\u001a\u00020[*\u00020\u00102\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020[06H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\b\\\u0010`\u001a,\u0010Z\u001a\u00020a*\u00020\u00022\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020a06H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\bb\u0010c\u001a,\u0010Z\u001a\u00020a*\u00020\b2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020a06H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\bb\u0010d\u001a,\u0010Z\u001a\u00020a*\u00020\f2\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020a06H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\bb\u0010e\u001a,\u0010Z\u001a\u00020a*\u00020\u00102\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020a06H\u0087\u0088\u0004ø\u0001\u0000¢\u0006\u0004\bb\u0010f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006g"}, d2 = {"elementAt", "Lkotlin/UInt;", "Lkotlin/UIntArray;", "index", _UrlKt.FRAGMENT_ENCODE_SET, "elementAt-qFRl0hI", "([II)I", "Lkotlin/ULong;", "Lkotlin/ULongArray;", "elementAt-r7IrZao", "([JI)J", "Lkotlin/UByte;", "Lkotlin/UByteArray;", "elementAt-PpDY95g", "([BI)B", "Lkotlin/UShort;", "Lkotlin/UShortArray;", "elementAt-nggk6HY", "([SI)S", "asList", _UrlKt.FRAGMENT_ENCODE_SET, "asList--ajY-9A", "([I)Ljava/util/List;", "asList-QwZRm1k", "([J)Ljava/util/List;", "asList-GBYM_sE", "([B)Ljava/util/List;", "asList-rL5Bavg", "([S)Ljava/util/List;", "binarySearch", "element", "fromIndex", "toIndex", "binarySearch-2fe2U9s", "([IIII)I", "binarySearch-K6DWlUc", "([JJII)I", "binarySearch-WpHrYlw", "([BBII)I", "binarySearch-EtDCXyQ", "([SSII)I", "max", "max--ajY-9A", "([I)Lkotlin/UInt;", "max-QwZRm1k", "([J)Lkotlin/ULong;", "max-GBYM_sE", "([B)Lkotlin/UByte;", "max-rL5Bavg", "([S)Lkotlin/UShort;", "maxBy", "R", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.TYPE_SELECTOR, "Lkotlin/Function1;", "maxBy-jgv0xPQ", "([ILkotlin/jvm/functions/Function1;)Lkotlin/UInt;", "maxBy-MShoTSo", "([JLkotlin/jvm/functions/Function1;)Lkotlin/ULong;", "maxBy-JOV_ifY", "([BLkotlin/jvm/functions/Function1;)Lkotlin/UByte;", "maxBy-xTcfx_M", "([SLkotlin/jvm/functions/Function1;)Lkotlin/UShort;", "maxWith", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "maxWith-YmdZ_VM", "([ILjava/util/Comparator;)Lkotlin/UInt;", "maxWith-zrEWJaI", "([JLjava/util/Comparator;)Lkotlin/ULong;", "maxWith-XMRcp5o", "([BLjava/util/Comparator;)Lkotlin/UByte;", "maxWith-eOHTfZs", "([SLjava/util/Comparator;)Lkotlin/UShort;", "min", "min--ajY-9A", "min-QwZRm1k", "min-GBYM_sE", "min-rL5Bavg", "minBy", "minBy-jgv0xPQ", "minBy-MShoTSo", "minBy-JOV_ifY", "minBy-xTcfx_M", "minWith", "minWith-YmdZ_VM", "minWith-zrEWJaI", "minWith-XMRcp5o", "minWith-eOHTfZs", "sumOf", "Ljava/math/BigDecimal;", "sumOfBigDecimal", "([ILkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "([JLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "([BLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "([SLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "Ljava/math/BigInteger;", "sumOfBigInteger", "([ILkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([JLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([BLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([SLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "kotlin-stdlib"}, m910k = 5, mv = {2, 3, 0}, pn = "kotlin.collections", xi = 49, xs = "kotlin/collections/unsigned/UArraysKt")
class UArraysKt___UArraysJvmKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* JADX INFO: renamed from: elementAt-qFRl0hI, reason: not valid java name */
    private static final int m4094elementAtqFRl0hI(int[] iArr, int i) {
        return UIntArray.m3763getpVg5ArA(iArr, i);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* JADX INFO: renamed from: elementAt-r7IrZao, reason: not valid java name */
    private static final long m4095elementAtr7IrZao(long[] jArr, int i) {
        return ULongArray.m3842getsVKNKU(jArr, i);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* JADX INFO: renamed from: elementAt-PpDY95g, reason: not valid java name */
    private static final byte m4092elementAtPpDY95g(byte[] bArr, int i) {
        return UByteArray.m3684getw2LRezQ(bArr, i);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* JADX INFO: renamed from: elementAt-nggk6HY, reason: not valid java name */
    private static final short m4093elementAtnggk6HY(short[] sArr, int i) {
        return UShortArray.m3947getMh2AYeg(sArr, i);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: asList--ajY-9A, reason: not valid java name */
    public static final List<UInt> m4080asListajY9A(int[] iArr) {
        return new UArraysKt___UArraysJvmKt$asList$1(iArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: asList-QwZRm1k, reason: not valid java name */
    public static final List<ULong> m4082asListQwZRm1k(long[] jArr) {
        return new UArraysKt___UArraysJvmKt$asList$2(jArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: asList-GBYM_sE, reason: not valid java name */
    public static final List<UByte> m4081asListGBYM_sE(byte[] bArr) {
        return new UArraysKt___UArraysJvmKt$asList$3(bArr);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: asList-rL5Bavg, reason: not valid java name */
    public static final List<UShort> m4083asListrL5Bavg(short[] sArr) {
        return new UArraysKt___UArraysJvmKt$asList$4(sArr);
    }

    /* JADX INFO: renamed from: binarySearch-2fe2U9s$default, reason: not valid java name */
    public static /* synthetic */ int m4085binarySearch2fe2U9s$default(int[] iArr, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = UIntArray.m3764getSizeimpl(iArr);
        }
        return m4084binarySearch2fe2U9s(iArr, i, i2, i3);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: binarySearch-2fe2U9s, reason: not valid java name */
    public static final int m4084binarySearch2fe2U9s(int[] iArr, int i, int i2, int i3) {
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(i2, i3, UIntArray.m3764getSizeimpl(iArr));
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            int iUintCompare = UnsignedKt.uintCompare(iArr[i5], i);
            if (iUintCompare < 0) {
                i2 = i5 + 1;
            } else {
                if (iUintCompare <= 0) {
                    return i5;
                }
                i4 = i5 - 1;
            }
        }
        return -(i2 + 1);
    }

    /* JADX INFO: renamed from: binarySearch-K6DWlUc$default, reason: not valid java name */
    public static /* synthetic */ int m4089binarySearchK6DWlUc$default(long[] jArr, long j, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = ULongArray.m3843getSizeimpl(jArr);
        }
        return m4088binarySearchK6DWlUc(jArr, j, i, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: binarySearch-K6DWlUc, reason: not valid java name */
    public static final int m4088binarySearchK6DWlUc(long[] jArr, long j, int i, int i2) {
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(i, i2, ULongArray.m3843getSizeimpl(jArr));
        int i3 = i2 - 1;
        while (i <= i3) {
            int i4 = (i + i3) >>> 1;
            int iUlongCompare = UnsignedKt.ulongCompare(jArr[i4], j);
            if (iUlongCompare < 0) {
                i = i4 + 1;
            } else {
                if (iUlongCompare <= 0) {
                    return i4;
                }
                i3 = i4 - 1;
            }
        }
        return -(i + 1);
    }

    /* JADX INFO: renamed from: binarySearch-WpHrYlw$default, reason: not valid java name */
    public static /* synthetic */ int m4091binarySearchWpHrYlw$default(byte[] bArr, byte b2, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = UByteArray.m3685getSizeimpl(bArr);
        }
        return m4090binarySearchWpHrYlw(bArr, b2, i, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: binarySearch-WpHrYlw, reason: not valid java name */
    public static final int m4090binarySearchWpHrYlw(byte[] bArr, byte b2, int i, int i2) {
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(i, i2, UByteArray.m3685getSizeimpl(bArr));
        int i3 = b2 & UByte.MAX_VALUE;
        int i4 = i2 - 1;
        while (i <= i4) {
            int i5 = (i + i4) >>> 1;
            int iUintCompare = UnsignedKt.uintCompare(bArr[i5], i3);
            if (iUintCompare < 0) {
                i = i5 + 1;
            } else {
                if (iUintCompare <= 0) {
                    return i5;
                }
                i4 = i5 - 1;
            }
        }
        return -(i + 1);
    }

    /* JADX INFO: renamed from: binarySearch-EtDCXyQ$default, reason: not valid java name */
    public static /* synthetic */ int m4087binarySearchEtDCXyQ$default(short[] sArr, short s, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = UShortArray.m3948getSizeimpl(sArr);
        }
        return m4086binarySearchEtDCXyQ(sArr, s, i, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: binarySearch-EtDCXyQ, reason: not valid java name */
    public static final int m4086binarySearchEtDCXyQ(short[] sArr, short s, int i, int i2) {
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(i, i2, UShortArray.m3948getSizeimpl(sArr));
        int i3 = s & UShort.MAX_VALUE;
        int i4 = i2 - 1;
        while (i <= i4) {
            int i5 = (i + i4) >>> 1;
            int iUintCompare = UnsignedKt.uintCompare(sArr[i5], i3);
            if (iUintCompare < 0) {
                i = i5 + 1;
            } else {
                if (iUintCompare <= 0) {
                    return i5;
                }
                i4 = i5 - 1;
            }
        }
        return -(i + 1);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use maxByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: maxBy-jgv0xPQ, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UInt m4102maxByjgv0xPQ(int[] iArr, Function1<? super UInt, ? extends R> function1) {
        if (UIntArray.m3766isEmptyimpl(iArr)) {
            return null;
        }
        int iM3763getpVg5ArA = UIntArray.m3763getpVg5ArA(iArr, 0);
        int lastIndex = ArraysKt.getLastIndex(iArr);
        if (lastIndex == 0) {
            return UInt.m3697boximpl(iM3763getpVg5ArA);
        }
        R rInvoke = function1.invoke(UInt.m3697boximpl(iM3763getpVg5ArA));
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                int iM3763getpVg5ArA2 = UIntArray.m3763getpVg5ArA(iArr, i);
                R rInvoke2 = function1.invoke(UInt.m3697boximpl(iM3763getpVg5ArA2));
                if (rInvoke.compareTo(rInvoke2) < 0) {
                    iM3763getpVg5ArA = iM3763getpVg5ArA2;
                    rInvoke = rInvoke2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UInt.m3697boximpl(iM3763getpVg5ArA);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use maxByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: maxBy-MShoTSo, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> ULong m4101maxByMShoTSo(long[] jArr, Function1<? super ULong, ? extends R> function1) {
        if (ULongArray.m3845isEmptyimpl(jArr)) {
            return null;
        }
        long jM3842getsVKNKU = ULongArray.m3842getsVKNKU(jArr, 0);
        int lastIndex = ArraysKt.getLastIndex(jArr);
        if (lastIndex == 0) {
            return ULong.m3776boximpl(jM3842getsVKNKU);
        }
        R rInvoke = function1.invoke(ULong.m3776boximpl(jM3842getsVKNKU));
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                long jM3842getsVKNKU2 = ULongArray.m3842getsVKNKU(jArr, i);
                R rInvoke2 = function1.invoke(ULong.m3776boximpl(jM3842getsVKNKU2));
                if (rInvoke.compareTo(rInvoke2) < 0) {
                    jM3842getsVKNKU = jM3842getsVKNKU2;
                    rInvoke = rInvoke2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return ULong.m3776boximpl(jM3842getsVKNKU);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use maxByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: maxBy-JOV_ifY, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UByte m4100maxByJOV_ifY(byte[] bArr, Function1<? super UByte, ? extends R> function1) {
        if (UByteArray.m3687isEmptyimpl(bArr)) {
            return null;
        }
        byte bM3684getw2LRezQ = UByteArray.m3684getw2LRezQ(bArr, 0);
        int lastIndex = ArraysKt.getLastIndex(bArr);
        if (lastIndex == 0) {
            return UByte.m3620boximpl(bM3684getw2LRezQ);
        }
        R rInvoke = function1.invoke(UByte.m3620boximpl(bM3684getw2LRezQ));
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                byte bM3684getw2LRezQ2 = UByteArray.m3684getw2LRezQ(bArr, i);
                R rInvoke2 = function1.invoke(UByte.m3620boximpl(bM3684getw2LRezQ2));
                if (rInvoke.compareTo(rInvoke2) < 0) {
                    bM3684getw2LRezQ = bM3684getw2LRezQ2;
                    rInvoke = rInvoke2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UByte.m3620boximpl(bM3684getw2LRezQ);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use maxByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.maxByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: maxBy-xTcfx_M, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UShort m4103maxByxTcfx_M(short[] sArr, Function1<? super UShort, ? extends R> function1) {
        if (UShortArray.m3950isEmptyimpl(sArr)) {
            return null;
        }
        short sM3947getMh2AYeg = UShortArray.m3947getMh2AYeg(sArr, 0);
        int lastIndex = ArraysKt.getLastIndex(sArr);
        if (lastIndex == 0) {
            return UShort.m3883boximpl(sM3947getMh2AYeg);
        }
        R rInvoke = function1.invoke(UShort.m3883boximpl(sM3947getMh2AYeg));
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                short sM3947getMh2AYeg2 = UShortArray.m3947getMh2AYeg(sArr, i);
                R rInvoke2 = function1.invoke(UShort.m3883boximpl(sM3947getMh2AYeg2));
                if (rInvoke.compareTo(rInvoke2) < 0) {
                    sM3947getMh2AYeg = sM3947getMh2AYeg2;
                    rInvoke = rInvoke2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UShort.m3883boximpl(sM3947getMh2AYeg);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use minByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: minBy-jgv0xPQ, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UInt m4114minByjgv0xPQ(int[] iArr, Function1<? super UInt, ? extends R> function1) {
        if (UIntArray.m3766isEmptyimpl(iArr)) {
            return null;
        }
        int iM3763getpVg5ArA = UIntArray.m3763getpVg5ArA(iArr, 0);
        int lastIndex = ArraysKt.getLastIndex(iArr);
        if (lastIndex == 0) {
            return UInt.m3697boximpl(iM3763getpVg5ArA);
        }
        R rInvoke = function1.invoke(UInt.m3697boximpl(iM3763getpVg5ArA));
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                int iM3763getpVg5ArA2 = UIntArray.m3763getpVg5ArA(iArr, i);
                R rInvoke2 = function1.invoke(UInt.m3697boximpl(iM3763getpVg5ArA2));
                if (rInvoke.compareTo(rInvoke2) > 0) {
                    iM3763getpVg5ArA = iM3763getpVg5ArA2;
                    rInvoke = rInvoke2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UInt.m3697boximpl(iM3763getpVg5ArA);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use minByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: minBy-MShoTSo, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> ULong m4113minByMShoTSo(long[] jArr, Function1<? super ULong, ? extends R> function1) {
        if (ULongArray.m3845isEmptyimpl(jArr)) {
            return null;
        }
        long jM3842getsVKNKU = ULongArray.m3842getsVKNKU(jArr, 0);
        int lastIndex = ArraysKt.getLastIndex(jArr);
        if (lastIndex == 0) {
            return ULong.m3776boximpl(jM3842getsVKNKU);
        }
        R rInvoke = function1.invoke(ULong.m3776boximpl(jM3842getsVKNKU));
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                long jM3842getsVKNKU2 = ULongArray.m3842getsVKNKU(jArr, i);
                R rInvoke2 = function1.invoke(ULong.m3776boximpl(jM3842getsVKNKU2));
                if (rInvoke.compareTo(rInvoke2) > 0) {
                    jM3842getsVKNKU = jM3842getsVKNKU2;
                    rInvoke = rInvoke2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return ULong.m3776boximpl(jM3842getsVKNKU);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use minByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: minBy-JOV_ifY, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UByte m4112minByJOV_ifY(byte[] bArr, Function1<? super UByte, ? extends R> function1) {
        if (UByteArray.m3687isEmptyimpl(bArr)) {
            return null;
        }
        byte bM3684getw2LRezQ = UByteArray.m3684getw2LRezQ(bArr, 0);
        int lastIndex = ArraysKt.getLastIndex(bArr);
        if (lastIndex == 0) {
            return UByte.m3620boximpl(bM3684getw2LRezQ);
        }
        R rInvoke = function1.invoke(UByte.m3620boximpl(bM3684getw2LRezQ));
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                byte bM3684getw2LRezQ2 = UByteArray.m3684getw2LRezQ(bArr, i);
                R rInvoke2 = function1.invoke(UByte.m3620boximpl(bM3684getw2LRezQ2));
                if (rInvoke.compareTo(rInvoke2) > 0) {
                    bM3684getw2LRezQ = bM3684getw2LRezQ2;
                    rInvoke = rInvoke2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UByte.m3620boximpl(bM3684getw2LRezQ);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @Deprecated(message = "Use minByOrNull instead.", replaceWith = @ReplaceWith(expression = "this.minByOrNull(selector)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "1.5", hiddenSince = "1.6", warningSince = "1.4")
    /* JADX INFO: renamed from: minBy-xTcfx_M, reason: not valid java name */
    private static final /* synthetic */ <R extends Comparable<? super R>> UShort m4115minByxTcfx_M(short[] sArr, Function1<? super UShort, ? extends R> function1) {
        if (UShortArray.m3950isEmptyimpl(sArr)) {
            return null;
        }
        short sM3947getMh2AYeg = UShortArray.m3947getMh2AYeg(sArr, 0);
        int lastIndex = ArraysKt.getLastIndex(sArr);
        if (lastIndex == 0) {
            return UShort.m3883boximpl(sM3947getMh2AYeg);
        }
        R rInvoke = function1.invoke(UShort.m3883boximpl(sM3947getMh2AYeg));
        int i = 1;
        if (1 <= lastIndex) {
            while (true) {
                short sM3947getMh2AYeg2 = UShortArray.m3947getMh2AYeg(sArr, i);
                R rInvoke2 = function1.invoke(UShort.m3883boximpl(sM3947getMh2AYeg2));
                if (rInvoke.compareTo(rInvoke2) > 0) {
                    sM3947getMh2AYeg = sM3947getMh2AYeg2;
                    rInvoke = rInvoke2;
                }
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return UShort.m3883boximpl(sM3947getMh2AYeg);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(int[] iArr, Function1<? super UInt, ? extends BigDecimal> function1) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0L);
        int iM3764getSizeimpl = UIntArray.m3764getSizeimpl(iArr);
        for (int i = 0; i < iM3764getSizeimpl; i++) {
            bigDecimalValueOf = bigDecimalValueOf.add(function1.invoke(UInt.m3697boximpl(UIntArray.m3763getpVg5ArA(iArr, i))));
        }
        return bigDecimalValueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(long[] jArr, Function1<? super ULong, ? extends BigDecimal> function1) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0L);
        int iM3843getSizeimpl = ULongArray.m3843getSizeimpl(jArr);
        for (int i = 0; i < iM3843getSizeimpl; i++) {
            bigDecimalValueOf = bigDecimalValueOf.add(function1.invoke(ULong.m3776boximpl(ULongArray.m3842getsVKNKU(jArr, i))));
        }
        return bigDecimalValueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(byte[] bArr, Function1<? super UByte, ? extends BigDecimal> function1) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0L);
        int iM3685getSizeimpl = UByteArray.m3685getSizeimpl(bArr);
        for (int i = 0; i < iM3685getSizeimpl; i++) {
            bigDecimalValueOf = bigDecimalValueOf.add(function1.invoke(UByte.m3620boximpl(UByteArray.m3684getw2LRezQ(bArr, i))));
        }
        return bigDecimalValueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(short[] sArr, Function1<? super UShort, ? extends BigDecimal> function1) {
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0L);
        int iM3948getSizeimpl = UShortArray.m3948getSizeimpl(sArr);
        for (int i = 0; i < iM3948getSizeimpl; i++) {
            bigDecimalValueOf = bigDecimalValueOf.add(function1.invoke(UShort.m3883boximpl(UShortArray.m3947getMh2AYeg(sArr, i))));
        }
        return bigDecimalValueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(int[] iArr, Function1<? super UInt, ? extends BigInteger> function1) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0L);
        int iM3764getSizeimpl = UIntArray.m3764getSizeimpl(iArr);
        for (int i = 0; i < iM3764getSizeimpl; i++) {
            bigIntegerValueOf = bigIntegerValueOf.add(function1.invoke(UInt.m3697boximpl(UIntArray.m3763getpVg5ArA(iArr, i))));
        }
        return bigIntegerValueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(long[] jArr, Function1<? super ULong, ? extends BigInteger> function1) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0L);
        int iM3843getSizeimpl = ULongArray.m3843getSizeimpl(jArr);
        for (int i = 0; i < iM3843getSizeimpl; i++) {
            bigIntegerValueOf = bigIntegerValueOf.add(function1.invoke(ULong.m3776boximpl(ULongArray.m3842getsVKNKU(jArr, i))));
        }
        return bigIntegerValueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(byte[] bArr, Function1<? super UByte, ? extends BigInteger> function1) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0L);
        int iM3685getSizeimpl = UByteArray.m3685getSizeimpl(bArr);
        for (int i = 0; i < iM3685getSizeimpl; i++) {
            bigIntegerValueOf = bigIntegerValueOf.add(function1.invoke(UByte.m3620boximpl(UByteArray.m3684getw2LRezQ(bArr, i))));
        }
        return bigIntegerValueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(short[] sArr, Function1<? super UShort, ? extends BigInteger> function1) {
        BigInteger bigIntegerValueOf = BigInteger.valueOf(0L);
        int iM3948getSizeimpl = UShortArray.m3948getSizeimpl(sArr);
        for (int i = 0; i < iM3948getSizeimpl; i++) {
            bigIntegerValueOf = bigIntegerValueOf.add(function1.invoke(UShort.m3883boximpl(UShortArray.m3947getMh2AYeg(sArr, i))));
        }
        return bigIntegerValueOf;
    }
}
