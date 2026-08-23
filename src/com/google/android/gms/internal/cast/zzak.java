package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.devicesuggestions.DeviceSuggestionResult;
import com.google.android.gms.cast.framework.devicesuggestions.DeviceSuggestionsCallback;
import com.google.android.gms.common.api.internal.ListenerHolder;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzak implements ListenerHolder.Notifier {
    final /* synthetic */ DeviceSuggestionResult zza;

    public zzak(zzam zzamVar, DeviceSuggestionResult deviceSuggestionResult) {
        this.zza = deviceSuggestionResult;
        Objects.requireNonNull(zzamVar);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final /* bridge */ /* synthetic */ void notifyListener(Object obj) {
        ((DeviceSuggestionsCallback) obj).onDeviceSuggestionReceived(this.zza);
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void onNotifyListenerFailed() {
        zzav.zzd.m289w("Failed to notify listener for onDeviceSuggestionReceived", new Object[0]);
    }
}
