package androidx.credentials.playservices.controllers.identityauth.createpublickeycredential;

import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: renamed from: androidx.credentials.playservices.controllers.identityauth.createpublickeycredential.CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1$onReceiveResult$1 */
/* JADX INFO: loaded from: classes4.dex */
/* synthetic */ class C0458xdfe2be02 extends FunctionReferenceImpl implements Function2 {
    C0458xdfe2be02(Object obj) {
        super(2, obj, CredentialProviderBaseController.Companion.class, "createCredentialExceptionTypeToException", "createCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/CreateCredentialException;", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final CreateCredentialException invoke(String str, String str2) {
        return ((CredentialProviderBaseController.Companion) this.receiver).m169x5e74af(str, str2);
    }
}
