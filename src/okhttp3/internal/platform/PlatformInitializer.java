package okhttp3.internal.platform;

import android.content.Context;
import androidx.startup.Initializer;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class PlatformInitializer implements Initializer {
    @Override // androidx.startup.Initializer
    public Platform create(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        PlatformRegistry.INSTANCE.setApplicationContext(context);
        return Platform.Companion.get();
    }

    @Override // androidx.startup.Initializer
    public List<Class<Initializer>> dependencies() {
        return CollectionsKt.emptyList();
    }
}
