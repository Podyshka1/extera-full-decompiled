package com.google.android.gms.cast.framework.media.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzf extends View.AccessibilityDelegate {
    final /* synthetic */ CastSeekBar zza;

    public /* synthetic */ zzf(CastSeekBar castSeekBar, byte[] bArr) {
        Objects.requireNonNull(castSeekBar);
        this.zza = castSeekBar;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(SeekBar.class.getName());
        CastSeekBar castSeekBar = this.zza;
        accessibilityEvent.setItemCount(castSeekBar.zza.zzb);
        accessibilityEvent.setCurrentItemIndex(castSeekBar.getProgress());
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(SeekBar.class.getName());
        if (view.isEnabled()) {
            accessibilityNodeInfo.addAction(4096);
            accessibilityNodeInfo.addAction(8192);
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (!view.isEnabled()) {
            return false;
        }
        if (super.performAccessibilityAction(view, i, bundle)) {
            return true;
        }
        if (i == 4096 || i == 8192) {
            CastSeekBar castSeekBar = this.zza;
            castSeekBar.zzd();
            int i2 = castSeekBar.zza.zzb / 20;
            if (i == 8192) {
                i2 = -i2;
            }
            castSeekBar.zzc(castSeekBar.getProgress() + i2);
            castSeekBar.zze();
        }
        return false;
    }
}
