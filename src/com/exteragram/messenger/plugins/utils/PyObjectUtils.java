package com.exteragram.messenger.plugins.utils;

import android.text.TextUtils;
import com.chaquo.python.PyException;
import com.chaquo.python.PyObject;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;

/* JADX INFO: loaded from: classes.dex */
public final class PyObjectUtils {
    private PyObjectUtils() {
    }

    public static String getString(PyObject pyObject, String str, String str2) {
        return getString(pyObject, str, str2, false);
    }

    public static String getString(PyObject pyObject, String str, String str2, boolean z) {
        if (pyObject != null && !TextUtils.isEmpty(str)) {
            try {
                PyObject pyObjectCallAttr = z ? pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165400038634715L), str) : pyObject.get((Object) str);
                if (pyObjectCallAttr != null) {
                    try {
                        String string = pyObjectCallAttr.toString();
                        pyObjectCallAttr.close();
                        return string;
                    } catch (Throwable th) {
                        try {
                            pyObjectCallAttr.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (pyObjectCallAttr != null) {
                    pyObjectCallAttr.close();
                    return str2;
                }
            } catch (PyException | ClassCastException unused) {
            }
        }
        return str2;
    }

    public static boolean getBoolean(PyObject pyObject, String str, boolean z) {
        if (pyObject != null && !TextUtils.isEmpty(str)) {
            try {
                PyObject pyObject2 = pyObject.get((Object) str);
                if (pyObject2 != null) {
                    try {
                        boolean z2 = pyObject2.toBoolean();
                        pyObject2.close();
                        return z2;
                    } catch (Throwable th) {
                        try {
                            pyObject2.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (pyObject2 != null) {
                    pyObject2.close();
                    return z;
                }
            } catch (PyException | ClassCastException unused) {
            }
        }
        return z;
    }

    public static int getInt(PyObject pyObject, String str, int i) {
        return getInt(pyObject, str, i, false);
    }

    public static int getInt(PyObject pyObject, String str, int i, boolean z) {
        if (pyObject != null && !TextUtils.isEmpty(str)) {
            try {
                PyObject pyObjectCallAttr = z ? pyObject.callAttr(Deobfuscator$exteraGramDev$TMessagesProj.getString(-5986165417218503899L), str) : pyObject.get((Object) str);
                if (pyObjectCallAttr != null) {
                    try {
                        int i2 = pyObjectCallAttr.toInt();
                        pyObjectCallAttr.close();
                        return i2;
                    } catch (Throwable th) {
                        try {
                            pyObjectCallAttr.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (pyObjectCallAttr != null) {
                    pyObjectCallAttr.close();
                    return i;
                }
            } catch (PyException | ClassCastException unused) {
            }
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000f, code lost:
    
        if (r1 != null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String[] getStringArray(PyObject pyObject, String str, String[] strArr) {
        if (pyObject != null && !TextUtils.isEmpty(str)) {
            try {
                PyObject pyObject2 = pyObject.get((Object) str);
                if (pyObject2 != null) {
                    try {
                        String[] strArr2 = (String[]) pyObject2.toJava(String[].class);
                        if (strArr2.length != 0) {
                            pyObject2.close();
                            return strArr2;
                        }
                    } catch (Throwable th) {
                        try {
                            pyObject2.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                pyObject2.close();
                return strArr;
            } catch (PyException | ClassCastException unused) {
            }
        }
        return strArr;
    }
}
