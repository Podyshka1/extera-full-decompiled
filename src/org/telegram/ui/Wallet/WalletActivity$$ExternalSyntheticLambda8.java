package org.telegram.ui.Wallet;

/* JADX INFO: loaded from: classes8.dex */
public final /* synthetic */ class WalletActivity$$ExternalSyntheticLambda8 implements Runnable {
    public final /* synthetic */ WalletActivity f$0;

    public /* synthetic */ WalletActivity$$ExternalSyntheticLambda8(WalletActivity walletActivity) {
        this.f$0 = walletActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.updateBalancePosition();
    }
}
