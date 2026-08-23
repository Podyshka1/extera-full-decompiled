package androidx.camera.camera2.adapter;

import android.util.Range;
import android.util.Rational;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class EvCompValue {
    private final int index;
    private final Range range;
    private final Rational step;
    private final boolean supported;

    public static /* synthetic */ EvCompValue copy$default(EvCompValue evCompValue, boolean z, int i, Range range, Rational rational, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = evCompValue.supported;
        }
        if ((i2 & 2) != 0) {
            i = evCompValue.index;
        }
        if ((i2 & 4) != 0) {
            range = evCompValue.range;
        }
        if ((i2 & 8) != 0) {
            rational = evCompValue.step;
        }
        return evCompValue.copy(z, i, range, rational);
    }

    public final EvCompValue copy(boolean z, int i, Range range, Rational step) {
        Intrinsics.checkNotNullParameter(range, "range");
        Intrinsics.checkNotNullParameter(step, "step");
        return new EvCompValue(z, i, range, step);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EvCompValue)) {
            return false;
        }
        EvCompValue evCompValue = (EvCompValue) obj;
        return this.supported == evCompValue.supported && this.index == evCompValue.index && Intrinsics.areEqual(this.range, evCompValue.range) && Intrinsics.areEqual(this.step, evCompValue.step);
    }

    public int hashCode() {
        return (((((EvCompValue$$ExternalSyntheticBackport0.m10m(this.supported) * 31) + this.index) * 31) + this.range.hashCode()) * 31) + this.step.hashCode();
    }

    public String toString() {
        return "EvCompValue(supported=" + this.supported + ", index=" + this.index + ", range=" + this.range + ", step=" + this.step + ')';
    }

    public EvCompValue(boolean z, int i, Range range, Rational step) {
        Intrinsics.checkNotNullParameter(range, "range");
        Intrinsics.checkNotNullParameter(step, "step");
        this.supported = z;
        this.index = i;
        this.range = range;
        this.step = step;
    }

    public final EvCompValue updateIndex$camera_camera2(int i) {
        return copy$default(this, false, i, null, null, 13, null);
    }
}
