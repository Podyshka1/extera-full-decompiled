package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.jvm.JvmName;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\u0087\u0080\u0004¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001b\u0010\u0000\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\u00050\u0002H\u0087\u0080\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\b0\u0002H\u0087\u0080\u0004¢\u0006\u0004\b\t\u0010\u0004\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\n0\u0002H\u0087\u0080\u0004¢\u0006\u0004\b\u000b\u0010\u0004¨\u0006\f"}, d2 = {"sum", "Lkotlin/UInt;", "Lkotlin/sequences/Sequence;", "sumOfUInt", "(Lkotlin/sequences/Sequence;)I", "Lkotlin/ULong;", "sumOfULong", "(Lkotlin/sequences/Sequence;)J", "Lkotlin/UByte;", "sumOfUByte", "Lkotlin/UShort;", "sumOfUShort", "kotlin-stdlib"}, m910k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/sequences/USequencesKt")
class USequencesKt___USequencesKt {
    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUInt")
    public static final int sumOfUInt(Sequence<UInt> sequence) {
        Iterator<UInt> it = sequence.iterator();
        int iM3703constructorimpl = 0;
        while (it.hasNext()) {
            iM3703constructorimpl = UInt.m3703constructorimpl(iM3703constructorimpl + it.next().getData());
        }
        return iM3703constructorimpl;
    }

    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfULong")
    public static final long sumOfULong(Sequence<ULong> sequence) {
        Iterator<ULong> it = sequence.iterator();
        long jM3782constructorimpl = 0;
        while (it.hasNext()) {
            jM3782constructorimpl = ULong.m3782constructorimpl(jM3782constructorimpl + it.next().getData());
        }
        return jM3782constructorimpl;
    }

    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUByte")
    public static final int sumOfUByte(Sequence<UByte> sequence) {
        Iterator<UByte> it = sequence.iterator();
        int iM3703constructorimpl = 0;
        while (it.hasNext()) {
            iM3703constructorimpl = UInt.m3703constructorimpl(iM3703constructorimpl + UInt.m3703constructorimpl(it.next().getData() & UByte.MAX_VALUE));
        }
        return iM3703constructorimpl;
    }

    @SinceKotlin(version = "1.5")
    @JvmName(name = "sumOfUShort")
    public static final int sumOfUShort(Sequence<UShort> sequence) {
        Iterator<UShort> it = sequence.iterator();
        int iM3703constructorimpl = 0;
        while (it.hasNext()) {
            iM3703constructorimpl = UInt.m3703constructorimpl(iM3703constructorimpl + UInt.m3703constructorimpl(it.next().getData() & UShort.MAX_VALUE));
        }
        return iM3703constructorimpl;
    }
}
