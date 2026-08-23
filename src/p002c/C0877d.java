package p002c;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import java.lang.reflect.Member;
import java.util.HashMap;

/* JADX INFO: renamed from: c.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0877d {

    /* JADX INFO: renamed from: a */
    public final HashMap f26a = new HashMap();

    /* JADX INFO: renamed from: a */
    public final XposedBridge.HookInfo m175a(Member member, XC_MethodHook xC_MethodHook, InterfaceC0875b interfaceC0875b) {
        XposedBridge.HookInfo hookInfo = new XposedBridge.HookInfo(member);
        hookInfo.getCallbacks().add(xC_MethodHook);
        this.f26a.put(member, hookInfo);
        try {
            Member memberMo173a = interfaceC0875b.mo173a(hookInfo, member);
            if (memberMo173a == null) {
                throw new IllegalStateException("Failed to hook method");
            }
            hookInfo.setBackup(memberMo173a);
            return hookInfo;
        } catch (Throwable th) {
            this.f26a.remove(member);
            hookInfo.markInstallFailed();
            throw th;
        }
    }
}
