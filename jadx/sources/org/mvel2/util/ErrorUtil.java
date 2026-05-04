package org.mvel2.util;

import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.url._UrlKt;
import org.mvel2.CompileException;
import org.mvel2.ErrorDetail;

/* JADX INFO: loaded from: classes5.dex */
public class ErrorUtil {
    private static final Logger LOG = Logger.getLogger(ErrorUtil.class.getName());

    public static CompileException rewriteIfNeeded(CompileException compileException, char[] cArr, int i) {
        if (compileException.getExpr() != null && cArr != compileException.getExpr()) {
            if (compileException.getExpr().length <= compileException.getCursor()) {
                compileException.setCursor(compileException.getExpr().length - 1);
            }
            try {
                String strSubstring = new String(compileException.getExpr()).substring(compileException.getCursor());
                compileException.setExpr(cArr);
                String str = new String(cArr);
                compileException.setCursor(str.substring(str.indexOf(new String(compileException.getExpr()))).indexOf(strSubstring));
                return compileException;
            } catch (Throwable th) {
                LOG.log(Level.WARNING, _UrlKt.FRAGMENT_ENCODE_SET, th);
            }
        }
        return compileException;
    }

    public static ErrorDetail rewriteIfNeeded(ErrorDetail errorDetail, char[] cArr, int i) {
        if (cArr != errorDetail.getExpr()) {
            String strSubstring = new String(errorDetail.getExpr()).substring(errorDetail.getCursor());
            errorDetail.setExpr(cArr);
            errorDetail.setCursor(i + new String(cArr).substring(i).indexOf(strSubstring));
        }
        return errorDetail;
    }
}
