package org.mvel2.compiler;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Collection;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.mvel2.util.ParseTools;

/* JADX INFO: loaded from: classes.dex */
public class BlankLiteral implements Serializable {
    public static final BlankLiteral INSTANCE = new BlankLiteral();

    public boolean equals(Object obj) {
        if (obj == null || String.valueOf(obj).trim().length() == 0) {
            return true;
        }
        if (ParseTools.isNumeric(obj)) {
            return MVEL.VERSION_SUB.equals(String.valueOf(obj));
        }
        if (obj instanceof Collection) {
            return ((Collection) obj).size() == 0;
        }
        if (obj.getClass().isArray()) {
            return Array.getLength(obj) == 0;
        }
        if (obj instanceof Boolean) {
            return !((Boolean) obj).booleanValue();
        }
        return false;
    }

    public String toString() {
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }
}
