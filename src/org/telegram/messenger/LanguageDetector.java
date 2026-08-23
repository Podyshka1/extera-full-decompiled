package org.telegram.messenger;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.p020nl.languageid.LanguageIdentification;

/* JADX INFO: loaded from: classes.dex */
public class LanguageDetector {

    /* JADX INFO: loaded from: classes5.dex */
    public interface ExceptionCallback {
        void run(Exception exc);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public interface StringCallback {
        void run(String str);
    }

    public static boolean hasSupport() {
        return true;
    }

    public static void detectLanguage(String str, StringCallback stringCallback, ExceptionCallback exceptionCallback) {
        detectLanguage(str, stringCallback, exceptionCallback, false);
    }

    public static void detectLanguage(String str, final StringCallback stringCallback, final ExceptionCallback exceptionCallback, boolean z) {
        if (z) {
            try {
                MlKitContext.zza(ApplicationLoader.applicationContext);
            } catch (IllegalStateException e) {
                if (!z) {
                    detectLanguage(str, stringCallback, exceptionCallback, true);
                    return;
                }
                if (exceptionCallback != null) {
                    exceptionCallback.run(e);
                }
                FileLog.m1136e(e);
                return;
            } catch (Exception e2) {
                if (exceptionCallback != null) {
                    exceptionCallback.run(e2);
                }
                FileLog.m1136e(e2);
                return;
            } catch (Throwable th) {
                if (exceptionCallback != null) {
                    exceptionCallback.run(null);
                }
                FileLog.m1136e(th);
                return;
            }
        }
        LanguageIdentification.getClient().identifyLanguage(str).addOnSuccessListener(new OnSuccessListener() { // from class: org.telegram.messenger.LanguageDetector$$ExternalSyntheticLambda0
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                LanguageDetector.$r8$lambda$A9hSaUSYsiHXwXl3Wg4NimNwdkM(stringCallback, (String) obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: org.telegram.messenger.LanguageDetector$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                LanguageDetector.$r8$lambda$AoS_Dilvh2Sr5L6lsNQg9lI_0nY(exceptionCallback, exc);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$A9hSaUSYsiHXwXl3Wg4NimNwdkM(StringCallback stringCallback, String str) {
        if (stringCallback != null) {
            stringCallback.run(str);
        }
    }

    public static /* synthetic */ void $r8$lambda$AoS_Dilvh2Sr5L6lsNQg9lI_0nY(ExceptionCallback exceptionCallback, Exception exc) {
        if (exceptionCallback != null) {
            exceptionCallback.run(exc);
        }
    }
}
