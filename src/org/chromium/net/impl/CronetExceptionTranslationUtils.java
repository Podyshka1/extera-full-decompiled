package org.chromium.net.impl;

import org.chromium.net.CronetException;
import org.chromium.net.InlineExecutionProhibitedException;

/* JADX INFO: loaded from: classes5.dex */
abstract class CronetExceptionTranslationUtils {

    public interface CronetWork<T, E extends Exception> {
        T run();
    }

    public static <T, E extends Exception> T executeTranslatingCronetExceptions(CronetWork<T, E> cronetWork, Class<E> cls) throws Exception {
        try {
            return cronetWork.run();
        } catch (Exception e) {
            if (isUncheckedAndroidCronetException(e)) {
                throw translateUncheckedAndroidCronetException(e);
            }
            if (isCheckedAndroidCronetException(e)) {
                throw translateCheckedAndroidCronetException(e);
            }
            if (cls.isInstance(e)) {
                throw e;
            }
            throw e;
        }
    }

    public static boolean isUncheckedAndroidCronetException(Exception exc) {
        return C2589xa7c66ae5.m991m(exc);
    }

    public static boolean isCheckedAndroidCronetException(Exception exc) {
        return C2595xa7c66aeb.m997m(exc);
    }

    public static RuntimeException translateUncheckedAndroidCronetException(Exception exc) {
        if (!isUncheckedAndroidCronetException(exc)) {
            throw new IllegalArgumentException("Not an Android Cronet exception", exc);
        }
        if (C2589xa7c66ae5.m991m(exc)) {
            InlineExecutionProhibitedException inlineExecutionProhibitedException = new InlineExecutionProhibitedException();
            inlineExecutionProhibitedException.initCause(exc);
            return inlineExecutionProhibitedException;
        }
        throw new UnsupportedOperationException("Unchecked exception translation discrepancy", exc);
    }

    public static CronetException translateCheckedAndroidCronetException(Exception exc) {
        if (!isCheckedAndroidCronetException(exc)) {
            throw new IllegalArgumentException("Not an Android Cronet exception", exc);
        }
        if (C2588xc8ada294.m990m(exc)) {
            return new AndroidQuicExceptionWrapper(C2590xa7c66ae6.m992m(exc));
        }
        if (C2591xa7c66ae7.m993m(exc)) {
            return new AndroidNetworkExceptionWrapper(C2592xa7c66ae8.m994m(exc));
        }
        if (C2593xa7c66ae9.m995m(exc)) {
            return new AndroidCallbackExceptionWrapper(C2594xa7c66aea.m996m(exc));
        }
        if (C2595xa7c66aeb.m997m(exc)) {
            return new AndroidHttpExceptionWrapper(C2596xa7c66aec.m998m(exc));
        }
        throw new UnsupportedOperationException("Checked exception translation discrepancy", exc);
    }
}
