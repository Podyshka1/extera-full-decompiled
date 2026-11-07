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
        return C2450xa7c66ae5.m943m(exc);
    }

    public static boolean isCheckedAndroidCronetException(Exception exc) {
        return C2456xa7c66aeb.m949m(exc);
    }

    public static RuntimeException translateUncheckedAndroidCronetException(Exception exc) {
        if (!isUncheckedAndroidCronetException(exc)) {
            throw new IllegalArgumentException("Not an Android Cronet exception", exc);
        }
        if (C2450xa7c66ae5.m943m(exc)) {
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
        if (C2449xc8ada294.m942m(exc)) {
            return new AndroidQuicExceptionWrapper(C2451xa7c66ae6.m944m(exc));
        }
        if (C2452xa7c66ae7.m945m(exc)) {
            return new AndroidNetworkExceptionWrapper(C2453xa7c66ae8.m946m(exc));
        }
        if (C2454xa7c66ae9.m947m(exc)) {
            return new AndroidCallbackExceptionWrapper(C2455xa7c66aea.m948m(exc));
        }
        if (C2456xa7c66aeb.m949m(exc)) {
            return new AndroidHttpExceptionWrapper(C2457xa7c66aec.m950m(exc));
        }
        throw new UnsupportedOperationException("Checked exception translation discrepancy", exc);
    }
}
