package androidx.credentials.playservices.controllers.identitycredentials.getdigitalcredential;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import androidx.core.os.BundleCompat;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.CredentialOption;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialInterruptedException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import androidx.credentials.playservices.controllers.ResponseUtils;
import androidx.credentials.playservices.controllers.identitycredentials.IdentityCredentialApiHiddenActivity;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.identitycredentials.IdentityCredentialManager;
import com.google.android.gms.identitycredentials.PendingGetCredentialHandle;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.sun.jna.Callback;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class CredentialProviderGetDigitalCredentialController extends CredentialProviderController {
    private static final Companion Companion = new Companion(null);
    public CredentialManagerCallback callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    public Executor executor;
    private final ResultReceiverC0486xc7d06e80 resultReceiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.credentials.playservices.controllers.identitycredentials.getdigitalcredential.CredentialProviderGetDigitalCredentialController$resultReceiver$1] */
    public CredentialProviderGetDigitalCredentialController(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identitycredentials.getdigitalcredential.CredentialProviderGetDigitalCredentialController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle resultData) {
                Intrinsics.checkNotNullParameter(resultData, "resultData");
                if (this.this$0.maybeReportErrorFromResultReceiver(resultData, new C0487x4ee2686a(CredentialProviderBaseController.Companion), this.this$0.getExecutor(), this.this$0.getCallback(), this.this$0.cancellationSignal)) {
                    return;
                }
                ResponseUtils.Companion.handleGetCredentialResponse(resultData.getInt("ACTIVITY_REQUEST_CODE"), i, (Intent) BundleCompat.getParcelable(resultData, "RESULT_DATA", Intent.class), this.this$0.getExecutor(), this.this$0.getCallback(), this.this$0.cancellationSignal);
            }
        };
    }

    public final CredentialManagerCallback getCallback() {
        CredentialManagerCallback credentialManagerCallback = this.callback;
        if (credentialManagerCallback != null) {
            return credentialManagerCallback;
        }
        Intrinsics.throwUninitializedPropertyAccessException(Callback.METHOD_NAME);
        return null;
    }

    public final void setCallback(CredentialManagerCallback credentialManagerCallback) {
        Intrinsics.checkNotNullParameter(credentialManagerCallback, "<set-?>");
        this.callback = credentialManagerCallback;
    }

    public final Executor getExecutor() {
        Executor executor = this.executor;
        if (executor != null) {
            return executor;
        }
        Intrinsics.throwUninitializedPropertyAccessException("executor");
        return null;
    }

    public final void setExecutor(Executor executor) {
        Intrinsics.checkNotNullParameter(executor, "<set-?>");
        this.executor = executor;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public void invokePlayServices(GetCredentialRequest request, final CredentialManagerCallback callback, final Executor executor, final CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.cancellationSignal = cancellationSignal;
        setCallback(callback);
        setExecutor(executor);
        if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(cancellationSignal)) {
            return;
        }
        Task credential = IdentityCredentialManager.Companion.getClient(this.context).getCredential(convertRequestToPlayServices(request));
        final Function1 function1 = new Function1() { // from class: androidx.credentials.playservices.controllers.identitycredentials.getdigitalcredential.CredentialProviderGetDigitalCredentialController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CredentialProviderGetDigitalCredentialController.invokePlayServices$lambda$0(cancellationSignal, this, (PendingGetCredentialHandle) obj);
            }
        };
        credential.addOnSuccessListener(new OnSuccessListener() { // from class: androidx.credentials.playservices.controllers.identitycredentials.getdigitalcredential.CredentialProviderGetDigitalCredentialController$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                function1.invoke(obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: androidx.credentials.playservices.controllers.identitycredentials.getdigitalcredential.CredentialProviderGetDigitalCredentialController$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                CredentialProviderGetDigitalCredentialController.invokePlayServices$lambda$4(this.f$0, cancellationSignal, executor, callback, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$0(CancellationSignal cancellationSignal, CredentialProviderGetDigitalCredentialController credentialProviderGetDigitalCredentialController, PendingGetCredentialHandle pendingGetCredentialHandle) {
        if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(cancellationSignal)) {
            return Unit.INSTANCE;
        }
        Intent intent = new Intent(credentialProviderGetDigitalCredentialController.context, (Class<?>) IdentityCredentialApiHiddenActivity.class);
        intent.setFlags(65536);
        intent.putExtra("RESULT_RECEIVER", credentialProviderGetDigitalCredentialController.toIpcFriendlyResultReceiver(credentialProviderGetDigitalCredentialController.resultReceiver));
        intent.putExtra("EXTRA_FLOW_PENDING_INTENT", pendingGetCredentialHandle.getPendingIntent());
        intent.putExtra("EXTRA_ERROR_NAME", "GET_UNKNOWN");
        credentialProviderGetDigitalCredentialController.context.startActivity(intent);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$4(CredentialProviderGetDigitalCredentialController credentialProviderGetDigitalCredentialController, CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback credentialManagerCallback, Exception e) {
        Intrinsics.checkNotNullParameter(e, "e");
        final GetCredentialException getCredentialExceptionFromGmsException = credentialProviderGetDigitalCredentialController.fromGmsException(e);
        CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identitycredentials.getdigitalcredential.CredentialProviderGetDigitalCredentialController$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderGetDigitalCredentialController.invokePlayServices$lambda$4$lambda$3(executor, credentialManagerCallback, getCredentialExceptionFromGmsException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$4$lambda$3(Executor executor, final CredentialManagerCallback credentialManagerCallback, final GetCredentialException getCredentialException) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.getdigitalcredential.CredentialProviderGetDigitalCredentialController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                credentialManagerCallback.onError(getCredentialException);
            }
        });
        return Unit.INSTANCE;
    }

    private final GetCredentialException fromGmsException(Throwable th) {
        if (th instanceof ApiException) {
            int statusCode = ((ApiException) th).getStatusCode();
            if (statusCode == 16) {
                return new GetCredentialCancellationException(th.getMessage());
            }
            if (CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(statusCode))) {
                return new GetCredentialInterruptedException(th.getMessage());
            }
            return new GetCredentialUnknownException("Get digital credential failed, failure: " + th);
        }
        return new GetCredentialUnknownException("Get digital credential failed, failure: " + th);
    }

    public com.google.android.gms.identitycredentials.GetCredentialRequest convertRequestToPlayServices(GetCredentialRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        ArrayList arrayList = new ArrayList();
        for (CredentialOption credentialOption : request.getCredentialOptions()) {
        }
        return new com.google.android.gms.identitycredentials.GetCredentialRequest(arrayList, GetCredentialRequest.Companion.getRequestMetadataBundle(request), request.getOrigin(), new ResultReceiver(null));
    }

    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
