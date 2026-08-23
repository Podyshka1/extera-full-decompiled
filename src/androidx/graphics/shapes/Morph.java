package androidx.graphics.shapes;

import androidx.graphics.shapes.MeasuredPolygon;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class Morph {
    public static final Companion Companion = new Companion(null);
    private final List _morphMatch;
    private final RoundedPolygon end;
    private final RoundedPolygon start;

    public Morph(RoundedPolygon start, RoundedPolygon end) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(end, "end");
        this.start = start;
        this.end = end;
        this._morphMatch = Companion.match$graphics_shapes_release(start, end);
    }

    public final List asCubics(float f) {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        int size = this._morphMatch.size();
        Cubic cubic = null;
        Cubic cubic2 = null;
        int i = 0;
        while (i < size) {
            float[] fArr = new float[8];
            for (int i2 = 0; i2 < 8; i2++) {
                fArr[i2] = Utils.interpolate(((Cubic) ((Pair) this._morphMatch.get(i)).getFirst()).getPoints$graphics_shapes_release()[i2], ((Cubic) ((Pair) this._morphMatch.get(i)).getSecond()).getPoints$graphics_shapes_release()[i2], f);
            }
            Cubic cubic3 = new Cubic(fArr);
            if (cubic2 == null) {
                cubic2 = cubic3;
            }
            if (cubic != null) {
                listCreateListBuilder.add(cubic);
            }
            i++;
            cubic = cubic3;
        }
        if (cubic != null && cubic2 != null) {
            listCreateListBuilder.add(CubicKt.Cubic(cubic.getAnchor0X(), cubic.getAnchor0Y(), cubic.getControl0X(), cubic.getControl0Y(), cubic.getControl1X(), cubic.getControl1Y(), cubic2.getAnchor0X(), cubic2.getAnchor0Y()));
        }
        return CollectionsKt.build(listCreateListBuilder);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List match$graphics_shapes_release(RoundedPolygon p1, RoundedPolygon p2) {
            Pair pairM1081to;
            Pair pairM1081to2;
            Intrinsics.checkNotNullParameter(p1, "p1");
            Intrinsics.checkNotNullParameter(p2, "p2");
            MeasuredPolygon.Companion companion = MeasuredPolygon.Companion;
            MeasuredPolygon measuredPolygonMeasurePolygon$graphics_shapes_release = companion.measurePolygon$graphics_shapes_release(new AngleMeasurer(p1.getCenterX(), p1.getCenterY()), p1);
            MeasuredPolygon measuredPolygonMeasurePolygon$graphics_shapes_release2 = companion.measurePolygon$graphics_shapes_release(new AngleMeasurer(p2.getCenterX(), p2.getCenterY()), p2);
            DoubleMapper doubleMapperFeatureMapper = FeatureMappingKt.featureMapper(measuredPolygonMeasurePolygon$graphics_shapes_release.getFeatures(), measuredPolygonMeasurePolygon$graphics_shapes_release2.getFeatures());
            float map = doubleMapperFeatureMapper.map(0.0f);
            String unused = MorphKt.LOG_TAG;
            MeasuredPolygon measuredPolygonCutAndShift = measuredPolygonMeasurePolygon$graphics_shapes_release2.cutAndShift(map);
            ArrayList arrayList = new ArrayList();
            MeasuredPolygon.MeasuredCubic measuredCubic = (MeasuredPolygon.MeasuredCubic) CollectionsKt.getOrNull(measuredPolygonMeasurePolygon$graphics_shapes_release, 0);
            MeasuredPolygon.MeasuredCubic measuredCubic2 = (MeasuredPolygon.MeasuredCubic) CollectionsKt.getOrNull(measuredPolygonCutAndShift, 0);
            int i = 1;
            int i2 = 1;
            while (measuredCubic != null && measuredCubic2 != null) {
                float endOutlineProgress = i == measuredPolygonMeasurePolygon$graphics_shapes_release.size() ? 1.0f : measuredCubic.getEndOutlineProgress();
                float fMapBack = i2 == measuredPolygonCutAndShift.size() ? 1.0f : doubleMapperFeatureMapper.mapBack(Utils.positiveModulo(measuredCubic2.getEndOutlineProgress() + map, 1.0f));
                float fMin = Math.min(endOutlineProgress, fMapBack);
                String unused2 = MorphKt.LOG_TAG;
                float f = 1.0E-6f + fMin;
                if (endOutlineProgress > f) {
                    String unused3 = MorphKt.LOG_TAG;
                    pairM1081to = measuredCubic.cutAtProgress(fMin);
                } else {
                    pairM1081to = TuplesKt.m1081to(measuredCubic, CollectionsKt.getOrNull(measuredPolygonMeasurePolygon$graphics_shapes_release, i));
                    i++;
                }
                MeasuredPolygon.MeasuredCubic measuredCubic3 = (MeasuredPolygon.MeasuredCubic) pairM1081to.component1();
                measuredCubic = (MeasuredPolygon.MeasuredCubic) pairM1081to.component2();
                if (fMapBack > f) {
                    String unused4 = MorphKt.LOG_TAG;
                    pairM1081to2 = measuredCubic2.cutAtProgress(Utils.positiveModulo(doubleMapperFeatureMapper.map(fMin) - map, 1.0f));
                } else {
                    pairM1081to2 = TuplesKt.m1081to(measuredCubic2, CollectionsKt.getOrNull(measuredPolygonCutAndShift, i2));
                    i2++;
                }
                MeasuredPolygon.MeasuredCubic measuredCubic4 = (MeasuredPolygon.MeasuredCubic) pairM1081to2.component1();
                measuredCubic2 = (MeasuredPolygon.MeasuredCubic) pairM1081to2.component2();
                String unused5 = MorphKt.LOG_TAG;
                arrayList.add(TuplesKt.m1081to(measuredCubic3.getCubic(), measuredCubic4.getCubic()));
            }
            if (measuredCubic == null && measuredCubic2 == null) {
                return arrayList;
            }
            throw new IllegalArgumentException("Expected both Polygon's Cubic to be fully matched");
        }
    }
}
