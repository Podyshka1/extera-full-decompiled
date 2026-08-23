package com.exteragram.messenger.plugins.xposed;

import com.chaquo.python.PyException;
import com.chaquo.python.PyObject;
import com.exteragram.messenger.plugins.hooks.HookFilter;
import de.robv.android.xposed.XC_MethodHook;
import java.util.ArrayList;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
public class PyMethodHook extends XC_MethodHook {
    private ArrayList<HookFilter> afterHookedFilters;
    private ArrayList<HookFilter> beforeHookedFilters;
    private final boolean hasAfterHook;
    private final boolean hasBeforeHook;
    private final String pluginId;
    private final PyObject pythonCallback;

    public PyMethodHook(String str, PyObject pyObject) {
        this.beforeHookedFilters = new ArrayList<>();
        this.afterHookedFilters = new ArrayList<>();
        if (pyObject == null) {
            throw new IllegalArgumentException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986174230491395291L));
        }
        this.pluginId = str;
        this.pythonCallback = pyObject;
        this.hasBeforeHook = pyObject.containsKey(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986174393700152539L));
        this.hasAfterHook = pyObject.containsKey(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986174483894465755L));
    }

    public PyMethodHook(String str, PyObject pyObject, int i) {
        super(i);
        this.beforeHookedFilters = new ArrayList<>();
        this.afterHookedFilters = new ArrayList<>();
        if (pyObject == null) {
            throw new IllegalArgumentException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986174569793811675L));
        }
        this.pluginId = str;
        this.pythonCallback = pyObject;
        this.hasBeforeHook = pyObject.containsKey(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986174733002568923L));
        this.hasAfterHook = pyObject.containsKey(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986174823196882139L));
    }

    public void setBeforeHookedFilters(ArrayList<HookFilter> arrayList) {
        this.beforeHookedFilters = arrayList;
    }

    public void setAfterHookedFilters(ArrayList<HookFilter> arrayList) {
        this.afterHookedFilters = arrayList;
    }

    public ArrayList<HookFilter> getBeforeHookedFilters() {
        return this.beforeHookedFilters;
    }

    public ArrayList<HookFilter> getAfterHookedFilters() {
        return this.afterHookedFilters;
    }

    @Override // de.robv.android.xposed.XC_MethodHook
    protected void beforeHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
        if (this.hasBeforeHook) {
            try {
                if (!this.beforeHookedFilters.isEmpty()) {
                    ArrayList<HookFilter> arrayList = this.beforeHookedFilters;
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        HookFilter hookFilter = arrayList.get(i);
                        i++;
                        if (!hookFilter.execute(methodHookParam, true)) {
                            return;
                        }
                    }
                }
                this.pythonCallback.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986174909096228059L), methodHookParam);
            } catch (Throwable th) {
                handleHookError(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986174999290541275L), th);
            }
        }
    }

    @Override // de.robv.android.xposed.XC_MethodHook
    protected void afterHookedMethod(XC_MethodHook.MethodHookParam methodHookParam) {
        if (this.hasAfterHook) {
            try {
                if (!this.afterHookedFilters.isEmpty()) {
                    ArrayList<HookFilter> arrayList = this.afterHookedFilters;
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        HookFilter hookFilter = arrayList.get(i);
                        i++;
                        if (!hookFilter.execute(methodHookParam, false)) {
                            return;
                        }
                    }
                }
                this.pythonCallback.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986175080894919899L), methodHookParam);
            } catch (Throwable th) {
                handleHookError(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986175166794265819L), th);
            }
        }
    }

    private void handleHookError(String str, Throwable th) {
        if ((th instanceof PyException) && th.getMessage() != null && th.getMessage().contains(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986175244103677147L))) {
            FileLog.m1134e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986175274168448219L) + this.pluginId);
            return;
        }
        FileLog.m1135e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986175484621845723L) + this.pluginId + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986175523276551387L) + str + Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986175583406093531L) + th.getMessage(), th);
    }
}
