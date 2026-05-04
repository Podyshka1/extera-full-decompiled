package androidx.credentials.playservices.controllers.identityauth.beginsignin;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.credentials.Credential;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.PasswordCredential;
import androidx.credentials.PublicKeyCredential;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialInterruptedException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import androidx.credentials.playservices.controllers.identityauth.HiddenActivity;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.PublicKeyCredentialControllerUtility;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.auth.api.identity.Identity;
import com.google.android.gms.auth.api.identity.SignInCredential;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.libraries.identity.googleid.GoogleIdTokenCredential;
import com.sun.jna.Callback;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes4.dex */
public final class CredentialProviderBeginSignInController extends CredentialProviderController {
    public static final Companion Companion = new Companion(null);
    public CredentialManagerCallback callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    public Executor executor;
    private final CredentialProviderBeginSignInController$resultReceiver$1 resultReceiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$resultReceiver$1] */
    public CredentialProviderBeginSignInController(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle resultData) {
                Intrinsics.checkNotNullParameter(resultData, "resultData");
                if (this.this$0.maybeReportErrorFromResultReceiver(resultData, new C0433x4b514208(CredentialProviderBaseController.Companion), this.this$0.getExecutor(), this.this$0.getCallback(), this.this$0.cancellationSignal)) {
                    return;
                }
                this.this$0.handleResponse$credentials_play_services_auth_release(resultData.getInt("ACTIVITY_REQUEST_CODE"), i, (Intent) resultData.getParcelable("RESULT_DATA"));
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
    public void invokePlayServices(GetCredentialRequest request, CredentialManagerCallback callback, Executor executor, final CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.cancellationSignal = cancellationSignal;
        setCallback(callback);
        setExecutor(executor);
        if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(cancellationSignal)) {
            return;
        }
        Task taskBeginSignIn = Identity.getSignInClient(this.context).beginSignIn(convertRequestToPlayServices(request));
        final Function1 function1 = new Function1() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CredentialProviderBeginSignInController.invokePlayServices$lambda$2(cancellationSignal, this, (BeginSignInResult) obj);
            }
        };
        taskBeginSignIn.addOnSuccessListener(new OnSuccessListener() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                function1.invoke(obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                CredentialProviderBeginSignInController.invokePlayServices$lambda$6(this.f$0, cancellationSignal, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$2(CancellationSignal cancellationSignal, final CredentialProviderBeginSignInController credentialProviderBeginSignInController, BeginSignInResult beginSignInResult) {
        if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(cancellationSignal)) {
            return Unit.INSTANCE;
        }
        Intent intent = new Intent(credentialProviderBeginSignInController.context, (Class<?>) HiddenActivity.class);
        credentialProviderBeginSignInController.generateHiddenActivityIntent(credentialProviderBeginSignInController.resultReceiver, intent, "BEGIN_SIGN_IN");
        intent.putExtra("EXTRA_FLOW_PENDING_INTENT", beginSignInResult.getPendingIntent());
        try {
            credentialProviderBeginSignInController.context.startActivity(intent);
        } catch (Exception unused) {
            CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderBeginSignInController.invokePlayServices$lambda$2$lambda$1(this.f$0);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$2$lambda$1(final CredentialProviderBeginSignInController credentialProviderBeginSignInController) {
        credentialProviderBeginSignInController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderBeginSignInController.invokePlayServices$lambda$2$lambda$1$lambda$0(this.f$0);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$2$lambda$1$lambda$0(CredentialProviderBeginSignInController credentialProviderBeginSignInController) {
        credentialProviderBeginSignInController.getCallback().onError(new GetCredentialUnknownException("Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$6(final CredentialProviderBeginSignInController credentialProviderBeginSignInController, CancellationSignal cancellationSignal, Exception e) {
        Intrinsics.checkNotNullParameter(e, "e");
        final GetCredentialException getCredentialExceptionFromGmsException = credentialProviderBeginSignInController.fromGmsException(e);
        CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderBeginSignInController.invokePlayServices$lambda$6$lambda$5(this.f$0, getCredentialExceptionFromGmsException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$6$lambda$5(final CredentialProviderBeginSignInController credentialProviderBeginSignInController, final GetCredentialException getCredentialException) {
        credentialProviderBeginSignInController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderBeginSignInController.invokePlayServices$lambda$6$lambda$5$lambda$4(this.f$0, getCredentialException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$6$lambda$5$lambda$4(CredentialProviderBeginSignInController credentialProviderBeginSignInController, GetCredentialException getCredentialException) {
        credentialProviderBeginSignInController.getCallback().onError(getCredentialException);
    }

    private final GetCredentialException fromGmsException(Throwable th) {
        String str;
        if ((th instanceof ApiException) && CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(((ApiException) th).getStatusCode()))) {
            str = "GET_INTERRUPTED";
        } else {
            str = "GET_NO_CREDENTIALS";
        }
        return CredentialProviderBaseController.Companion.m171xd975db95(str, "During begin sign in, failure response from one tap: " + th.getMessage());
    }

    public final void handleResponse$credentials_play_services_auth_release(int i, int i2, Intent intent) {
        CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.Companion;
        if (i != companion.m170xa2b31783()) {
            Log.w("BeginSignIn", "Returned request code " + companion.m170xa2b31783() + " which  does not match what was given " + i);
            return;
        }
        CredentialProviderController.Companion companion2 = CredentialProviderController.Companion;
        if (companion2.m175x7474352d(i2, new Function2() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return CredentialProviderBeginSignInController.handleResponse$lambda$7((CancellationSignal) obj, (Function0) obj2);
            }
        }, new Function1() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CredentialProviderBeginSignInController.handleResponse$lambda$9(this.f$0, (GetCredentialException) obj);
            }
        }, this.cancellationSignal)) {
            return;
        }
        try {
            SignInCredential signInCredentialFromIntent = Identity.getSignInClient(this.context).getSignInCredentialFromIntent(intent);
            Intrinsics.checkNotNullExpressionValue(signInCredentialFromIntent, "getSignInCredentialFromIntent(...)");
            final GetCredentialResponse getCredentialResponseConvertResponseToCredentialManager = convertResponseToCredentialManager(signInCredentialFromIntent);
            companion2.m172xd7d57380(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderBeginSignInController.handleResponse$lambda$11(this.f$0, getCredentialResponseConvertResponseToCredentialManager);
                }
            });
        } catch (GetCredentialException e) {
            CredentialProviderController.Companion.m172xd7d57380(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderBeginSignInController.handleResponse$lambda$15(this.f$0, e);
                }
            });
        } catch (ApiException e2) {
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = new GetCredentialUnknownException(e2.getMessage());
            if (e2.getStatusCode() == 16) {
                ref$ObjectRef.element = new GetCredentialCancellationException(e2.getMessage());
            } else if (CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(e2.getStatusCode()))) {
                ref$ObjectRef.element = new GetCredentialInterruptedException(e2.getMessage());
            }
            CredentialProviderController.Companion.m172xd7d57380(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderBeginSignInController.handleResponse$lambda$13(this.f$0, ref$ObjectRef);
                }
            });
        } catch (Throwable th) {
            final GetCredentialUnknownException getCredentialUnknownException = new GetCredentialUnknownException(th.getMessage());
            CredentialProviderController.Companion.m172xd7d57380(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderBeginSignInController.handleResponse$lambda$17(this.f$0, getCredentialUnknownException);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$7(CancellationSignal cancellationSignal, Function0 f) {
        Intrinsics.checkNotNullParameter(f, "f");
        CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, f);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$9(final CredentialProviderBeginSignInController credentialProviderBeginSignInController, final GetCredentialException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        credentialProviderBeginSignInController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderBeginSignInController.handleResponse$lambda$9$lambda$8(this.f$0, e);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$9$lambda$8(CredentialProviderBeginSignInController credentialProviderBeginSignInController, GetCredentialException getCredentialException) {
        credentialProviderBeginSignInController.getCallback().onError(getCredentialException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$11(final CredentialProviderBeginSignInController credentialProviderBeginSignInController, final GetCredentialResponse getCredentialResponse) {
        credentialProviderBeginSignInController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderBeginSignInController.handleResponse$lambda$11$lambda$10(this.f$0, getCredentialResponse);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$11$lambda$10(CredentialProviderBeginSignInController credentialProviderBeginSignInController, GetCredentialResponse getCredentialResponse) {
        credentialProviderBeginSignInController.getCallback().onResult(getCredentialResponse);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$13(final CredentialProviderBeginSignInController credentialProviderBeginSignInController, final Ref$ObjectRef ref$ObjectRef) {
        credentialProviderBeginSignInController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderBeginSignInController.handleResponse$lambda$13$lambda$12(this.f$0, ref$ObjectRef);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$13$lambda$12(CredentialProviderBeginSignInController credentialProviderBeginSignInController, Ref$ObjectRef ref$ObjectRef) {
        credentialProviderBeginSignInController.getCallback().onError(ref$ObjectRef.element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$15(final CredentialProviderBeginSignInController credentialProviderBeginSignInController, final GetCredentialException getCredentialException) {
        credentialProviderBeginSignInController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderBeginSignInController.handleResponse$lambda$15$lambda$14(this.f$0, getCredentialException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$15$lambda$14(CredentialProviderBeginSignInController credentialProviderBeginSignInController, GetCredentialException getCredentialException) {
        credentialProviderBeginSignInController.getCallback().onError(getCredentialException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$17(final CredentialProviderBeginSignInController credentialProviderBeginSignInController, final GetCredentialUnknownException getCredentialUnknownException) {
        credentialProviderBeginSignInController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderBeginSignInController.handleResponse$lambda$17$lambda$16(this.f$0, getCredentialUnknownException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$17$lambda$16(CredentialProviderBeginSignInController credentialProviderBeginSignInController, GetCredentialUnknownException getCredentialUnknownException) {
        credentialProviderBeginSignInController.getCallback().onError(getCredentialUnknownException);
    }

    public BeginSignInRequest convertRequestToPlayServices(GetCredentialRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return BeginSignInControllerUtility.Companion.m176x545fe152(request, this.context);
    }

    public GetCredentialResponse convertResponseToCredentialManager(SignInCredential response) throws GetCredentialUnknownException {
        Credential publicKeyCredential;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.getPassword() != null) {
            String id = response.getId();
            Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
            String password = response.getPassword();
            Intrinsics.checkNotNull(password);
            publicKeyCredential = new PasswordCredential(id, password);
        } else if (response.getGoogleIdToken() != null) {
            publicKeyCredential = createGoogleIdCredential(response);
        } else if (response.getPublicKeyCredential() != null) {
            publicKeyCredential = new PublicKeyCredential(PublicKeyCredentialControllerUtility.Companion.toAssertPasskeyResponse(response));
        } else {
            Log.w("BeginSignIn", "Credential returned but no google Id or password or passkey found");
            publicKeyCredential = null;
        }
        if (publicKeyCredential == null) {
            throw new GetCredentialUnknownException("When attempting to convert get response, null credential found");
        }
        return new GetCredentialResponse(publicKeyCredential);
    }

    private final GoogleIdTokenCredential createGoogleIdCredential(SignInCredential signInCredential) {
        GoogleIdTokenCredential.Builder builder = new GoogleIdTokenCredential.Builder();
        String id = signInCredential.getId();
        Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
        GoogleIdTokenCredential.Builder id2 = builder.setId(id);
        String googleIdToken = signInCredential.getGoogleIdToken();
        Intrinsics.checkNotNull(googleIdToken);
        GoogleIdTokenCredential.Builder idToken = id2.setIdToken(googleIdToken);
        if (signInCredential.getDisplayName() != null) {
            idToken.setDisplayName(signInCredential.getDisplayName());
        }
        if (signInCredential.getGivenName() != null) {
            idToken.setGivenName(signInCredential.getGivenName());
        }
        if (signInCredential.getFamilyName() != null) {
            idToken.setFamilyName(signInCredential.getFamilyName());
        }
        if (signInCredential.getPhoneNumber() != null) {
            idToken.setPhoneNumber(signInCredential.getPhoneNumber());
        }
        if (signInCredential.getProfilePictureUri() != null) {
            idToken.setProfilePictureUri(signInCredential.getProfilePictureUri());
        }
        return idToken.build();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
