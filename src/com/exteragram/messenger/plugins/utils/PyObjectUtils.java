package com.exteragram.messenger.plugins.utils;

import android.text.TextUtils;
import com.chaquo.python.PyException;
import com.chaquo.python.PyObject;
import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001H\u0007J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J-\u0010\u000b\u001a\u0004\u0018\u0001H\f\"\u0004\b\u0000\u0010\f2\b\u0010\t\u001a\u0004\u0018\u00010\n2\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\f0\u000eH\u0007¢\u0006\u0002\u0010\u000fJ&\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u0011H\u0007J.\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0014\u001a\u00020\u0005H\u0007J\"\u0010\u0015\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0005H\u0007J\"\u0010\u0016\u001a\u00020\u00172\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0017H\u0007J*\u0010\u0016\u001a\u00020\u00172\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0005H\u0007J7\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00192\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0012\u001a\u00020\u00112\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0019H\u0007¢\u0006\u0002\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "isSharedValue", _UrlKt.FRAGMENT_ENCODE_SET, "value", "closeSafely", _UrlKt.FRAGMENT_ENCODE_SET, "pyObject", "Lcom/chaquo/python/PyObject;", "toJavaCompat", "T", "clazz", "Ljava/lang/Class;", "(Lcom/chaquo/python/PyObject;Ljava/lang/Class;)Ljava/lang/Object;", "getString", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.KEY, "defaultValue", "fromMap", "getBoolean", "getInt", _UrlKt.FRAGMENT_ENCODE_SET, "getStringArray", _UrlKt.FRAGMENT_ENCODE_SET, "(Lcom/chaquo/python/PyObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class PyObjectUtils {
    public static final PyObjectUtils INSTANCE = new PyObjectUtils();

    private PyObjectUtils() {
    }

    @JvmStatic
    public static final boolean isSharedValue(Object value) {
        return value == null || (value instanceof Boolean) || (value instanceof Number) || (value instanceof Character) || (value instanceof String);
    }

    @JvmStatic
    public static final void closeSafely(PyObject pyObject) {
        if (pyObject == null) {
            return;
        }
        try {
            pyObject.close();
        } catch (Throwable unused) {
        }
    }

    @JvmStatic
    public static final <T> T toJavaCompat(PyObject pyObject, Class<T> clazz) {
        if (pyObject == null) {
            return null;
        }
        try {
            try {
                return (T) pyObject.toJava(clazz);
            } catch (PyException | ClassCastException unused) {
                return null;
            }
        } catch (PyException | ClassCastException unused2) {
            PyObject pyObjectCallAttr = pyObject.callAttr("__getattribute__", "java");
            if (pyObjectCallAttr != null) {
                return (T) pyObjectCallAttr.toJava(clazz);
            }
            return null;
        }
    }

    @JvmStatic
    public static final String getString(PyObject pyObject, String key, String defaultValue) {
        return getString(pyObject, key, defaultValue, false);
    }

    @JvmStatic
    public static final String getString(PyObject pyObject, String key, String defaultValue, boolean fromMap) {
        if (pyObject != null && !TextUtils.isEmpty(key)) {
            try {
                PyObject pyObjectCallAttr = fromMap ? pyObject.callAttr("get", key) : (PyObject) pyObject.get((Object) key);
                if (pyObjectCallAttr != null) {
                    String string = pyObjectCallAttr.toString();
                    if (string != null) {
                        return string;
                    }
                }
            } catch (PyException | ClassCastException unused) {
            }
        }
        return defaultValue;
    }

    @JvmStatic
    public static final boolean getBoolean(PyObject pyObject, String key, boolean defaultValue) {
        if (pyObject != null && !TextUtils.isEmpty(key)) {
            try {
                PyObject pyObject2 = (PyObject) pyObject.get((Object) key);
                if (pyObject2 != null) {
                    return pyObject2.toBoolean();
                }
            } catch (PyException | ClassCastException unused) {
            }
        }
        return defaultValue;
    }

    @JvmStatic
    public static final int getInt(PyObject pyObject, String key, int defaultValue) {
        return getInt(pyObject, key, defaultValue, false);
    }

    @JvmStatic
    public static final int getInt(PyObject pyObject, String key, int defaultValue, boolean fromMap) {
        if (pyObject != null && !TextUtils.isEmpty(key)) {
            try {
                PyObject pyObjectCallAttr = fromMap ? pyObject.callAttr("get", key) : (PyObject) pyObject.get((Object) key);
                if (pyObjectCallAttr != null) {
                    return pyObjectCallAttr.toInt();
                }
            } catch (PyException | ClassCastException unused) {
            }
        }
        return defaultValue;
    }

    @JvmStatic
    public static final String[] getStringArray(PyObject pyObject, String key, String[] defaultValue) {
        String[] strArr;
        if (pyObject != null && !TextUtils.isEmpty(key)) {
            try {
                PyObject pyObject2 = (PyObject) pyObject.get((Object) key);
                if (pyObject2 != null && (strArr = (String[]) pyObject2.toJava(String[].class)) != null) {
                    return strArr.length == 0 ? defaultValue : strArr;
                }
            } catch (PyException | ClassCastException unused) {
            }
        }
        return defaultValue;
    }
}
