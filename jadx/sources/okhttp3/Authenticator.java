package okhttp3;

import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.authenticator.JavaNetAuthenticator;

/* JADX INFO: loaded from: classes.dex */
public interface Authenticator {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final Authenticator NONE = new Companion.AuthenticatorNone();
    public static final Authenticator JAVA_NET_AUTHENTICATOR = new JavaNetAuthenticator(null, 1, 0 == true ? 1 : 0);

    Request authenticate(Route route, Response response);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private static final class AuthenticatorNone implements Authenticator {
            @Override // okhttp3.Authenticator
            public Request authenticate(Route route, Response response) {
                Intrinsics.checkNotNullParameter(response, "response");
                return null;
            }
        }

        private Companion() {
        }
    }
}
