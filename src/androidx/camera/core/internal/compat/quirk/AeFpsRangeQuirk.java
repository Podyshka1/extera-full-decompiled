package androidx.camera.core.internal.compat.quirk;

import android.util.Range;
import androidx.camera.core.impl.Quirk;

/* JADX INFO: loaded from: classes3.dex */
public interface AeFpsRangeQuirk extends Quirk {
    Range<Integer> getTargetAeFpsRange();
}
