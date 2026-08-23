package androidx.camera.camera2.compat;

import android.util.Range;
import android.util.Rational;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public interface EvCompCompat {
    Deferred applyAsync(int i, UseCaseCameraRequestControl useCaseCameraRequestControl, boolean z);

    Range getRange();

    Rational getStep();

    boolean getSupported();

    void stopRunningTask(Throwable th);
}
