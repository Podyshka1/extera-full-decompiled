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
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialRequest;
import com.google.android.gms.auth.blockstore.restorecredential.GetRestoreCredentialResponse;
import com.google.android.gms.auth.blockstore.restorecredential.RestoreCredential;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.sun.jna.Callback;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ6\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0004H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Landroidx/credentials/playservices/controllers/blockstore/getrestorecredential/CredentialProviderGetRestoreCredentialController;", "Landroidx/credentials/playservices/controllers/CredentialProviderController;", "Landroidx/credentials/GetCredentialRequest;", "Lcom/google/android/gms/auth/blockstore/restorecredential/GetRestoreCredentialRequest;", "Lcom/google/android/gms/auth/blockstore/restorecredential/GetRestoreCredentialResponse;", "Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "invokePlayServices", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.REQUEST, Callback.METHOD_NAME, "Landroidx/credentials/CredentialManagerCallback;", "executor", "Ljava/util/concurrent/Executor;", "cancellationSignal", "Landroid/os/CancellationSignal;", "convertRequestToPlayServices", "convertResponseToCredentialManager", PluginsConstants.RESPONSE, "credentials-play-services-auth"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class CredentialProviderGetRestoreCredentialController extends CredentialProviderController<GetCredentialRequest, GetRestoreCredentialRequest, GetRestoreCredentialResponse, GetCredentialResponse, GetCredentialException> {
    private final Context context;

    public CredentialProviderGetRestoreCredentialController(Context context) {
        super(context);
        this.context = context;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public void invokePlayServices(GetCredentialRequest request, final CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback, final Executor executor, final CancellationSignal cancellationSignal) {
        if (CredentialProviderPlayServicesImpl.INSTANCE.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return;
        }
        Task<GetRestoreCredentialResponse> restoreCredential = RestoreCredential.getRestoreCredentialClient(this.context).getRestoreCredential(convertRequestToPlayServices(request));
        final Function1 function1 = new Function1() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CredentialProviderGetRestoreCredentialController.$r8$lambda$RzDSQNuMWPQN0LmT82FX7UtPaM8(this.f$0, cancellationSignal, executor, callback, (GetRestoreCredentialResponse) obj);
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
                CredentialProviderGetRestoreCredentialController.m1757$r8$lambda$tO6y8ElnBXVfZNoZjIXJpiQLZI(cancellationSignal, executor, callback, exc);
            }
        });
    }

    public static Unit $r8$lambda$RzDSQNuMWPQN0LmT82FX7UtPaM8(CredentialProviderGetRestoreCredentialController credentialProviderGetRestoreCredentialController, CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback credentialManagerCallback, GetRestoreCredentialResponse getRestoreCredentialResponse) {
        try {
            final GetCredentialResponse getCredentialResponseConvertResponseToCredentialManager = credentialProviderGetRestoreCredentialController.convertResponseToCredentialManager(getRestoreCredentialResponse);
            CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$0$0(executor, credentialManagerCallback, getCredentialResponseConvertResponseToCredentialManager);
                }
            });
        } catch (Exception e) {
            CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$0$1(executor, credentialManagerCallback, e);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$0$0(Executor executor, final CredentialManagerCallback credentialManagerCallback, final GetCredentialResponse getCredentialResponse) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                credentialManagerCallback.onResult(getCredentialResponse);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$0$1(Executor executor, final CredentialManagerCallback credentialManagerCallback, final Exception exc) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$0$1$0(credentialManagerCallback, exc);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$1$0(CredentialManagerCallback credentialManagerCallback, Exception exc) {
        credentialManagerCallback.onError(exc instanceof NoCredentialException ? (GetCredentialException) exc : new GetCredentialUnknownException(exc.getMessage()));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, androidx.credentials.exceptions.GetCredentialUnknownException] */
    /* JADX WARN: Type inference failed for: r1v5, types: [T, androidx.credentials.exceptions.GetCredentialUnknownException] */
    /* JADX WARN: Type inference failed for: r2v3, types: [T, androidx.credentials.exceptions.GetCredentialUnknownException] */
    /* JADX INFO: renamed from: $r8$lambda$tO6y8ElnBXVfZNoZjI-XJpiQLZI, reason: not valid java name */
    public static void m1757$r8$lambda$tO6y8ElnBXVfZNoZjIXJpiQLZI(CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback credentialManagerCallback, Exception exc) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new GetCredentialUnknownException("Get restore credential failed for unknown reason, failure: " + exc.getMessage());
        if (exc instanceof ApiException) {
            ApiException apiException = (ApiException) exc;
            if (apiException.getStatusCode() == 40201) {
                objectRef.element = new GetCredentialUnknownException("The restore credential internal service had a failure, failure: " + exc.getMessage());
            } else {
                objectRef.element = new GetCredentialUnknownException("The restore credential service failed with unsupported status code, failure: " + exc.getMessage() + ", status code: " + apiException.getStatusCode());
            }
        }
        CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$2$0(executor, credentialManagerCallback, objectRef);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$2$0(Executor executor, final CredentialManagerCallback credentialManagerCallback, final Ref.ObjectRef objectRef) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetRestoreCredentialController.invokePlayServices$lambda$2$0$0(credentialManagerCallback, objectRef);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2$0$0(CredentialManagerCallback credentialManagerCallback, Ref.ObjectRef objectRef) {
        credentialManagerCallback.onError(objectRef.element);
    }

    public GetRestoreCredentialRequest convertRequestToPlayServices(GetCredentialRequest request) {
        for (CredentialOption credentialOption : request.getCredentialOptions()) {
        }
        throw null;
    }

    public GetCredentialResponse convertResponseToCredentialManager(GetRestoreCredentialResponse response) {
        return new GetCredentialResponse(Credential.INSTANCE.createFrom("androidx.credentials.TYPE_RESTORE_CREDENTIAL", response.getResponseBundle()));
    }
}
