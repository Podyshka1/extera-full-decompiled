package androidx.credentials.provider;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.Credential;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.internal.ConversionUtilsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PendingIntentHandler {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CreateCredentialResponse retrieveCreateCredentialResponse(String type, Intent intent) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(intent, "intent");
            if (Build.VERSION.SDK_INT >= 34) {
                return Api34Impl.Companion.extractCreateCredentialResponse(type, intent);
            }
            return Api23Impl.Companion.extractCreateCredentialResponse(intent);
        }

        public final GetCredentialResponse retrieveGetCredentialResponse(Intent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            if (Build.VERSION.SDK_INT >= 34) {
                return Api34Impl.Companion.extractGetCredentialResponse(intent);
            }
            return Api23Impl.Companion.extractGetCredentialResponse(intent);
        }

        public final GetCredentialException retrieveGetCredentialException(Intent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            if (Build.VERSION.SDK_INT >= 34) {
                return Api34Impl.Companion.extractGetCredentialException(intent);
            }
            return Api23Impl.Companion.extractGetCredentialException(intent);
        }

        public final CreateCredentialException retrieveCreateCredentialException(Intent intent) {
            Intrinsics.checkNotNullParameter(intent, "intent");
            if (Build.VERSION.SDK_INT >= 34) {
                return Api34Impl.Companion.extractCreateCredentialException(intent);
            }
            return Api23Impl.Companion.extractCreateCredentialException(intent);
        }
    }

    public static final class Api23Impl {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final CreateCredentialResponse extractCreateCredentialResponse(Intent intent) {
                Intrinsics.checkNotNullParameter(intent, "intent");
                CreateCredentialResponse.Companion companion = CreateCredentialResponse.Companion;
                Bundle bundleExtra = intent.getBundleExtra("android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE");
                if (bundleExtra == null) {
                    return null;
                }
                return companion.fromBundle(bundleExtra);
            }

            public final GetCredentialResponse extractGetCredentialResponse(Intent intent) {
                Intrinsics.checkNotNullParameter(intent, "intent");
                GetCredentialResponse.Companion companion = GetCredentialResponse.Companion;
                Bundle bundleExtra = intent.getBundleExtra("android.service.credentials.extra.GET_CREDENTIAL_RESPONSE");
                if (bundleExtra == null) {
                    return null;
                }
                return companion.fromBundle(bundleExtra);
            }

            public final GetCredentialException extractGetCredentialException(Intent intent) {
                Intrinsics.checkNotNullParameter(intent, "intent");
                GetCredentialException.Companion companion = GetCredentialException.Companion;
                Bundle bundleExtra = intent.getBundleExtra("android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION");
                if (bundleExtra == null) {
                    return null;
                }
                return companion.fromBundle(bundleExtra);
            }

            public final CreateCredentialException extractCreateCredentialException(Intent intent) {
                Intrinsics.checkNotNullParameter(intent, "intent");
                CreateCredentialException.Companion companion = CreateCredentialException.Companion;
                Bundle bundleExtra = intent.getBundleExtra("android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION");
                if (bundleExtra == null) {
                    return null;
                }
                return companion.fromBundle(bundleExtra);
            }
        }
    }

    public static final class Api34Impl {
        public static final Companion Companion = new Companion(null);

        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final CreateCredentialResponse extractCreateCredentialResponse(String type, Intent intent) {
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(intent, "intent");
                android.credentials.CreateCredentialResponse createCredentialResponse = (android.credentials.CreateCredentialResponse) intent.getParcelableExtra("android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE", android.credentials.CreateCredentialResponse.class);
                if (createCredentialResponse == null) {
                    return null;
                }
                CreateCredentialResponse.Companion companion = CreateCredentialResponse.Companion;
                Bundle data = createCredentialResponse.getData();
                Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
                return companion.createFrom(type, data);
            }

            public final GetCredentialResponse extractGetCredentialResponse(Intent intent) {
                Intrinsics.checkNotNullParameter(intent, "intent");
                android.credentials.GetCredentialResponse getCredentialResponse = (android.credentials.GetCredentialResponse) intent.getParcelableExtra("android.service.credentials.extra.GET_CREDENTIAL_RESPONSE", android.credentials.GetCredentialResponse.class);
                if (getCredentialResponse == null) {
                    return null;
                }
                Credential.Companion companion = Credential.Companion;
                android.credentials.Credential credential = getCredentialResponse.getCredential();
                Intrinsics.checkNotNullExpressionValue(credential, "getCredential(...)");
                return new GetCredentialResponse(companion.createFrom(credential));
            }

            public final CreateCredentialException extractCreateCredentialException(Intent intent) {
                Intrinsics.checkNotNullParameter(intent, "intent");
                android.credentials.CreateCredentialException createCredentialException = (android.credentials.CreateCredentialException) intent.getSerializableExtra("android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION", android.credentials.CreateCredentialException.class);
                if (createCredentialException == null) {
                    return null;
                }
                String type = createCredentialException.getType();
                Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
                return ConversionUtilsKt.toJetpackCreateException(type, createCredentialException.getMessage());
            }

            public final GetCredentialException extractGetCredentialException(Intent intent) {
                Intrinsics.checkNotNullParameter(intent, "intent");
                android.credentials.GetCredentialException getCredentialException = (android.credentials.GetCredentialException) intent.getSerializableExtra("android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION", android.credentials.GetCredentialException.class);
                if (getCredentialException == null) {
                    return null;
                }
                String type = getCredentialException.getType();
                Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
                return ConversionUtilsKt.toJetpackGetException(type, getCredentialException.getMessage());
            }
        }
    }
}
