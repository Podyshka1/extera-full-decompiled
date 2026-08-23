package androidx.camera.camera2.adapter;

import android.annotation.SuppressLint;
import android.util.Range;
import android.util.Rational;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\f\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\r\u0010\u000eJ>\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\b\b\u0002\u0010\t\u001a\u00020\bHÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0018\u001a\u00020\u00022\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001aR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u001bR\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00040\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u001cR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u001d¨\u0006\u001e"}, d2 = {"Landroidx/camera/camera2/adapter/EvCompValue;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "supported", _UrlKt.FRAGMENT_ENCODE_SET, "index", "Landroid/util/Range;", "range", "Landroid/util/Rational;", "step", "<init>", "(ZILandroid/util/Range;Landroid/util/Rational;)V", "newIndex", "updateIndex$camera_camera2", "(I)Landroidx/camera/camera2/adapter/EvCompValue;", "updateIndex", "copy", "(ZILandroid/util/Range;Landroid/util/Rational;)Landroidx/camera/camera2/adapter/EvCompValue;", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "I", "Landroid/util/Range;", "Landroid/util/Rational;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SuppressLint({"UnsafeOptInUsageError"})
public final /* data */ class EvCompValue {
    private final int index;
    private final Range<Integer> range;
    private final Rational step;
    private final boolean supported;

    /* JADX WARN: Multi-variable type inference failed */
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

    public final EvCompValue copy(boolean supported, int index, Range<Integer> range, Rational step) {
        return new EvCompValue(supported, index, range, step);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EvCompValue)) {
            return false;
        }
        EvCompValue evCompValue = (EvCompValue) other;
        return this.supported == evCompValue.supported && this.index == evCompValue.index && Intrinsics.areEqual(this.range, evCompValue.range) && Intrinsics.areEqual(this.step, evCompValue.step);
    }

    public int hashCode() {
        return (((((Boolean.hashCode(this.supported) * 31) + Integer.hashCode(this.index)) * 31) + this.range.hashCode()) * 31) + this.step.hashCode();
    }

    public String toString() {
        return "EvCompValue(supported=" + this.supported + ", index=" + this.index + ", range=" + this.range + ", step=" + this.step + ')';
    }

    public EvCompValue(boolean z, int i, Range<Integer> range, Rational rational) {
        this.supported = z;
        this.index = i;
        this.range = range;
        this.step = rational;
    }

    public final EvCompValue updateIndex$camera_camera2(int newIndex) {
        return copy$default(this, false, newIndex, null, null, 13, null);
    }
}
