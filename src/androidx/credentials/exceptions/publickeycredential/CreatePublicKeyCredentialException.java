package androidx.credentials.exceptions.publickeycredential;

import androidx.credentials.exceptions.CreateCredentialCustomException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.internal.FrameworkClassParsingException;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.scilab.forge.jlatexmath.TeXSymbolParser;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0002\b\u0006\b\u0016\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u001d\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0017X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialException;", "Landroidx/credentials/exceptions/CreateCredentialException;", TeXSymbolParser.TYPE_ATTR, _UrlKt.FRAGMENT_ENCODE_SET, "errorMessage", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;Ljava/lang/CharSequence;)V", "getType", "()Ljava/lang/String;", "Companion", "credentials"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCreatePublicKeyCredentialException.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreatePublicKeyCredentialException.kt\nandroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialException\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,67:1\n1#2:68\n*E\n"})
public abstract class CreatePublicKeyCredentialException extends CreateCredentialException {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String type;

    @JvmOverloads
    public CreatePublicKeyCredentialException(String str, CharSequence charSequence) {
        super(str, charSequence);
        this.type = str;
        if (getType().length() > 0) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m178m("type must not be empty");
        throw null;
    }

    public String getType() {
        return this.type;
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007¨\u0006\t"}, d2 = {"Landroidx/credentials/exceptions/publickeycredential/CreatePublicKeyCredentialException$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "createFrom", "Landroidx/credentials/exceptions/CreateCredentialException;", TeXSymbolParser.TYPE_ATTR, _UrlKt.FRAGMENT_ENCODE_SET, "msg", "credentials"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final CreateCredentialException createFrom(String type, String msg) {
            try {
                if (StringsKt.contains$default((CharSequence) type, (CharSequence) "androidx.credentials.TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_DOM_EXCEPTION", false, 2, (Object) null)) {
                    return CreatePublicKeyCredentialDomException.INSTANCE.createFrom(type, msg);
                }
                throw new FrameworkClassParsingException();
            } catch (FrameworkClassParsingException unused) {
                return new CreateCredentialCustomException(type, msg);
            }
        }
    }
}
