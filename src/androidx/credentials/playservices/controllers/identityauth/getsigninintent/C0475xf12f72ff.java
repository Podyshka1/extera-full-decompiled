package androidx.credentials.playservices.controllers.identityauth.getsigninintent;

import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: renamed from: androidx.credentials.playservices.controllers.identityauth.getsigninintent.CredentialProviderGetSignInIntentController$resultReceiver$1$onReceiveResult$1 */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
public final /* synthetic */ class C0475xf12f72ff extends FunctionReferenceImpl implements Function2<String, String, GetCredentialException> {
    public C0475xf12f72ff(Object obj) {
        super(2, obj, CredentialProviderBaseController.Companion.class, "getCredentialExceptionTypeToException", "getCredentialExceptionTypeToException$credentials_play_services_auth(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/GetCredentialException;", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final GetCredentialException invoke(String str, String str2) {
        return ((CredentialProviderBaseController.Companion) this.receiver).m141x3c5129cd(str, str2);
    }
}
