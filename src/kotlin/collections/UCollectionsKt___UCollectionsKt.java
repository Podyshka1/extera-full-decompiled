package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.JvmName;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\b\u0007\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0004\u001a\u0019\u0010\u0005\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020\u00070\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\b\u001a\u0019\u0010\t\u001a\u00020\n*\b\u0012\u0004\u0012\u00020\u000b0\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\f\u001a\u0019\u0010\r\u001a\u00020\u000e*\b\u0012\u0004\u0012\u00020\u000f0\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0010\u001a\u001b\u0010\u0011\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00070\u0012H\u0087\u0080\u0004¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u001b\u0010\u0011\u001a\u00020\u000b*\b\u0012\u0004\u0012\u00020\u000b0\u0012H\u0087\u0080\u0004¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u001b\u0010\u0011\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u00030\u0012H\u0087\u0080\u0004¢\u0006\u0004\b\u0017\u0010\u0014\u001a\u001b\u0010\u0011\u001a\u00020\u0007*\b\u0012\u0004\u0012\u00020\u000f0\u0012H\u0087\u0080\u0004¢\u0006\u0004\b\u0018\u0010\u0014¨\u0006\u0019"}, d2 = {"toUByteArray", "Lkotlin/UByteArray;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/UByte;", "(Ljava/util/Collection;)[B", "toUIntArray", "Lkotlin/UIntArray;", "Lkotlin/UInt;", "(Ljava/util/Collection;)[I", "toULongArray", "Lkotlin/ULongArray;", "Lkotlin/ULong;", "(Ljava/util/Collection;)[J", "toUShortArray", "Lkotlin/UShortArray;", "Lkotlin/UShort;", "(Ljava/util/Collection;)[S", "sum", _UrlKt.FRAGMENT_ENCODE_SET, "sumOfUInt", "(Ljava/lang/Iterable;)I", "sumOfULong", "(Ljava/lang/Iterable;)J", "sumOfUByte", "sumOfUShort", "kotlin-stdlib"}, m910k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/collections/UCollectionsKt")
class UCollectionsKt___UCollectionsKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final byte[] toUByteArray(Collection<UByte> collection) {
        byte[] bArrM3678constructorimpl = UByteArray.m3678constructorimpl(collection.size());
        Iterator<UByte> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            UByteArray.m3689setVurrAj0(bArrM3678constructorimpl, i, it.next().getData());
            i++;
        }
        return bArrM3678constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final int[] toUIntArray(Collection<UInt> collection) {
        int[] iArrM3757constructorimpl = UIntArray.m3757constructorimpl(collection.size());
        Iterator<UInt> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            UIntArray.m3768setVXSXFK8(iArrM3757constructorimpl, i, it.next().getData());
            i++;
        }
        return iArrM3757constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final long[] toULongArray(Collection<ULong> collection) {
        long[] jArrM3836constructorimpl = ULongArray.m3836constructorimpl(collection.size());
        Iterator<ULong> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            ULongArray.m3847setk8EXiF4(jArrM3836constructorimpl, i, it.next().getData());
            i++;
        }
        return jArrM3836constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    public static final short[] toUShortArray(Collection<UShort> collection) {
        short[] sArrM3941constructorimpl = UShortArray.m3941constructorimpl(collection.size());
        Iterator<UShort> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            UShortArray.m3952set01HTLdE(sArrM3941constructorimpl, i, it.next().getData());
            i++;
        }
        return sArrM3941constructorimpl;
    }

    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUInt")
    public static final int sumOfUInt(Iterable<UInt> iterable) {
        Iterator<UInt> it = iterable.iterator();
        int iM3703constructorimpl = 0;
        while (it.hasNext()) {
            iM3703constructorimpl = UInt.m3703constructorimpl(iM3703constructorimpl + it.next().getData());
        }
        return iM3703constructorimpl;
    }

    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfULong")
    public static final long sumOfULong(Iterable<ULong> iterable) {
        Iterator<ULong> it = iterable.iterator();
        long jM3782constructorimpl = 0;
        while (it.hasNext()) {
            jM3782constructorimpl = ULong.m3782constructorimpl(jM3782constructorimpl + it.next().getData());
        }
        return jM3782constructorimpl;
    }

    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUByte")
    public static final int sumOfUByte(Iterable<UByte> iterable) {
        Iterator<UByte> it = iterable.iterator();
        int iM3703constructorimpl = 0;
        while (it.hasNext()) {
            iM3703constructorimpl = UInt.m3703constructorimpl(iM3703constructorimpl + UInt.m3703constructorimpl(it.next().getData() & UByte.MAX_VALUE));
        }
        return iM3703constructorimpl;
    }

    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUShort")
    public static final int sumOfUShort(Iterable<UShort> iterable) {
        Iterator<UShort> it = iterable.iterator();
        int iM3703constructorimpl = 0;
        while (it.hasNext()) {
            iM3703constructorimpl = UInt.m3703constructorimpl(iM3703constructorimpl + UInt.m3703constructorimpl(it.next().getData() & UShort.MAX_VALUE));
        }
        return iM3703constructorimpl;
    }
}
