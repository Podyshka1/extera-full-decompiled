package com.exteragram.messenger.plugins.hooks;

import de.robv.android.xposed.XC_MethodHook;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
public class XposedHookRecord implements HookRecord {
    final XC_MethodHook.Unhook unhookObject;

    public XposedHookRecord(XC_MethodHook.Unhook unhook) {
        this.unhookObject = unhook;
    }

    @Override // com.exteragram.messenger.plugins.hooks.HookRecord
    public void cleanup() {
        XC_MethodHook.Unhook unhook = this.unhookObject;
        if (unhook != null) {
            try {
                unhook.unhook();
            } catch (Throwable th) {
                FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986180612812797147L), th);
            }
        }
    }

    @Override // com.exteragram.messenger.plugins.hooks.HookRecord
    public boolean matches(Object obj) {
        return (obj instanceof XC_MethodHook.Unhook) && this.unhookObject == obj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.unhookObject == ((XposedHookRecord) obj).unhookObject;
    }

    public int hashCode() {
        return this.unhookObject.hashCode();
    }
}
