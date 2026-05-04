package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class CredentialOption extends AbstractSafeParcelable {
    private final Bundle candidateQueryData;
    private final Bundle credentialRetrievalData;
    private final String protocolType;
    private final String requestMatcher;
    private final String requestType;
    private final String type;
    public static final Companion Companion = new Companion(null);
    public static final Parcelable.Creator<CredentialOption> CREATOR = new CredentialOptionCreator();

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public CredentialOption(String type, Bundle credentialRetrievalData, Bundle candidateQueryData, String requestMatcher, String requestType, String protocolType) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(credentialRetrievalData, "credentialRetrievalData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(requestMatcher, "requestMatcher");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(protocolType, "protocolType");
        this.type = type;
        this.credentialRetrievalData = credentialRetrievalData;
        this.candidateQueryData = candidateQueryData;
        this.requestMatcher = requestMatcher;
        this.requestType = requestType;
        this.protocolType = protocolType;
        boolean z = (StringsKt.isBlank(requestType) || StringsKt.isBlank(protocolType)) ? false : true;
        boolean z2 = !StringsKt.isBlank(type) && requestType.length() == 0 && protocolType.length() == 0;
        if (z || z2) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(type).length() + 31 + String.valueOf(requestType).length() + 19 + String.valueOf(protocolType).length() + 69);
        sb.append("Either type: ");
        sb.append(type);
        sb.append(", or requestType: ");
        sb.append(requestType);
        sb.append(" and protocolType: ");
        sb.append(protocolType);
        sb.append(" must be specified, but at least one contains an invalid blank value.");
        throw new IllegalArgumentException(sb.toString());
    }

    public final Bundle getCandidateQueryData() {
        return this.candidateQueryData;
    }

    public final Bundle getCredentialRetrievalData() {
        return this.credentialRetrievalData;
    }

    public final String getProtocolType() {
        return this.protocolType;
    }

    public final String getRequestMatcher() {
        return this.requestMatcher;
    }

    public final String getRequestType() {
        return this.requestType;
    }

    public final String getType() {
        return this.type;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int i) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        CredentialOptionCreator.writeToParcel(this, dest, i);
    }
}
