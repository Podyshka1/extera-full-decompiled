package com.google.android.gms.auth.blockstore.restorecredential;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class GetRestoreCredentialRequest extends AbstractSafeParcelable {
    private final Bundle requestBundle;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<GetRestoreCredentialRequest> CREATOR = new GetRestoreCredentialRequestCreator();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public GetRestoreCredentialRequest(Bundle requestBundle) {
        Intrinsics.checkNotNullParameter(requestBundle, "requestBundle");
        this.requestBundle = requestBundle;
    }

    public final Bundle getRequestBundle() {
        return this.requestBundle;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        GetRestoreCredentialRequestCreator.writeToParcel(this, dest, i);
    }
}
