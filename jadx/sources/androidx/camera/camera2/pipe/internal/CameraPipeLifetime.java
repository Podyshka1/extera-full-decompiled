package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.core.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraPipeLifetime {
    public static final Companion Companion = new Companion(null);
    private final Object cameraLock;
    private final Job cameraPipeJob;
    private final List cameraShutdownActions;
    private boolean isCameraShutdown;
    private boolean isScopeShutdown;
    private boolean isThreadShutdown;
    private final Object scopeLock;
    private final List scopeShutdownActions;
    private final Object threadLock;
    private final List threadShutdownActions;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ShutdownType.values().length];
            try {
                iArr[ShutdownType.CAMERA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShutdownType.SCOPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShutdownType.THREAD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CameraPipeLifetime(Job cameraPipeJob) {
        Intrinsics.checkNotNullParameter(cameraPipeJob, "cameraPipeJob");
        this.cameraPipeJob = cameraPipeJob;
        this.cameraLock = new Object();
        this.cameraShutdownActions = new ArrayList();
        this.scopeLock = new Object();
        this.scopeShutdownActions = new ArrayList();
        this.threadLock = new Object();
        this.threadShutdownActions = new ArrayList();
    }

    public final void addShutdownAction(ShutdownType shutdownType, Runnable shutdownAction) {
        boolean zAddCameraShutdownAction;
        Intrinsics.checkNotNullParameter(shutdownType, "shutdownType");
        Intrinsics.checkNotNullParameter(shutdownAction, "shutdownAction");
        int i = WhenMappings.$EnumSwitchMapping$0[shutdownType.ordinal()];
        if (i == 1) {
            zAddCameraShutdownAction = addCameraShutdownAction(shutdownAction);
        } else if (i == 2) {
            zAddCameraShutdownAction = addScopeShutdownAction(shutdownAction);
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            zAddCameraShutdownAction = addThreadShutdownAction(shutdownAction);
        }
        if (zAddCameraShutdownAction) {
            return;
        }
        if (Log.INSTANCE.getERROR_LOGGABLE()) {
            android.util.Log.e("CXCP", "CameraPipeLifetime already shut down. This is unexpected. Executing " + shutdownType + " shutdown action immediately...");
        }
        shutdownAction.run();
    }

    private final boolean addCameraShutdownAction(Runnable runnable) {
        boolean zAdd;
        synchronized (this.cameraLock) {
            zAdd = this.isCameraShutdown ? false : this.cameraShutdownActions.add(runnable);
        }
        return zAdd;
    }

    private final boolean addScopeShutdownAction(Runnable runnable) {
        boolean zAdd;
        synchronized (this.scopeLock) {
            zAdd = this.isScopeShutdown ? false : this.scopeShutdownActions.add(runnable);
        }
        return zAdd;
    }

    private final boolean addThreadShutdownAction(Runnable runnable) {
        boolean zAdd;
        synchronized (this.threadLock) {
            zAdd = this.isThreadShutdown ? false : this.threadShutdownActions.add(runnable);
        }
        return zAdd;
    }

    public final void shutdown() {
        shutdownCamera();
        shutdownScope();
        shutdownThread();
    }

    private final void shutdownCamera() {
        synchronized (this.cameraLock) {
            try {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Shutting down cameras...");
                }
                Iterator it = this.cameraShutdownActions.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final Unit shutdownScope() {
        Unit unit;
        synchronized (this.scopeLock) {
            try {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Shutting down scopes...");
                }
                Iterator it = this.scopeShutdownActions.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
                unit = (Unit) BuildersKt__BuildersKt.runBlocking$default(null, new CameraPipeLifetime$shutdownScope$1$2(this, null), 1, null);
            } catch (Throwable th) {
                throw th;
            }
        }
        return unit;
    }

    private final void shutdownThread() {
        synchronized (this.threadLock) {
            try {
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Shutting down threads...");
                }
                Iterator it = this.threadShutdownActions.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ShutdownType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ShutdownType[] $VALUES;
        public static final ShutdownType CAMERA = new ShutdownType("CAMERA", 0);
        public static final ShutdownType SCOPE = new ShutdownType("SCOPE", 1);
        public static final ShutdownType THREAD = new ShutdownType("THREAD", 2);

        private static final /* synthetic */ ShutdownType[] $values() {
            return new ShutdownType[]{CAMERA, SCOPE, THREAD};
        }

        public static ShutdownType valueOf(String str) {
            return (ShutdownType) Enum.valueOf(ShutdownType.class, str);
        }

        public static ShutdownType[] values() {
            return (ShutdownType[]) $VALUES.clone();
        }

        private ShutdownType(String str, int i) {
        }

        static {
            ShutdownType[] shutdownTypeArr$values = $values();
            $VALUES = shutdownTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(shutdownTypeArr$values);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
