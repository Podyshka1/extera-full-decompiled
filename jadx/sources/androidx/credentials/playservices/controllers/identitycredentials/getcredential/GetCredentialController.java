package androidx.credentials.playservices.controllers.identitycredentials.getcredential;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.core.os.BundleCompat;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.CredentialOption;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import androidx.credentials.playservices.controllers.ResponseUtils;
import androidx.credentials.playservices.controllers.identityauth.HiddenActivity;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import com.google.android.gms.identitycredentials.IdentityCredentialManager;
import com.google.android.gms.identitycredentials.PendingGetCredentialHandle;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.sun.jna.Callback;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class GetCredentialController extends CredentialProviderController {
    public static final Companion Companion = new Companion(null);
    public CredentialManagerCallback callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    public Executor executor;
    private final GetCredentialController$resultReceiver$1 resultReceiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController$resultReceiver$1] */
    public GetCredentialController(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle resultData) {
                Intrinsics.checkNotNullParameter(resultData, "resultData");
                if (this.this$0.maybeReportErrorFromResultReceiver(resultData, new GetCredentialController$resultReceiver$1$onReceiveResult$1(CredentialProviderBaseController.Companion), this.this$0.getExecutor(), this.this$0.getCallback(), this.this$0.cancellationSignal)) {
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
    public void invokePlayServices(final GetCredentialRequest request, final CredentialManagerCallback callback, final Executor executor, final CancellationSignal cancellationSignal) {
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
        final Function1 function1 = new Function1() { // from class: androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GetCredentialController.invokePlayServices$lambda$2(cancellationSignal, this, executor, callback, (PendingGetCredentialHandle) obj);
            }
        };
        credential.addOnSuccessListener(new OnSuccessListener() { // from class: androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                function1.invoke(obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                GetCredentialController.invokePlayServices$lambda$4(request, this, callback, executor, cancellationSignal, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$2(CancellationSignal cancellationSignal, GetCredentialController getCredentialController, final Executor executor, final CredentialManagerCallback credentialManagerCallback, PendingGetCredentialHandle pendingGetCredentialHandle) {
        if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(cancellationSignal)) {
            return Unit.INSTANCE;
        }
        Intent intent = new Intent(getCredentialController.context, (Class<?>) HiddenActivity.class);
        getCredentialController.generateHiddenActivityIntent(getCredentialController.resultReceiver, intent, "BEGIN_SIGN_IN");
        intent.putExtra("EXTRA_FLOW_PENDING_INTENT", pendingGetCredentialHandle.getPendingIntent());
        try {
            getCredentialController.context.startActivity(intent);
        } catch (Exception unused) {
            CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return GetCredentialController.invokePlayServices$lambda$2$lambda$1(executor, credentialManagerCallback);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$2$lambda$1(Executor executor, final CredentialManagerCallback credentialManagerCallback) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                GetCredentialController.invokePlayServices$lambda$2$lambda$1$lambda$0(credentialManagerCallback);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2$lambda$1$lambda$0(CredentialManagerCallback credentialManagerCallback) {
        credentialManagerCallback.onError(new GetCredentialUnknownException("Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$4(GetCredentialRequest getCredentialRequest, GetCredentialController getCredentialController, CredentialManagerCallback credentialManagerCallback, Executor executor, CancellationSignal cancellationSignal, Exception e) {
        Intrinsics.checkNotNullParameter(e, "e");
        if (CredentialProviderPlayServicesImpl.Companion.isGetSignInIntentRequest$credentials_play_services_auth_release(getCredentialRequest)) {
            Log.w("GetCredentialController", "Pre-u credman get flow failed for get sign in intent; retrying with gis flow");
            new CredentialProviderGetSignInIntentController(getCredentialController.context).invokePlayServices(getCredentialRequest, credentialManagerCallback, executor, cancellationSignal);
        } else {
            Log.w("GetCredentialController", "Pre-u credman get flow failed; retrying with gis flow");
            new CredentialProviderBeginSignInController(getCredentialController.context).invokePlayServices(getCredentialRequest, credentialManagerCallback, executor, cancellationSignal);
        }
    }

    public com.google.android.gms.identitycredentials.GetCredentialRequest convertRequestToPlayServices(GetCredentialRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        Bundle requestMetadataBundle = GetCredentialRequest.Companion.getRequestMetadataBundle(request);
        List credentialOptions = request.getCredentialOptions();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(credentialOptions, 10));
        Iterator it = credentialOptions.iterator();
        while (it.hasNext()) {
            arrayList.add(convertCredentialOptionToPlayServices((CredentialOption) it.next()));
        }
        return new com.google.android.gms.identitycredentials.GetCredentialRequest(arrayList, requestMetadataBundle, request.getOrigin(), new ResultReceiver(null));
    }

    private final com.google.android.gms.identitycredentials.CredentialOption convertCredentialOptionToPlayServices(CredentialOption credentialOption) {
        return new com.google.android.gms.identitycredentials.CredentialOption(credentialOption.getType(), credentialOption.getRequestData(), credentialOption.getCandidateQueryData(), _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
