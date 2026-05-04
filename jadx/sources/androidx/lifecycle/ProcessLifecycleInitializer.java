package androidx.lifecycle;

import android.content.Context;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements Initializer {
    @Override // androidx.startup.Initializer
    public LifecycleOwner create(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        AppInitializer appInitializer = AppInitializer.getInstance(context);
        Intrinsics.checkNotNullExpressionValue(appInitializer, "getInstance(...)");
        if (!appInitializer.isEagerlyInitialized(ProcessLifecycleInitializer.class)) {
            throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
        }
        LifecycleDispatcher.init(context);
        ProcessLifecycleOwner.Companion companion = ProcessLifecycleOwner.Companion;
        companion.init$lifecycle_process(context);
        return companion.get();
    }

    @Override // androidx.startup.Initializer
    public List dependencies() {
        return CollectionsKt.emptyList();
    }
}
