package com.google.android.gms.auth.blockstore.restorecredential;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class GetRestoreCredentialResponse extends AbstractSafeParcelable {
    private final Bundle responseBundle;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<GetRestoreCredentialResponse> CREATOR = new GetRestoreCredentialResponseCreator();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public GetRestoreCredentialResponse(Bundle responseBundle) {
        Intrinsics.checkNotNullParameter(responseBundle, "responseBundle");
        this.responseBundle = responseBundle;
    }

    public final Bundle getResponseBundle() {
        return this.responseBundle;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        GetRestoreCredentialResponseCreator.writeToParcel(this, dest, i);
    }
}
