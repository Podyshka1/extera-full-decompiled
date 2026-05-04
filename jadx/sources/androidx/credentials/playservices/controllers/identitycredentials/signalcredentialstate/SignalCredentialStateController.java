package androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate;

import android.content.Context;
import android.os.CancellationSignal;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.SignalCredentialStateRequest;
import androidx.credentials.exceptions.publickeycredential.SignalCredentialStateException;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.identitycredentials.IdentityCredentialManager;
import com.google.android.gms.identitycredentials.SignalCredentialStateResponse;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class SignalCredentialStateController extends CredentialProviderController {
    public static final Companion Companion = new Companion(null);
    private final Context context;

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public /* bridge */ /* synthetic */ void invokePlayServices(Object obj, CredentialManagerCallback credentialManagerCallback, Executor executor, CancellationSignal cancellationSignal) {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        invokePlayServices((SignalCredentialStateRequest) null, credentialManagerCallback, executor, cancellationSignal);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignalCredentialStateController(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    public void invokePlayServices(SignalCredentialStateRequest request, final CredentialManagerCallback callback, final Executor executor, CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Task taskSignalCredentialState = IdentityCredentialManager.Companion.getClient(this.context).signalCredentialState(convertRequestToPlayServices(request));
        final Function1 function1 = new Function1() { // from class: androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SignalCredentialStateController.invokePlayServices$lambda$2(executor, this, callback, (SignalCredentialStateResponse) obj);
            }
        };
        taskSignalCredentialState.addOnSuccessListener(new OnSuccessListener() { // from class: androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                function1.invoke(obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                SignalCredentialStateController.invokePlayServices$lambda$5(executor, callback, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$2(Executor executor, SignalCredentialStateController signalCredentialStateController, final CredentialManagerCallback credentialManagerCallback, SignalCredentialStateResponse signalCredentialStateResponse) {
        if (signalCredentialStateResponse == null) {
            executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    SignalCredentialStateController.invokePlayServices$lambda$2$lambda$0(credentialManagerCallback);
                }
            });
            return Unit.INSTANCE;
        }
        final androidx.credentials.SignalCredentialStateResponse signalCredentialStateResponseConvertResponseToCredentialManager = signalCredentialStateController.convertResponseToCredentialManager(signalCredentialStateResponse);
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                credentialManagerCallback.onResult(signalCredentialStateResponseConvertResponseToCredentialManager);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2$lambda$0(CredentialManagerCallback credentialManagerCallback) {
        credentialManagerCallback.onError(SignalCredentialStateException.Companion.createFrom("No SignalCredentialStateResponse received"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$5(Executor executor, final CredentialManagerCallback credentialManagerCallback, Exception e) {
        Intrinsics.checkNotNullParameter(e, "e");
        final SignalCredentialStateException signalCredentialStateExceptionCreateFrom = SignalCredentialStateException.Companion.createFrom(e.getMessage());
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                credentialManagerCallback.onError(signalCredentialStateExceptionCreateFrom);
            }
        });
    }

    public com.google.android.gms.identitycredentials.SignalCredentialStateRequest convertRequestToPlayServices(SignalCredentialStateRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        throw null;
    }

    protected androidx.credentials.SignalCredentialStateResponse convertResponseToCredentialManager(SignalCredentialStateResponse response) {
        Intrinsics.checkNotNullParameter(response, "response");
        return new androidx.credentials.SignalCredentialStateResponse();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SignalCredentialStateController getInstance(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new SignalCredentialStateController(context);
        }
    }
}
