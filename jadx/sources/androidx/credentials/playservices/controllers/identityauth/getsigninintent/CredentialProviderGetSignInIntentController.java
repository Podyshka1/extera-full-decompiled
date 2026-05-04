package androidx.credentials.playservices.controllers.identityauth.getsigninintent;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialInterruptedException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.exceptions.GetCredentialUnsupportedException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import androidx.credentials.playservices.controllers.identityauth.HiddenActivity;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
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
public final class CredentialProviderGetSignInIntentController extends CredentialProviderController {
    public static final Companion Companion = new Companion(null);
    public CredentialManagerCallback callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    public Executor executor;
    private final CredentialProviderGetSignInIntentController$resultReceiver$1 resultReceiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$resultReceiver$1] */
    public CredentialProviderGetSignInIntentController(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle resultData) {
                Intrinsics.checkNotNullParameter(resultData, "resultData");
                if (this.this$0.maybeReportErrorFromResultReceiver(resultData, new C0479xf12f72ff(CredentialProviderBaseController.Companion), this.this$0.getExecutor(), this.this$0.getCallback(), this.this$0.cancellationSignal)) {
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
        try {
            Task signInIntent = Identity.getSignInClient(this.context).getSignInIntent(convertRequestToPlayServices(request));
            final Function1 function1 = new Function1() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CredentialProviderGetSignInIntentController.invokePlayServices$lambda$4(cancellationSignal, this, (PendingIntent) obj);
                }
            };
            signInIntent.addOnSuccessListener(new OnSuccessListener() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda2
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    function1.invoke(obj);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda3
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    CredentialProviderGetSignInIntentController.invokePlayServices$lambda$8(this.f$0, cancellationSignal, exc);
                }
            });
        } catch (GetCredentialUnsupportedException e) {
            CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetSignInIntentController.invokePlayServices$lambda$1(this.f$0, e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$1(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, final GetCredentialUnsupportedException getCredentialUnsupportedException) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.invokePlayServices$lambda$1$lambda$0(this.f$0, getCredentialUnsupportedException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$1$lambda$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, GetCredentialUnsupportedException getCredentialUnsupportedException) {
        credentialProviderGetSignInIntentController.getCallback().onError(getCredentialUnsupportedException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$4(CancellationSignal cancellationSignal, final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, PendingIntent result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(cancellationSignal)) {
            return Unit.INSTANCE;
        }
        Intent intent = new Intent(credentialProviderGetSignInIntentController.context, (Class<?>) HiddenActivity.class);
        credentialProviderGetSignInIntentController.generateHiddenActivityIntent(credentialProviderGetSignInIntentController.resultReceiver, intent, "SIGN_IN_INTENT");
        intent.putExtra("EXTRA_FLOW_PENDING_INTENT", result);
        try {
            credentialProviderGetSignInIntentController.context.startActivity(intent);
        } catch (Exception unused) {
            CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda16
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetSignInIntentController.invokePlayServices$lambda$4$lambda$3(this.f$0);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$4$lambda$3(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.invokePlayServices$lambda$4$lambda$3$lambda$2(this.f$0);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$4$lambda$3$lambda$2(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController) {
        credentialProviderGetSignInIntentController.getCallback().onError(new GetCredentialUnknownException("Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$8(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, CancellationSignal cancellationSignal, Exception e) {
        Intrinsics.checkNotNullParameter(e, "e");
        final GetCredentialException getCredentialExceptionFromGmsException = credentialProviderGetSignInIntentController.fromGmsException(e);
        CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderGetSignInIntentController.invokePlayServices$lambda$8$lambda$7(this.f$0, getCredentialExceptionFromGmsException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$8$lambda$7(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, final GetCredentialException getCredentialException) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.invokePlayServices$lambda$8$lambda$7$lambda$6(this.f$0, getCredentialException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$8$lambda$7$lambda$6(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, GetCredentialException getCredentialException) {
        credentialProviderGetSignInIntentController.getCallback().onError(getCredentialException);
    }

    private final GetCredentialException fromGmsException(Throwable th) {
        String str;
        if ((th instanceof ApiException) && CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(((ApiException) th).getStatusCode()))) {
            str = "GET_INTERRUPTED";
        } else {
            str = "GET_NO_CREDENTIALS";
        }
        return CredentialProviderBaseController.Companion.m171xd975db95(str, "During get sign-in intent, failure response from one tap: " + th.getMessage());
    }

    public GetSignInIntentRequest convertRequestToPlayServices(GetCredentialRequest request) throws GetCredentialUnsupportedException {
        Intrinsics.checkNotNullParameter(request, "request");
        if (request.getCredentialOptions().size() != 1) {
            throw new GetCredentialUnsupportedException("GetSignInWithGoogleOption cannot be combined with other options.");
        }
        Object obj = request.getCredentialOptions().get(0);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.google.android.libraries.identity.googleid.GetSignInWithGoogleOption");
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(obj);
        GetSignInIntentRequest.builder();
        throw null;
    }

    protected GetCredentialResponse convertResponseToCredentialManager(SignInCredential response) throws GetCredentialUnknownException {
        GoogleIdTokenCredential googleIdTokenCredentialCreateGoogleIdCredential;
        Intrinsics.checkNotNullParameter(response, "response");
        if (response.getGoogleIdToken() != null) {
            googleIdTokenCredentialCreateGoogleIdCredential = createGoogleIdCredential(response);
        } else {
            Log.w("GetSignInIntent", "Credential returned but no google Id found");
            googleIdTokenCredentialCreateGoogleIdCredential = null;
        }
        if (googleIdTokenCredentialCreateGoogleIdCredential == null) {
            throw new GetCredentialUnknownException("When attempting to convert get response, null credential found");
        }
        return new GetCredentialResponse(googleIdTokenCredentialCreateGoogleIdCredential);
    }

    public final GoogleIdTokenCredential createGoogleIdCredential(SignInCredential response) throws GetCredentialUnknownException {
        Intrinsics.checkNotNullParameter(response, "response");
        GoogleIdTokenCredential.Builder builder = new GoogleIdTokenCredential.Builder();
        String id = response.getId();
        Intrinsics.checkNotNullExpressionValue(id, "getId(...)");
        GoogleIdTokenCredential.Builder id2 = builder.setId(id);
        try {
            String googleIdToken = response.getGoogleIdToken();
            Intrinsics.checkNotNull(googleIdToken);
            id2.setIdToken(googleIdToken);
            if (response.getDisplayName() != null) {
                id2.setDisplayName(response.getDisplayName());
            }
            if (response.getGivenName() != null) {
                id2.setGivenName(response.getGivenName());
            }
            if (response.getFamilyName() != null) {
                id2.setFamilyName(response.getFamilyName());
            }
            if (response.getPhoneNumber() != null) {
                id2.setPhoneNumber(response.getPhoneNumber());
            }
            if (response.getProfilePictureUri() != null) {
                id2.setProfilePictureUri(response.getProfilePictureUri());
            }
            return id2.build();
        } catch (Exception unused) {
            throw new GetCredentialUnknownException("When attempting to convert get response, null Google ID Token found");
        }
    }

    public final void handleResponse$credentials_play_services_auth_release(int i, int i2, Intent intent) {
        CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.Companion;
        if (i != companion.m170xa2b31783()) {
            Log.w("GetSignInIntent", "Returned request code " + companion.m170xa2b31783() + " which  does not match what was given " + i);
            return;
        }
        CredentialProviderController.Companion companion2 = CredentialProviderController.Companion;
        if (companion2.m175x7474352d(i2, new Function2() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return CredentialProviderGetSignInIntentController.handleResponse$lambda$9((CancellationSignal) obj, (Function0) obj2);
            }
        }, new Function1() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CredentialProviderGetSignInIntentController.handleResponse$lambda$11(this.f$0, (GetCredentialException) obj);
            }
        }, this.cancellationSignal)) {
            return;
        }
        try {
            SignInCredential signInCredentialFromIntent = Identity.getSignInClient(this.context).getSignInCredentialFromIntent(intent);
            Intrinsics.checkNotNullExpressionValue(signInCredentialFromIntent, "getSignInCredentialFromIntent(...)");
            final GetCredentialResponse getCredentialResponseConvertResponseToCredentialManager = convertResponseToCredentialManager(signInCredentialFromIntent);
            companion2.m172xd7d57380(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetSignInIntentController.handleResponse$lambda$13(this.f$0, getCredentialResponseConvertResponseToCredentialManager);
                }
            });
        } catch (GetCredentialException e) {
            CredentialProviderController.Companion.m172xd7d57380(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetSignInIntentController.handleResponse$lambda$17(this.f$0, e);
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
            CredentialProviderController.Companion.m172xd7d57380(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetSignInIntentController.handleResponse$lambda$15(this.f$0, ref$ObjectRef);
                }
            });
        } catch (Throwable th) {
            final GetCredentialUnknownException getCredentialUnknownException = new GetCredentialUnknownException(th.getMessage());
            CredentialProviderController.Companion.m172xd7d57380(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetSignInIntentController.handleResponse$lambda$19(this.f$0, getCredentialUnknownException);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$9(CancellationSignal cancellationSignal, Function0 f) {
        Intrinsics.checkNotNullParameter(f, "f");
        CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, f);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$11(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, final GetCredentialException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.handleResponse$lambda$11$lambda$10(this.f$0, e);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$11$lambda$10(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, GetCredentialException getCredentialException) {
        credentialProviderGetSignInIntentController.getCallback().onError(getCredentialException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$13(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, final GetCredentialResponse getCredentialResponse) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.handleResponse$lambda$13$lambda$12(this.f$0, getCredentialResponse);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$13$lambda$12(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, GetCredentialResponse getCredentialResponse) {
        credentialProviderGetSignInIntentController.getCallback().onResult(getCredentialResponse);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$15(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, final Ref$ObjectRef ref$ObjectRef) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.handleResponse$lambda$15$lambda$14(this.f$0, ref$ObjectRef);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$15$lambda$14(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, Ref$ObjectRef ref$ObjectRef) {
        credentialProviderGetSignInIntentController.getCallback().onError(ref$ObjectRef.element);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$17(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, final GetCredentialException getCredentialException) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.handleResponse$lambda$17$lambda$16(this.f$0, getCredentialException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$17$lambda$16(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, GetCredentialException getCredentialException) {
        credentialProviderGetSignInIntentController.getCallback().onError(getCredentialException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$19(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, final GetCredentialUnknownException getCredentialUnknownException) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.handleResponse$lambda$19$lambda$18(this.f$0, getCredentialUnknownException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$19$lambda$18(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, GetCredentialUnknownException getCredentialUnknownException) {
        credentialProviderGetSignInIntentController.getCallback().onError(getCredentialUnknownException);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
