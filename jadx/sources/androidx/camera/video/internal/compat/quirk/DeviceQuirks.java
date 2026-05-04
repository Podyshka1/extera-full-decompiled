package androidx.camera.video.internal.compat.quirk;

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
        QuirkSettingsHolder.instance().observe(CameraXExecutors.directExecutor(), new Consumer() { // from class: androidx.camera.video.internal.compat.quirk.DeviceQuirks$$ExternalSyntheticLambda0
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                DeviceQuirks.m2019$r8$lambda$pN9NhpFUCkmXCiuRjra0YXWlD8((QuirkSettings) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$pN9-NhpFUCkmXCiuRjra0YXWlD8, reason: not valid java name */
    public static /* synthetic */ void m2019$r8$lambda$pN9NhpFUCkmXCiuRjra0YXWlD8(QuirkSettings quirkSettings) {
        sQuirks = new Quirks(DeviceQuirksLoader.loadQuirks(quirkSettings));
        Logger.m76d("DeviceQuirks", "video DeviceQuirks = " + Quirks.toString(sQuirks));
    }

    public static Quirks getAll() {
        return sQuirks;
    }

    public static Quirk get(Class cls) {
        return sQuirks.get(cls);
    }
}
