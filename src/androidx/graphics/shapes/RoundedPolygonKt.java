package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import androidx.collection.MutableFloatList;
import androidx.graphics.shapes.Feature;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001aS\u0010\u000b\u001a\u00020\n2\b\b\u0001\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00062\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\bH\u0007¢\u0006\u0004\b\u000b\u0010\f\u001aG\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u0007\u001a\u00020\u00062\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\b2\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u000b\u0010\u000f\u001a\u001b\u0010\u0012\u001a\u00060\u0010j\u0002`\u00112\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u001a/\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {_UrlKt.FRAGMENT_ENCODE_SET, "numVertices", _UrlKt.FRAGMENT_ENCODE_SET, "radius", "centerX", "centerY", "Landroidx/graphics/shapes/CornerRounding;", "rounding", _UrlKt.FRAGMENT_ENCODE_SET, "perVertexRounding", "Landroidx/graphics/shapes/RoundedPolygon;", "RoundedPolygon", "(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;", _UrlKt.FRAGMENT_ENCODE_SET, "vertices", "([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;", "Landroidx/collection/FloatFloatPair;", "Landroidx/graphics/shapes/Point;", "calculateCenter", "([F)J", "verticesFromNumVerts", "(IFFF)[F", "graphics-shapes_release"}, m862k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRoundedPolygon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygonKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FloatFloatPair.kt\nandroidx/collection/FloatFloatPair\n+ 4 PackingHelpers.jvm.kt\nandroidx/collection/internal/PackingHelpers_jvmKt\n*L\n1#1,686:1\n1549#2:687\n1620#2,3:688\n67#3:691\n81#3:693\n22#4:692\n22#4:694\n*S KotlinDebug\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygonKt\n*L\n356#1:687\n356#1:688,3\n426#1:691\n425#1:693\n426#1:692\n425#1:694\n*E\n"})
public abstract class RoundedPolygonKt {
    @JvmOverloads
    public static final RoundedPolygon RoundedPolygon(int i, float f, float f2, float f3, CornerRounding cornerRounding) {
        return RoundedPolygon$default(i, f, f2, f3, cornerRounding, null, 32, null);
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

    @JvmOverloads
    public static final RoundedPolygon RoundedPolygon(int i, float f, float f2, float f3, CornerRounding cornerRounding, List<CornerRounding> list) {
        return RoundedPolygon(verticesFromNumVerts(i, f, f2, f3), cornerRounding, list, f2, f3);
    }

    @JvmOverloads
    public static final RoundedPolygon RoundedPolygon(float[] fArr, CornerRounding cornerRounding, List<CornerRounding> list, float f, float f2) {
        long jCalculateCenter;
        Pair pair;
        CornerRounding cornerRounding2;
        Float fValueOf = Float.valueOf(1.0f);
        if (fArr.length < 6) {
            f$$ExternalSyntheticBUOutline1.m212m("Polygons must have at least 3 vertices");
            return null;
        }
        int i = 2;
        if (fArr.length % 2 == 1) {
            f$$ExternalSyntheticBUOutline1.m212m("The vertices array should have even size");
            return null;
        }
        if (list != null && list.size() * 2 != fArr.length) {
            f$$ExternalSyntheticBUOutline1.m212m("perVertexRounding list should be either null or the same size as the number of vertices (vertices.size / 2)");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int length = fArr.length / 2;
        ArrayList arrayList2 = new ArrayList();
        int i2 = 0;
        int i3 = 0;
        while (i3 < length) {
            CornerRounding cornerRounding3 = (list == null || (cornerRounding2 = list.get(i3)) == null) ? cornerRounding : cornerRounding2;
            int i4 = (((i3 + length) - 1) % length) * 2;
            int i5 = i3 + 1;
            int i6 = (i5 % length) * 2;
            int i7 = i3 * 2;
            arrayList2.add(new RoundedCorner(FloatFloatPair.m1728constructorimpl(fArr[i4], fArr[i4 + 1]), FloatFloatPair.m1728constructorimpl(fArr[i7], fArr[i7 + 1]), FloatFloatPair.m1728constructorimpl(fArr[i6], fArr[i6 + 1]), cornerRounding3, null));
            i3 = i5;
        }
        IntRange intRangeUntil = RangesKt.until(0, length);
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            int i8 = (iNextInt + 1) % length;
            float expectedRoundCut = ((RoundedCorner) arrayList2.get(iNextInt)).getExpectedRoundCut() + ((RoundedCorner) arrayList2.get(i8)).getExpectedRoundCut();
            float expectedCut = ((RoundedCorner) arrayList2.get(iNextInt)).getExpectedCut() + ((RoundedCorner) arrayList2.get(i8)).getExpectedCut();
            int i9 = iNextInt * 2;
            int i10 = i8 * 2;
            float fDistance = Utils.distance(fArr[i9] - fArr[i10], fArr[i9 + 1] - fArr[i10 + 1]);
            if (expectedRoundCut > fDistance) {
                pair = TuplesKt.to(Float.valueOf(fDistance / expectedRoundCut), Float.valueOf(0.0f));
            } else if (expectedCut > fDistance) {
                pair = TuplesKt.to(fValueOf, Float.valueOf((fDistance - expectedRoundCut) / (expectedCut - expectedRoundCut)));
            } else {
                pair = TuplesKt.to(fValueOf, fValueOf);
            }
            arrayList3.add(pair);
        }
        for (int i11 = 0; i11 < length; i11++) {
            MutableFloatList mutableFloatList = new MutableFloatList(2);
            for (int i12 = 0; i12 < 2; i12++) {
                Pair pair2 = (Pair) arrayList3.get((((i11 + length) - 1) + i12) % length);
                mutableFloatList.add((((RoundedCorner) arrayList2.get(i11)).getExpectedRoundCut() * ((Number) pair2.component1()).floatValue()) + ((((RoundedCorner) arrayList2.get(i11)).getExpectedCut() - ((RoundedCorner) arrayList2.get(i11)).getExpectedRoundCut()) * ((Number) pair2.component2()).floatValue()));
            }
            arrayList.add(((RoundedCorner) arrayList2.get(i11)).getCubics(mutableFloatList.get(0), mutableFloatList.get(1)));
        }
        ArrayList arrayList4 = new ArrayList();
        while (i2 < length) {
            int i13 = i2 + 1;
            int i14 = i13 % length;
            int i15 = i2 * 2;
            long jM1728constructorimpl = FloatFloatPair.m1728constructorimpl(fArr[i15], fArr[i15 + 1]);
            int i16 = (((i2 + length) - 1) % length) * i;
            long jM1728constructorimpl2 = FloatFloatPair.m1728constructorimpl(fArr[i16], fArr[i16 + 1]);
            int i17 = i14 * 2;
            arrayList4.add(new Feature.Corner((List) arrayList.get(i2), jM1728constructorimpl, ((RoundedCorner) arrayList2.get(i2)).getCenter(), PointKt.m1798clockwiseybeJwSQ(PointKt.m1807minusybeJwSQ(jM1728constructorimpl, jM1728constructorimpl2), PointKt.m1807minusybeJwSQ(FloatFloatPair.m1728constructorimpl(fArr[i17], fArr[i17 + 1]), jM1728constructorimpl)), null));
            arrayList4.add(new Feature.Edge(CollectionsKt.listOf(Cubic.INSTANCE.straightLine(((Cubic) CollectionsKt.last((List) arrayList.get(i2))).getAnchor1X(), ((Cubic) CollectionsKt.last((List) arrayList.get(i2))).getAnchor1Y(), ((Cubic) CollectionsKt.first((List) arrayList.get(i14))).getAnchor0X(), ((Cubic) CollectionsKt.first((List) arrayList.get(i14))).getAnchor0Y()))));
            i2 = i13;
            length = length;
            i = 2;
        }
        if (f == Float.MIN_VALUE || f2 == Float.MIN_VALUE) {
            jCalculateCenter = calculateCenter(fArr);
        } else {
            jCalculateCenter = FloatFloatPair.m1728constructorimpl(f, f2);
        }
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
        return FloatFloatPair.m1728constructorimpl((f / fArr.length) / 2.0f, (f2 / fArr.length) / 2.0f);
    }

    private static final float[] verticesFromNumVerts(int i, float f, float f2, float f3) {
        float[] fArr = new float[i * 2];
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            float f4 = f;
            long jM1808plusybeJwSQ = PointKt.m1808plusybeJwSQ(Utils.m1816radialToCartesianL6JJ3z0$default(f4, (Utils.getFloatPi() / i) * 2.0f * i2, 0L, 4, null), FloatFloatPair.m1728constructorimpl(f2, f3));
            int i4 = i3 + 1;
            fArr[i3] = PointKt.m1804getXDnnuFBc(jM1808plusybeJwSQ);
            i3 += 2;
            fArr[i4] = PointKt.m1805getYDnnuFBc(jM1808plusybeJwSQ);
            i2++;
            f = f4;
        }
        return fArr;
    }
}
