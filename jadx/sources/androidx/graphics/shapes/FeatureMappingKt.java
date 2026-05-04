package androidx.graphics.shapes;

import androidx.graphics.shapes.Feature;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
public abstract class FeatureMappingKt {
    public static final DoubleMapper featureMapper(List features1, List features2) {
        Pair pairM1081to;
        Intrinsics.checkNotNullParameter(features1, "features1");
        Intrinsics.checkNotNullParameter(features2, "features2");
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        int size = features1.size();
        for (int i = 0; i < size; i++) {
            if (((ProgressableFeature) features1.get(i)).getFeature() instanceof Feature.Corner) {
                listCreateListBuilder.add(features1.get(i));
            }
        }
        List listBuild = CollectionsKt.build(listCreateListBuilder);
        List listCreateListBuilder2 = CollectionsKt.createListBuilder();
        int size2 = features2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            if (((ProgressableFeature) features2.get(i2)).getFeature() instanceof Feature.Corner) {
                listCreateListBuilder2.add(features2.get(i2));
            }
        }
        List listBuild2 = CollectionsKt.build(listCreateListBuilder2);
        if (listBuild.size() > listBuild2.size()) {
            pairM1081to = TuplesKt.m1081to(doMapping(listBuild2, listBuild), listBuild2);
        } else {
            pairM1081to = TuplesKt.m1081to(listBuild, doMapping(listBuild, listBuild2));
        }
        List list = (List) pairM1081to.component1();
        List list2 = (List) pairM1081to.component2();
        List listCreateListBuilder3 = CollectionsKt.createListBuilder();
        int size3 = list.size();
        for (int i3 = 0; i3 < size3 && i3 != list2.size(); i3++) {
            listCreateListBuilder3.add(TuplesKt.m1081to(Float.valueOf(((ProgressableFeature) list.get(i3)).getProgress()), Float.valueOf(((ProgressableFeature) list2.get(i3)).getProgress())));
        }
        Pair[] pairArr = (Pair[]) CollectionsKt.build(listCreateListBuilder3).toArray(new Pair[0]);
        return new DoubleMapper((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
    }

    public static final float featureDistSquared(Feature f1, Feature f2) {
        Intrinsics.checkNotNullParameter(f1, "f1");
        Intrinsics.checkNotNullParameter(f2, "f2");
        if ((f1 instanceof Feature.Corner) && (f2 instanceof Feature.Corner) && ((Feature.Corner) f1).getConvex() != ((Feature.Corner) f2).getConvex()) {
            return Float.MAX_VALUE;
        }
        float anchor0X = (((Cubic) CollectionsKt.first(f1.getCubics())).getAnchor0X() + ((Cubic) CollectionsKt.last(f1.getCubics())).getAnchor1X()) / 2.0f;
        float anchor0Y = (((Cubic) CollectionsKt.first(f1.getCubics())).getAnchor0Y() + ((Cubic) CollectionsKt.last(f1.getCubics())).getAnchor1Y()) / 2.0f;
        float anchor0X2 = anchor0X - ((((Cubic) CollectionsKt.first(f2.getCubics())).getAnchor0X() + ((Cubic) CollectionsKt.last(f2.getCubics())).getAnchor1X()) / 2.0f);
        float anchor0Y2 = anchor0Y - ((((Cubic) CollectionsKt.first(f2.getCubics())).getAnchor0Y() + ((Cubic) CollectionsKt.last(f2.getCubics())).getAnchor1Y()) / 2.0f);
        return (anchor0X2 * anchor0X2) + (anchor0Y2 * anchor0Y2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final List doMapping(List f1, List f2) {
        Intrinsics.checkNotNullParameter(f1, "f1");
        Intrinsics.checkNotNullParameter(f2, "f2");
        Iterator it = CollectionsKt.getIndices(f2).iterator();
        if (!it.hasNext()) {
            throw new NoSuchElementException();
        }
        IntIterator intIterator = (IntIterator) it;
        int iNextInt = intIterator.nextInt();
        if (it.hasNext()) {
            float fFeatureDistSquared = featureDistSquared(((ProgressableFeature) f1.get(0)).getFeature(), ((ProgressableFeature) f2.get(iNextInt)).getFeature());
            do {
                int iNextInt2 = intIterator.nextInt();
                float fFeatureDistSquared2 = featureDistSquared(((ProgressableFeature) f1.get(0)).getFeature(), ((ProgressableFeature) f2.get(iNextInt2)).getFeature());
                if (Float.compare(fFeatureDistSquared, fFeatureDistSquared2) > 0) {
                    iNextInt = iNextInt2;
                    fFeatureDistSquared = fFeatureDistSquared2;
                }
            } while (it.hasNext());
        }
        int size = f1.size();
        int size2 = f2.size();
        List listMutableListOf = CollectionsKt.mutableListOf(f2.get(iNextInt));
        int i = iNextInt;
        for (int i2 = 1; i2 < size; i2++) {
            int i3 = iNextInt - (size - i2);
            if (i3 <= i) {
                i3 += size2;
            }
            Iterator it2 = new IntRange(i + 1, i3).iterator();
            if (!it2.hasNext()) {
                throw new NoSuchElementException();
            }
            IntIterator intIterator2 = (IntIterator) it2;
            int iNextInt3 = intIterator2.nextInt();
            if (it2.hasNext()) {
                float fFeatureDistSquared3 = featureDistSquared(((ProgressableFeature) f1.get(i2)).getFeature(), ((ProgressableFeature) f2.get(iNextInt3 % size2)).getFeature());
                do {
                    int iNextInt4 = intIterator2.nextInt();
                    float fFeatureDistSquared4 = featureDistSquared(((ProgressableFeature) f1.get(i2)).getFeature(), ((ProgressableFeature) f2.get(iNextInt4 % size2)).getFeature());
                    if (Float.compare(fFeatureDistSquared3, fFeatureDistSquared4) > 0) {
                        iNextInt3 = iNextInt4;
                        fFeatureDistSquared3 = fFeatureDistSquared4;
                    }
                } while (it2.hasNext());
            }
            i = iNextInt3;
            listMutableListOf.add(f2.get(i % size2));
        }
        return listMutableListOf;
    }
}
