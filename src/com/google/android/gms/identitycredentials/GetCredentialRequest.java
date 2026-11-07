package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u0000 !2\u00020\u00012\u00020\u0002:\u0001!B9\b\u0007\u0012\u000e\b\u0001\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0001\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rB\u0011\b\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\u000fJ\b\u0010\u001a\u001a\u00020\u0007H\u0007J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016R\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\""}, d2 = {"Lcom/google/android/gms/identitycredentials/GetCredentialRequest;", "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;", "Lcom/google/android/gms/common/internal/ReflectedParcelable;", "credentialOptions", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/google/android/gms/identitycredentials/CredentialOption;", "data", "Landroid/os/Bundle;", "origin", _UrlKt.FRAGMENT_ENCODE_SET, "resultReceiver", "Landroid/os/ResultReceiver;", "<init>", "(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/ResultReceiver;)V", "bundle", "(Landroid/os/Bundle;)V", "getCredentialOptions", "()Ljava/util/List;", "getData", "()Landroid/os/Bundle;", "getOrigin", "()Ljava/lang/String;", "getResultReceiver$annotations", "()V", "getResultReceiver", "()Landroid/os/ResultReceiver;", "toBundle", "writeToParcel", _UrlKt.FRAGMENT_ENCODE_SET, "dest", "Landroid/os/Parcel;", "flags", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final class GetCredentialRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    private final List<CredentialOption> credentialOptions;
    private final Bundle data;
    private final String origin;
    private final ResultReceiver resultReceiver;

    @JvmField
    public static final Parcelable.Creator<GetCredentialRequest> CREATOR = new GetCredentialRequestCreator();

    public GetCredentialRequest(List<CredentialOption> list, Bundle bundle, String str, ResultReceiver resultReceiver) {
        this.credentialOptions = list;
        this.data = bundle;
        this.origin = str;
        this.resultReceiver = resultReceiver;
    }

    public final List<CredentialOption> getCredentialOptions() {
        return this.credentialOptions;
    }

    public final Bundle getData() {
        return this.data;
    }

    public final String getOrigin() {
        return this.origin;
    }

    public final ResultReceiver getResultReceiver() {
        return this.resultReceiver;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        GetCredentialRequestCreator.writeToParcel(this, dest, flags);
    }
}
