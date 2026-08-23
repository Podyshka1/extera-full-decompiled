package androidx.credentials.playservices.controllers;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.ResultReceiver;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialInterruptedException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.GetCredentialCancellationException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.exceptions.GetCredentialInterruptedException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.exceptions.NoCredentialException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0010\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u0006\u001a\u0004\u0018\u00010\u0007\"\n\b\u0000\u0010\b*\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u0002H\b¢\u0006\u0002\u0010\nJ\u001e\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;", _UrlKt.FRAGMENT_ENCODE_SET, "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "toIpcFriendlyResultReceiver", "Landroid/os/ResultReceiver;", "T", "resultReceiver", "(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;", "generateHiddenActivityIntent", _UrlKt.FRAGMENT_ENCODE_SET, "hiddenIntent", "Landroid/content/Intent;", "typeTag", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "credentials-play-services-auth"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class CredentialProviderBaseController {
    private final Context context;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Set<Integer> retryables = SetsKt.setOf((Object[]) new Integer[]{7, 20});
    private static final int CONTROLLER_REQUEST_CODE = 1;

    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\b!\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\n\u001a\u00020\u00072\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0004\b\b\u0010\tJ#\u0010\u0011\u001a\u00020\u000e*\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u000f\u0010\u0010J-\u0010\u0019\u001a\u00020\u000e*\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0000¢\u0006\u0004\b\u0017\u0010\u0018J#\u0010\u001d\u001a\u00020\u001a2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0004\b\u001b\u0010\u001cR\u001d\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00120\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R \u0010#\u001a\u00020\u00128\u0000X\u0081D¢\u0006\u0012\n\u0004\b#\u0010$\u0012\u0004\b'\u0010\u0003\u001a\u0004\b%\u0010&R\u0014\u0010(\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010*\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010)R\u0014\u0010+\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010)R\u0014\u0010,\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b,\u0010)R\u0014\u0010-\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b-\u0010)R\u0014\u0010.\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b.\u0010)R\u0014\u0010/\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b/\u0010)R\u0014\u00100\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b0\u0010)R\u0014\u00101\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b1\u0010)R\u0014\u00102\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b2\u0010)R\u0014\u00103\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b3\u0010)R\u0014\u00104\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b4\u0010)R\u0014\u00105\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b5\u0010)R\u0014\u00106\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b6\u0010)R\u0014\u00107\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b7\u0010)R\u0014\u00108\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b8\u0010)R\u0014\u00109\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b9\u0010)R\u0014\u0010:\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b:\u0010)R\u0014\u0010;\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b;\u0010)R\u0014\u0010<\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b<\u0010)R\u0014\u0010=\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b=\u0010)R\u0014\u0010>\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b>\u0010)¨\u0006?"}, d2 = {"Landroidx/credentials/playservices/controllers/CredentialProviderBaseController$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "typeName", "msg", "Landroidx/credentials/exceptions/GetCredentialException;", "getCredentialExceptionTypeToException$credentials_play_services_auth", "(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;", "getCredentialExceptionTypeToException", "Landroid/os/ResultReceiver;", "errName", "errMsg", _UrlKt.FRAGMENT_ENCODE_SET, "reportError$credentials_play_services_auth", "(Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;)V", "reportError", _UrlKt.FRAGMENT_ENCODE_SET, "requestCode", "resultCode", "Landroid/content/Intent;", "data", "reportResult$credentials_play_services_auth", "(Landroid/os/ResultReceiver;IILandroid/content/Intent;)V", "reportResult", "Landroidx/credentials/exceptions/CreateCredentialException;", "createCredentialExceptionTypeToException$credentials_play_services_auth", "(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/CreateCredentialException;", "createCredentialExceptionTypeToException", _UrlKt.FRAGMENT_ENCODE_SET, "retryables", "Ljava/util/Set;", "getRetryables", "()Ljava/util/Set;", "CONTROLLER_REQUEST_CODE", "I", "getCONTROLLER_REQUEST_CODE$credentials_play_services_auth", "()I", "getCONTROLLER_REQUEST_CODE$credentials_play_services_auth$annotations", "GET_CANCELED", "Ljava/lang/String;", "GET_INTERRUPTED", "GET_NO_CREDENTIALS", "GET_UNKNOWN", "CREATE_CANCELED", "CREATE_INTERRUPTED", "CREATE_UNKNOWN", "TYPE_TAG", "BEGIN_SIGN_IN_TAG", "SIGN_IN_INTENT_TAG", "CREATE_PASSWORD_TAG", "CREATE_PUBLIC_KEY_CREDENTIAL_TAG", "REQUEST_TAG", "RESULT_DATA_TAG", "EXTRA_FLOW_PENDING_INTENT", "EXTRA_DIGITAL_CREDENTIAL_INTENT", "EXTRA_ERROR_NAME", "FAILURE_RESPONSE_TAG", "EXCEPTION_TYPE_TAG", "EXCEPTION_MESSAGE_TAG", "ACTIVITY_REQUEST_CODE_TAG", "RESULT_RECEIVER_TAG", "credentials-play-services-auth"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Set<Integer> getRetryables() {
            return CredentialProviderBaseController.retryables;
        }

        public final int getCONTROLLER_REQUEST_CODE$credentials_play_services_auth() {
            return CredentialProviderBaseController.CONTROLLER_REQUEST_CODE;
        }

        /* JADX INFO: renamed from: getCredentialExceptionTypeToException$credentials_play_services_auth */
        public final GetCredentialException m141x3c5129cd(String typeName, String msg) {
            if (typeName != null) {
                int iHashCode = typeName.hashCode();
                if (iHashCode != -1567968963) {
                    if (iHashCode != -154594663) {
                        if (iHashCode == 1996705159 && typeName.equals("GET_NO_CREDENTIALS")) {
                            return new NoCredentialException(msg);
                        }
                    } else if (typeName.equals("GET_INTERRUPTED")) {
                        return new GetCredentialInterruptedException(msg);
                    }
                } else if (typeName.equals("GET_CANCELED_TAG")) {
                    return new GetCredentialCancellationException(msg);
                }
            }
            return new GetCredentialUnknownException(msg);
        }

        public final void reportError$credentials_play_services_auth(ResultReceiver resultReceiver, String str, String str2) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("FAILURE_RESPONSE", true);
            bundle.putString("EXCEPTION_TYPE", str);
            bundle.putString("EXCEPTION_MESSAGE", str2);
            resultReceiver.send(Integer.MAX_VALUE, bundle);
        }

        public final void reportResult$credentials_play_services_auth(ResultReceiver resultReceiver, int i, int i2, Intent intent) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("FAILURE_RESPONSE", false);
            bundle.putInt("ACTIVITY_REQUEST_CODE", i);
            bundle.putParcelable("RESULT_DATA", intent);
            resultReceiver.send(i2, bundle);
        }

        /* JADX INFO: renamed from: createCredentialExceptionTypeToException$credentials_play_services_auth */
        public final CreateCredentialException m140x9c497ce7(String typeName, String msg) {
            if (Intrinsics.areEqual(typeName, "CREATE_CANCELED")) {
                return new CreateCredentialCancellationException(msg);
            }
            if (Intrinsics.areEqual(typeName, "CREATE_INTERRUPTED")) {
                return new CreateCredentialInterruptedException(msg);
            }
            return new CreateCredentialUnknownException(msg);
        }
    }

    public CredentialProviderBaseController(Context context) {
        this.context = context;
    }

    public final <T extends ResultReceiver> ResultReceiver toIpcFriendlyResultReceiver(T resultReceiver) {
        Parcel parcelObtain = Parcel.obtain();
        resultReceiver.writeToParcel(parcelObtain, 0);
        parcelObtain.setDataPosition(0);
        ResultReceiver resultReceiver2 = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return resultReceiver2;
    }

    public final void generateHiddenActivityIntent(ResultReceiver resultReceiver, Intent hiddenIntent, String typeTag) {
        hiddenIntent.putExtra("TYPE", typeTag);
        hiddenIntent.putExtra("ACTIVITY_REQUEST_CODE", CONTROLLER_REQUEST_CODE);
        hiddenIntent.putExtra("RESULT_RECEIVER", toIpcFriendlyResultReceiver(resultReceiver));
        hiddenIntent.setFlags(65536);
    }
}
