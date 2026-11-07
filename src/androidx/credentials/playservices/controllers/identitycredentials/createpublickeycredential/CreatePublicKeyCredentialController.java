package androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.core.os.BundleCompat;
import androidx.credentials.CreatePublicKeyCredentialRequest;
import androidx.credentials.CreatePublicKeyCredentialResponse;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialInterruptedException;
import androidx.credentials.exceptions.CreateCredentialNoCreateOptionException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.CreateCredentialUnsupportedException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import androidx.credentials.playservices.controllers.identityauth.HiddenActivity;
import androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.provider.PendingIntentHandler;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.identitycredentials.CreateCredentialHandle;
import com.google.android.gms.identitycredentials.CreateCredentialRequest;
import com.google.android.gms.identitycredentials.CreateCredentialResponse;
import com.google.android.gms.identitycredentials.IdentityCredentialManager;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.sun.jna.Callback;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000]\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0010\n\u0002\b\u0005*\u0001.\b\u0001\u0018\u0000 12 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001:\u00011B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ=\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\u00022\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\f2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J)\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0004H\u0014¢\u0006\u0004\b$\u0010%R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010&R(\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\f8\u0002@\u0002X\u0083.¢\u0006\f\n\u0004\b\r\u0010'\u0012\u0004\b(\u0010)R\u001c\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0083.¢\u0006\f\n\u0004\b\u000f\u0010*\u0012\u0004\b+\u0010)R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0083\u000e¢\u0006\f\n\u0004\b\u0011\u0010,\u0012\u0004\b-\u0010)R\u0014\u0010/\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100¨\u00062"}, d2 = {"Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;", "Landroidx/credentials/playservices/controllers/CredentialProviderController;", "Landroidx/credentials/CreatePublicKeyCredentialRequest;", "Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;", "Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;", "Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/exceptions/CreateCredentialException;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", PluginsConstants.REQUEST, "Landroidx/credentials/CredentialManagerCallback;", Callback.METHOD_NAME, "Ljava/util/concurrent/Executor;", "executor", "Landroid/os/CancellationSignal;", "cancellationSignal", _UrlKt.FRAGMENT_ENCODE_SET, "invokePlayServices", "(Landroidx/credentials/CreatePublicKeyCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V", _UrlKt.FRAGMENT_ENCODE_SET, "uniqueRequestCode", "resultCode", "Landroid/content/Intent;", "data", "handleResponse$credentials_play_services_auth", "(IILandroid/content/Intent;)V", "handleResponse", _UrlKt.FRAGMENT_ENCODE_SET, "e", "fromGmsException", "(Ljava/lang/Throwable;)Landroidx/credentials/exceptions/CreateCredentialException;", "convertRequestToPlayServices", "(Landroidx/credentials/CreatePublicKeyCredentialRequest;)Lcom/google/android/gms/identitycredentials/CreateCredentialRequest;", PluginsConstants.RESPONSE, "convertResponseToCredentialManager", "(Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;)Landroidx/credentials/CreateCredentialResponse;", "Landroid/content/Context;", "Landroidx/credentials/CredentialManagerCallback;", "getCallback$annotations", "()V", "Ljava/util/concurrent/Executor;", "getExecutor$annotations", "Landroid/os/CancellationSignal;", "getCancellationSignal$annotations", "androidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$resultReceiver$1", "resultReceiver", "Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$resultReceiver$1;", "Companion", "credentials-play-services-auth"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class CreatePublicKeyCredentialController extends CredentialProviderController<CreatePublicKeyCredentialRequest, CreateCredentialRequest, CreateCredentialResponse, androidx.credentials.CreateCredentialResponse, CreateCredentialException> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private CredentialManagerCallback<androidx.credentials.CreateCredentialResponse, CreateCredentialException> callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    private Executor executor;
    private final CreatePublicKeyCredentialController$resultReceiver$1 resultReceiver;

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$resultReceiver$1] */
    public CreatePublicKeyCredentialController(Context context) {
        super(context);
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int resultCode, Bundle resultData) {
                CreatePublicKeyCredentialController createPublicKeyCredentialController = this.this$0;
                C0480x10b4fc7a c0480x10b4fc7a = new C0480x10b4fc7a(CredentialProviderBaseController.INSTANCE);
                Executor executor = this.this$0.executor;
                if (executor == null) {
                    executor = null;
                }
                CredentialManagerCallback credentialManagerCallback = this.this$0.callback;
                if (credentialManagerCallback == null) {
                    credentialManagerCallback = null;
                }
                if (createPublicKeyCredentialController.maybeReportErrorFromResultReceiver(resultData, c0480x10b4fc7a, executor, credentialManagerCallback, this.this$0.cancellationSignal)) {
                    return;
                }
                this.this$0.handleResponse$credentials_play_services_auth(resultData.getInt("ACTIVITY_REQUEST_CODE"), resultCode, (Intent) BundleCompat.getParcelable(resultData, "RESULT_DATA", Intent.class));
            }
        };
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public void invokePlayServices(final CreatePublicKeyCredentialRequest request, final CredentialManagerCallback<androidx.credentials.CreateCredentialResponse, CreateCredentialException> callback, final Executor executor, final CancellationSignal cancellationSignal) {
        this.cancellationSignal = cancellationSignal;
        this.callback = callback;
        this.executor = executor;
        if (CredentialProviderPlayServicesImpl.INSTANCE.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return;
        }
        Task<CreateCredentialHandle> taskCreateCredential = IdentityCredentialManager.INSTANCE.getClient(this.context).createCredential(convertRequestToPlayServices(request));
        final Function1 function1 = new Function1() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CreatePublicKeyCredentialController.$r8$lambda$qGhktyn4yrwbaYVeRIYX3YUyRnU(cancellationSignal, this, executor, callback, (CreateCredentialHandle) obj);
            }
        };
        taskCreateCredential.addOnSuccessListener(new OnSuccessListener() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                function1.invoke(obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                CreatePublicKeyCredentialController.$r8$lambda$R0XYJePXIB2wqkqFXoKnFQ23syc(request, this, callback, executor, cancellationSignal, exc);
            }
        });
    }

    public static Unit $r8$lambda$qGhktyn4yrwbaYVeRIYX3YUyRnU(CancellationSignal cancellationSignal, final CreatePublicKeyCredentialController createPublicKeyCredentialController, final Executor executor, final CredentialManagerCallback credentialManagerCallback, CreateCredentialHandle createCredentialHandle) {
        PendingIntent pendingIntent = createCredentialHandle.getPendingIntent();
        CreateCredentialResponse createCredentialResponse = createCredentialHandle.getCreateCredentialResponse();
        if (pendingIntent == null && createCredentialResponse == null) {
            CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CreatePublicKeyCredentialController.invokePlayServices$lambda$0$0(executor, credentialManagerCallback);
                }
            });
            return Unit.INSTANCE;
        }
        if (pendingIntent != null) {
            Intent intent = new Intent(createPublicKeyCredentialController.context, (Class<?>) HiddenActivity.class);
            createPublicKeyCredentialController.generateHiddenActivityIntent(createPublicKeyCredentialController.resultReceiver, intent, "CREATE_PUBLIC_KEY_CREDENTIAL");
            intent.putExtra("EXTRA_FLOW_PENDING_INTENT", pendingIntent);
            try {
                createPublicKeyCredentialController.context.startActivity(intent);
            } catch (Exception unused) {
                CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda9
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CreatePublicKeyCredentialController.invokePlayServices$lambda$0$1(this.f$0);
                    }
                });
            }
        }
        if (createCredentialResponse != null) {
            final androidx.credentials.CreateCredentialResponse createCredentialResponseConvertResponseToCredentialManager = createPublicKeyCredentialController.convertResponseToCredentialManager(createCredentialResponse);
            if (createCredentialResponseConvertResponseToCredentialManager instanceof CreatePublicKeyCredentialResponse) {
                CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return CreatePublicKeyCredentialController.invokePlayServices$lambda$0$2(executor, credentialManagerCallback, createCredentialResponseConvertResponseToCredentialManager);
                    }
                });
                return Unit.INSTANCE;
            }
        }
        if (pendingIntent == null) {
            CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda11
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CreatePublicKeyCredentialController.invokePlayServices$lambda$0$3(executor, credentialManagerCallback);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$0$0(Executor executor, final CredentialManagerCallback credentialManagerCallback) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                CreatePublicKeyCredentialController.invokePlayServices$lambda$0$0$0(credentialManagerCallback);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$0$0(CredentialManagerCallback credentialManagerCallback) {
        credentialManagerCallback.onError(new CreateCredentialUnknownException(null, 1, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$0$1(final CreatePublicKeyCredentialController createPublicKeyCredentialController) {
        Executor executor = createPublicKeyCredentialController.executor;
        if (executor == null) {
            executor = null;
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                CreatePublicKeyCredentialController.invokePlayServices$lambda$0$1$0(this.f$0);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$1$0(CreatePublicKeyCredentialController createPublicKeyCredentialController) {
        CredentialManagerCallback<androidx.credentials.CreateCredentialResponse, CreateCredentialException> credentialManagerCallback = createPublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(new CreateCredentialUnknownException("Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$0$2(Executor executor, final CredentialManagerCallback credentialManagerCallback, final androidx.credentials.CreateCredentialResponse createCredentialResponse) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                credentialManagerCallback.onResult(createCredentialResponse);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$0$3(Executor executor, final CredentialManagerCallback credentialManagerCallback) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                CreatePublicKeyCredentialController.invokePlayServices$lambda$0$3$0(credentialManagerCallback);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$3$0(CredentialManagerCallback credentialManagerCallback) {
        credentialManagerCallback.onError(new CreateCredentialUnknownException(null, 1, null));
    }

    public static void $r8$lambda$R0XYJePXIB2wqkqFXoKnFQ23syc(CreatePublicKeyCredentialRequest createPublicKeyCredentialRequest, final CreatePublicKeyCredentialController createPublicKeyCredentialController, final CredentialManagerCallback credentialManagerCallback, final Executor executor, CancellationSignal cancellationSignal, final Exception exc) {
        if (!createPublicKeyCredentialRequest.getIsConditional()) {
            Log.w("CreatePublicKey", "Pre-u credman PK create flow failed " + exc + "; retrying with gis flow");
            CredentialProviderCreatePublicKeyCredentialController.INSTANCE.getInstance(createPublicKeyCredentialController.context).invokePlayServices(createPublicKeyCredentialRequest, (CredentialManagerCallback<androidx.credentials.CreateCredentialResponse, CreateCredentialException>) credentialManagerCallback, executor, cancellationSignal);
            return;
        }
        CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CreatePublicKeyCredentialController.invokePlayServices$lambda$2$0(this.f$0, exc, executor, credentialManagerCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$2$0(CreatePublicKeyCredentialController createPublicKeyCredentialController, Exception exc, Executor executor, final CredentialManagerCallback credentialManagerCallback) {
        final CreateCredentialException createCredentialExceptionFromGmsException = createPublicKeyCredentialController.fromGmsException(exc);
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                credentialManagerCallback.onError(createCredentialExceptionFromGmsException);
            }
        });
        return Unit.INSTANCE;
    }

    public final void handleResponse$credentials_play_services_auth(int uniqueRequestCode, int resultCode, Intent data) {
        CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.INSTANCE;
        if (uniqueRequestCode != companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth()) {
            Log.w("CreatePublicKey", "Returned request code " + companion.getCONTROLLER_REQUEST_CODE$credentials_play_services_auth() + " does not match what was given " + uniqueRequestCode);
            return;
        }
        if (CredentialProviderController.maybeReportErrorResultCodeCreate(resultCode, new Function2() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return CreatePublicKeyCredentialController.m1785$r8$lambda$tYbf8Lmz5Gwdn2OkpxSCygDa34((CancellationSignal) obj, (Function0) obj2);
            }
        }, new Function1() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CreatePublicKeyCredentialController.m1781$r8$lambda$TIoKY2xikd5hwSIbqwKayv1nqw(this.f$0, (CreateCredentialException) obj);
            }
        }, this.cancellationSignal)) {
            return;
        }
        if (data == null) {
            CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CreatePublicKeyCredentialController.m1782$r8$lambda$a_6C8FvoS0mJrJ_QxqiYGSfhnQ(this.f$0);
                }
            });
            return;
        }
        PendingIntentHandler.Companion companion2 = PendingIntentHandler.INSTANCE;
        final androidx.credentials.CreateCredentialResponse createCredentialResponseRetrieveCreateCredentialResponse = companion2.retrieveCreateCredentialResponse("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL", data);
        if (createCredentialResponseRetrieveCreateCredentialResponse != null) {
            CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CreatePublicKeyCredentialController.$r8$lambda$7Pbaj8QY0qWYXijdVr1avx6m7cE(this.f$0, createCredentialResponseRetrieveCreateCredentialResponse);
                }
            });
        } else {
            final CreateCredentialException createCredentialExceptionRetrieveCreateCredentialException = companion2.retrieveCreateCredentialException(data);
            CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CreatePublicKeyCredentialController.$r8$lambda$cXqt7RJ41JfjJIeUD7hpYzA5MEM(this.f$0, createCredentialExceptionRetrieveCreateCredentialException);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$tYbf8Lmz5Gwdn2OkpxSCygD-a34, reason: not valid java name */
    public static Unit m1785$r8$lambda$tYbf8Lmz5Gwdn2OkpxSCygDa34(CancellationSignal cancellationSignal, Function0 function0) {
        CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, function0);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: $r8$lambda$TIoKY2xikd5hwSIbqw-Kayv1nqw, reason: not valid java name */
    public static Unit m1781$r8$lambda$TIoKY2xikd5hwSIbqwKayv1nqw(final CreatePublicKeyCredentialController createPublicKeyCredentialController, final CreateCredentialException createCredentialException) {
        Executor executor = createPublicKeyCredentialController.executor;
        if (executor == null) {
            executor = null;
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                CreatePublicKeyCredentialController.handleResponse$lambda$1$0(this.f$0, createCredentialException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$1$0(CreatePublicKeyCredentialController createPublicKeyCredentialController, CreateCredentialException createCredentialException) {
        CredentialManagerCallback<androidx.credentials.CreateCredentialResponse, CreateCredentialException> credentialManagerCallback = createPublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(createCredentialException);
    }

    /* JADX INFO: renamed from: $r8$lambda$a_6C8FvoS0-mJrJ_QxqiYGSfhnQ, reason: not valid java name */
    public static Unit m1782$r8$lambda$a_6C8FvoS0mJrJ_QxqiYGSfhnQ(final CreatePublicKeyCredentialController createPublicKeyCredentialController) {
        Executor executor = createPublicKeyCredentialController.executor;
        if (executor == null) {
            executor = null;
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                CreatePublicKeyCredentialController.handleResponse$lambda$2$0(this.f$0);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$2$0(CreatePublicKeyCredentialController createPublicKeyCredentialController) {
        CredentialManagerCallback<androidx.credentials.CreateCredentialResponse, CreateCredentialException> credentialManagerCallback = createPublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(new CreateCredentialUnknownException("No provider data returned."));
    }

    public static Unit $r8$lambda$7Pbaj8QY0qWYXijdVr1avx6m7cE(final CreatePublicKeyCredentialController createPublicKeyCredentialController, final androidx.credentials.CreateCredentialResponse createCredentialResponse) {
        Executor executor = createPublicKeyCredentialController.executor;
        if (executor == null) {
            executor = null;
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                CreatePublicKeyCredentialController.handleResponse$lambda$3$0(this.f$0, createCredentialResponse);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$3$0(CreatePublicKeyCredentialController createPublicKeyCredentialController, androidx.credentials.CreateCredentialResponse createCredentialResponse) {
        CredentialManagerCallback<androidx.credentials.CreateCredentialResponse, CreateCredentialException> credentialManagerCallback = createPublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onResult(createCredentialResponse);
    }

    public static Unit $r8$lambda$cXqt7RJ41JfjJIeUD7hpYzA5MEM(final CreatePublicKeyCredentialController createPublicKeyCredentialController, final CreateCredentialException createCredentialException) {
        Executor executor = createPublicKeyCredentialController.executor;
        if (executor == null) {
            executor = null;
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.createpublickeycredential.CreatePublicKeyCredentialController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                CreatePublicKeyCredentialController.handleResponse$lambda$4$0(this.f$0, createCredentialException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$4$0(CreatePublicKeyCredentialController createPublicKeyCredentialController, CreateCredentialException createCredentialException) {
        CredentialManagerCallback<androidx.credentials.CreateCredentialResponse, CreateCredentialException> credentialManagerCallback = createPublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            credentialManagerCallback = null;
        }
        if (createCredentialException == null) {
            createCredentialException = new CreateCredentialUnknownException("No provider data returned");
        }
        credentialManagerCallback.onError(createCredentialException);
    }

    public final CreateCredentialException fromGmsException(Throwable e) {
        if (e instanceof ApiException) {
            int statusCode = ((ApiException) e).getStatusCode();
            if (statusCode == 16) {
                return new CreateCredentialCancellationException(e.getMessage());
            }
            if (statusCode == 17) {
                return new CreateCredentialUnsupportedException("API is not supported: " + e.getMessage());
            }
            if (statusCode == 8) {
                return new CreateCredentialNoCreateOptionException(e.getMessage());
            }
            if (CredentialProviderBaseController.INSTANCE.getRetryables().contains(Integer.valueOf(statusCode))) {
                return new CreateCredentialInterruptedException(e.getMessage());
            }
            return new CreateCredentialUnknownException("Conditional create failed, failure: " + e.getMessage());
        }
        if (e instanceof UnsupportedApiCallException) {
            return new CreateCredentialUnsupportedException("API is unsupported");
        }
        return new CreateCredentialUnknownException("Conditional create failed, failure: " + e);
    }

    public CreateCredentialRequest convertRequestToPlayServices(CreatePublicKeyCredentialRequest request) {
        return new CreateCredentialRequest(request.getType(), request.getCredentialData(), request.getCandidateQueryData(), request.getOrigin(), request.getRequestJson(), null);
    }

    public androidx.credentials.CreateCredentialResponse convertResponseToCredentialManager(CreateCredentialResponse response) {
        return androidx.credentials.CreateCredentialResponse.INSTANCE.createFrom(response.getType(), response.getData());
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getInstance", "Landroidx/credentials/playservices/controllers/identitycredentials/createpublickeycredential/CreatePublicKeyCredentialController;", "context", "Landroid/content/Context;", "TAG", _UrlKt.FRAGMENT_ENCODE_SET, "credentials-play-services-auth"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final CreatePublicKeyCredentialController getInstance(Context context) {
            return new CreatePublicKeyCredentialController(context);
        }
    }
}
