package com.google.android.gms.auth.blockstore.restorecredential;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0013\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000f"}, d2 = {"Lcom/google/android/gms/auth/blockstore/restorecredential/GetRestoreCredentialRequest;", "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;", "requestBundle", "Landroid/os/Bundle;", "<init>", "(Landroid/os/Bundle;)V", "getRequestBundle", "()Landroid/os/Bundle;", "writeToParcel", _UrlKt.FRAGMENT_ENCODE_SET, "dest", "Landroid/os/Parcel;", "flags", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "java.com.google.android.gmscore.integ.client.auth_blockstore_client_auth_blockstore"}, m754k = 1, mv = {2, 0, 0}, xi = 48)
public final class GetRestoreCredentialRequest extends AbstractSafeParcelable {
    private final Bundle requestBundle;

    @JvmField
    public static final Parcelable.Creator<GetRestoreCredentialRequest> CREATOR = new GetRestoreCredentialRequestCreator();

    public GetRestoreCredentialRequest(Bundle bundle) {
        this.requestBundle = bundle;
    }

    public final Bundle getRequestBundle() {
        return this.requestBundle;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        GetRestoreCredentialRequestCreator.writeToParcel(this, dest, flags);
    }
}
