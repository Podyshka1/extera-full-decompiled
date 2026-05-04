package androidx.credentials.playservices.controllers.identityauth.createpublickeycredential;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.CreatePublicKeyCredentialRequest;
import androidx.credentials.CreatePublicKeyCredentialResponse;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.domerrors.EncodingError;
import androidx.credentials.exceptions.domerrors.UnknownError;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialDomException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import androidx.credentials.playservices.controllers.identityauth.HiddenActivity;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.fido.Fido;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredential;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.sun.jna.Callback;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* JADX INFO: loaded from: classes4.dex */
public final class CredentialProviderCreatePublicKeyCredentialController extends CredentialProviderController {
    public static final Companion Companion = new Companion(null);
    private CredentialManagerCallback callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    private Executor executor;
    private final ResultReceiverC0457x1c337a18 resultReceiver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1] */
    public CredentialProviderCreatePublicKeyCredentialController(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle resultData) {
                Executor executor;
                CredentialManagerCallback credentialManagerCallback;
                Intrinsics.checkNotNullParameter(resultData, "resultData");
                CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = this.this$0;
                C0458xdfe2be02 c0458xdfe2be02 = new C0458xdfe2be02(CredentialProviderBaseController.Companion);
                Executor executor2 = this.this$0.executor;
                if (executor2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("executor");
                    executor = null;
                } else {
                    executor = executor2;
                }
                CredentialManagerCallback credentialManagerCallback2 = this.this$0.callback;
                if (credentialManagerCallback2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException(Callback.METHOD_NAME);
                    credentialManagerCallback = null;
                } else {
                    credentialManagerCallback = credentialManagerCallback2;
                }
                if (credentialProviderCreatePublicKeyCredentialController.maybeReportErrorFromResultReceiver(resultData, c0458xdfe2be02, executor, credentialManagerCallback, this.this$0.cancellationSignal)) {
                    return;
                }
                this.this$0.handleResponse$credentials_play_services_auth_release(resultData.getInt("ACTIVITY_REQUEST_CODE"), i, (Intent) resultData.getParcelable("RESULT_DATA"));
            }
        };
    }

    @Override // androidx.credentials.playservices.controllers.CredentialProviderController
    public void invokePlayServices(CreatePublicKeyCredentialRequest request, CredentialManagerCallback callback, Executor executor, final CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.cancellationSignal = cancellationSignal;
        this.callback = callback;
        this.executor = executor;
        try {
            PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptionsConvertRequestToPlayServices = convertRequestToPlayServices(request);
            if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(cancellationSignal)) {
                return;
            }
            Task registerPendingIntent = Fido.getFido2ApiClient(this.context).getRegisterPendingIntent(publicKeyCredentialCreationOptionsConvertRequestToPlayServices);
            final Function1 function1 = new Function1() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$6(cancellationSignal, this, (PendingIntent) obj);
                }
            };
            registerPendingIntent.addOnSuccessListener(new OnSuccessListener() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda10
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    function1.invoke(obj);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda11
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$10(this.f$0, cancellationSignal, exc);
                }
            });
        } catch (JSONException e) {
            CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$1(this.f$0, e);
                }
            });
        } catch (Throwable th) {
            CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$3(this.f$0, th);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$1(final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, final JSONException jSONException) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            executor = null;
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$1$lambda$0(this.f$0, jSONException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$1$lambda$0(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, JSONException jSONException) {
        CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException(Callback.METHOD_NAME);
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(credentialProviderCreatePublicKeyCredentialController.JSONExceptionToPKCError(jSONException));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$3(final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, final Throwable th) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            executor = null;
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$3$lambda$2(this.f$0, th);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$3$lambda$2(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, Throwable th) {
        CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException(Callback.METHOD_NAME);
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(new CreateCredentialUnknownException(th.getMessage()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$6(CancellationSignal cancellationSignal, final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, PendingIntent result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(cancellationSignal)) {
            return Unit.INSTANCE;
        }
        Intent intent = new Intent(credentialProviderCreatePublicKeyCredentialController.context, (Class<?>) HiddenActivity.class);
        credentialProviderCreatePublicKeyCredentialController.generateHiddenActivityIntent(credentialProviderCreatePublicKeyCredentialController.resultReceiver, intent, "CREATE_PUBLIC_KEY_CREDENTIAL");
        intent.putExtra("EXTRA_FLOW_PENDING_INTENT", result);
        try {
            credentialProviderCreatePublicKeyCredentialController.context.startActivity(intent);
        } catch (Exception unused) {
            CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda20
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$6$lambda$5(this.f$0);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$6$lambda$5(final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            executor = null;
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$6$lambda$5$lambda$4(this.f$0);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$6$lambda$5$lambda$4(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController) {
        CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException(Callback.METHOD_NAME);
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(new CreateCredentialUnknownException("Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$10(final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, CancellationSignal cancellationSignal, Exception e) {
        Intrinsics.checkNotNullParameter(e, "e");
        final CreateCredentialException createCredentialExceptionFromIntentRequestException = credentialProviderCreatePublicKeyCredentialController.fromIntentRequestException(e);
        CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$10$lambda$9(this.f$0, createCredentialExceptionFromIntentRequestException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$10$lambda$9(final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, final CreateCredentialException createCredentialException) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            executor = null;
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderCreatePublicKeyCredentialController.invokePlayServices$lambda$10$lambda$9$lambda$8(this.f$0, createCredentialException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$10$lambda$9$lambda$8(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, CreateCredentialException createCredentialException) {
        CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException(Callback.METHOD_NAME);
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(createCredentialException);
    }

    private final CreateCredentialException fromIntentRequestException(Throwable th) {
        String str;
        if ((th instanceof ApiException) && CredentialProviderBaseController.Companion.getRetryables().contains(Integer.valueOf(((ApiException) th).getStatusCode()))) {
            str = "CREATE_INTERRUPTED";
        } else {
            str = "CREATE_UNKNOWN";
        }
        return CredentialProviderBaseController.Companion.m169x5e74af(str, "During create public key credential, fido registration failure: " + th.getMessage());
    }

    public final void handleResponse$credentials_play_services_auth_release(int i, int i2, Intent intent) {
        CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.Companion;
        if (i != companion.m170xa2b31783()) {
            Log.w("CreatePublicKey", "Returned request code " + companion.m170xa2b31783() + " does not match what was given " + i);
            return;
        }
        if (CredentialProviderController.maybeReportErrorResultCodeCreate(i2, new Function2() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$11((CancellationSignal) obj, (Function0) obj2);
            }
        }, new Function1() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$13(this.f$0, (CreateCredentialException) obj);
            }
        }, this.cancellationSignal)) {
            return;
        }
        Executor executor = null;
        byte[] byteArrayExtra = intent != null ? intent.getByteArrayExtra("FIDO2_CREDENTIAL_EXTRA") : null;
        if (byteArrayExtra == null) {
            if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth_release(this.cancellationSignal)) {
                return;
            }
            Executor executor2 = this.executor;
            if (executor2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("executor");
            } else {
                executor = executor2;
            }
            executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$14(this.f$0);
                }
            });
            return;
        }
        PublicKeyCredential publicKeyCredentialDeserializeFromBytes = PublicKeyCredential.deserializeFromBytes(byteArrayExtra);
        Intrinsics.checkNotNullExpressionValue(publicKeyCredentialDeserializeFromBytes, "deserializeFromBytes(...)");
        final CreateCredentialException createCredentialExceptionPublicKeyCredentialResponseContainsError = PublicKeyCredentialControllerUtility.Companion.publicKeyCredentialResponseContainsError(publicKeyCredentialDeserializeFromBytes);
        if (createCredentialExceptionPublicKeyCredentialResponseContainsError != null) {
            CredentialProviderController.Companion.m172xd7d57380(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$16(this.f$0, createCredentialExceptionPublicKeyCredentialResponseContainsError);
                }
            });
            return;
        }
        try {
            final CreateCredentialResponse createCredentialResponseConvertResponseToCredentialManager = convertResponseToCredentialManager(publicKeyCredentialDeserializeFromBytes);
            CredentialProviderController.Companion.m172xd7d57380(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$18(this.f$0, createCredentialResponseConvertResponseToCredentialManager);
                }
            });
        } catch (JSONException e) {
            CredentialProviderController.Companion.m172xd7d57380(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$20(this.f$0, e);
                }
            });
        } catch (Throwable th) {
            CredentialProviderController.Companion.m172xd7d57380(this.cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda6
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$22(this.f$0, th);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$11(CancellationSignal cancellationSignal, Function0 f) {
        Intrinsics.checkNotNullParameter(f, "f");
        CredentialProviderController.Companion.m172xd7d57380(cancellationSignal, f);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$13(final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, final CreateCredentialException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            executor = null;
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$13$lambda$12(this.f$0, e);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$13$lambda$12(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, CreateCredentialException createCredentialException) {
        CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException(Callback.METHOD_NAME);
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(createCredentialException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$14(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController) {
        CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException(Callback.METHOD_NAME);
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(new CreatePublicKeyCredentialDomException(new UnknownError(), "Upon handling create public key credential response, fido module giving null bytes indicating internal error"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$16(final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, final CreateCredentialException createCredentialException) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            executor = null;
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$16$lambda$15(this.f$0, createCredentialException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$16$lambda$15(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, CreateCredentialException createCredentialException) {
        CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException(Callback.METHOD_NAME);
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(createCredentialException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$18(final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, final CreateCredentialResponse createCredentialResponse) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            executor = null;
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$18$lambda$17(this.f$0, createCredentialResponse);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$18$lambda$17(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, CreateCredentialResponse createCredentialResponse) {
        CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException(Callback.METHOD_NAME);
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onResult(createCredentialResponse);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$20(final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, final JSONException jSONException) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            executor = null;
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$20$lambda$19(this.f$0, jSONException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$20$lambda$19(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, JSONException jSONException) {
        CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException(Callback.METHOD_NAME);
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(new CreatePublicKeyCredentialDomException(new EncodingError(), jSONException.getMessage()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleResponse$lambda$22(final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, final Throwable th) {
        Executor executor = credentialProviderCreatePublicKeyCredentialController.executor;
        if (executor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("executor");
            executor = null;
        }
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                CredentialProviderCreatePublicKeyCredentialController.handleResponse$lambda$22$lambda$21(this.f$0, th);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleResponse$lambda$22$lambda$21(CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController, Throwable th) {
        CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.callback;
        if (credentialManagerCallback == null) {
            Intrinsics.throwUninitializedPropertyAccessException(Callback.METHOD_NAME);
            credentialManagerCallback = null;
        }
        credentialManagerCallback.onError(new CreatePublicKeyCredentialDomException(new UnknownError(), th.getMessage()));
    }

    public PublicKeyCredentialCreationOptions convertRequestToPlayServices(CreatePublicKeyCredentialRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return PublicKeyCredentialControllerUtility.Companion.convert(request, this.context);
    }

    public CreateCredentialResponse convertResponseToCredentialManager(PublicKeyCredential response) throws CreateCredentialUnknownException {
        Intrinsics.checkNotNullParameter(response, "response");
        try {
            String json = response.toJson();
            Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
            return new CreatePublicKeyCredentialResponse(json);
        } catch (Throwable th) {
            throw new CreateCredentialUnknownException("The PublicKeyCredential response json had an unexpected exception when parsing: " + th.getMessage());
        }
    }

    private final CreatePublicKeyCredentialDomException JSONExceptionToPKCError(JSONException jSONException) {
        String message = jSONException.getMessage();
        if (message != null && message.length() > 0) {
            return new CreatePublicKeyCredentialDomException(new EncodingError(), message);
        }
        return new CreatePublicKeyCredentialDomException(new EncodingError(), "Unknown error");
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CredentialProviderCreatePublicKeyCredentialController getInstance(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new CredentialProviderCreatePublicKeyCredentialController(context);
        }
    }
}
