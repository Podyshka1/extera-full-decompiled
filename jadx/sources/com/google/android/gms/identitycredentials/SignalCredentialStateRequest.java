package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class SignalCredentialStateRequest extends AbstractSafeParcelable {
    private final String origin;
    private final Bundle requestData;
    private final String type;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<SignalCredentialStateRequest> CREATOR = new SignalCredentialStateRequestCreator();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public SignalCredentialStateRequest(String type, String str, Bundle requestData) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(requestData, "requestData");
        this.type = type;
        this.origin = str;
        this.requestData = requestData;
    }

    public final String getOrigin() {
        return this.origin;
    }

    public final Bundle getRequestData() {
        return this.requestData;
    }

    public final String getType() {
        return this.type;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        SignalCredentialStateRequestCreator.writeToParcel(this, dest, i);
    }
}
