package org.telegram.ui.QrShare;

import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class QrScanOverlay$$ExternalSyntheticLambda2 implements Utilities.CallbackReturn {
    @Override // org.telegram.messenger.Utilities.CallbackReturn
    public final Object run(Object obj) {
        return Boolean.valueOf(QrScanOverlay.isTelegramLink((String) obj));
    }
}
