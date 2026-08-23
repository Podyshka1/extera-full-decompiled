package androidx.graphics.shapes;

import androidx.collection.MutableFloatList;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class DoubleMapper {
    public static final Companion Companion = new Companion(null);
    public static final DoubleMapper Identity;
    private final MutableFloatList sourceValues;
    private final MutableFloatList targetValues;

    public DoubleMapper(Pair... mappings) {
        Intrinsics.checkNotNullParameter(mappings, "mappings");
        this.sourceValues = new MutableFloatList(mappings.length);
        this.targetValues = new MutableFloatList(mappings.length);
        int length = mappings.length;
        for (int i = 0; i < length; i++) {
            this.sourceValues.add(((Number) mappings[i].getFirst()).floatValue());
            this.targetValues.add(((Number) mappings[i].getSecond()).floatValue());
        }
        FloatMappingKt.validateProgress(this.sourceValues);
        FloatMappingKt.validateProgress(this.targetValues);
    }

    public final float map(float f) {
        return FloatMappingKt.linearMap(this.sourceValues, this.targetValues, f);
    }

    public final float mapBack(float f) {
        return FloatMappingKt.linearMap(this.targetValues, this.sourceValues, f);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        Float fValueOf = Float.valueOf(0.0f);
        Pair pairM1081to = TuplesKt.m1081to(fValueOf, fValueOf);
        Float fValueOf2 = Float.valueOf(0.5f);
        Identity = new DoubleMapper(pairM1081to, TuplesKt.m1081to(fValueOf2, fValueOf2));
    }
}
