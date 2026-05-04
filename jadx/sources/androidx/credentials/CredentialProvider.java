package androidx.credentials;

import android.content.Context;
import android.os.CancellationSignal;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public interface CredentialProvider {

    /* JADX INFO: renamed from: androidx.credentials.CredentialProvider$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static void $default$onGetCredential(CredentialProvider credentialProvider, Context context, PrepareGetCredentialResponse$PendingGetCredentialHandle pendingGetCredentialHandle, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback callback) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(pendingGetCredentialHandle, "pendingGetCredentialHandle");
            Intrinsics.checkNotNullParameter(executor, "executor");
            Intrinsics.checkNotNullParameter(callback, "callback");
        }

        public static void $default$onPrepareCredential(CredentialProvider credentialProvider, GetCredentialRequest request, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback callback) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(executor, "executor");
            Intrinsics.checkNotNullParameter(callback, "callback");
        }
    }

    boolean isAvailableOnDevice();

    void onCreateCredential(Context context, CreateCredentialRequest createCredentialRequest, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback);

    void onGetCredential(Context context, GetCredentialRequest getCredentialRequest, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback);
}
