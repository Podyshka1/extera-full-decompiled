package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.core.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.Job;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\b\u0001\u0018\u0000  2\u00020\u0001:\u0002\u001f B\u0013\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000bJ\u0010\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u000bH\u0002J\u0010\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u000bH\u0002J\u0010\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u000bH\u0002J\u0006\u0010\u001a\u001a\u00020\u0013J\b\u0010\u001b\u001a\u00020\u0013H\u0002J\u000f\u0010\u001c\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0002\u0010\u001dJ\b\u0010\u001e\u001a\u00020\u0013H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\b8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\b8\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0083\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;", _UrlKt.FRAGMENT_ENCODE_SET, "cameraPipeJob", "Lkotlinx/coroutines/Job;", "<init>", "(Lkotlinx/coroutines/Job;)V", "cameraLock", "isCameraShutdown", _UrlKt.FRAGMENT_ENCODE_SET, "cameraShutdownActions", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/Runnable;", "scopeLock", "isScopeShutdown", "scopeShutdownActions", "threadLock", "isThreadShutdown", "threadShutdownActions", "addShutdownAction", _UrlKt.FRAGMENT_ENCODE_SET, "shutdownType", "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;", "shutdownAction", "addCameraShutdownAction", "addScopeShutdownAction", "addThreadShutdownAction", "shutdown", "shutdownCamera", "shutdownScope", "()Lkotlin/Unit;", "shutdownThread", "ShutdownType", "Companion", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraPipeLifetime.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraPipeLifetime.kt\nandroidx/camera/camera2/pipe/internal/CameraPipeLifetime\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,144:1\n82#2,2:145\n50#2,2:147\n50#2,2:149\n50#2,2:151\n*S KotlinDebug\n*F\n+ 1 CameraPipeLifetime.kt\nandroidx/camera/camera2/pipe/internal/CameraPipeLifetime\n*L\n63#1:145,2\n106#1:147,2\n114#1:149,2\n128#1:151,2\n*E\n"})
public final class CameraPipeLifetime {
    private final Job cameraPipeJob;
    private boolean isCameraShutdown;
    private boolean isScopeShutdown;
    private boolean isThreadShutdown;
    private final Object cameraLock = new Object();
    private final List<Runnable> cameraShutdownActions = new ArrayList();
    private final Object scopeLock = new Object();
    private final List<Runnable> scopeShutdownActions = new ArrayList();
    private final Object threadLock = new Object();
    private final List<Runnable> threadShutdownActions = new ArrayList();

    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
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

    public CameraPipeLifetime(Job job) {
        this.cameraPipeJob = job;
    }

    public final void addShutdownAction(ShutdownType shutdownType, Runnable shutdownAction) {
        boolean zAddCameraShutdownAction;
        int i = WhenMappings.$EnumSwitchMapping$0[shutdownType.ordinal()];
        if (i == 1) {
            zAddCameraShutdownAction = addCameraShutdownAction(shutdownAction);
        } else if (i == 2) {
            zAddCameraShutdownAction = addScopeShutdownAction(shutdownAction);
        } else {
            if (i != 3) {
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m909m();
                return;
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

    private final boolean addCameraShutdownAction(Runnable shutdownAction) {
        boolean zAdd;
        synchronized (this.cameraLock) {
            zAdd = this.isCameraShutdown ? false : this.cameraShutdownActions.add(shutdownAction);
        }
        return zAdd;
    }

    private final boolean addScopeShutdownAction(Runnable shutdownAction) {
        boolean zAdd;
        synchronized (this.scopeLock) {
            zAdd = this.isScopeShutdown ? false : this.scopeShutdownActions.add(shutdownAction);
        }
        return zAdd;
    }

    private final boolean addThreadShutdownAction(Runnable shutdownAction) {
        boolean zAdd;
        synchronized (this.threadLock) {
            zAdd = this.isThreadShutdown ? false : this.threadShutdownActions.add(shutdownAction);
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
                Iterator<Runnable> it = this.cameraShutdownActions.iterator();
                while (it.hasNext()) {
                    it.next().run();
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
                Iterator<Runnable> it = this.scopeShutdownActions.iterator();
                while (it.hasNext()) {
                    it.next().run();
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
                Iterator<Runnable> it = this.threadShutdownActions.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime$ShutdownType;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "CAMERA", "SCOPE", "THREAD", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
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
}
