package androidx.camera.camera2.compat.quirk;

import androidx.camera.core.Logger;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.QuirkSettings;
import androidx.camera.core.impl.QuirkSettingsHolder;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.core.util.Consumer;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class DeviceQuirks {
    public static final DeviceQuirks INSTANCE = new DeviceQuirks();
    public static volatile Quirks all;

    private DeviceQuirks() {
    }

    public static final Quirks getAll() {
        Quirks quirks = all;
        if (quirks != null) {
            return quirks;
        }
        Intrinsics.throwUninitializedPropertyAccessException("all");
        return null;
    }

    public static final void setAll(Quirks quirks) {
        Intrinsics.checkNotNullParameter(quirks, "<set-?>");
        all = quirks;
    }

    static {
        QuirkSettingsHolder.instance().observe(CameraXExecutors.directExecutor(), new Consumer() { // from class: androidx.camera.camera2.compat.quirk.DeviceQuirks$$ExternalSyntheticLambda0
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                DeviceQuirks._init_$lambda$0((QuirkSettings) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(QuirkSettings quirkSettings) {
        DeviceQuirksLoader deviceQuirksLoader = DeviceQuirksLoader.INSTANCE;
        Intrinsics.checkNotNull(quirkSettings);
        setAll(new Quirks(deviceQuirksLoader.loadQuirks(quirkSettings)));
        Logger.m76d("DeviceQuirks", "camera2 DeviceQuirks = " + Quirks.toString(getAll()));
    }

    public final Quirk get(Class quirkClass) {
        Intrinsics.checkNotNullParameter(quirkClass, "quirkClass");
        return getAll().get(quirkClass);
    }
}
