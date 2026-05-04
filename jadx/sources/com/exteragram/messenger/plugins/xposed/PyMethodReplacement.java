package com.exteragram.messenger.plugins.xposed;

import com.chaquo.python.PyException;
import com.chaquo.python.PyObject;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XC_MethodReplacement;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
public class PyMethodReplacement extends XC_MethodReplacement {
    private final String pluginId;
    private final PyObject pythonCallback;

    public PyMethodReplacement(String str, PyObject pyObject) {
        if (pyObject == null) {
            throw new IllegalArgumentException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986172564044084443L));
        }
        if (!pyObject.containsKey(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986172727252841691L))) {
            throw new IllegalArgumentException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986172821742122203L));
        }
        this.pluginId = str;
        this.pythonCallback = pyObject;
    }

    public PyMethodReplacement(String str, PyObject pyObject, int i) {
        super(i);
        if (pyObject == null) {
            throw new IllegalArgumentException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986173135274734811L));
        }
        if (!pyObject.containsKey(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986173298483492059L))) {
            throw new IllegalArgumentException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986173392972772571L));
        }
        this.pluginId = str;
        this.pythonCallback = pyObject;
    }

    @Override // de.robv.android.xposed.XC_MethodReplacement
    protected Object replaceHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
        PyObject pyObject = this.pythonCallback;
        if (pyObject == null) {
            return null;
        }
        try {
            PyObject pyObjectCallAttr = pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986173706505385179L), methodHookParam);
            if (pyObjectCallAttr == null) {
                return null;
            }
            return pyObjectCallAttr.toJava(Object.class);
        } catch (Throwable th) {
            handleHookError(th);
            return null;
        }
    }

    private void handleHookError(Throwable th) {
        if ((th instanceof PyException) && th.getMessage() != null && th.getMessage().contains(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986173800994665691L))) {
            FileLog.m1134e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986173831059436763L) + this.pluginId);
            return;
        }
        FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986174041512834267L) + this.pluginId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986174080167539931L) + th.getMessage(), th);
    }
}
