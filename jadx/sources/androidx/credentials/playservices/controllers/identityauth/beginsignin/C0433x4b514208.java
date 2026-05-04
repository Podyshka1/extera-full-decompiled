package androidx.credentials.playservices.controllers.identityauth.beginsignin;

import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: renamed from: androidx.credentials.playservices.controllers.identityauth.beginsignin.CredentialProviderBeginSignInController$resultReceiver$1$onReceiveResult$1 */
/* JADX INFO: loaded from: classes4.dex */
/* synthetic */ class C0433x4b514208 extends FunctionReferenceImpl implements Function2 {
    C0433x4b514208(Object obj) {
        super(2, obj, CredentialProviderBaseController.Companion.class, "getCredentialExceptionTypeToException", "getCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final GetCredentialException invoke(String str, String str2) {
        return ((CredentialProviderBaseController.Companion) this.receiver).m171xd975db95(str, str2);
    }
}
