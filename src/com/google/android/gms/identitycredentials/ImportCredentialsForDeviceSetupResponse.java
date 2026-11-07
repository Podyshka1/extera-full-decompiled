package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0013\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/google/android/gms/identitycredentials/ImportCredentialsForDeviceSetupResponse;", "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;", "Landroid/os/Bundle;", "responseBundle", "<init>", "(Landroid/os/Bundle;)V", "Landroid/os/Parcel;", "dest", _UrlKt.FRAGMENT_ENCODE_SET, "flags", _UrlKt.FRAGMENT_ENCODE_SET, "writeToParcel", "(Landroid/os/Parcel;I)V", "Landroid/os/Bundle;", "getResponseBundle", "()Landroid/os/Bundle;", "Companion", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final class ImportCredentialsForDeviceSetupResponse extends AbstractSafeParcelable {
    private final Bundle responseBundle;

    @JvmField
    public static final Parcelable.Creator<ImportCredentialsForDeviceSetupResponse> CREATOR = new ImportCredentialsForDeviceSetupResponseCreator();

    public ImportCredentialsForDeviceSetupResponse(Bundle bundle) {
        this.responseBundle = bundle;
    }

    public final Bundle getResponseBundle() {
        return this.responseBundle;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        ImportCredentialsForDeviceSetupResponseCreator.writeToParcel(this, dest, flags);
    }
}
