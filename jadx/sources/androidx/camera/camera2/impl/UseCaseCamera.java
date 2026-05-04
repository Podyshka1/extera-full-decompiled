package androidx.camera.camera2.impl;

import java.util.Collection;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes3.dex */
public interface UseCaseCamera {
    Job close();

    UseCaseCameraRequestControl getRequestControl();

    void setActiveResumeMode(boolean z);

    void start();

    Job updateRepeatingRequestAsync(boolean z, Collection collection);
}
