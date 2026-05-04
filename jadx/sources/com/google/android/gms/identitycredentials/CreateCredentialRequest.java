package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class CreateCredentialRequest extends AbstractSafeParcelable {
    private final Bundle candidateQueryData;
    private final Bundle credentialData;
    private final String origin;
    private final String requestJson;
    private final ResultReceiver resultReceiver;
    private final String type;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<CreateCredentialRequest> CREATOR = new CreateCredentialRequestCreator();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public CreateCredentialRequest(String type, Bundle credentialData, Bundle candidateQueryData, String str, String str2, ResultReceiver resultReceiver) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(credentialData, "credentialData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        this.type = type;
        this.credentialData = credentialData;
        this.candidateQueryData = candidateQueryData;
        this.origin = str;
        this.requestJson = str2;
        this.resultReceiver = resultReceiver;
    }

    public final Bundle getCandidateQueryData() {
        return this.candidateQueryData;
    }

    public final Bundle getCredentialData() {
        return this.credentialData;
    }

    public final String getOrigin() {
        return this.origin;
    }

    public final String getRequestJson() {
        return this.requestJson;
    }

    public final ResultReceiver getResultReceiver() {
        return this.resultReceiver;
    }

    public final String getType() {
        return this.type;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        CreateCredentialRequestCreator.writeToParcel(this, dest, i);
    }
}
