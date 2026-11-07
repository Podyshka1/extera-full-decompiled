package org.telegram.ui.Wallet;

import android.text.TextUtils;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_wallet;

/* JADX INFO: loaded from: classes8.dex */
public class GramWalletPolling {
    private static final long[] DELAYS_MS = {500, 1000, 3000, 5000, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS};
    private int attempt;
    public final int currentAccount;
    private int generation;
    public final String messageHash;
    private boolean running;
    private final IGramWalletPollingSubscriber subscriber;
    private int requestId = -1;
    private final Runnable timeout = new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletPolling$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$0();
        }
    };
    private final Runnable poll = new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletPolling$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.requestTransactions();
        }
    };

    public interface IGramWalletPollingSubscriber {
        boolean onTransactions(TL_wallet.walletTransactions wallettransactions);
    }

    public GramWalletPolling(int i, String str, IGramWalletPollingSubscriber iGramWalletPollingSubscriber) {
        this.currentAccount = i;
        this.messageHash = str;
        this.subscriber = iGramWalletPollingSubscriber;
    }

    public void start() {
        if (this.running || TextUtils.isEmpty(this.messageHash)) {
            return;
        }
        this.running = true;
        this.attempt = 0;
        schedule();
    }

    public void stop() {
        this.running = false;
        this.generation++;
        AndroidUtilities.cancelRunOnUIThread(this.poll);
        AndroidUtilities.cancelRunOnUIThread(this.timeout);
        cancelRequest();
    }

    private ConnectionsManager connections() {
        return ConnectionsManager.getInstance(this.currentAccount);
    }

    private void cancelRequest() {
        if (this.requestId >= 0) {
            connections().cancelRequest(this.requestId, true);
            this.requestId = -1;
        }
    }

    private void schedule() {
        if (this.running) {
            long[] jArr = DELAYS_MS;
            int i = this.attempt;
            long j = jArr[i];
            if (i < jArr.length - 1) {
                this.attempt = i + 1;
            }
            AndroidUtilities.runOnUIThread(this.poll, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (this.running) {
            this.generation++;
            cancelRequest();
            schedule();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestTransactions() {
        if (this.running) {
            final int i = this.generation + 1;
            this.generation = i;
            TL_wallet.getTransactionsByMsgHash gettransactionsbymsghash = new TL_wallet.getTransactionsByMsgHash();
            gettransactionsbymsghash.msg_hash.add(this.messageHash);
            AndroidUtilities.runOnUIThread(this.timeout, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
            this.requestId = connections().sendRequestTyped(gettransactionsbymsghash, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletPolling$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$requestTransactions$1(i, (TL_wallet.walletTransactions) obj, (TLRPC.TL_error) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestTransactions$1(int i, TL_wallet.walletTransactions wallettransactions, TLRPC.TL_error tL_error) {
        if (this.running && this.generation == i) {
            this.requestId = -1;
            AndroidUtilities.cancelRunOnUIThread(this.timeout);
            StringBuilder sb = new StringBuilder("[gram-wallet-polling] account=");
            sb.append(this.currentAccount);
            sb.append(" msg_hash=");
            sb.append(this.messageHash);
            sb.append(" transactions=");
            Object objValueOf = "none";
            sb.append(wallettransactions == null ? "none" : Integer.valueOf(wallettransactions.transactions.size()));
            sb.append(" errorCode=");
            if (tL_error != null) {
                objValueOf = Integer.valueOf(tL_error.code);
            }
            sb.append(objValueOf);
            FileLog.m1037d(sb.toString());
            if (tL_error == null && wallettransactions != null && this.subscriber.onTransactions(wallettransactions)) {
                stop();
            } else if (this.running && this.generation == i) {
                schedule();
            }
        }
    }
}
