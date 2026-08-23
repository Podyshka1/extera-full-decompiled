package com.google.android.gms.identitycredentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0013\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/google/android/gms/identitycredentials/ClearExportResponse;", "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;", "isDeleted", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Z)V", "()Z", "writeToParcel", _UrlKt.FRAGMENT_ENCODE_SET, "dest", "Landroid/os/Parcel;", "flags", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class ClearExportResponse extends AbstractSafeParcelable {
    private final boolean isDeleted;

    @JvmField
    public static final Parcelable.Creator<ClearExportResponse> CREATOR = new ClearExportResponseCreator();

    public ClearExportResponse(boolean z) {
        this.isDeleted = z;
    }

    /* JADX INFO: renamed from: isDeleted, reason: from getter */
    public final boolean getIsDeleted() {
        return this.isDeleted;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        ClearExportResponseCreator.writeToParcel(this, dest, flags);
    }
}
