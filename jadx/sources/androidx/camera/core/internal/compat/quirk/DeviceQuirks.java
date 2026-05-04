package androidx.camera.core.internal.compat.quirk;

import androidx.camera.core.Logger;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.QuirkSettings;
import androidx.camera.core.impl.QuirkSettingsHolder;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.core.util.Consumer;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DeviceQuirks {
    private static volatile Quirks sQuirks;

    static {
        QuirkSettingsHolder.instance().observe(CameraXExecutors.directExecutor(), new Consumer() { // from class: androidx.camera.core.internal.compat.quirk.DeviceQuirks$$ExternalSyntheticLambda0
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                DeviceQuirks.$r8$lambda$0bNPLFIPV_CFfkO7wfM7sLoLGZE((QuirkSettings) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$0bNPLFIPV_CFfkO7wfM7sLoLGZE(QuirkSettings quirkSettings) {
        sQuirks = new Quirks(DeviceQuirksLoader.loadQuirks(quirkSettings));
        Logger.m76d("DeviceQuirks", "core DeviceQuirks = " + Quirks.toString(sQuirks));
    }

    public static Quirks getAll() {
        return sQuirks;
    }

    public static Quirk get(Class cls) {
        return sQuirks.get(cls);
    }
}
