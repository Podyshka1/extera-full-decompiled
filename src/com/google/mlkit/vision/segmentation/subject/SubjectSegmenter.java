package com.google.mlkit.vision.segmentation.subject;

import androidx.view.Lifecycle;
import androidx.view.LifecycleObserver;
import androidx.view.OnLifecycleEvent;
import com.google.android.gms.common.api.OptionalModuleApi;
import com.google.android.gms.tasks.Task;
import com.google.mlkit.vision.common.InputImage;
import java.io.Closeable;

/* JADX INFO: loaded from: classes5.dex */
public interface SubjectSegmenter extends Closeable, LifecycleObserver, OptionalModuleApi {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    void close();

    Task<SubjectSegmentationResult> process(InputImage inputImage);
}
