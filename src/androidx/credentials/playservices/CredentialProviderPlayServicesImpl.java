package androidx.credentials.playservices;

import android.content.Context;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.credentials.ClearCredentialStateRequest;
import androidx.credentials.CreateCredentialRequest;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.CreatePublicKeyCredentialRequest;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.CredentialOption;
import androidx.credentials.CredentialProvider;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.PrepareGetCredentialResponse$PendingGetCredentialHandle;
import androidx.credentials.SignalCredentialStateRequest;
import androidx.credentials.SignalCredentialStateResponse;
import androidx.credentials.exceptions.ClearCredentialException;
import androidx.credentials.exceptions.ClearCredentialProviderConfigurationException;
import androidx.credentials.exceptions.ClearCredentialUnknownException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialProviderConfigurationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialProviderConfigurationException;
import androidx.credentials.exceptions.publickeycredential.SignalCredentialStateException;
import androidx.credentials.exceptions.publickeycredential.SignalCredentialStateProviderConfigurationException;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import androidx.credentials.playservices.controllers.blockstore.getrestorecredential.CredentialProviderGetRestoreCredentialController;
import androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController;
import androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.getdigitalcredential.CredentialProviderGetDigitalCredentialController;
import androidx.credentials.playservices.controllers.identitycredentials.signalcredentialstate.SignalCredentialStateController;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.auth.api.identity.Identity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.identitycredentials.ClearCredentialStateResponse;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.sun.jna.Callback;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 ,2\u00020\u0001:\u0001,B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J>\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0017H\u0017J>\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u001b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d0\u0017H\u0017J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!J\u0018\u0010\"\u001a\u00020!2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010 \u001a\u00020!H\u0002J8\u0010#\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020$2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0014\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010%\u0012\u0004\u0012\u00020&0\u0017H\u0016J,\u0010'\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020(2\u0006\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020*0\u0017H\u0016J8\u0010+\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020$2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0014\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010%\u0012\u0004\u0012\u00020&0\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006-"}, d2 = {"Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;", "Landroidx/credentials/CredentialProvider;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "googleApiAvailability", "Lcom/google/android/gms/common/GoogleApiAvailability;", "getGoogleApiAvailability$annotations", "()V", "getGoogleApiAvailability", "()Lcom/google/android/gms/common/GoogleApiAvailability;", "setGoogleApiAvailability", "(Lcom/google/android/gms/common/GoogleApiAvailability;)V", "onGetCredential", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.REQUEST, "Landroidx/credentials/GetCredentialRequest;", "cancellationSignal", "Landroid/os/CancellationSignal;", "executor", "Ljava/util/concurrent/Executor;", Callback.METHOD_NAME, "Landroidx/credentials/CredentialManagerCallback;", "Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "onCreateCredential", "Landroidx/credentials/CreateCredentialRequest;", "Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/exceptions/CreateCredentialException;", "isAvailableOnDevice", _UrlKt.FRAGMENT_ENCODE_SET, "minApkVersion", _UrlKt.FRAGMENT_ENCODE_SET, "isGooglePlayServicesAvailable", "onClearCredential", "Landroidx/credentials/ClearCredentialStateRequest;", "Ljava/lang/Void;", "Landroidx/credentials/exceptions/ClearCredentialException;", "onSignalCredentialState", "Landroidx/credentials/SignalCredentialStateRequest;", "Landroidx/credentials/SignalCredentialStateResponse;", "Landroidx/credentials/exceptions/publickeycredential/SignalCredentialStateException;", "runFallbackClearCredFlow", "Companion", "credentials-play-services-auth"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class CredentialProviderPlayServicesImpl implements CredentialProvider {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int MIN_GMS_APK_VERSION = 230815045;
    public static final int MIN_GMS_APK_VERSION_DIGITAL_CRED = 243100000;
    public static final int MIN_GMS_APK_VERSION_RESTORE_CRED = 242200000;
    public static final int MIN_GMS_APK_VERSION_SIGNAL_API = 254625000;
    public static final int PRE_U_MIN_GMS_APK_VERSION = 252400000;
    private static final String TAG = "PlayServicesImpl";
    private final Context context;
    private GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();

    public static /* synthetic */ void getGoogleApiAvailability$annotations() {
    }

    @Override // androidx.credentials.CredentialProvider
    public /* bridge */ /* synthetic */ void onGetCredential(Context context, PrepareGetCredentialResponse$PendingGetCredentialHandle prepareGetCredentialResponse$PendingGetCredentialHandle, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback) {
        super.onGetCredential(context, prepareGetCredentialResponse$PendingGetCredentialHandle, cancellationSignal, executor, (CredentialManagerCallback<GetCredentialResponse, GetCredentialException>) credentialManagerCallback);
    }

    @Override // androidx.credentials.CredentialProvider
    public /* bridge */ /* synthetic */ void onPrepareCredential(GetCredentialRequest getCredentialRequest, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback) {
        super.onPrepareCredential(getCredentialRequest, cancellationSignal, executor, credentialManagerCallback);
    }

    public CredentialProviderPlayServicesImpl(Context context) {
        this.context = context;
    }

    public final GoogleApiAvailability getGoogleApiAvailability() {
        return this.googleApiAvailability;
    }

    public final void setGoogleApiAvailability(GoogleApiAvailability googleApiAvailability) {
        this.googleApiAvailability = googleApiAvailability;
    }

    @Override // androidx.credentials.CredentialProvider
    public void onGetCredential(Context context, GetCredentialRequest request, CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback) {
        Companion companion = INSTANCE;
        if (companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return;
        }
        if (companion.isDigitalCredentialRequest$credentials_play_services_auth(request)) {
            if (!isAvailableOnDevice(MIN_GMS_APK_VERSION_DIGITAL_CRED)) {
                companion.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CredentialProviderPlayServicesImpl.m1749$r8$lambda$xrkLPQ171M9oLLsi3Kz8A_1kSE(executor, callback);
                    }
                });
                return;
            } else {
                new CredentialProviderGetDigitalCredentialController(context).invokePlayServices(request, callback, executor, cancellationSignal);
                return;
            }
        }
        if (companion.isGetRestoreCredentialRequest$credentials_play_services_auth(request)) {
            if (!isAvailableOnDevice(MIN_GMS_APK_VERSION_RESTORE_CRED)) {
                companion.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CredentialProviderPlayServicesImpl.$r8$lambda$xgrl6ZZEG6yNGAU_HQNbfaxXN8I(executor, callback);
                    }
                });
                return;
            } else {
                new CredentialProviderGetRestoreCredentialController(context).invokePlayServices(request, callback, executor, cancellationSignal);
                return;
            }
        }
        if (isAvailableOnDevice(PRE_U_MIN_GMS_APK_VERSION)) {
            new GetCredentialController(context).invokePlayServices(request, callback, executor, cancellationSignal);
        } else if (companion.isGetSignInIntentRequest$credentials_play_services_auth(request)) {
            new CredentialProviderGetSignInIntentController(context).invokePlayServices(request, callback, executor, cancellationSignal);
        } else {
            new CredentialProviderBeginSignInController(context).invokePlayServices(request, callback, executor, cancellationSignal);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$xrkLPQ171M9o-LLsi3Kz8A_1kSE, reason: not valid java name */
    public static Unit m1749$r8$lambda$xrkLPQ171M9oLLsi3Kz8A_1kSE(Executor executor, final CredentialManagerCallback credentialManagerCallback) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderPlayServicesImpl.onGetCredential$lambda$0$0(credentialManagerCallback);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onGetCredential$lambda$0$0(CredentialManagerCallback credentialManagerCallback) {
        credentialManagerCallback.onError(new GetCredentialProviderConfigurationException("this device requires a Google Play Services update for the given feature to be supported"));
    }

    public static Unit $r8$lambda$xgrl6ZZEG6yNGAU_HQNbfaxXN8I(Executor executor, final CredentialManagerCallback credentialManagerCallback) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderPlayServicesImpl.onGetCredential$lambda$1$0(credentialManagerCallback);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onGetCredential$lambda$1$0(CredentialManagerCallback credentialManagerCallback) {
        credentialManagerCallback.onError(new GetCredentialProviderConfigurationException("getCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
    }

    @Override // androidx.credentials.CredentialProvider
    public void onCreateCredential(Context context, CreateCredentialRequest request, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> callback) {
        if (INSTANCE.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return;
        }
        if (request instanceof CreatePublicKeyCredentialRequest) {
            if (!isAvailableOnDevice(PRE_U_MIN_GMS_APK_VERSION)) {
                CreatePublicKeyCredentialRequest createPublicKeyCredentialRequest = (CreatePublicKeyCredentialRequest) request;
                if (!createPublicKeyCredentialRequest.getIsConditional()) {
                    CredentialProviderCreatePublicKeyCredentialController.INSTANCE.getInstance(context).invokePlayServices(createPublicKeyCredentialRequest, callback, executor, cancellationSignal);
                    return;
                }
            }
            CreatePublicKeyCredentialController.INSTANCE.getInstance(context).invokePlayServices((CreatePublicKeyCredentialRequest) request, callback, executor, cancellationSignal);
            return;
        }
        ByteString$$ExternalSyntheticBUOutline0.m920m("Create Credential request is unsupported, not password or publickeycredential");
    }

    public static Unit $r8$lambda$o_KQtBV8bzJ_YUpu54q6ta2QxDQ(Executor executor, final CredentialManagerCallback credentialManagerCallback) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderPlayServicesImpl.onCreateCredential$lambda$0$0(credentialManagerCallback);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateCredential$lambda$0$0(CredentialManagerCallback credentialManagerCallback) {
        credentialManagerCallback.onError(new CreateCredentialProviderConfigurationException("createCredentialAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
    }

    @Override // androidx.credentials.CredentialProvider
    public boolean isAvailableOnDevice() {
        return isAvailableOnDevice(MIN_GMS_APK_VERSION);
    }

    public final boolean isAvailableOnDevice(int minApkVersion) {
        int iIsGooglePlayServicesAvailable = isGooglePlayServicesAvailable(this.context, minApkVersion);
        boolean z = iIsGooglePlayServicesAvailable == 0;
        if (!z) {
            Log.w(TAG, "Connection with Google Play Services was not successful. Connection result is: " + new ConnectionResult(iIsGooglePlayServicesAvailable));
        }
        return z;
    }

    private final int isGooglePlayServicesAvailable(Context context, int minApkVersion) {
        return this.googleApiAvailability.isGooglePlayServicesAvailable(context, minApkVersion);
    }

    public void onClearCredential(ClearCredentialStateRequest request, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback<Void, ClearCredentialException> callback) {
        if (!INSTANCE.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            throw null;
        }
    }

    public static Unit $r8$lambda$NFvwqGaQl8vK3ul8X_0RI454oIM(Executor executor, final CredentialManagerCallback credentialManagerCallback) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderPlayServicesImpl.onClearCredential$lambda$0$0(credentialManagerCallback);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onClearCredential$lambda$0$0(CredentialManagerCallback credentialManagerCallback) {
        credentialManagerCallback.onError(new ClearCredentialProviderConfigurationException("clearCredentialStateAsync no provider dependencies found - please ensure the desired provider dependencies are added"));
    }

    /* JADX INFO: renamed from: $r8$lambda$pdpGIYvPEfq-hpYnJSMZXGd3BSQ, reason: not valid java name */
    public static Unit m1748$r8$lambda$pdpGIYvPEfqhpYnJSMZXGd3BSQ(CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback credentialManagerCallback, Boolean bool) {
        INSTANCE.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderPlayServicesImpl.onClearCredential$lambda$1$0(executor, credentialManagerCallback);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onClearCredential$lambda$1$0(Executor executor, final CredentialManagerCallback credentialManagerCallback) {
        Log.i(TAG, "Cleared restore credential successfully!");
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                credentialManagerCallback.onResult(null);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, androidx.credentials.exceptions.ClearCredentialUnknownException] */
    /* JADX WARN: Type inference failed for: r6v4, types: [T, androidx.credentials.exceptions.ClearCredentialUnknownException] */
    public static void $r8$lambda$Z8tlc7Lp2cNhbHTy0dCxp0FF7rQ(CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback credentialManagerCallback, Exception exc) {
        Log.w(TAG, "Clearing restore credential failed", exc);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new ClearCredentialUnknownException("Clear restore credential failed for unknown reason.");
        if ((exc instanceof ApiException) && ((ApiException) exc).getStatusCode() == 40201) {
            objectRef.element = new ClearCredentialUnknownException("The restore credential internal service had a failure.");
        }
        INSTANCE.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderPlayServicesImpl.onClearCredential$lambda$3$0(executor, credentialManagerCallback, objectRef);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onClearCredential$lambda$3$0(Executor executor, final CredentialManagerCallback credentialManagerCallback, final Ref.ObjectRef objectRef) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderPlayServicesImpl.onClearCredential$lambda$3$0$0(credentialManagerCallback, objectRef);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onClearCredential$lambda$3$0$0(CredentialManagerCallback credentialManagerCallback, Ref.ObjectRef objectRef) {
        credentialManagerCallback.onError(objectRef.element);
    }

    public static Unit $r8$lambda$nLqf08e3fIgSrrhjRatjutfw5fE(CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback credentialManagerCallback, ClearCredentialStateResponse clearCredentialStateResponse) {
        INSTANCE.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderPlayServicesImpl.onClearCredential$lambda$4$0(executor, credentialManagerCallback);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onClearCredential$lambda$4$0(Executor executor, final CredentialManagerCallback credentialManagerCallback) {
        Log.i(TAG, "During clear credential, signed out successfully!");
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                credentialManagerCallback.onResult(null);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: $r8$lambda$1UTL-i4hwhJk_BYM4Zcx0ZRJ19w, reason: not valid java name */
    public static void m1743$r8$lambda$1UTLi4hwhJk_BYM4Zcx0ZRJ19w(CredentialProviderPlayServicesImpl credentialProviderPlayServicesImpl, ClearCredentialStateRequest clearCredentialStateRequest, CancellationSignal cancellationSignal, Executor executor, CredentialManagerCallback credentialManagerCallback, Exception exc) {
        Log.e(TAG, "GMS Clear credential flow failed, calling fallback");
        credentialProviderPlayServicesImpl.runFallbackClearCredFlow(clearCredentialStateRequest, cancellationSignal, executor, credentialManagerCallback);
    }

    public void onSignalCredentialState(SignalCredentialStateRequest request, Executor executor, final CredentialManagerCallback<SignalCredentialStateResponse, SignalCredentialStateException> callback) {
        if (!isAvailableOnDevice(MIN_GMS_APK_VERSION_SIGNAL_API)) {
            executor.execute(new Runnable() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    callback.onError(new SignalCredentialStateProviderConfigurationException("this device requires a Google Play Services update for the given feature to be supported"));
                }
            });
        } else {
            CredentialProviderController.invokePlayServices$default(SignalCredentialStateController.INSTANCE.getInstance(this.context), request, callback, executor, null, 8, null);
        }
    }

    private final void runFallbackClearCredFlow(ClearCredentialStateRequest request, final CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback<Void, ClearCredentialException> callback) {
        Task<Void> taskSignOut = Identity.getSignInClient(this.context).signOut();
        final Function1 function1 = new Function1() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CredentialProviderPlayServicesImpl.$r8$lambda$CkXA6uyZF5r3Uy4uE_kF2MrG3TY(cancellationSignal, executor, callback, (Void) obj);
            }
        };
        taskSignOut.addOnSuccessListener(new OnSuccessListener() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda18
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                function1.invoke(obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda19
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                CredentialProviderPlayServicesImpl credentialProviderPlayServicesImpl = this.f$0;
                CredentialProviderPlayServicesImpl.INSTANCE.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda8
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CredentialProviderPlayServicesImpl.runFallbackClearCredFlow$lambda$2$0$0(exc, executor, credentialManagerCallback);
                    }
                });
            }
        });
    }

    public static Unit $r8$lambda$CkXA6uyZF5r3Uy4uE_kF2MrG3TY(CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback credentialManagerCallback, Void r4) {
        INSTANCE.cancellationReviewerWithCallback$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderPlayServicesImpl.runFallbackClearCredFlow$lambda$0$0(executor, credentialManagerCallback);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit runFallbackClearCredFlow$lambda$0$0(Executor executor, final CredentialManagerCallback credentialManagerCallback) {
        Log.i(TAG, "During clear credential, signed out successfully!");
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                credentialManagerCallback.onResult(null);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit runFallbackClearCredFlow$lambda$2$0$0(final Exception exc, Executor executor, final CredentialManagerCallback credentialManagerCallback) {
        Log.w(TAG, "During clear credential sign out failed with " + exc);
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderPlayServicesImpl.runFallbackClearCredFlow$lambda$2$0$0$0(credentialManagerCallback, exc);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runFallbackClearCredFlow$lambda$2$0$0$0(CredentialManagerCallback credentialManagerCallback, Exception exc) {
        credentialManagerCallback.onError(new ClearCredentialUnknownException(exc.getMessage()));
    }

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u0011H\u0000¢\u0006\u0002\b\u0012J\u0017\u0010\u0013\u001a\u00020\u00142\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0000¢\u0006\u0002\b\u0015J\u0015\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0000¢\u0006\u0002\b\u0019J\u0015\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0000¢\u0006\u0002\b\u001bJ\u0015\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0000¢\u0006\u0002\b\u001dR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087T¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00078\u0006X\u0087T¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00078\u0006X\u0087T¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00078\u0006X\u0087T¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00078\u0006X\u0087T¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TAG", _UrlKt.FRAGMENT_ENCODE_SET, "MIN_GMS_APK_VERSION", _UrlKt.FRAGMENT_ENCODE_SET, "PRE_U_MIN_GMS_APK_VERSION", "MIN_GMS_APK_VERSION_RESTORE_CRED", "MIN_GMS_APK_VERSION_DIGITAL_CRED", "MIN_GMS_APK_VERSION_SIGNAL_API", "cancellationReviewerWithCallback", _UrlKt.FRAGMENT_ENCODE_SET, "cancellationSignal", "Landroid/os/CancellationSignal;", Callback.METHOD_NAME, "Lkotlin/Function0;", "cancellationReviewerWithCallback$credentials_play_services_auth", "cancellationReviewer", _UrlKt.FRAGMENT_ENCODE_SET, "cancellationReviewer$credentials_play_services_auth", "isGetSignInIntentRequest", PluginsConstants.REQUEST, "Landroidx/credentials/GetCredentialRequest;", "isGetSignInIntentRequest$credentials_play_services_auth", "isGetRestoreCredentialRequest", "isGetRestoreCredentialRequest$credentials_play_services_auth", "isDigitalCredentialRequest", "isDigitalCredentialRequest$credentials_play_services_auth", "credentials-play-services-auth"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void cancellationReviewerWithCallback$credentials_play_services_auth(CancellationSignal cancellationSignal, Function0<Unit> callback) {
            if (cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
                return;
            }
            callback.invoke();
        }

        public final boolean cancellationReviewer$credentials_play_services_auth(CancellationSignal cancellationSignal) {
            if (cancellationSignal == null) {
                Log.i(CredentialProviderPlayServicesImpl.TAG, "No cancellationSignal found");
                return false;
            }
            if (!cancellationSignal.isCanceled()) {
                return false;
            }
            Log.i(CredentialProviderPlayServicesImpl.TAG, "the flow has been canceled");
            return true;
        }

        public final boolean isGetSignInIntentRequest$credentials_play_services_auth(GetCredentialRequest request) {
            for (CredentialOption credentialOption : request.getCredentialOptions()) {
            }
            return false;
        }

        public final boolean isGetRestoreCredentialRequest$credentials_play_services_auth(GetCredentialRequest request) {
            for (CredentialOption credentialOption : request.getCredentialOptions()) {
            }
            return false;
        }

        public final boolean isDigitalCredentialRequest$credentials_play_services_auth(GetCredentialRequest request) {
            for (CredentialOption credentialOption : request.getCredentialOptions()) {
            }
            return false;
        }
    }
}
