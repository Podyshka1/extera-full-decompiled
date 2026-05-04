package androidx.credentials.playservices.controllers.blockstore.getrestorecredential;

import android.content.Context;
import android.os.CancellationSignal;
import androidx.credentials.Credential;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.CredentialOption;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.exceptions.NoCredentialException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialRequest;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialResponse;
import com.google.android.gms.auth.blockstore.restorecredential.RestoreCredential;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes4.dex */
public final class CredentialProviderGetRestoreCredentialController extends CredentialProviderController {
    private final Context context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CredentialProviderGetRestoreCredentialController(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public void invokePlayServices(GetCredentialRequest request, final CredentialManagerCallback callback, final Executor executor, final CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(executor, "executor");
        if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(cancellationSignal)) {
            return;
        }
        Task restoreCredential = RestoreCredential.getRestoreCredentialClient(this.context).getRestoreCredential(convertRequestToPlayServices(request));
        final Function1 function1 = new Function1() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$4(this.f$0, cancellationSignal, executor, callback, (GetRestoreCredentialResponse) obj);
            }
        };
        restoreCredential.addOnSuccessListener(new OnSuccessListener() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                function1.invoke(obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$8(cancellationSignal, executor, callback, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$4(CredentialProviderGetRestoreCredentialController credentialProviderGetRestoreCredentialController, CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback credentialManagerCallback, GetRestoreCredentialResponse getRestoreCredentialResponse) {
        try {
            Intrinsics.checkNotNull(getRestoreCredentialResponse);
            final GetCredentialResponse getCredentialResponseConvertResponseToCredentialManager = credentialProviderGetRestoreCredentialController.convertResponseToCredentialManager(getRestoreCredentialResponse);
            CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$4$lambda$1(executor, credentialManagerCallback, getCredentialResponseConvertResponseToCredentialManager);
                }
            });
        } catch (Exception e) {
            CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$4$lambda$3(executor, credentialManagerCallback, e);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$4$lambda$1(Executor executor, final CredentialManagerCallback credentialManagerCallback, final GetCredentialResponse getCredentialResponse) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                credentialManagerCallback.onResult(getCredentialResponse);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$4$lambda$3(Executor executor, final CredentialManagerCallback credentialManagerCallback, final Exception exc) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$4$lambda$3$lambda$2(credentialManagerCallback, exc);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$4$lambda$3$lambda$2(CredentialManagerCallback credentialManagerCallback, Exception exc) {
        credentialManagerCallback.onError(exc instanceof NoCredentialException ? (GetCredentialException) exc : new GetCredentialUnknownException(exc.getMessage()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$8(CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback credentialManagerCallback, Exception e) {
        Intrinsics.checkNotNullParameter(e, "e");
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = new GetCredentialUnknownException("Get restore credential failed for unknown reason, failure: " + e.getMessage());
        if (e instanceof ApiException) {
            ApiException apiException = (ApiException) e;
            if (apiException.getStatusCode() == 40201) {
                ref$ObjectRef.element = new GetCredentialUnknownException("The restore credential internal service had a failure, failure: " + e.getMessage());
            } else {
                ref$ObjectRef.element = new GetCredentialUnknownException("The restore credential service failed with unsupported status code, failure: " + e.getMessage() + ", status code: " + apiException.getStatusCode());
            }
        }
        CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$8$lambda$7(executor, credentialManagerCallback, ref$ObjectRef);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$8$lambda$7(Executor executor, final CredentialManagerCallback credentialManagerCallback, final Ref$ObjectRef ref$ObjectRef) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$8$lambda$7$lambda$6(credentialManagerCallback, ref$ObjectRef);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$8$lambda$7$lambda$6(CredentialManagerCallback credentialManagerCallback, Ref$ObjectRef ref$ObjectRef) {
        credentialManagerCallback.onError(ref$ObjectRef.element);
    }

    public GetRestoreCredentialRequest convertRequestToPlayServices(GetCredentialRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        for (CredentialOption credentialOption : request.getCredentialOptions()) {
        }
        Intrinsics.throwUninitializedPropertyAccessException("credentialOption");
        throw null;
    }

    public GetCredentialResponse convertResponseToCredentialManager(GetRestoreCredentialResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        return new GetCredentialResponse(Credential.Companion.createFrom("androidx.credentials.TYPE_RESTORE_CREDENTIAL", response.getResponseBundle()));
    }
}
