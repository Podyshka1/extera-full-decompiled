package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.collection.MutableFloatList;
import androidx.graphics.shapes.Feature;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class RoundedPolygonKt {
    public static final RoundedPolygon RoundedPolygon(int i, float f, float f2, float f3, CornerRounding rounding) {
        Intrinsics.checkNotNullParameter(rounding, "rounding");
        return RoundedPolygon$default(i, f, f2, f3, rounding, null, 32, null);
    }

    public static /* synthetic */ RoundedPolygon RoundedPolygon$default(int i, float f, float f2, float f3, CornerRounding cornerRounding, List list, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            f = 1.0f;
        }
        if ((i2 & 4) != 0) {
            f2 = 0.0f;
        }
        if ((i2 & 8) != 0) {
            f3 = 0.0f;
        }
        if ((i2 & 16) != 0) {
            cornerRounding = CornerRounding.Unrounded;
        }
        if ((i2 & 32) != 0) {
            list = null;
        }
        List list2 = list;
        return RoundedPolygon(i, f, f2, f3, cornerRounding, list2);
    }

    public static final RoundedPolygon RoundedPolygon(int i, float f, float f2, float f3, CornerRounding rounding, List list) {
        Intrinsics.checkNotNullParameter(rounding, "rounding");
        return RoundedPolygon(verticesFromNumVerts(i, f, f2, f3), rounding, list, f2, f3);
    }

    public static final RoundedPolygon RoundedPolygon(float[] vertices, CornerRounding rounding, List list, float f, float f2) {
        CornerRounding cornerRounding;
        Float fValueOf = Float.valueOf(1.0f);
        Intrinsics.checkNotNullParameter(vertices, "vertices");
        Intrinsics.checkNotNullParameter(rounding, "rounding");
        if (vertices.length < 6) {
            throw new IllegalArgumentException("Polygons must have at least 3 vertices");
        }
        int i = 2;
        int i2 = 1;
        if (vertices.length % 2 == 1) {
            throw new IllegalArgumentException("The vertices array should have even size");
        }
        if (list != null && list.size() * 2 != vertices.length) {
            throw new IllegalArgumentException("perVertexRounding list should be either null or the same size as the number of vertices (vertices.size / 2)");
        }
        ArrayList arrayList = new ArrayList();
        int length = vertices.length / 2;
        ArrayList arrayList2 = new ArrayList();
        int i3 = 0;
        int i4 = 0;
        while (i4 < length) {
            CornerRounding cornerRounding2 = (list == null || (cornerRounding = (CornerRounding) list.get(i4)) == null) ? rounding : cornerRounding;
            int i5 = (((i4 + length) - i2) % length) * 2;
            int i6 = i4 + 1;
            int i7 = (i6 % length) * 2;
            int i8 = i4 * 2;
            arrayList2.add(new RoundedCorner(FloatFloatPair.m2042constructorimpl(vertices[i5], vertices[i5 + i2]), FloatFloatPair.m2042constructorimpl(vertices[i8], vertices[i8 + i2]), FloatFloatPair.m2042constructorimpl(vertices[i7], vertices[i7 + 1]), cornerRounding2, null));
            i4 = i6;
            i2 = i2;
        }
        int i9 = i2;
        IntRange intRangeUntil = RangesKt.until(0, length);
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator it = intRangeUntil.iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            int i10 = (iNextInt + 1) % length;
            float expectedRoundCut = ((RoundedCorner) arrayList2.get(iNextInt)).getExpectedRoundCut() + ((RoundedCorner) arrayList2.get(i10)).getExpectedRoundCut();
            float expectedCut = ((RoundedCorner) arrayList2.get(iNextInt)).getExpectedCut() + ((RoundedCorner) arrayList2.get(i10)).getExpectedCut();
            int i11 = iNextInt * 2;
            int i12 = i10 * 2;
            float fDistance = Utils.distance(vertices[i11] - vertices[i12], vertices[i11 + 1] - vertices[i12 + 1]);
            arrayList3.add(expectedRoundCut > fDistance ? TuplesKt.m1081to(Float.valueOf(fDistance / expectedRoundCut), Float.valueOf(0.0f)) : expectedCut > fDistance ? TuplesKt.m1081to(fValueOf, Float.valueOf((fDistance - expectedRoundCut) / (expectedCut - expectedRoundCut))) : TuplesKt.m1081to(fValueOf, fValueOf));
        }
        for (int i13 = 0; i13 < length; i13++) {
            MutableFloatList mutableFloatList = new MutableFloatList(2);
            for (int i14 = 0; i14 < 2; i14++) {
                Pair pair = (Pair) arrayList3.get((((i13 + length) - 1) + i14) % length);
                mutableFloatList.add((((RoundedCorner) arrayList2.get(i13)).getExpectedRoundCut() * ((Number) pair.component1()).floatValue()) + ((((RoundedCorner) arrayList2.get(i13)).getExpectedCut() - ((RoundedCorner) arrayList2.get(i13)).getExpectedRoundCut()) * ((Number) pair.component2()).floatValue()));
            }
            arrayList.add(((RoundedCorner) arrayList2.get(i13)).getCubics(mutableFloatList.get(0), mutableFloatList.get(i9)));
        }
        ArrayList arrayList4 = new ArrayList();
        while (i3 < length) {
            int i15 = i3 + 1;
            int i16 = i15 % length;
            int i17 = i3 * 2;
            long jM2042constructorimpl = FloatFloatPair.m2042constructorimpl(vertices[i17], vertices[i17 + i9]);
            int i18 = (((i3 + length) - i9) % length) * i;
            long jM2042constructorimpl2 = FloatFloatPair.m2042constructorimpl(vertices[i18], vertices[i18 + i9]);
            int i19 = i16 * 2;
            arrayList4.add(new Feature.Corner((List) arrayList.get(i3), jM2042constructorimpl, ((RoundedCorner) arrayList2.get(i3)).m2128getCenter1ufDz9w(), PointKt.m2112clockwiseybeJwSQ(PointKt.m2121minusybeJwSQ(jM2042constructorimpl, jM2042constructorimpl2), PointKt.m2121minusybeJwSQ(FloatFloatPair.m2042constructorimpl(vertices[i19], vertices[i19 + i9]), jM2042constructorimpl)), null));
            arrayList4.add(new Feature.Edge(CollectionsKt.listOf(Cubic.Companion.straightLine(((Cubic) CollectionsKt.last((List) arrayList.get(i3))).getAnchor1X(), ((Cubic) CollectionsKt.last((List) arrayList.get(i3))).getAnchor1Y(), ((Cubic) CollectionsKt.first((List) arrayList.get(i16))).getAnchor0X(), ((Cubic) CollectionsKt.first((List) arrayList.get(i16))).getAnchor0Y()))));
            i3 = i15;
            i = 2;
        }
        long jCalculateCenter = (f == Float.MIN_VALUE || f2 == Float.MIN_VALUE) ? calculateCenter(vertices) : FloatFloatPair.m2042constructorimpl(f, f2);
        return new RoundedPolygon(arrayList4, Float.intBitsToFloat((int) (jCalculateCenter >> 32)), Float.intBitsToFloat((int) (jCalculateCenter & 4294967295L)));
    }

    private static final long calculateCenter(float[] fArr) {
        float f = 0.0f;
        int i = 0;
        float f2 = 0.0f;
        while (i < fArr.length) {
            int i2 = i + 1;
            f += fArr[i];
            i += 2;
            f2 += fArr[i2];
        }
        float f3 = 2;
        return FloatFloatPair.m2042constructorimpl((f / fArr.length) / f3, (f2 / fArr.length) / f3);
    }

    private static final float[] verticesFromNumVerts(int i, float f, float f2, float f3) {
        float[] fArr = new float[i * 2];
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            float f4 = f;
            long jM2122plusybeJwSQ = PointKt.m2122plusybeJwSQ(Utils.m2130radialToCartesianL6JJ3z0$default(f4, (Utils.getFloatPi() / i) * 2 * i2, 0L, 4, null), FloatFloatPair.m2042constructorimpl(f2, f3));
            int i4 = i3 + 1;
            fArr[i3] = PointKt.m2118getXDnnuFBc(jM2122plusybeJwSQ);
            i3 += 2;
            fArr[i4] = PointKt.m2119getYDnnuFBc(jM2122plusybeJwSQ);
            i2++;
            f = f4;
        }
        return fArr;
    }
}
