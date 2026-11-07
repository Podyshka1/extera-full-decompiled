package androidx.credentials.playservices.controllers;

import android.content.Context;
import android.os.Bundle;
import android.os.CancellationSignal;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.sun.jna.Callback;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\b \u0018\u0000 \u001f*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u0001*\b\b\u0002\u0010\u0004*\u00020\u0001*\b\b\u0003\u0010\u0005*\u00020\u0001*\b\b\u0004\u0010\u0006*\u00020\u00012\u00020\u0007:\u0001\u001fB\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ[\u0010\u0018\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\f2\u001c\u0010\u0010\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0012\u0004\u0012\u00028\u00040\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00040\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0004¢\u0006\u0004\b\u0018\u0010\u0019J?\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00028\u00002\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u00040\u00132\u0006\u0010\u0012\u001a\u00020\u00112\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H&¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u001e¨\u0006 "}, d2 = {"Landroidx/credentials/playservices/controllers/CredentialProviderController;", _UrlKt.FRAGMENT_ENCODE_SET, "T1", "T2", "R2", "R1", "E1", "Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "resultData", "Lkotlin/Function2;", _UrlKt.FRAGMENT_ENCODE_SET, "conversionFn", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/credentials/CredentialManagerCallback;", Callback.METHOD_NAME, "Landroid/os/CancellationSignal;", "cancellationSignal", _UrlKt.FRAGMENT_ENCODE_SET, "maybeReportErrorFromResultReceiver", "(Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Landroid/os/CancellationSignal;)Z", PluginsConstants.REQUEST, _UrlKt.FRAGMENT_ENCODE_SET, "invokePlayServices", "(Ljava/lang/Object;Landroidx/credentials/CredentialManagerCallback;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;)V", "Landroid/content/Context;", "Companion", "credentials-play-services-auth"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class CredentialProviderController<T1, T2, R2, R1, E1> extends CredentialProviderBaseController {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Context context;

    @JvmStatic
    public static final boolean maybeReportErrorResultCodeCreate(int i, Function2<? super CancellationSignal, ? super Function0<Unit>, Unit> function2, Function1<? super CreateCredentialException, Unit> function1, CancellationSignal cancellationSignal) {
        return INSTANCE.maybeReportErrorResultCodeCreate(i, function2, function1, cancellationSignal);
    }

    public abstract void invokePlayServices(T1 request, CredentialManagerCallback<R1, E1> callback, Executor executor, CancellationSignal cancellationSignal);

    public CredentialProviderController(Context context) {
        super(context);
        this.context = context;
    }

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JP\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2 \u0010\n\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000e0\u000b2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000e0\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\fH\u0005J\u0015\u0010\u0013\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0000¢\u0006\u0002\b\u0014J\r\u0010\u0015\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0016JU\u0010\u0017\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2 \u0010\n\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0004\u0012\u00020\u000e0\u000b2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u000e0\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\fH\u0001¢\u0006\u0002\b\u0019J%\u0010\u001a\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\f2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0001¢\u0006\u0002\b\u001cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "ERROR_MESSAGE_START_ACTIVITY_FAILED", _UrlKt.FRAGMENT_ENCODE_SET, "maybeReportErrorResultCodeCreate", _UrlKt.FRAGMENT_ENCODE_SET, "resultCode", _UrlKt.FRAGMENT_ENCODE_SET, "cancelOnError", "Lkotlin/Function2;", "Landroid/os/CancellationSignal;", "Lkotlin/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "onError", "Lkotlin/Function1;", "Landroidx/credentials/exceptions/CreateCredentialException;", "cancellationSignal", "generateErrorStringUnknown", "generateErrorStringUnknown$credentials_play_services_auth", "generateErrorStringCanceled", "generateErrorStringCanceled$credentials_play_services_auth", "maybeReportErrorResultCodeGet", "Landroidx/credentials/exceptions/GetCredentialException;", "maybeReportErrorResultCodeGet$credentials_play_services_auth", "cancelOrCallbackExceptionOrResult", "onResultOrException", "cancelOrCallbackExceptionOrResult$credentials_play_services_auth", "credentials-play-services-auth"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [T, androidx.credentials.exceptions.CreateCredentialUnknownException] */
        /* JADX WARN: Type inference failed for: r4v1, types: [T, androidx.credentials.exceptions.CreateCredentialCancellationException] */
        @JvmStatic
        public final boolean maybeReportErrorResultCodeCreate(int resultCode, Function2<? super CancellationSignal, ? super Function0<Unit>, Unit> cancelOnError, final Function1<? super CreateCredentialException, Unit> onError, CancellationSignal cancellationSignal) {
            if (resultCode == -1) {
                return false;
            }
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new CreateCredentialUnknownException(generateErrorStringUnknown$credentials_play_services_auth(resultCode));
            if (resultCode == 0) {
                objectRef.element = new CreateCredentialCancellationException(generateErrorStringCanceled$credentials_play_services_auth());
            }
            cancelOnError.invoke(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.CredentialProviderController$Companion$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderController.Companion.$r8$lambda$gJXSR3NACyPlTRlP79kwjKj4Ji4(onError, objectRef);
                }
            });
            return true;
        }

        public static Unit $r8$lambda$gJXSR3NACyPlTRlP79kwjKj4Ji4(Function1 function1, Ref.ObjectRef objectRef) {
            function1.invoke(objectRef.element);
            return Unit.INSTANCE;
        }

        public final String generateErrorStringUnknown$credentials_play_services_auth(int resultCode) {
            return "activity with result code: " + resultCode + " indicating not RESULT_OK";
        }

        public final String generateErrorStringCanceled$credentials_play_services_auth() {
            return "activity is cancelled by the user.";
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [T, androidx.credentials.exceptions.GetCredentialUnknownException] */
        /* JADX WARN: Type inference failed for: r4v1, types: [T, androidx.credentials.exceptions.GetCredentialCancellationException] */
        @JvmStatic
        public final boolean maybeReportErrorResultCodeGet$credentials_play_services_auth(int resultCode, Function2<? super CancellationSignal, ? super Function0<Unit>, Unit> cancelOnError, final Function1<? super GetCredentialException, Unit> onError, CancellationSignal cancellationSignal) {
            if (resultCode == -1) {
                return false;
            }
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new GetCredentialUnknownException(generateErrorStringUnknown$credentials_play_services_auth(resultCode));
            if (resultCode == 0) {
                objectRef.element = new GetCredentialCancellationException(generateErrorStringCanceled$credentials_play_services_auth());
            }
            cancelOnError.invoke(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.CredentialProviderController$Companion$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CredentialProviderController.Companion.m1750$r8$lambda$frtSpQNAEdzTZHBCRu3VcqAPg(onError, objectRef);
                }
            });
            return true;
        }

        /* JADX INFO: renamed from: $r8$lambda$frtSp-QNAEdzTZHBCRu3VcqA-Pg, reason: not valid java name */
        public static Unit m1750$r8$lambda$frtSpQNAEdzTZHBCRu3VcqAPg(Function1 function1, Ref.ObjectRef objectRef) {
            function1.invoke(objectRef.element);
            return Unit.INSTANCE;
        }

        @JvmStatic
        public final void cancelOrCallbackExceptionOrResult$credentials_play_services_auth(CancellationSignal cancellationSignal, Function0<Unit> onResultOrException) {
            if (CredentialProviderPlayServicesImpl.Companion.cancellationReviewer$credentials_play_services_auth(cancellationSignal)) {
                return;
            }
            onResultOrException.invoke();
        }
    }

    public final boolean maybeReportErrorFromResultReceiver(Bundle resultData, Function2<? super String, ? super String, ? extends E1> conversionFn, final Executor executor, final CredentialManagerCallback<R1, E1> callback, CancellationSignal cancellationSignal) {
        if (!resultData.getBoolean("FAILURE_RESPONSE")) {
            return false;
        }
        final E1 e1Invoke = conversionFn.invoke(resultData.getString("EXCEPTION_TYPE"), resultData.getString("EXCEPTION_MESSAGE"));
        INSTANCE.cancelOrCallbackExceptionOrResult$credentials_play_services_auth(cancellationSignal, new Function0() { // from class: androidx.credentials.playservices.controllers.CredentialProviderController$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CredentialProviderController.$r8$lambda$79ayB0QihD1PtURqqgQNUCNY1mI(executor, callback, e1Invoke);
            }
        });
        return true;
    }

    public static Unit $r8$lambda$79ayB0QihD1PtURqqgQNUCNY1mI(Executor executor, final CredentialManagerCallback credentialManagerCallback, final Object obj) {
        executor.execute(new Runnable() { // from class: androidx.credentials.playservices.controllers.CredentialProviderController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                credentialManagerCallback.onError(obj);
            }
        });
        return Unit.INSTANCE;
    }

    public static /* synthetic */ void invokePlayServices$default(CredentialProviderController credentialProviderController, Object obj, CredentialManagerCallback credentialManagerCallback, Executor executor, CancellationSignal cancellationSignal, int i, Object obj2) {
        if (obj2 != null) {
            ByteString$$ExternalSyntheticBUOutline0.m920m("Super calls with default arguments not supported in this target, function: invokePlayServices");
            return;
        }
        if ((i & 8) != 0) {
            cancellationSignal = null;
        }
        credentialProviderController.invokePlayServices(obj, credentialManagerCallback, executor, cancellationSignal);
    }
}
