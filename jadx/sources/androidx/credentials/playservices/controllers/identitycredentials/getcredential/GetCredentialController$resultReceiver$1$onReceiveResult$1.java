package androidx.credentials.playservices.controllers.identitycredentials.getcredential;

import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
/* synthetic */ class GetCredentialController$resultReceiver$1$onReceiveResult$1 extends FunctionReferenceImpl implements Function2 {
    GetCredentialController$resultReceiver$1$onReceiveResult$1(Object obj) {
        super(2, obj, CredentialProviderBaseController.Companion.class, "getCredentialExceptionTypeToException", "getCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final GetCredentialException invoke(String str, String str2) {
        return ((CredentialProviderBaseController.Companion) this.receiver).m171xd975db95(str, str2);
    }
}
