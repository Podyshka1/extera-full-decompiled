package androidx.credentials.playservices.controllers.identityauth.getsigninintent;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.util.Log;
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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\b\u0005*\u00019\b\u0000\u0018\u0000 <2 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001:\u0001<B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ=\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00022\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00102\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u001f\u0010 J)\u0010(\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010$H\u0000¢\u0006\u0004\b&\u0010'R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010)R4\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00108\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u0011\u0010*\u0012\u0004\b/\u00100\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R(\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u0013\u00101\u0012\u0004\b6\u00100\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0083\u000e¢\u0006\f\n\u0004\b\u0015\u00107\u0012\u0004\b8\u00100R\u0014\u0010:\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;¨\u0006="}, d2 = {"Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController;", "Landroidx/credentials/playservices/controllers/CredentialProviderController;", "Landroidx/credentials/GetCredentialRequest;", "Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;", "Lcom/google/android/gms/auth/api/identity/SignInCredential;", "Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", _UrlKt.FRAGMENT_ENCODE_SET, "e", "fromGmsException", "(Ljava/lang/Throwable;)Landroidx/credentials/exceptions/GetCredentialException;", "request", "Landroidx/credentials/CredentialManagerCallback;", Callback.METHOD_NAME, "Ljava/util/concurrent/Executor;", "executor", "Landroid/os/CancellationSignal;", "cancellationSignal", _UrlKt.FRAGMENT_ENCODE_SET, "invokePlayServices", "(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V", "convertRequestToPlayServices", "(Landroidx/credentials/GetCredentialRequest;)Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;", "response", "convertResponseToCredentialManager", "(Lcom/google/android/gms/auth/api/identity/SignInCredential;)Landroidx/credentials/GetCredentialResponse;", "Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;", "createGoogleIdCredential", "(Lcom/google/android/gms/auth/api/identity/SignInCredential;)Lcom/google/android/libraries/identity/googleid/GoogleIdTokenCredential;", _UrlKt.FRAGMENT_ENCODE_SET, "uniqueRequestCode", "resultCode", "Landroid/content/Intent;", "data", "handleResponse$credentials_play_services_auth", "(IILandroid/content/Intent;)V", "handleResponse", "Landroid/content/Context;", "Landroidx/credentials/CredentialManagerCallback;", "getCallback", "()Landroidx/credentials/CredentialManagerCallback;", "setCallback", "(Landroidx/credentials/CredentialManagerCallback;)V", "getCallback$annotations", "()V", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "setExecutor", "(Ljava/util/concurrent/Executor;)V", "getExecutor$annotations", "Landroid/os/CancellationSignal;", "getCancellationSignal$annotations", "androidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$resultReceiver$1", "resultReceiver", "Landroidx/credentials/playservices/controllers/identityauth/getsigninintent/CredentialProviderGetSignInIntentController$resultReceiver$1;", "Companion", "credentials-play-services-auth"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class CredentialProviderGetSignInIntentController extends CredentialProviderController<GetCredentialRequest, GetSignInIntentRequest, SignInCredential, GetCredentialResponse, GetCredentialException> {
    public CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    public Executor executor;
    private final CredentialProviderGetSignInIntentController$resultReceiver$1 resultReceiver;

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$resultReceiver$1] */
    public CredentialProviderGetSignInIntentController(Context context) {
        super(context);
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int resultCode, Bundle resultData) {
                if (this.this$0.maybeReportErrorFromResultReceiver(resultData, new C0475xf12f72ff(CredentialProviderBaseController.INSTANCE), this.this$0.getExecutor(), this.this$0.getCallback(), this.this$0.cancellationSignal)) {
                    return;
                }
                this.this$0.handleResponse$credentials_play_services_auth(resultData.getInt("ACTIVITY_REQUEST_CODE"), resultCode, (Intent) resultData.getParcelable("RESULT_DATA"));
            }
        };
    }

    public final CredentialManagerCallback<GetCredentialResponse, GetCredentialException> getCallback() {
        CredentialManagerCallback<GetCredentialResponse, GetCredentialException> credentialManagerCallback = this.callback;
        if (credentialManagerCallback != null) {
            return credentialManagerCallback;
        }
        return null;
    }

    public final void setCallback(CredentialManagerCallback<GetCredentialResponse, GetCredentialException> credentialManagerCallback) {
        this.callback = credentialManagerCallback;
    }

    public final Executor getExecutor() {
        Executor executor = this.executor;
        if (executor != null) {
            return executor;
        }
        return null;
    }

    public final void setExecutor(Executor executor) {
        this.executor = executor;
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public void invokePlayServices(GetCredentialRequest request, CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback, Executor executor, final CancellationSignal cancellationSignal) {
        this.cancellationSignal = cancellationSignal;
        setCallback(callback);
        setExecutor(executor);
        if (CredentialProviderPlayServicesImpl.INSTANCE.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return;
        }
        try {
            Task<PendingIntent> signInIntent = Identity.getSignInClient(this.context).getSignInIntent(convertRequestToPlayServices(request));
            final Function1 function1 = new Function1() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CredentialProviderGetSignInIntentController.$r8$lambda$P3KINCDT6Fp6ZWli2H0uWtoWuiQ(cancellationSignal, this, (PendingIntent) obj);
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
                    CredentialProviderGetSignInIntentController.m1678$r8$lambda$a0GrM5QukP6bmXo0cH2qcSPXsk(this.f$0, cancellationSignal, exc);
                }
            });
        } catch (GetCredentialUnsupportedException e) {
            CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetSignInIntentController.$r8$lambda$9XcfrpIuJxZmXvgaPPKqXQliVj0(this.f$0, e);
                }
            });
        }
    }

    public static Unit $r8$lambda$9XcfrpIuJxZmXvgaPPKqXQliVj0(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, final GetCredentialUnsupportedException getCredentialUnsupportedException) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.invokePlayServices$lambda$0$0(this.f$0, getCredentialUnsupportedException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, GetCredentialUnsupportedException getCredentialUnsupportedException) {
        credentialProviderGetSignInIntentController.getCallback().onError(getCredentialUnsupportedException);
    }

    public static Unit $r8$lambda$P3KINCDT6Fp6ZWli2H0uWtoWuiQ(CancellationSignal cancellationSignal, final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, PendingIntent pendingIntent) {
        if (CredentialProviderPlayServicesImpl.INSTANCE.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return Unit.INSTANCE;
        }
        Intent intent = new Intent(credentialProviderGetSignInIntentController.context, (Class<?>) HiddenActivity.class);
        credentialProviderGetSignInIntentController.generateHiddenActivityIntent(credentialProviderGetSignInIntentController.resultReceiver, intent, "SIGN_IN_INTENT");
        intent.putExtra("EXTRA_FLOW_PENDING_INTENT", pendingIntent);
        try {
            credentialProviderGetSignInIntentController.context.startActivity(intent);
        } catch (Exception unused) {
            CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda15
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetSignInIntentController.invokePlayServices$lambda$1$0(this.f$0);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$1$0(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.invokePlayServices$lambda$1$0$0(this.f$0);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$1$0$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController) {
        credentialProviderGetSignInIntentController.getCallback().onError(new GetCredentialUnknownException("Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."));
    }

    /* JADX INFO: renamed from: $r8$lambda$a0GrM5QukP6bmXo0cH2qcS-PXsk, reason: not valid java name */
    public static void m1678$r8$lambda$a0GrM5QukP6bmXo0cH2qcSPXsk(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, CancellationSignal cancellationSignal, Exception exc) {
        final GetCredentialException getCredentialExceptionFromGmsException = credentialProviderGetSignInIntentController.fromGmsException(exc);
        CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderGetSignInIntentController.invokePlayServices$lambda$3$0(this.f$0, getCredentialExceptionFromGmsException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$3$0(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, final GetCredentialException getCredentialException) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.invokePlayServices$lambda$3$0$0(this.f$0, getCredentialException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$3$0$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, GetCredentialException getCredentialException) {
        credentialProviderGetSignInIntentController.getCallback().onError(getCredentialException);
    }

    private final GetCredentialException fromGmsException(Throwable e) {
        String str;
        if ((e instanceof ApiException) && CredentialProviderBaseController.INSTANCE.getRetryables().contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
            str = "GET_INTERRUPTED";
        } else {
            str = "GET_NO_CREDENTIALS";
        }
        return CredentialProviderBaseController.INSTANCE.m141x3c5129cd(str, "During get sign-in intent, failure response from one tap: " + e.getMessage());
    }

    public GetSignInIntentRequest convertRequestToPlayServices(GetCredentialRequest request) throws GetCredentialUnsupportedException {
        if (request.getCredentialOptions().size() != 1) {
            throw new GetCredentialUnsupportedException("GetSignInWithGoogleOption cannot be combined with other options.");
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(request.getCredentialOptions().get(0));
        GetSignInIntentRequest.builder();
        throw null;
    }

    public GetCredentialResponse convertResponseToCredentialManager(SignInCredential response) throws GetCredentialUnknownException {
        GoogleIdTokenCredential googleIdTokenCredentialCreateGoogleIdCredential;
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
        GoogleIdTokenCredential.Builder id = new GoogleIdTokenCredential.Builder().setId(response.getId());
        try {
            id.setIdToken(response.getGoogleIdToken());
            if (response.getDisplayName() != null) {
                id.setDisplayName(response.getDisplayName());
            }
            if (response.getGivenName() != null) {
                id.setGivenName(response.getGivenName());
            }
            if (response.getFamilyName() != null) {
                id.setFamilyName(response.getFamilyName());
            }
            if (response.getPhoneNumber() != null) {
                id.setPhoneNumber(response.getPhoneNumber());
            }
            if (response.getProfilePictureUri() != null) {
                id.setProfilePictureUri(response.getProfilePictureUri());
            }
            return id.build();
        } catch (Exception unused) {
            throw new GetCredentialUnknownException("When attempting to convert get response, null Google ID Token found");
        }
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [T, androidx.credentials.exceptions.GetCredentialUnknownException] */
    /* JADX WARN: Type inference failed for: r6v7, types: [T, androidx.credentials.exceptions.GetCredentialInterruptedException] */
    /* JADX WARN: Type inference failed for: r6v9, types: [T, androidx.credentials.exceptions.GetCredentialCancellationException] */
    public final void handleResponse$credentials_play_services_auth(int uniqueRequestCode, int resultCode, Intent data) {
        CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.INSTANCE;
        if (uniqueRequestCode != companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth()) {
            Log.w("GetSignInIntent", "Returned request code " + companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth() + " which  does not match what was given " + uniqueRequestCode);
            return;
        }
        CredentialProviderController.Companion companion2 = CredentialProviderController.INSTANCE;
        if (companion2.maybeReportErrorResultCodeGet$credentials_play_services_auth(resultCode, new Function2() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return CredentialProviderGetSignInIntentController.$r8$lambda$QAXEu4vtBxNBX57LzdN07tc4wAE((CancellationSignal) obj, (Function0) obj2);
            }
        }, new Function1() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CredentialProviderGetSignInIntentController.$r8$lambda$jsxFV4hfKXuy2KU6J4DRhMGwtcM(this.f$0, (GetCredentialException) obj);
            }
        }, this.cancellationSignal)) {
            return;
        }
        try {
            final GetCredentialResponse getCredentialResponseConvertResponseToCredentialManager = convertResponseToCredentialManager(Identity.getSignInClient(this.context).getSignInCredentialFromIntent(data));
            companion2.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetSignInIntentController.m1679$r8$lambda$aHrcgRlEsXrMYrnCfjpRjwptf4(this.f$0, getCredentialResponseConvertResponseToCredentialManager);
                }
            });
        } catch (GetCredentialException e) {
            CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetSignInIntentController.m1681$r8$lambda$bXb9Ndeg5lBtqddAQf_UODs8ts(this.f$0, e);
                }
            });
        } catch (ApiException e2) {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new GetCredentialUnknownException(e2.getMessage());
            if (e2.getStatusCode() == 16) {
                objectRef.element = new GetCredentialCancellationException(e2.getMessage());
            } else if (CredentialProviderBaseController.INSTANCE.getRetryables().contains(Integer.valueOf(e2.getStatusCode()))) {
                objectRef.element = new GetCredentialInterruptedException(e2.getMessage());
            }
            CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetSignInIntentController.$r8$lambda$nl5Mzv__Z8ZHY3fHuVyEJDFXtdA(this.f$0, objectRef);
                }
            });
        } catch (Throwable th) {
            final GetCredentialUnknownException getCredentialUnknownException = new GetCredentialUnknownException(th.getMessage());
            CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderGetSignInIntentController.m1675$r8$lambda$5l1EpbOqnbMrFOX5fEkkTmLA(this.f$0, getCredentialUnknownException);
                }
            });
        }
    }

    public static Unit $r8$lambda$QAXEu4vtBxNBX57LzdN07tc4wAE(CancellationSignal cancellationSignal, Function0 function0) {
        CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, function0);
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$jsxFV4hfKXuy2KU6J4DRhMGwtcM(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, final GetCredentialException getCredentialException) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.handleResponse$lambda$1$0(this.f$0, getCredentialException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$1$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, GetCredentialException getCredentialException) {
        credentialProviderGetSignInIntentController.getCallback().onError(getCredentialException);
    }

    /* JADX INFO: renamed from: $r8$lambda$aHrcgRlEsXrMYr-nCfjpRjwptf4, reason: not valid java name */
    public static Unit m1679$r8$lambda$aHrcgRlEsXrMYrnCfjpRjwptf4(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, final GetCredentialResponse getCredentialResponse) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.handleResponse$lambda$2$0(this.f$0, getCredentialResponse);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$2$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, GetCredentialResponse getCredentialResponse) {
        credentialProviderGetSignInIntentController.getCallback().onResult(getCredentialResponse);
    }

    public static Unit $r8$lambda$nl5Mzv__Z8ZHY3fHuVyEJDFXtdA(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, final Ref.ObjectRef objectRef) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.handleResponse$lambda$3$0(this.f$0, objectRef);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void handleResponse$lambda$3$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, Ref.ObjectRef objectRef) {
        credentialProviderGetSignInIntentController.getCallback().onError(objectRef.element);
    }

    /* JADX INFO: renamed from: $r8$lambda$bXb9Ndeg5lBtq-ddAQf_UODs8ts, reason: not valid java name */
    public static Unit m1681$r8$lambda$bXb9Ndeg5lBtqddAQf_UODs8ts(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, final GetCredentialException getCredentialException) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.handleResponse$lambda$4$0(this.f$0, getCredentialException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$4$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, GetCredentialException getCredentialException) {
        credentialProviderGetSignInIntentController.getCallback().onError(getCredentialException);
    }

    /* JADX INFO: renamed from: $r8$lambda$-5-l1Ep-bOqnbMrFOX5fEkkTmLA, reason: not valid java name */
    public static Unit m1675$r8$lambda$5l1EpbOqnbMrFOX5fEkkTmLA(final CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, final GetCredentialUnknownException getCredentialUnknownException) {
        credentialProviderGetSignInIntentController.getExecutor().execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderGetSignInIntentController.handleResponse$lambda$5$0(this.f$0, getCredentialUnknownException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$5$0(CredentialProviderGetSignInIntentController credentialProviderGetSignInIntentController, GetCredentialUnknownException getCredentialUnknownException) {
        credentialProviderGetSignInIntentController.getCallback().onError(getCredentialUnknownException);
    }
}
