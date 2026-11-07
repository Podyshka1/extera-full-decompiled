package com.exteragram.messenger.plugins.hooks;

import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import com.sun.jna.Callback;
import de.robv.android.xposed.XC_MethodHook;
import java.lang.reflect.Member;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0015\u0012\f\u0010\u0002\u001a\b\u0018\u00010\u0003R\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0013\u0010\u0013\u001a\u00020\u00102\b\u0010\u0014\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0014\u0010\u0002\u001a\b\u0018\u00010\u0003R\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\t\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/exteragram/messenger/plugins/hooks/XposedHookRecord;", "Lcom/exteragram/messenger/plugins/hooks/HookRecord;", "unhookObject", "Lde/robv/android/xposed/XC_MethodHook$Unhook;", "Lde/robv/android/xposed/XC_MethodHook;", "<init>", "(Lde/robv/android/xposed/XC_MethodHook$Unhook;)V", "cleanedUp", "Ljava/util/concurrent/atomic/AtomicBoolean;", "hookedMember", "Ljava/lang/reflect/Member;", "getHookedMember", "()Ljava/lang/reflect/Member;", "cleanup", _UrlKt.FRAGMENT_ENCODE_SET, "matches", _UrlKt.FRAGMENT_ENCODE_SET, "criteria", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "other", "hashCode", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class XposedHookRecord implements HookRecord {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Map<AutoCloseable, Integer> callbackReferences = Collections.synchronizedMap(new IdentityHashMap());
    private final AtomicBoolean cleanedUp = new AtomicBoolean();
    private final XC_MethodHook.Unhook unhookObject;

    public XposedHookRecord(XC_MethodHook.Unhook unhook) {
        this.unhookObject = unhook;
        Companion companion = INSTANCE;
        XC_MethodHook callback = unhook != null ? unhook.getCallback() : null;
        companion.retainCallback(callback instanceof AutoCloseable ? (AutoCloseable) callback : null);
    }

    public final Member getHookedMember() {
        XC_MethodHook.Unhook unhook = this.unhookObject;
        if (unhook != null) {
            return unhook.getHookedMethod();
        }
        return null;
    }

    @Override // com.exteragram.messenger.plugins.hooks.HookRecord
    public void cleanup() {
        XC_MethodHook.Unhook unhook;
        Companion companion;
        if (this.cleanedUp.compareAndSet(false, true) && (unhook = this.unhookObject) != null) {
            try {
                try {
                    unhook.unhook();
                    companion = INSTANCE;
                    Object callback = unhook.getCallback();
                    if (callback instanceof AutoCloseable) {
                        autoCloseable = (AutoCloseable) callback;
                    }
                } catch (Throwable th) {
                    try {
                        FileLog.m1039e("Error during Xposed unhook cleanup", th);
                        companion = INSTANCE;
                        Object callback2 = unhook.getCallback();
                        if (callback2 instanceof AutoCloseable) {
                            autoCloseable = (AutoCloseable) callback2;
                        }
                    } catch (Throwable th2) {
                        try {
                            Companion companion2 = INSTANCE;
                            Object callback3 = unhook.getCallback();
                            companion2.releaseCallback(callback3 instanceof AutoCloseable ? (AutoCloseable) callback3 : null);
                        } catch (Throwable th3) {
                            FileLog.m1039e("Error during Xposed hook callback cleanup", th3);
                        }
                        throw th2;
                    }
                }
                companion.releaseCallback(autoCloseable);
            } catch (Throwable th4) {
                FileLog.m1039e("Error during Xposed hook callback cleanup", th4);
            }
        }
    }

    @Override // com.exteragram.messenger.plugins.hooks.HookRecord
    public boolean matches(Object criteria) {
        return (criteria instanceof XC_MethodHook.Unhook) && this.unhookObject == criteria;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return other != null && Intrinsics.areEqual(XposedHookRecord.class, other.getClass()) && this.unhookObject == ((XposedHookRecord) other).unhookObject;
    }

    public int hashCode() {
        XC_MethodHook.Unhook unhook = this.unhookObject;
        if (unhook != null) {
            return unhook.hashCode();
        }
        return 0;
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u000b\u001a\u00020\f2\u000e\u0010\r\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007H\u0002J\u0018\u0010\u000e\u001a\u00020\f2\u000e\u0010\r\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u0007H\u0002R^\u0010\u0004\u001aR\u0012\u0014\u0012\u0012 \b*\b\u0018\u00010\u0006j\u0002`\u00070\u0006j\u0002`\u0007\u0012\f\u0012\n \b*\u0004\u0018\u00010\t0\t \b*(\u0012\u0014\u0012\u0012 \b*\b\u0018\u00010\u0006j\u0002`\u00070\u0006j\u0002`\u0007\u0012\f\u0012\n \b*\u0004\u0018\u00010\t0\t\u0018\u00010\n0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/exteragram/messenger/plugins/hooks/XposedHookRecord$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "callbackReferences", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "kotlin.jvm.PlatformType", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "retainCallback", _UrlKt.FRAGMENT_ENCODE_SET, Callback.METHOD_NAME, "releaseCallback", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void retainCallback(AutoCloseable callback) {
            if (callback == null) {
                return;
            }
            synchronized (XposedHookRecord.callbackReferences) {
                try {
                    Map map = XposedHookRecord.callbackReferences;
                    Integer num = (Integer) XposedHookRecord.callbackReferences.get(callback);
                    map.put(callback, Integer.valueOf((num != null ? num.intValue() : 0) + 1));
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void releaseCallback(AutoCloseable callback) throws Exception {
            boolean z;
            if (callback == null) {
                return;
            }
            synchronized (XposedHookRecord.callbackReferences) {
                try {
                    Integer num = (Integer) XposedHookRecord.callbackReferences.get(callback);
                    z = false;
                    int iIntValue = num != null ? num.intValue() : 0;
                    if (iIntValue <= 1) {
                        XposedHookRecord.callbackReferences.remove(callback);
                        z = true;
                    } else {
                        XposedHookRecord.callbackReferences.put(callback, Integer.valueOf(iIntValue - 1));
                    }
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(callback);
            }
        }
    }
}
