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
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.exceptions.GetCredentialException;
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
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000S\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0016\n\u0002\b\u0005*\u0001.\b\u0001\u0018\u0000 12 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001:\u00011B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ=\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u00022\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00112\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR4\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00118\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u0012\u0010\u001f\u0012\u0004\b$\u0010%\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R(\u0010\u0014\u001a\u00020\u00138\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u0014\u0010&\u0012\u0004\b+\u0010%\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0083\u000e¢\u0006\f\n\u0004\b\u0016\u0010,\u0012\u0004\b-\u0010%R\u0014\u0010/\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100¨\u00062"}, d2 = {"Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController;", "Landroidx/credentials/playservices/controllers/CredentialProviderController;", "Landroidx/credentials/GetCredentialRequest;", "Lcom/google/android/gms/identitycredentials/GetCredentialRequest;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroidx/credentials/CredentialOption;", "option", "Lcom/google/android/gms/identitycredentials/CredentialOption;", "convertCredentialOptionToPlayServices", "(Landroidx/credentials/CredentialOption;)Lcom/google/android/gms/identitycredentials/CredentialOption;", "request", "Landroidx/credentials/CredentialManagerCallback;", Callback.METHOD_NAME, "Ljava/util/concurrent/Executor;", "executor", "Landroid/os/CancellationSignal;", "cancellationSignal", _UrlKt.FRAGMENT_ENCODE_SET, "invokePlayServices", "(Landroidx/credentials/GetCredentialRequest;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V", "convertRequestToPlayServices", "(Landroidx/credentials/GetCredentialRequest;)Lcom/google/android/gms/identitycredentials/GetCredentialRequest;", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "Landroidx/credentials/CredentialManagerCallback;", "getCallback", "()Landroidx/credentials/CredentialManagerCallback;", "setCallback", "(Landroidx/credentials/CredentialManagerCallback;)V", "getCallback$annotations", "()V", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "setExecutor", "(Ljava/util/concurrent/Executor;)V", "getExecutor$annotations", "Landroid/os/CancellationSignal;", "getCancellationSignal$annotations", "androidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1", "resultReceiver", "Landroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController$resultReceiver$1;", "Companion", "credentials-play-services-auth"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGetCredentialController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetCredentialController.kt\nandroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,192:1\n1563#2:193\n1634#2,3:194\n*S KotlinDebug\n*F\n+ 1 GetCredentialController.kt\nandroidx/credentials/playservices/controllers/identitycredentials/getcredential/GetCredentialController\n*L\n161#1:193\n161#1:194,3\n*E\n"})
public final class GetCredentialController extends CredentialProviderController<GetCredentialRequest, com.google.android.gms.identitycredentials.GetCredentialRequest, Object, GetCredentialResponse, GetCredentialException> {
    public CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback;
    private CancellationSignal cancellationSignal;
    private final Context context;
    public Executor executor;
    private final GetCredentialController$resultReceiver$1 resultReceiver;

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController$resultReceiver$1] */
    public GetCredentialController(Context context) {
        super(context);
        this.context = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.resultReceiver = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController$resultReceiver$1
            @Override // android.os.ResultReceiver
            public void onReceiveResult(int resultCode, Bundle resultData) {
                if (this.this$0.maybeReportErrorFromResultReceiver(resultData, new GetCredentialController$resultReceiver$1$onReceiveResult$1(CredentialProviderBaseController.INSTANCE), this.this$0.getExecutor(), this.this$0.getCallback(), this.this$0.cancellationSignal)) {
                    return;
                }
                ResponseUtils.INSTANCE.handleGetCredentialResponse(resultData.getInt("ACTIVITY_REQUEST_CODE"), resultCode, (Intent) BundleCompat.getParcelable(resultData, "RESULT_DATA", Intent.class), this.this$0.getExecutor(), this.this$0.getCallback(), this.this$0.cancellationSignal);
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
    public void invokePlayServices(final GetCredentialRequest request, final CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback, final Executor executor, final CancellationSignal cancellationSignal) {
        this.cancellationSignal = cancellationSignal;
        setCallback(callback);
        setExecutor(executor);
        if (CredentialProviderPlayServicesImpl.INSTANCE.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return;
        }
        Task<PendingGetCredentialHandle> credential = IdentityCredentialManager.INSTANCE.getClient(this.context).getCredential(convertRequestToPlayServices(request));
        final Function1 function1 = new Function1() { // from class: androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return GetCredentialController.$r8$lambda$GyDDE5ful1wYW65o8QGlZvX14Gk(cancellationSignal, this, executor, callback, (PendingGetCredentialHandle) obj);
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
                GetCredentialController.m1691$r8$lambda$uOxAj9j1JzqXonniXxyEcPY2CA(request, this, callback, executor, cancellationSignal, exc);
            }
        });
    }

    public static Unit $r8$lambda$GyDDE5ful1wYW65o8QGlZvX14Gk(CancellationSignal cancellationSignal, GetCredentialController getCredentialController, final Executor executor, final CredentialManagerCallback credentialManagerCallback, PendingGetCredentialHandle pendingGetCredentialHandle) {
        if (CredentialProviderPlayServicesImpl.INSTANCE.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
            return Unit.INSTANCE;
        }
        Intent intent = new Intent(getCredentialController.context, (Class<?>) HiddenActivity.class);
        getCredentialController.generateHiddenActivityIntent(getCredentialController.resultReceiver, intent, "BEGIN_SIGN_IN");
        intent.putExtra("EXTRA_FLOW_PENDING_INTENT", pendingGetCredentialHandle.getPendingIntent());
        try {
            getCredentialController.context.startActivity(intent);
        } catch (Exception unused) {
            CredentialProviderController.INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return GetCredentialController.invokePlayServices$lambda$0$0(executor, credentialManagerCallback);
                }
            });
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokePlayServices$lambda$0$0(Executor executor, final CredentialManagerCallback credentialManagerCallback) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.identitycredentials.getcredential.GetCredentialController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                GetCredentialController.invokePlayServices$lambda$0$0$0(credentialManagerCallback);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokePlayServices$lambda$0$0$0(CredentialManagerCallback credentialManagerCallback) {
        credentialManagerCallback.onError(new GetCredentialUnknownException("Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."));
    }

    /* JADX INFO: renamed from: $r8$lambda$uOxAj9j1JzqXonniXxyEcP-Y2CA, reason: not valid java name */
    public static void m1691$r8$lambda$uOxAj9j1JzqXonniXxyEcPY2CA(GetCredentialRequest getCredentialRequest, GetCredentialController getCredentialController, CredentialManagerCallback credentialManagerCallback, Executor executor, CancellationSignal cancellationSignal, Exception exc) {
        if (CredentialProviderPlayServicesImpl.INSTANCE.isGetSignInIntentRequest$credentials_play_services_auth(getCredentialRequest)) {
            Log.w("GetCredentialController", "Pre-u credman get flow failed for get sign in intent; retrying with gis flow");
            new CredentialProviderGetSignInIntentController(getCredentialController.context).invokePlayServices(getCredentialRequest, (CredentialManagerCallback<GetCredentialResponse, GetCredentialException>) credentialManagerCallback, executor, cancellationSignal);
        } else {
            Log.w("GetCredentialController", "Pre-u credman get flow failed; retrying with gis flow");
            new CredentialProviderBeginSignInController(getCredentialController.context).invokePlayServices(getCredentialRequest, (CredentialManagerCallback<GetCredentialResponse, GetCredentialException>) credentialManagerCallback, executor, cancellationSignal);
        }
    }

    public com.google.android.gms.identitycredentials.GetCredentialRequest convertRequestToPlayServices(GetCredentialRequest request) {
        Bundle requestMetadataBundle = GetCredentialRequest.INSTANCE.getRequestMetadataBundle(request);
        List<CredentialOption> credentialOptions = request.getCredentialOptions();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(credentialOptions, 10));
        Iterator<T> it = credentialOptions.iterator();
        while (it.hasNext()) {
            arrayList.add(convertCredentialOptionToPlayServices((CredentialOption) it.next()));
        }
        return new com.google.android.gms.identitycredentials.GetCredentialRequest(arrayList, requestMetadataBundle, request.getOrigin(), new ResultReceiver(null));
    }

    private final com.google.android.gms.identitycredentials.CredentialOption convertCredentialOptionToPlayServices(CredentialOption option) {
        return new com.google.android.gms.identitycredentials.CredentialOption(option.getType(), option.getRequestData(), option.getCandidateQueryData(), _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET);
    }
}
