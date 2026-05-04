package com.google.firebase.sessions;

import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.tasks.TasksKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class InstallationId {
    public static final Companion Companion = new Companion(null);
    private final String authToken;
    private final String fid;

    public /* synthetic */ InstallationId(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x0082, code lost:
        
            if (r10 == r1) goto L33;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /* JADX WARN: Type inference failed for: r10v17 */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v5, types: [com.google.firebase.installations.FirebaseInstallationsApi] */
        /* JADX WARN: Type inference failed for: r9v0, types: [com.google.firebase.installations.FirebaseInstallationsApi, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v14 */
        /* JADX WARN: Type inference failed for: r9v15 */
        /* JADX WARN: Type inference failed for: r9v16 */
        /* JADX WARN: Type inference failed for: r9v17 */
        /* JADX WARN: Type inference failed for: r9v18 */
        /* JADX WARN: Type inference failed for: r9v19 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v20 */
        /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v6 */
        /* JADX WARN: Type inference failed for: r9v7 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object create(FirebaseInstallationsApi firebaseInstallationsApi, Continuation continuation) {
            InstallationId$Companion$create$1 installationId$Companion$create$1;
            ?? r10;
            String str;
            ?? r9;
            if (continuation instanceof InstallationId$Companion$create$1) {
                installationId$Companion$create$1 = (InstallationId$Companion$create$1) continuation;
                int i = installationId$Companion$create$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    installationId$Companion$create$1.label = i - Integer.MIN_VALUE;
                } else {
                    installationId$Companion$create$1 = new InstallationId$Companion$create$1(this, continuation);
                }
            }
            Object objAwait = installationId$Companion$create$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = installationId$Companion$create$1.label;
            String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            try {
                try {
                } catch (Exception e) {
                    Log.w("FirebaseSessions", "Error getting authentication token.", e);
                    r10 = firebaseInstallationsApi;
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                }
            } catch (Exception e2) {
                Log.w("FirebaseSessions", "Error getting Firebase installation id .", e2);
                r9 = firebaseInstallationsApi;
            }
            if (i2 == 0) {
                ResultKt.throwOnFailure(objAwait);
                Task token = firebaseInstallationsApi.getToken(false);
                Intrinsics.checkNotNullExpressionValue(token, "getToken(...)");
                installationId$Companion$create$1.L$0 = firebaseInstallationsApi;
                installationId$Companion$create$1.label = 1;
                objAwait = TasksKt.await(token, installationId$Companion$create$1);
                firebaseInstallationsApi = firebaseInstallationsApi;
                if (objAwait == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    if (i2 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    String str3 = (String) installationId$Companion$create$1.L$0;
                    ResultKt.throwOnFailure(objAwait);
                    firebaseInstallationsApi = str3;
                    String str4 = (String) objAwait;
                    r9 = firebaseInstallationsApi;
                    if (str4 != null) {
                        str2 = str4;
                        r9 = firebaseInstallationsApi;
                    }
                    return new InstallationId(str2, r9, null);
                }
                FirebaseInstallationsApi firebaseInstallationsApi2 = (FirebaseInstallationsApi) installationId$Companion$create$1.L$0;
                ResultKt.throwOnFailure(objAwait);
                firebaseInstallationsApi = firebaseInstallationsApi2;
            }
            String token2 = ((InstallationTokenResult) objAwait).getToken();
            r10 = firebaseInstallationsApi;
            str = token2;
            Task id = r10.getId();
            Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
            installationId$Companion$create$1.L$0 = str;
            installationId$Companion$create$1.label = 2;
            objAwait = TasksKt.await(id, installationId$Companion$create$1);
            firebaseInstallationsApi = str;
        }
    }

    private InstallationId(String str, String str2) {
        this.fid = str;
        this.authToken = str2;
    }

    public final String getAuthToken() {
        return this.authToken;
    }

    public final String getFid() {
        return this.fid;
    }
}
