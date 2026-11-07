package com.google.android.gms.identitycredentials;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B!\b\u0007\u0012\n\b\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/google/android/gms/identitycredentials/CreateCredentialHandle;", "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;", BaseGmsClient.KEY_PENDING_INTENT, "Landroid/app/PendingIntent;", "createCredentialResponse", "Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;", "<init>", "(Landroid/app/PendingIntent;Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;)V", "getPendingIntent", "()Landroid/app/PendingIntent;", "getCreateCredentialResponse", "()Lcom/google/android/gms/identitycredentials/CreateCredentialResponse;", "writeToParcel", _UrlKt.FRAGMENT_ENCODE_SET, "dest", "Landroid/os/Parcel;", "flags", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class CreateCredentialHandle extends AbstractSafeParcelable {
    private final CreateCredentialResponse createCredentialResponse;
    private final PendingIntent pendingIntent;

    @JvmField
    public static final Parcelable.Creator<CreateCredentialHandle> CREATOR = new CreateCredentialHandleCreator();

    public CreateCredentialHandle(PendingIntent pendingIntent, CreateCredentialResponse createCredentialResponse) {
        this.pendingIntent = pendingIntent;
        this.createCredentialResponse = createCredentialResponse;
        if (pendingIntent == null && createCredentialResponse == null) {
            f$$ExternalSyntheticBUOutline1.m212m("pendingIntent or createCredentialResponse must be specified.");
            throw null;
        }
    }

    public final CreateCredentialResponse getCreateCredentialResponse() {
        return this.createCredentialResponse;
    }

    public final PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        CreateCredentialHandleCreator.writeToParcel(this, dest, flags);
    }
}
