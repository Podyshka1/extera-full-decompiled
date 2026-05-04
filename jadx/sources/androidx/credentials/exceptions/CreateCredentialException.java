package androidx.credentials.exceptions;

import android.os.Bundle;
import androidx.credentials.internal.ConversionUtilsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CreateCredentialException extends Exception {
    public static final Companion Companion = new Companion(null);
    private final CharSequence errorMessage;
    private final String type;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CreateCredentialException fromBundle(Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            String string = bundle.getString("androidx.credentials.provider.extra.CREATE_CREDENTIAL_EXCEPTION_TYPE");
            if (string == null) {
                throw new IllegalArgumentException("Bundle was missing exception type.");
            }
            return ConversionUtilsKt.toJetpackCreateException(string, bundle.getCharSequence("androidx.credentials.provider.extra.CREATE_CREDENTIAL_EXCEPTION_MESSAGE"));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateCredentialException(String type, CharSequence charSequence) {
        super(charSequence != null ? charSequence.toString() : null);
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.errorMessage = charSequence;
    }
}
