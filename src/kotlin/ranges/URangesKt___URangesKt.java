package kotlin.ranges;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.UIntArray$Iterator$$ExternalSyntheticBUOutline0;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.URandomKt;
import kotlin.ranges.UIntProgression;
import kotlin.ranges.ULongProgression;
import okhttp3.MediaType$Companion$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000X\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0013\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0003\u001a\u0013\u0010\u0000\u001a\u00020\u0004*\u00020\u0005H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0006\u001a\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0087\u0080\u0004\u001a\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004*\u00020\u0005H\u0087\u0080\u0004\u001a\u0013\u0010\b\u001a\u00020\u0001*\u00020\u0002H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0003\u001a\u0013\u0010\b\u001a\u00020\u0004*\u00020\u0005H\u0087\u0080\u0004¢\u0006\u0002\u0010\u0006\u001a\u0010\u0010\t\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0087\u0080\u0004\u001a\u0010\u0010\t\u001a\u0004\u0018\u00010\u0004*\u00020\u0005H\u0087\u0080\u0004\u001a\u0013\u0010\n\u001a\u00020\u0001*\u00020\u000bH\u0087\u0088\u0004¢\u0006\u0002\u0010\f\u001a\u0013\u0010\n\u001a\u00020\u0004*\u00020\rH\u0087\u0088\u0004¢\u0006\u0002\u0010\u000e\u001a\u001b\u0010\n\u001a\u00020\u0001*\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000fH\u0087\u0080\u0004¢\u0006\u0002\u0010\u0010\u001a\u001b\u0010\n\u001a\u00020\u0004*\u00020\r2\u0006\u0010\n\u001a\u00020\u000fH\u0087\u0080\u0004¢\u0006\u0002\u0010\u0011\u001a\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\u000bH\u0087\u0088\u0004\u001a\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0004*\u00020\rH\u0087\u0088\u0004\u001a\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000fH\u0087\u0080\u0004\u001a\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u0004*\u00020\r2\u0006\u0010\n\u001a\u00020\u000fH\u0087\u0080\u0004\u001a\u001d\u0010\u0013\u001a\u00020\u0014*\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0087\u008a\u0004¢\u0006\u0002\b\u0016\u001a\u001d\u0010\u0013\u001a\u00020\u0014*\u00020\r2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004H\u0087\u008a\u0004¢\u0006\u0002\b\u0017\u001a\u001d\u0010\u0013\u001a\u00020\u0014*\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0087\u0082\u0004¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u001d\u0010\u0013\u001a\u00020\u0014*\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0019H\u0087\u0082\u0004¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u001d\u0010\u0013\u001a\u00020\u0014*\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0001H\u0087\u0082\u0004¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u001d\u0010\u0013\u001a\u00020\u0014*\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0004H\u0087\u0082\u0004¢\u0006\u0004\b \u0010!\u001a\u001d\u0010\u0013\u001a\u00020\u0014*\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\"H\u0087\u0082\u0004¢\u0006\u0004\b#\u0010$\u001a\u001d\u0010\u0013\u001a\u00020\u0014*\u00020\r2\u0006\u0010\u0018\u001a\u00020\"H\u0087\u0082\u0004¢\u0006\u0004\b%\u0010&\u001a\u001d\u0010'\u001a\u00020\u0002*\u00020\u00192\u0006\u0010(\u001a\u00020\u0019H\u0087\u0084\u0004¢\u0006\u0004\b)\u0010*\u001a\u001d\u0010'\u001a\u00020\u0002*\u00020\u00012\u0006\u0010(\u001a\u00020\u0001H\u0087\u0084\u0004¢\u0006\u0004\b+\u0010,\u001a\u001d\u0010'\u001a\u00020\u0005*\u00020\u00042\u0006\u0010(\u001a\u00020\u0004H\u0087\u0084\u0004¢\u0006\u0004\b-\u0010.\u001a\u001d\u0010'\u001a\u00020\u0002*\u00020\"2\u0006\u0010(\u001a\u00020\"H\u0087\u0084\u0004¢\u0006\u0004\b/\u00100\u001a\u000e\u00101\u001a\u00020\u0002*\u00020\u0002H\u0087\u0080\u0004\u001a\u000e\u00101\u001a\u00020\u0005*\u00020\u0005H\u0087\u0080\u0004\u001a\u0016\u00102\u001a\u00020\u0002*\u00020\u00022\u0006\u00102\u001a\u000203H\u0087\u0084\u0004\u001a\u0016\u00102\u001a\u00020\u0005*\u00020\u00052\u0006\u00102\u001a\u000204H\u0087\u0084\u0004\u001a\u001d\u00105\u001a\u00020\u000b*\u00020\u00192\u0006\u0010(\u001a\u00020\u0019H\u0087\u0084\u0004¢\u0006\u0004\b6\u00107\u001a\u001d\u00105\u001a\u00020\u000b*\u00020\u00012\u0006\u0010(\u001a\u00020\u0001H\u0087\u0084\u0004¢\u0006\u0004\b8\u00109\u001a\u001d\u00105\u001a\u00020\r*\u00020\u00042\u0006\u0010(\u001a\u00020\u0004H\u0087\u0084\u0004¢\u0006\u0004\b:\u0010;\u001a\u001d\u00105\u001a\u00020\u000b*\u00020\"2\u0006\u0010(\u001a\u00020\"H\u0087\u0084\u0004¢\u0006\u0004\b<\u0010=\u001a\u001d\u0010>\u001a\u00020\u0001*\u00020\u00012\u0006\u0010?\u001a\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0004\b@\u0010A\u001a\u001d\u0010>\u001a\u00020\u0004*\u00020\u00042\u0006\u0010?\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0004\bB\u0010C\u001a\u001d\u0010>\u001a\u00020\u0019*\u00020\u00192\u0006\u0010?\u001a\u00020\u0019H\u0087\u0080\u0004¢\u0006\u0004\bD\u0010E\u001a\u001d\u0010>\u001a\u00020\"*\u00020\"2\u0006\u0010?\u001a\u00020\"H\u0087\u0080\u0004¢\u0006\u0004\bF\u0010G\u001a\u001d\u0010H\u001a\u00020\u0001*\u00020\u00012\u0006\u0010I\u001a\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0004\bJ\u0010A\u001a\u001d\u0010H\u001a\u00020\u0004*\u00020\u00042\u0006\u0010I\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0004\bK\u0010C\u001a\u001d\u0010H\u001a\u00020\u0019*\u00020\u00192\u0006\u0010I\u001a\u00020\u0019H\u0087\u0080\u0004¢\u0006\u0004\bL\u0010E\u001a\u001d\u0010H\u001a\u00020\"*\u00020\"2\u0006\u0010I\u001a\u00020\"H\u0087\u0080\u0004¢\u0006\u0004\bM\u0010G\u001a%\u0010N\u001a\u00020\u0001*\u00020\u00012\u0006\u0010?\u001a\u00020\u00012\u0006\u0010I\u001a\u00020\u0001H\u0087\u0080\u0004¢\u0006\u0004\bO\u0010P\u001a%\u0010N\u001a\u00020\u0004*\u00020\u00042\u0006\u0010?\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u0004H\u0087\u0080\u0004¢\u0006\u0004\bQ\u0010R\u001a%\u0010N\u001a\u00020\u0019*\u00020\u00192\u0006\u0010?\u001a\u00020\u00192\u0006\u0010I\u001a\u00020\u0019H\u0087\u0080\u0004¢\u0006\u0004\bS\u0010T\u001a%\u0010N\u001a\u00020\"*\u00020\"2\u0006\u0010?\u001a\u00020\"2\u0006\u0010I\u001a\u00020\"H\u0087\u0080\u0004¢\u0006\u0004\bU\u0010V\u001a#\u0010N\u001a\u00020\u0001*\u00020\u00012\f\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00010XH\u0087\u0080\u0004¢\u0006\u0004\bY\u0010Z\u001a#\u0010N\u001a\u00020\u0004*\u00020\u00042\f\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00040XH\u0087\u0080\u0004¢\u0006\u0004\b[\u0010\\¨\u0006]"}, d2 = {"first", "Lkotlin/UInt;", "Lkotlin/ranges/UIntProgression;", "(Lkotlin/ranges/UIntProgression;)I", "Lkotlin/ULong;", "Lkotlin/ranges/ULongProgression;", "(Lkotlin/ranges/ULongProgression;)J", "firstOrNull", "last", "lastOrNull", "random", "Lkotlin/ranges/UIntRange;", "(Lkotlin/ranges/UIntRange;)I", "Lkotlin/ranges/ULongRange;", "(Lkotlin/ranges/ULongRange;)J", "Lkotlin/random/Random;", "(Lkotlin/ranges/UIntRange;Lkotlin/random/Random;)I", "(Lkotlin/ranges/ULongRange;Lkotlin/random/Random;)J", "randomOrNull", "contains", _UrlKt.FRAGMENT_ENCODE_SET, "element", "contains-biwQdVI", "contains-GYNo2lE", "value", "Lkotlin/UByte;", "contains-68kG9v0", "(Lkotlin/ranges/UIntRange;B)Z", "contains-ULb-yJY", "(Lkotlin/ranges/ULongRange;B)Z", "contains-Gab390E", "(Lkotlin/ranges/ULongRange;I)Z", "contains-fz5IDCE", "(Lkotlin/ranges/UIntRange;J)Z", "Lkotlin/UShort;", "contains-ZsK3CEQ", "(Lkotlin/ranges/UIntRange;S)Z", "contains-uhHAxoY", "(Lkotlin/ranges/ULongRange;S)Z", "downTo", "to", "downTo-Kr8caGY", "(BB)Lkotlin/ranges/UIntProgression;", "downTo-J1ME1BU", "(II)Lkotlin/ranges/UIntProgression;", "downTo-eb3DHEI", "(JJ)Lkotlin/ranges/ULongProgression;", "downTo-5PvTz6A", "(SS)Lkotlin/ranges/UIntProgression;", "reversed", "step", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "until", "until-Kr8caGY", "(BB)Lkotlin/ranges/UIntRange;", "until-J1ME1BU", "(II)Lkotlin/ranges/UIntRange;", "until-eb3DHEI", "(JJ)Lkotlin/ranges/ULongRange;", "until-5PvTz6A", "(SS)Lkotlin/ranges/UIntRange;", "coerceAtLeast", "minimumValue", "coerceAtLeast-J1ME1BU", "(II)I", "coerceAtLeast-eb3DHEI", "(JJ)J", "coerceAtLeast-Kr8caGY", "(BB)B", "coerceAtLeast-5PvTz6A", "(SS)S", "coerceAtMost", "maximumValue", "coerceAtMost-J1ME1BU", "coerceAtMost-eb3DHEI", "coerceAtMost-Kr8caGY", "coerceAtMost-5PvTz6A", "coerceIn", "coerceIn-WZ9TVnA", "(III)I", "coerceIn-sambcqE", "(JJJ)J", "coerceIn-b33U2AM", "(BBB)B", "coerceIn-VKSA0NQ", "(SSS)S", "range", "Lkotlin/ranges/ClosedRange;", "coerceIn-wuiCnnA", "(ILkotlin/ranges/ClosedRange;)I", "coerceIn-JPwROB0", "(JLkotlin/ranges/ClosedRange;)J", "kotlin-stdlib"}, m862k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/ranges/URangesKt")
public class URangesKt___URangesKt {
    @SinceKotlin(version = "1.7")
    public static final int first(UIntProgression uIntProgression) {
        if (uIntProgression.isEmpty()) {
            RangesKt___RangesKt$$ExternalSyntheticBUOutline0.m885m("Progression ", uIntProgression, " is empty.");
            return 0;
        }
        return uIntProgression.getFirst();
    }

    @SinceKotlin(version = "1.7")
    public static final long first(ULongProgression uLongProgression) {
        if (uLongProgression.isEmpty()) {
            RangesKt___RangesKt$$ExternalSyntheticBUOutline0.m885m("Progression ", uLongProgression, " is empty.");
            return 0L;
        }
        return uLongProgression.getFirst();
    }

    @SinceKotlin(version = "1.7")
    public static final UInt firstOrNull(UIntProgression uIntProgression) {
        if (uIntProgression.isEmpty()) {
            return null;
        }
        return UInt.m3176boximpl(uIntProgression.getFirst());
    }

    @SinceKotlin(version = "1.7")
    public static final ULong firstOrNull(ULongProgression uLongProgression) {
        if (uLongProgression.isEmpty()) {
            return null;
        }
        return ULong.m3255boximpl(uLongProgression.getFirst());
    }

    @SinceKotlin(version = "1.7")
    public static final int last(UIntProgression uIntProgression) {
        if (uIntProgression.isEmpty()) {
            RangesKt___RangesKt$$ExternalSyntheticBUOutline0.m885m("Progression ", uIntProgression, " is empty.");
            return 0;
        }
        return uIntProgression.getLast();
    }

    @SinceKotlin(version = "1.7")
    public static final long last(ULongProgression uLongProgression) {
        if (uLongProgression.isEmpty()) {
            RangesKt___RangesKt$$ExternalSyntheticBUOutline0.m885m("Progression ", uLongProgression, " is empty.");
            return 0L;
        }
        return uLongProgression.getLast();
    }

    @SinceKotlin(version = "1.7")
    public static final UInt lastOrNull(UIntProgression uIntProgression) {
        if (uIntProgression.isEmpty()) {
            return null;
        }
        return UInt.m3176boximpl(uIntProgression.getLast());
    }

    @SinceKotlin(version = "1.7")
    public static final ULong lastOrNull(ULongProgression uLongProgression) {
        if (uLongProgression.isEmpty()) {
            return null;
        }
        return ULong.m3255boximpl(uLongProgression.getLast());
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int random(UIntRange uIntRange) {
        return random(uIntRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long random(ULongRange uLongRange) {
        return random(uLongRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.5")
    public static final int random(UIntRange uIntRange, Random random) {
        try {
            return URandomKt.nextUInt(random, uIntRange);
        } catch (IllegalArgumentException e) {
            UIntArray$Iterator$$ExternalSyntheticBUOutline0.m868m(e.getMessage());
            return 0;
        }
    }

    @SinceKotlin(version = "1.5")
    public static final long random(ULongRange uLongRange, Random random) {
        try {
            return URandomKt.nextULong(random, uLongRange);
        } catch (IllegalArgumentException e) {
            UIntArray$Iterator$$ExternalSyntheticBUOutline0.m868m(e.getMessage());
            return 0L;
        }
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final UInt randomOrNull(UIntRange uIntRange) {
        return randomOrNull(uIntRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final ULong randomOrNull(ULongRange uLongRange) {
        return randomOrNull(uLongRange, Random.INSTANCE);
    }

    @SinceKotlin(version = "1.5")
    public static final UInt randomOrNull(UIntRange uIntRange, Random random) {
        if (uIntRange.isEmpty()) {
            return null;
        }
        return UInt.m3176boximpl(URandomKt.nextUInt(random, uIntRange));
    }

    @SinceKotlin(version = "1.5")
    public static final ULong randomOrNull(ULongRange uLongRange, Random random) {
        if (uLongRange.isEmpty()) {
            return null;
        }
        return ULong.m3255boximpl(URandomKt.nextULong(random, uLongRange));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: contains-biwQdVI, reason: not valid java name */
    private static final boolean m4364containsbiwQdVI(UIntRange uIntRange, UInt uInt) {
        return uInt != null && uIntRange.m4332containsWZ4Q5Ns(uInt.getData());
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* JADX INFO: renamed from: contains-GYNo2lE, reason: not valid java name */
    private static final boolean m4360containsGYNo2lE(ULongRange uLongRange, ULong uLong) {
        return uLong != null && uLongRange.m4341containsVKZWuLQ(uLong.getData());
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: contains-68kG9v0, reason: not valid java name */
    public static final boolean m4359contains68kG9v0(UIntRange uIntRange, byte b2) {
        return uIntRange.m4332containsWZ4Q5Ns(UInt.m3182constructorimpl(b2 & UByte.MAX_VALUE));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: contains-ULb-yJY, reason: not valid java name */
    public static final boolean m4362containsULbyJY(ULongRange uLongRange, byte b2) {
        return uLongRange.m4341containsVKZWuLQ(ULong.m3261constructorimpl(((long) b2) & 255));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: contains-Gab390E, reason: not valid java name */
    public static final boolean m4361containsGab390E(ULongRange uLongRange, int i) {
        return uLongRange.m4341containsVKZWuLQ(ULong.m3261constructorimpl(((long) i) & 4294967295L));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: contains-fz5IDCE, reason: not valid java name */
    public static final boolean m4365containsfz5IDCE(UIntRange uIntRange, long j) {
        return ULong.m3261constructorimpl(j >>> 32) == 0 && uIntRange.m4332containsWZ4Q5Ns(UInt.m3182constructorimpl((int) j));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: contains-ZsK3CEQ, reason: not valid java name */
    public static final boolean m4363containsZsK3CEQ(UIntRange uIntRange, short s) {
        return uIntRange.m4332containsWZ4Q5Ns(UInt.m3182constructorimpl(s & UShort.MAX_VALUE));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: contains-uhHAxoY, reason: not valid java name */
    public static final boolean m4366containsuhHAxoY(ULongRange uLongRange, short s) {
        return uLongRange.m4341containsVKZWuLQ(ULong.m3261constructorimpl(((long) s) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: downTo-Kr8caGY, reason: not valid java name */
    public static final UIntProgression m4369downToKr8caGY(byte b2, byte b3) {
        return UIntProgression.INSTANCE.m4329fromClosedRangeNkh28Cs(UInt.m3182constructorimpl(b2 & UByte.MAX_VALUE), UInt.m3182constructorimpl(b3 & UByte.MAX_VALUE), -1);
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: downTo-J1ME1BU, reason: not valid java name */
    public static final UIntProgression m4368downToJ1ME1BU(int i, int i2) {
        return UIntProgression.INSTANCE.m4329fromClosedRangeNkh28Cs(i, i2, -1);
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: downTo-eb3DHEI, reason: not valid java name */
    public static final ULongProgression m4370downToeb3DHEI(long j, long j2) {
        return ULongProgression.INSTANCE.m4338fromClosedRange7ftBX0g(j, j2, -1L);
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: downTo-5PvTz6A, reason: not valid java name */
    public static final UIntProgression m4367downTo5PvTz6A(short s, short s2) {
        return UIntProgression.INSTANCE.m4329fromClosedRangeNkh28Cs(UInt.m3182constructorimpl(s & UShort.MAX_VALUE), UInt.m3182constructorimpl(s2 & UShort.MAX_VALUE), -1);
    }

    @SinceKotlin(version = "1.5")
    public static final UIntProgression reversed(UIntProgression uIntProgression) {
        return UIntProgression.INSTANCE.m4329fromClosedRangeNkh28Cs(uIntProgression.getLast(), uIntProgression.getFirst(), -uIntProgression.getStep());
    }

    @SinceKotlin(version = "1.5")
    public static final ULongProgression reversed(ULongProgression uLongProgression) {
        return ULongProgression.INSTANCE.m4338fromClosedRange7ftBX0g(uLongProgression.getLast(), uLongProgression.getFirst(), -uLongProgression.getStep());
    }

    @SinceKotlin(version = "1.5")
    public static final UIntProgression step(UIntProgression uIntProgression, int i) {
        RangesKt__RangesKt.checkStepIsPositive(i > 0, Integer.valueOf(i));
        UIntProgression.Companion companion = UIntProgression.INSTANCE;
        int first = uIntProgression.getFirst();
        int last = uIntProgression.getLast();
        if (uIntProgression.getStep() <= 0) {
            i = -i;
        }
        return companion.m4329fromClosedRangeNkh28Cs(first, last, i);
    }

    @SinceKotlin(version = "1.5")
    public static final ULongProgression step(ULongProgression uLongProgression, long j) {
        RangesKt__RangesKt.checkStepIsPositive(j > 0, Long.valueOf(j));
        ULongProgression.Companion companion = ULongProgression.INSTANCE;
        long first = uLongProgression.getFirst();
        long last = uLongProgression.getLast();
        if (uLongProgression.getStep() <= 0) {
            j = -j;
        }
        return companion.m4338fromClosedRange7ftBX0g(first, last, j);
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: until-Kr8caGY, reason: not valid java name */
    public static final UIntRange m4373untilKr8caGY(byte b2, byte b3) {
        return Intrinsics.compare(b3 & UByte.MAX_VALUE, 0) <= 0 ? UIntRange.INSTANCE.getEMPTY() : new UIntRange(UInt.m3182constructorimpl(b2 & UByte.MAX_VALUE), UInt.m3182constructorimpl(UInt.m3182constructorimpl(r3) - 1), null);
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: until-J1ME1BU, reason: not valid java name */
    public static UIntRange m4372untilJ1ME1BU(int i, int i2) {
        return Integer.compare(i2 ^ Integer.MIN_VALUE, 0 ^ Integer.MIN_VALUE) <= 0 ? UIntRange.INSTANCE.getEMPTY() : new UIntRange(i, UInt.m3182constructorimpl(i2 - 1), null);
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: until-eb3DHEI, reason: not valid java name */
    public static ULongRange m4374untileb3DHEI(long j, long j2) {
        return Long.compare(j2 ^ Long.MIN_VALUE, 0 ^ Long.MIN_VALUE) <= 0 ? ULongRange.INSTANCE.getEMPTY() : new ULongRange(j, ULong.m3261constructorimpl(j2 - ULong.m3261constructorimpl(1L)), null);
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: until-5PvTz6A, reason: not valid java name */
    public static final UIntRange m4371until5PvTz6A(short s, short s2) {
        return Intrinsics.compare(s2 & UShort.MAX_VALUE, 0) <= 0 ? UIntRange.INSTANCE.getEMPTY() : new UIntRange(UInt.m3182constructorimpl(s & UShort.MAX_VALUE), UInt.m3182constructorimpl(UInt.m3182constructorimpl(r3) - 1), null);
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: coerceAtLeast-J1ME1BU, reason: not valid java name */
    public static final int m4346coerceAtLeastJ1ME1BU(int i, int i2) {
        return Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) < 0 ? i2 : i;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: coerceAtLeast-eb3DHEI, reason: not valid java name */
    public static final long m4348coerceAtLeasteb3DHEI(long j, long j2) {
        return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) < 0 ? j2 : j;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: coerceAtLeast-Kr8caGY, reason: not valid java name */
    public static final byte m4347coerceAtLeastKr8caGY(byte b2, byte b3) {
        return Intrinsics.compare(b2 & UByte.MAX_VALUE, b3 & UByte.MAX_VALUE) < 0 ? b3 : b2;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: coerceAtLeast-5PvTz6A, reason: not valid java name */
    public static final short m4345coerceAtLeast5PvTz6A(short s, short s2) {
        return Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) < 0 ? s2 : s;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: coerceAtMost-J1ME1BU, reason: not valid java name */
    public static final int m4350coerceAtMostJ1ME1BU(int i, int i2) {
        return Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) > 0 ? i2 : i;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: coerceAtMost-eb3DHEI, reason: not valid java name */
    public static final long m4352coerceAtMosteb3DHEI(long j, long j2) {
        return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) > 0 ? j2 : j;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: coerceAtMost-Kr8caGY, reason: not valid java name */
    public static final byte m4351coerceAtMostKr8caGY(byte b2, byte b3) {
        return Intrinsics.compare(b2 & UByte.MAX_VALUE, b3 & UByte.MAX_VALUE) > 0 ? b3 : b2;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: coerceAtMost-5PvTz6A, reason: not valid java name */
    public static final short m4349coerceAtMost5PvTz6A(short s, short s2) {
        return Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) > 0 ? s2 : s;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: coerceIn-WZ9TVnA, reason: not valid java name */
    public static final int m4355coerceInWZ9TVnA(int i, int i2, int i3) {
        if (Integer.compare(i2 ^ Integer.MIN_VALUE, i3 ^ Integer.MIN_VALUE) <= 0) {
            return Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) < 0 ? i2 : Integer.compare(i ^ Integer.MIN_VALUE, i3 ^ Integer.MIN_VALUE) > 0 ? i3 : i;
        }
        StringBuilder sb = new StringBuilder("Cannot coerce value to an empty range: maximum ");
        sb.append((Object) UInt.m3228toStringimpl(i3));
        URangesKt___URangesKt$$ExternalSyntheticBUOutline0.m887m(sb, UInt.m3228toStringimpl(i2));
        return 0;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: coerceIn-sambcqE, reason: not valid java name */
    public static final long m4357coerceInsambcqE(long j, long j2, long j3) {
        if (Long.compare(j2 ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE) <= 0) {
            return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) < 0 ? j2 : Long.compare(j ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE) > 0 ? j3 : j;
        }
        StringBuilder sb = new StringBuilder("Cannot coerce value to an empty range: maximum ");
        sb.append((Object) ULong.m3307toStringimpl(j3));
        URangesKt___URangesKt$$ExternalSyntheticBUOutline0.m887m(sb, ULong.m3307toStringimpl(j2));
        return 0L;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: coerceIn-b33U2AM, reason: not valid java name */
    public static final byte m4356coerceInb33U2AM(byte b2, byte b3, byte b4) {
        int i = b3 & UByte.MAX_VALUE;
        int i2 = b4 & UByte.MAX_VALUE;
        if (Intrinsics.compare(i, i2) <= 0) {
            int i3 = b2 & UByte.MAX_VALUE;
            return Intrinsics.compare(i3, i) < 0 ? b3 : Intrinsics.compare(i3, i2) > 0 ? b4 : b2;
        }
        StringBuilder sb = new StringBuilder("Cannot coerce value to an empty range: maximum ");
        sb.append((Object) UByte.m3149toStringimpl(b4));
        URangesKt___URangesKt$$ExternalSyntheticBUOutline0.m887m(sb, UByte.m3149toStringimpl(b3));
        return (byte) 0;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: coerceIn-VKSA0NQ, reason: not valid java name */
    public static final short m4354coerceInVKSA0NQ(short s, short s2, short s3) {
        int i = s2 & UShort.MAX_VALUE;
        int i2 = s3 & UShort.MAX_VALUE;
        if (Intrinsics.compare(i, i2) <= 0) {
            int i3 = 65535 & s;
            return Intrinsics.compare(i3, i) < 0 ? s2 : Intrinsics.compare(i3, i2) > 0 ? s3 : s;
        }
        StringBuilder sb = new StringBuilder("Cannot coerce value to an empty range: maximum ");
        sb.append((Object) UShort.m3412toStringimpl(s3));
        URangesKt___URangesKt$$ExternalSyntheticBUOutline0.m887m(sb, UShort.m3412toStringimpl(s2));
        return (short) 0;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: coerceIn-wuiCnnA, reason: not valid java name */
    public static final int m4358coerceInwuiCnnA(int i, ClosedRange<UInt> closedRange) {
        if (closedRange instanceof ClosedFloatingPointRange) {
            return ((UInt) RangesKt___RangesKt.coerceIn(UInt.m3176boximpl(i), (ClosedFloatingPointRange<UInt>) closedRange)).getData();
        }
        if (!closedRange.isEmpty()) {
            return Integer.compare(i ^ Integer.MIN_VALUE, ((UInt) closedRange.getStart()).getData() ^ Integer.MIN_VALUE) < 0 ? ((UInt) closedRange.getStart()).getData() : Integer.compare(i ^ Integer.MIN_VALUE, ((UInt) closedRange.getEndInclusive()).getData() ^ Integer.MIN_VALUE) > 0 ? ((UInt) closedRange.getEndInclusive()).getData() : i;
        }
        MediaType$Companion$$ExternalSyntheticBUOutline0.m901m("Cannot coerce value to an empty range: ", closedRange, 46);
        return 0;
    }

    @SinceKotlin(version = "1.5")
    /* JADX INFO: renamed from: coerceIn-JPwROB0, reason: not valid java name */
    public static final long m4353coerceInJPwROB0(long j, ClosedRange<ULong> closedRange) {
        if (closedRange instanceof ClosedFloatingPointRange) {
            return ((ULong) RangesKt___RangesKt.coerceIn(ULong.m3255boximpl(j), (ClosedFloatingPointRange<ULong>) closedRange)).getData();
        }
        if (!closedRange.isEmpty()) {
            return Long.compare(j ^ Long.MIN_VALUE, ((ULong) closedRange.getStart()).getData() ^ Long.MIN_VALUE) < 0 ? ((ULong) closedRange.getStart()).getData() : Long.compare(j ^ Long.MIN_VALUE, ((ULong) closedRange.getEndInclusive()).getData() ^ Long.MIN_VALUE) > 0 ? ((ULong) closedRange.getEndInclusive()).getData() : j;
        }
        MediaType$Companion$$ExternalSyntheticBUOutline0.m901m("Cannot coerce value to an empty range: ", closedRange, 46);
        return 0L;
    }
}
