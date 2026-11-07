package p002c;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.lang.reflect.Member;
import java.util.HashMap;

/* JADX INFO: renamed from: c.d */
/* JADX INFO: loaded from: classes.dex */
public final class C1119d {

    /* JADX INFO: renamed from: a */
    public final HashMap f28a = new HashMap();

    /* JADX INFO: renamed from: a */
    public final XposedBridge.HookInfo m212a(Member member, XC_MethodHook xC_MethodHook, InterfaceC1117b interfaceC1117b) {
        XposedBridge.HookInfo hookInfo = new XposedBridge.HookInfo(member);
        hookInfo.getCallbacks().add(xC_MethodHook);
        this.f28a.put(member, hookInfo);
        try {
            Member memberMo210a = interfaceC1117b.mo210a(hookInfo, member);
            if (memberMo210a == null) {
                throw new IllegalStateException("Failed to hook method");
            }
            hookInfo.setBackup(memberMo210a);
            return hookInfo;
        } catch (Throwable th) {
            this.f28a.remove(member);
            hookInfo.markInstallFailed();
            throw th;
        }
    }
}
