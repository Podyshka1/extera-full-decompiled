package com.google.firebase.sessions;

import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.installations.InstallationTokenResult;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.tasks.TasksKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0000\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/google/firebase/sessions/InstallationId;", _UrlKt.FRAGMENT_ENCODE_SET, "fid", _UrlKt.FRAGMENT_ENCODE_SET, "authToken", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getFid", "()Ljava/lang/String;", "getAuthToken", "Companion", "com.google.firebase-firebase-sessions"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
public final class InstallationId {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String authToken;
    private final String fid;

    public /* synthetic */ InstallationId(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2);
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"Lcom/google/firebase/sessions/InstallationId$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "create", "Lcom/google/firebase/sessions/InstallationId;", "firebaseInstallations", "Lcom/google/firebase/installations/FirebaseInstallationsApi;", "(Lcom/google/firebase/installations/FirebaseInstallationsApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "com.google.firebase-firebase-sessions"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x0077, code lost:
        
            if (r8 == r10) goto L33;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /* JADX WARN: Type inference failed for: r7v0 */
        /* JADX WARN: Type inference failed for: r8v17 */
        /* JADX WARN: Type inference failed for: r8v4 */
        /* JADX WARN: Type inference failed for: r8v5, types: [com.google.firebase.installations.FirebaseInstallationsApi] */
        /* JADX WARN: Type inference failed for: r9v0, types: [com.google.firebase.installations.FirebaseInstallationsApi, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v1 */
        /* JADX WARN: Type inference failed for: r9v13 */
        /* JADX WARN: Type inference failed for: r9v14 */
        /* JADX WARN: Type inference failed for: r9v15 */
        /* JADX WARN: Type inference failed for: r9v16 */
        /* JADX WARN: Type inference failed for: r9v17 */
        /* JADX WARN: Type inference failed for: r9v18 */
        /* JADX WARN: Type inference failed for: r9v19 */
        /* JADX WARN: Type inference failed for: r9v2 */
        /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v6 */
        /* JADX WARN: Type inference failed for: r9v7 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object create(FirebaseInstallationsApi firebaseInstallationsApi, Continuation<? super InstallationId> continuation) {
            InstallationId$Companion$create$1 installationId$Companion$create$1;
            ?? r8;
            String token;
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
            DefaultConstructorMarker defaultConstructorMarker = null;
            String str = _UrlKt.FRAGMENT_ENCODE_SET;
            try {
                try {
                } catch (Exception e) {
                    Log.w("FirebaseSessions", "Error getting authentication token.", e);
                    r8 = firebaseInstallationsApi;
                    token = _UrlKt.FRAGMENT_ENCODE_SET;
                }
            } catch (Exception e2) {
                Log.w("FirebaseSessions", "Error getting Firebase installation id .", e2);
                r9 = firebaseInstallationsApi;
            }
            if (i2 == 0) {
                ResultKt.throwOnFailure(objAwait);
                Task<InstallationTokenResult> token2 = firebaseInstallationsApi.getToken(false);
                installationId$Companion$create$1.L$0 = firebaseInstallationsApi;
                installationId$Companion$create$1.label = 1;
                objAwait = TasksKt.await(token2, installationId$Companion$create$1);
                firebaseInstallationsApi = firebaseInstallationsApi;
                if (objAwait == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    if (i2 != 2) {
                        Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    String str2 = (String) installationId$Companion$create$1.L$0;
                    ResultKt.throwOnFailure(objAwait);
                    firebaseInstallationsApi = str2;
                    String str3 = (String) objAwait;
                    r9 = firebaseInstallationsApi;
                    if (str3 != null) {
                        str = str3;
                        r9 = firebaseInstallationsApi;
                    }
                    return new InstallationId(str, r9, defaultConstructorMarker);
                }
                FirebaseInstallationsApi firebaseInstallationsApi2 = (FirebaseInstallationsApi) installationId$Companion$create$1.L$0;
                ResultKt.throwOnFailure(objAwait);
                firebaseInstallationsApi = firebaseInstallationsApi2;
            }
            ?? r7 = firebaseInstallationsApi;
            token = ((InstallationTokenResult) objAwait).getToken();
            r8 = r7;
            Task<String> id = r8.getId();
            installationId$Companion$create$1.L$0 = token;
            installationId$Companion$create$1.label = 2;
            objAwait = TasksKt.await(id, installationId$Companion$create$1);
            firebaseInstallationsApi = token;
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
