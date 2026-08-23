package com.google.mlkit.nl.languageid;

import androidx.view.Lifecycle;
import androidx.view.LifecycleObserver;
import androidx.view.OnLifecycleEvent;
import com.google.android.gms.common.api.OptionalModuleApi;
import com.google.android.gms.tasks.Task;
import java.io.Closeable;

/* JADX INFO: loaded from: classes5.dex */
public interface LanguageIdentifier extends Closeable, LifecycleObserver, OptionalModuleApi {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    void close();

    Task<String> identifyLanguage(String str);
}
