package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\n\u001a\u001a\u0010\u0005\u001a\u00020\u0002*\u00060\u0000j\u0002`\u0001H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a&\u0010\t\u001a\u00020\u0002*\u00060\u0000j\u0002`\u00012\n\u0010\u0006\u001a\u00060\u0000j\u0002`\u0001H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a*\u0010\t\u001a\u00020\u0002*\u00060\u0000j\u0002`\u00012\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0002H\u0000ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a&\u0010\u0011\u001a\u00020\u000e*\u00060\u0000j\u0002`\u00012\n\u0010\u0006\u001a\u00060\u0000j\u0002`\u0001H\u0000ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001e\u0010\u0014\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u0001H\u0000ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a+\u0010\u0017\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\n\u0010\u0006\u001a\u00060\u0000j\u0002`\u0001H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a+\u0010\u0019\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\n\u0010\u0006\u001a\u00060\u0000j\u0002`\u0001H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0016\u001a'\u0010\u001d\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u001a\u001a\u00020\u0002H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a'\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u001a\u001a\u00020\u0002H\u0080\u0002ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001c\u001a6\u0010%\u001a\u00060\u0000j\u0002`\u00012\n\u0010 \u001a\u00060\u0000j\u0002`\u00012\n\u0010!\u001a\u00060\u0000j\u0002`\u00012\u0006\u0010\"\u001a\u00020\u0002H\u0000ø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a&\u0010*\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010'\u001a\u00020&H\u0000ø\u0001\u0000¢\u0006\u0004\b(\u0010)\"\u001c\u0010,\u001a\u00020\u0002*\u00060\u0000j\u0002`\u00018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b+\u0010\u0004\"\u001c\u0010.\u001a\u00020\u0002*\u00060\u0000j\u0002`\u00018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b-\u0010\u0004*\f\b\u0000\u0010/\"\u00020\u00002\u00020\u0000\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u00060"}, d2 = {"Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/Point;", _UrlKt.FRAGMENT_ENCODE_SET, "getDistance-DnnuFBc", "(J)F", "getDistance", "other", "dotProduct-ybeJwSQ", "(JJ)F", "dotProduct", "otherX", "otherY", "dotProduct-5P9i7ZU", "(JFF)F", _UrlKt.FRAGMENT_ENCODE_SET, "clockwise-ybeJwSQ", "(JJ)Z", "clockwise", "getDirection-DnnuFBc", "(J)J", "getDirection", "minus-ybeJwSQ", "(JJ)J", "minus", "plus-ybeJwSQ", "plus", "operand", "times-so9K2fw", "(JF)J", "times", "div-so9K2fw", "div", "start", "stop", "fraction", "interpolate-dLqxh1s", "(JJF)J", "interpolate", "Landroidx/graphics/shapes/PointTransformer;", "f", "transformed-so9K2fw", "(JLandroidx/graphics/shapes/PointTransformer;)J", "transformed", "getX-DnnuFBc", "x", "getY-DnnuFBc", "y", "Point", "graphics-shapes_release"}, m862k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Point.kt\nandroidx/graphics/shapes/PointKt\n+ 2 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 3 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n48#2:140\n54#2:142\n48#2:144\n54#2:146\n48#2:148\n54#2:150\n22#3:141\n22#3:143\n22#3:145\n22#3:149\n1#4:147\n*S KotlinDebug\n*F\n+ 1 Point.kt\nandroidx/graphics/shapes/PointKt\n*L\n27#1:140\n30#1:142\n32#1:144\n32#1:146\n137#1:148\n137#1:150\n27#1:141\n30#1:143\n32#1:145\n137#1:149\n*E\n"})
public abstract class PointKt {
    /* JADX INFO: renamed from: getX-DnnuFBc, reason: not valid java name */
    public static final float m1804getXDnnuFBc(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* JADX INFO: renamed from: getY-DnnuFBc, reason: not valid java name */
    public static final float m1805getYDnnuFBc(long j) {
        return Float.intBitsToFloat((int) (j & 4294967295L));
    }

    /* JADX INFO: renamed from: getDistance-DnnuFBc, reason: not valid java name */
    public static final float m1803getDistanceDnnuFBc(long j) {
        return (float) Math.sqrt((m1804getXDnnuFBc(j) * m1804getXDnnuFBc(j)) + (m1805getYDnnuFBc(j) * m1805getYDnnuFBc(j)));
    }

    /* JADX INFO: renamed from: dotProduct-ybeJwSQ, reason: not valid java name */
    public static final float m1801dotProductybeJwSQ(long j, long j2) {
        return (m1804getXDnnuFBc(j) * m1804getXDnnuFBc(j2)) + (m1805getYDnnuFBc(j) * m1805getYDnnuFBc(j2));
    }

    /* JADX INFO: renamed from: dotProduct-5P9i7ZU, reason: not valid java name */
    public static final float m1800dotProduct5P9i7ZU(long j, float f, float f2) {
        return (m1804getXDnnuFBc(j) * f) + (m1805getYDnnuFBc(j) * f2);
    }

    /* JADX INFO: renamed from: clockwise-ybeJwSQ, reason: not valid java name */
    public static final boolean m1798clockwiseybeJwSQ(long j, long j2) {
        return (m1804getXDnnuFBc(j) * m1805getYDnnuFBc(j2)) - (m1805getYDnnuFBc(j) * m1804getXDnnuFBc(j2)) > 0.0f;
    }

    /* JADX INFO: renamed from: getDirection-DnnuFBc, reason: not valid java name */
    public static final long m1802getDirectionDnnuFBc(long j) {
        float fM1803getDistanceDnnuFBc = m1803getDistanceDnnuFBc(j);
        if (fM1803getDistanceDnnuFBc <= 0.0f) {
            f$$ExternalSyntheticBUOutline1.m212m("Can't get the direction of a 0-length vector");
            return 0L;
        }
        return m1799divso9K2fw(j, fM1803getDistanceDnnuFBc);
    }

    /* JADX INFO: renamed from: minus-ybeJwSQ, reason: not valid java name */
    public static final long m1807minusybeJwSQ(long j, long j2) {
        return FloatFloatPair.m1728constructorimpl(m1804getXDnnuFBc(j) - m1804getXDnnuFBc(j2), m1805getYDnnuFBc(j) - m1805getYDnnuFBc(j2));
    }

    /* JADX INFO: renamed from: plus-ybeJwSQ, reason: not valid java name */
    public static final long m1808plusybeJwSQ(long j, long j2) {
        return FloatFloatPair.m1728constructorimpl(m1804getXDnnuFBc(j) + m1804getXDnnuFBc(j2), m1805getYDnnuFBc(j) + m1805getYDnnuFBc(j2));
    }

    /* JADX INFO: renamed from: times-so9K2fw, reason: not valid java name */
    public static final long m1809timesso9K2fw(long j, float f) {
        return FloatFloatPair.m1728constructorimpl(m1804getXDnnuFBc(j) * f, m1805getYDnnuFBc(j) * f);
    }

    /* JADX INFO: renamed from: div-so9K2fw, reason: not valid java name */
    public static final long m1799divso9K2fw(long j, float f) {
        return FloatFloatPair.m1728constructorimpl(m1804getXDnnuFBc(j) / f, m1805getYDnnuFBc(j) / f);
    }

    /* JADX INFO: renamed from: interpolate-dLqxh1s, reason: not valid java name */
    public static final long m1806interpolatedLqxh1s(long j, long j2, float f) {
        return FloatFloatPair.m1728constructorimpl(Utils.interpolate(m1804getXDnnuFBc(j), m1804getXDnnuFBc(j2), f), Utils.interpolate(m1805getYDnnuFBc(j), m1805getYDnnuFBc(j2), f));
    }

    /* JADX INFO: renamed from: transformed-so9K2fw, reason: not valid java name */
    public static final long m1810transformedso9K2fw(long j, PointTransformer pointTransformer) {
        long jMo1811transformXgqJiTY = pointTransformer.mo1811transformXgqJiTY(m1804getXDnnuFBc(j), m1805getYDnnuFBc(j));
        return FloatFloatPair.m1728constructorimpl(Float.intBitsToFloat((int) (jMo1811transformXgqJiTY >> 32)), Float.intBitsToFloat((int) (jMo1811transformXgqJiTY & 4294967295L)));
    }
}
