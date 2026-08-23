package com.google.firebase.appindexing.builders;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.appindexing.Action;

/* JADX INFO: loaded from: classes5.dex */
public final class AssistActionBuilder extends Action.Builder {
    private String zza;

    public AssistActionBuilder() {
        super("AssistAction");
    }

    @Override // com.google.firebase.appindexing.Action.Builder
    public Action build() {
        Preconditions.checkNotNull(this.zza, "setActionToken is required before calling build().");
        Preconditions.checkNotNull(zzc(), "setActionStatus is required before calling build().");
        put("actionToken", this.zza);
        if (zza() == null) {
            setName("AssistAction");
        }
        if (zzb() == null) {
            String strValueOf = String.valueOf(this.zza);
            setUrl(strValueOf.length() != 0 ? "https://developers.google.com/actions?invocation=".concat(strValueOf) : new String("https://developers.google.com/actions?invocation="));
        }
        return super.build();
    }

    public AssistActionBuilder setActionToken(String str) {
        Preconditions.checkNotNull(str);
        this.zza = str;
        return this;
    }
}
