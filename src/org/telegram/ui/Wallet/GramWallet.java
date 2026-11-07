package org.telegram.ui.Wallet;

import android.content.Context;
import android.net.Uri;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.RelativeSizeSpan;
import android.util.Base64;
import com.android.dx.io.Opcodes;
import com.exteragram.messenger.inline.math.MathFormat$$ExternalSyntheticBackportWithForwarding0;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import kotlin.UByte;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.voip.ConferenceCall;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLMethod;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_stars;
import org.telegram.tgnet.tl.TL_toncenter;
import org.telegram.tgnet.tl.TL_update;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.TypefaceSpan;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PasscodeActivity;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.Wallet.GramWallet;
import org.telegram.ui.Wallet.GramWalletPolling;
import org.telegram.ui.Wallet.GramWalletStreaming;
import org.telegram.ui.Wallet.GramWalletTonConnect;
import org.telegram.ui.Wallet.TransactionCell;
import org.telegram.ui.Wallet.WalletEngine2;
import org.telegram.ui.web.BotWebViewContainer;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes8.dex */
public class GramWallet implements GramWalletStreaming.IGramWalletStreamingSubscriber {
    private static DecimalFormat gramsFormat;
    private boolean balanceFromStreaming;
    private final HashMap<String, AddressInfo> cachedAddressInfos;
    private final HashMap<String, TL_wallet.walletUserAddress> cachedWalletResolvesByAddress;
    private final HashMap<Long, TL_wallet.walletUserAddress> cachedWalletResolvesByUser;
    public final CurrenciesController currencies;
    public final int currentAccount;
    private WalletEngine2 engine;
    private String engineAddress;
    private TL_update.TL_updateWalletGaslessInfo gasless;
    private Boolean hasWaltBalance;
    private CollectiblesList nfts;
    private final Runnable onLocalWalletsChanged;
    private String pollingAddress;
    private String previousWalletAddress;
    private final ArrayList<PreviousWallet> previousWallets;
    private final List<PreviousWallet> previousWalletsView;
    private String receivedCollectibleAddress;
    private int receivedCollectibleAttempt;
    private long serverBalanceReceivedTime;
    private TL_wallet.WalletState state;
    public GramWalletStorage storage;
    private GramWalletStreaming streaming;
    private long streamingBalanceReceivedTime;
    public final GramWalletTonConnect tonConnect;
    private TransactionsList transactions;
    private final HashMap<String, TL_wallet.walletTransaction> transactionsCache;
    private boolean usePasscodeSetting;
    private String waltBalanceLink;
    private static volatile GramWallet[] Instance = new GramWallet[16];
    private static final long[] COLLECTIBLE_RECEIVED_DELAYS_MS = {1500, 2500, 4000, 6000, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, 15000, 20000};
    private ArrayList<TL_wallet.walletTransaction> pendingTransactions = new ArrayList<>();
    private final HashMap<TL_wallet.walletTransaction, Utilities.Callback<Boolean>> completionCallbacks = new HashMap<>();
    private ArrayList<PendingDisableBackup> pendingDisableBackups = new ArrayList<>();
    private final HashMap<TL_wallet.walletTransaction, GramWalletPolling> polling = new HashMap<>();
    private ArrayList<WeakReference<Runnable>> whenReadyCallbacks = new ArrayList<>();
    private ArrayList<WeakReference<Runnable>> whenReadyGaslessCallbacks = new ArrayList<>();
    private final Runnable collectibleReceivedPoll = new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$2();
        }
    };
    private int requestingStateId = -1;
    private int requestingGaslessInfoId = -1;
    private int requestingWaltId = -1;
    private int lastListenToken = 0;
    private HashSet<Integer> listeningTokens = new HashSet<>();
    private final Runnable refreshStreamingHistory = new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$8();
        }
    };

    public static class AddressInfo {
        public String address;
        public boolean done;
        public byte[] publicKey;
        public int time;
        public long balance = -1;
        public ArrayList<Utilities.Callback<AddressInfo>> whenDone = new ArrayList<>();
    }

    public static /* synthetic */ void $r8$lambda$G_Z54VdeqMehSKZUXyM4M41ila0() {
    }

    public WalletEngine2 tonConnectEngine() {
        return this.engine;
    }

    public class PendingDisableBackup {
        public String msg_hash;
        public byte[] publicKey;
        public SecretPhrase secretPhrase;

        private PendingDisableBackup() {
        }

        public void disableBackup() {
            SecretPhrase secretPhrase = this.secretPhrase;
            this.secretPhrase = null;
            try {
                GramWallet.this.proveChallenge(secretPhrase, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$PendingDisableBackup$$ExternalSyntheticLambda0
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$disableBackup$2((WalletEngine2.ImportedWalletProof) obj, (String) obj2);
                    }
                });
            } finally {
                secretPhrase.close();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$disableBackup$2(WalletEngine2.ImportedWalletProof importedWalletProof, String str) {
            if (importedWalletProof == null) {
                GramWallet gramWallet = GramWallet.this;
                if (str == null) {
                    str = "NULL_ERROR";
                }
                gramWallet.err("disable backup: failed to prove challenge: ".concat(str));
                return;
            }
            TL_wallet.disableBackup disablebackup = new TL_wallet.disableBackup();
            disablebackup.new_public_key = this.publicKey;
            TL_wallet.walletOwnershipProof walletownershipproof = new TL_wallet.walletOwnershipProof();
            disablebackup.proof = walletownershipproof;
            walletownershipproof.signature = importedWalletProof.signature;
            walletownershipproof.timestamp = importedWalletProof.timestamp;
            GramWallet.this.getConnectionsManager().sendRequestTyped(disablebackup, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$PendingDisableBackup$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$disableBackup$1((TL_wallet.WalletState) obj, (TLRPC.TL_error) obj2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$disableBackup$1(TL_wallet.WalletState walletState, TLRPC.TL_error tL_error) {
            GramWallet gramWallet = GramWallet.this;
            if (walletState == null) {
                StringBuilder sb = new StringBuilder("disable backup: failed to disable backup on server: ");
                Object obj = tL_error;
                if (tL_error == null) {
                    obj = "NULL_ERROR";
                }
                sb.append(obj);
                gramWallet.err(sb.toString());
                return;
            }
            gramWallet.updateState(walletState);
            GramWallet.this.onWalletChanged();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$PendingDisableBackup$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    GramWallet.PendingDisableBackup.m23071$r8$lambda$YemPEf1bn3R9dXBg0zxn4ZtQ0w();
                }
            }, 1000L);
        }

        /* JADX INFO: renamed from: $r8$lambda$Ye-mPEf1bn3R9dXBg0zxn4ZtQ0w, reason: not valid java name */
        public static /* synthetic */ void m23071$r8$lambda$YemPEf1bn3R9dXBg0zxn4ZtQ0w() {
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment == null) {
                return;
            }
            BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2807R.raw.contact_check, LocaleController.getString(C2807R.string.WalletBackupDisabled), LocaleController.getString(C2807R.string.WalletBackupDisabledInfo)).setDuration(5000).show();
        }
    }

    public static GramWallet getInstance(int i) {
        GramWallet gramWallet;
        GramWallet gramWallet2 = Instance[i];
        if (gramWallet2 != null) {
            return gramWallet2;
        }
        synchronized (GramWallet.class) {
            try {
                gramWallet = Instance[i];
                if (gramWallet == null) {
                    GramWallet[] gramWalletArr = Instance;
                    GramWallet gramWallet3 = new GramWallet(i);
                    gramWalletArr[i] = gramWallet3;
                    gramWallet = gramWallet3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return gramWallet;
    }

    public static void ensureLocalWalletBalances(final int i, final Runnable runnable) {
        if (!MessagesController.getInstance(i).config.walletAvailable.get()) {
            runnable.run();
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda37
                @Override // java.lang.Runnable
                public final void run() {
                    GramWallet.$r8$lambda$8lWLLISIFdQVVJwFyBLnTgocars(i, runnable);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$8lWLLISIFdQVVJwFyBLnTgocars(int i, Runnable runnable) {
        GramWallet gramWallet = getInstance(i);
        NotificationCenter notificationCenter = NotificationCenter.getInstance(i);
        C1WaitForBalances c1WaitForBalances = new C1WaitForBalances(notificationCenter, runnable, gramWallet);
        notificationCenter.addObserver(c1WaitForBalances, NotificationCenter.walletUpdate);
        AndroidUtilities.runOnUIThread(c1WaitForBalances, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
        if (gramWallet.state == null && gramWallet.requestingStateId < 0) {
            gramWallet.requestState();
        }
        gramWallet.refreshPreviousWallets();
        c1WaitForBalances.check();
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.GramWallet$1WaitForBalances, reason: invalid class name */
    public class C1WaitForBalances implements Runnable, NotificationCenter.NotificationCenterDelegate {
        private boolean finished;
        final /* synthetic */ NotificationCenter val$notifications;
        final /* synthetic */ GramWallet val$wallet;
        final /* synthetic */ Runnable val$whenDone;

        public C1WaitForBalances(NotificationCenter notificationCenter, Runnable runnable, GramWallet gramWallet) {
            this.val$notifications = notificationCenter;
            this.val$whenDone = runnable;
            this.val$wallet = gramWallet;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.finished) {
                return;
            }
            this.finished = true;
            AndroidUtilities.cancelRunOnUIThread(this);
            this.val$notifications.removeObserver(this, NotificationCenter.walletUpdate);
            this.val$whenDone.run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void check() {
            if (this.finished || this.val$wallet.state == null) {
                return;
            }
            ArrayList arrayList = this.val$wallet.previousWallets;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                if (((PreviousWallet) obj).loading) {
                    return;
                }
            }
            run();
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (i == NotificationCenter.walletUpdate) {
                check();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(String str) {
        FileLog.m1037d("[gram-wallet] " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void err(String str) {
        FileLog.m1038e("[gram-wallet] " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void err(String str, Throwable th) {
        FileLog.m1039e("[gram-wallet] " + str, th);
    }

    public GramWallet(int i) {
        ArrayList<PreviousWallet> arrayList = new ArrayList<>();
        this.previousWallets = arrayList;
        this.previousWalletsView = Collections.unmodifiableList(arrayList);
        Runnable runnable = new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$43();
            }
        };
        this.onLocalWalletsChanged = runnable;
        this.transactionsCache = new HashMap<>();
        this.cachedWalletResolvesByUser = new HashMap<>();
        this.cachedWalletResolvesByAddress = new HashMap<>();
        this.cachedAddressInfos = new HashMap<>();
        this.currentAccount = i;
        loadPrefs();
        this.currencies = new CurrenciesController(this);
        requestState();
        requestGaslessInfo();
        requestWaltBalance();
        this.tonConnect = new GramWalletTonConnect(this);
        GramWalletStorage.addChangeListener(runnable);
        refreshPreviousWallets();
    }

    public boolean isReady() {
        return (!(this.state instanceof TL_wallet.TL_walletState) || this.engine == null || this.storage == null) ? false : true;
    }

    public void whenReady(Runnable runnable) {
        if (isReady()) {
            runnable.run();
        } else {
            this.whenReadyCallbacks.add(new WeakReference<>(runnable));
        }
    }

    public void whenReadyGasless(Runnable runnable) {
        if (isReady() && this.gasless != null) {
            runnable.run();
        } else {
            this.whenReadyGaslessCallbacks.add(new WeakReference<>(runnable));
        }
    }

    public String getAddress() {
        TL_wallet.WalletState walletState = this.state;
        if (walletState instanceof TL_wallet.TL_walletState) {
            return ((TL_wallet.TL_walletState) walletState).address;
        }
        return null;
    }

    public byte[] getPublicKey() {
        TL_wallet.WalletState walletState = this.state;
        if (walletState instanceof TL_wallet.TL_walletState) {
            return ((TL_wallet.TL_walletState) walletState).public_key;
        }
        return null;
    }

    public long getBalance() {
        TL_wallet.WalletState walletState = this.state;
        if (walletState instanceof TL_wallet.TL_walletState) {
            return ((TL_wallet.TL_walletState) walletState).balance;
        }
        return 0L;
    }

    public boolean isBackupEnabled() {
        TL_wallet.WalletState walletState = this.state;
        if (walletState instanceof TL_wallet.TL_walletState) {
            return ((TL_wallet.TL_walletState) walletState).backup_enabled;
        }
        return false;
    }

    public boolean canEnableBackup() {
        GramWalletStorage gramWalletStorage;
        TL_wallet.WalletState walletState = this.state;
        if (!(walletState instanceof TL_wallet.TL_walletState)) {
            return false;
        }
        TL_wallet.TL_walletState tL_walletState = (TL_wallet.TL_walletState) walletState;
        return tL_walletState.can_enable_backup && (gramWalletStorage = this.storage) != null && gramWalletStorage.containsSecretPhrase(tL_walletState.public_key);
    }

    public boolean canExportPhrase() {
        TL_wallet.WalletState walletState = this.state;
        if (!(walletState instanceof TL_wallet.TL_walletState)) {
            return false;
        }
        TL_wallet.TL_walletState tL_walletState = (TL_wallet.TL_walletState) walletState;
        if (tL_walletState.can_export_phrase) {
            return true;
        }
        GramWalletStorage gramWalletStorage = this.storage;
        return gramWalletStorage != null && gramWalletStorage.containsSecretPhrase(tL_walletState.public_key);
    }

    public boolean canSend() {
        TL_wallet.WalletState walletState = this.state;
        if (!(walletState instanceof TL_wallet.TL_walletState)) {
            return false;
        }
        TL_wallet.TL_walletState tL_walletState = (TL_wallet.TL_walletState) walletState;
        if (tL_walletState.backup_enabled) {
            return true;
        }
        GramWalletStorage gramWalletStorage = this.storage;
        return gramWalletStorage != null && gramWalletStorage.containsSecretPhrase(tL_walletState.public_key);
    }

    public boolean cantAccessWallet() {
        GramWalletStorage gramWalletStorage;
        TL_wallet.WalletState walletState = this.state;
        if (!(walletState instanceof TL_wallet.TL_walletState)) {
            return false;
        }
        TL_wallet.TL_walletState tL_walletState = (TL_wallet.TL_walletState) walletState;
        return !tL_walletState.backup_enabled && ((gramWalletStorage = this.storage) == null || !gramWalletStorage.containsSecretPhrase(tL_walletState.public_key));
    }

    public boolean isGaslessAvailable() {
        TL_update.TL_updateWalletGaslessInfo tL_updateWalletGaslessInfo = this.gasless;
        return tL_updateWalletGaslessInfo != null && tL_updateWalletGaslessInfo.available && tL_updateWalletGaslessInfo.left > 0 && !TextUtils.isEmpty(tL_updateWalletGaslessInfo.relayer_address);
    }

    public boolean hasWaltBalance() {
        Boolean bool = this.hasWaltBalance;
        return (bool == null || !bool.booleanValue() || TextUtils.isEmpty(this.waltBalanceLink)) ? false : true;
    }

    public String getWaltUrl() {
        return this.waltBalanceLink;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateState(TL_wallet.WalletState walletState) {
        boolean z;
        TransactionsList transactionsList;
        if (walletState == null) {
            return;
        }
        if (walletState instanceof TL_wallet.TL_walletState) {
            TL_wallet.WalletState walletState2 = this.state;
            z = ((walletState2 instanceof TL_wallet.TL_walletState) && ((TL_wallet.TL_walletState) walletState2).balance == ((TL_wallet.TL_walletState) walletState).balance) ? false : true;
        }
        this.state = walletState;
        onStateUpdate();
        notifyUpdate();
        if (!z || (transactionsList = this.transactions) == null) {
            return;
        }
        transactionsList.invalidate();
    }

    public void onUpdate(TL_update.TL_updateWalletState tL_updateWalletState) {
        if (tL_updateWalletState == null) {
            return;
        }
        updateState(tL_updateWalletState.state);
    }

    public void onUpdate(TL_update.TL_updateWalletGaslessInfo tL_updateWalletGaslessInfo) {
        this.gasless = tL_updateWalletGaslessInfo;
        onStateUpdate();
        notifyUpdate();
    }

    public void onUpdate(TL_update.TL_updateSentWalletTransaction tL_updateSentWalletTransaction) {
        if (isValidMessageHash(tL_updateSentWalletTransaction.msg_hash)) {
            ArrayList arrayList = new ArrayList(this.pendingTransactions);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                TL_wallet.walletTransaction wallettransaction = (TL_wallet.walletTransaction) obj;
                if (sameMessageHash(wallettransaction.messageHash, tL_updateSentWalletTransaction.msg_hash)) {
                    applySentTransaction(wallettransaction, tL_updateSentWalletTransaction);
                    return;
                }
            }
            TL_wallet.walletTransaction wallettransaction2 = tL_updateSentWalletTransaction.transaction;
            if (wallettransaction2 != null) {
                wallettransaction2.messageHash = tL_updateSentWalletTransaction.msg_hash;
                wallettransaction2.gasless = tL_updateSentWalletTransaction.gasless;
                wallettransaction2.pending = false;
                this.pendingTransactions.add(0, wallettransaction2);
                getTransactions().updatedTransactions();
                getTransactions().notifyUpdate();
            }
        }
    }

    public static boolean messageMatchesTransaction(MessageObject messageObject, TL_wallet.walletTransaction wallettransaction) {
        if (messageObject != null && messageObject.messageOwner != null && wallettransaction != null && messageObject.isOutOwner()) {
            TLRPC.Message message = messageObject.messageOwner;
            TLRPC.MessageAction messageAction = message.action;
            if (messageAction instanceof TLRPC.TL_messageActionGramTransfer) {
                TLRPC.TL_messageActionGramTransfer tL_messageActionGramTransfer = (TLRPC.TL_messageActionGramTransfer) messageAction;
                long j = wallettransaction.random_id;
                if (j != 0 && message.random_id == j) {
                    return true;
                }
                if (wallettransaction.localMessageId != 0 && messageObject.getId() == wallettransaction.localMessageId) {
                    return true;
                }
                if (!TextUtils.isEmpty(wallettransaction.id) && TextUtils.equals(wallettransaction.id, tL_messageActionGramTransfer.transaction_id)) {
                    return true;
                }
            }
        }
        return false;
    }

    public TL_wallet.walletTransaction findTransaction(MessageObject messageObject) {
        TLRPC.Message message;
        if (messageObject != null && (message = messageObject.messageOwner) != null) {
            TLRPC.MessageAction messageAction = message.action;
            if (!(messageAction instanceof TLRPC.TL_messageActionGramTransfer)) {
                return null;
            }
            TLRPC.TL_messageActionGramTransfer tL_messageActionGramTransfer = (TLRPC.TL_messageActionGramTransfer) messageAction;
            int i = 0;
            if (!TextUtils.isEmpty(tL_messageActionGramTransfer.transaction_id) && this.transactions != null) {
                for (int i2 = 0; i2 < this.transactions.allTransactions.size(); i2++) {
                    TL_wallet.walletTransaction wallettransaction = this.transactions.allTransactions.get(i2);
                    if (TextUtils.equals(wallettransaction.id, tL_messageActionGramTransfer.transaction_id)) {
                        return wallettransaction;
                    }
                }
            }
            if (messageObject.messageOwner.random_id != 0) {
                ArrayList<TL_wallet.walletTransaction> arrayList = this.pendingTransactions;
                int size = arrayList.size();
                while (i < size) {
                    TL_wallet.walletTransaction wallettransaction2 = arrayList.get(i);
                    i++;
                    TL_wallet.walletTransaction wallettransaction3 = wallettransaction2;
                    if (wallettransaction3.random_id == messageObject.messageOwner.random_id) {
                        return wallettransaction3;
                    }
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processTransferUpdates$1(TLRPC.Updates updates) {
        MessagesController.getInstance(this.currentAccount).processUpdates(updates, false);
    }

    private void processTransferUpdates(final TLRPC.Updates updates) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processTransferUpdates$1(updates);
            }
        });
    }

    private TL_update.TL_updateSentWalletTransaction getSentTransaction(TLRPC.Updates updates) {
        if (updates == null) {
            return null;
        }
        TLRPC.Update update = updates.update;
        if (update instanceof TL_update.TL_updateSentWalletTransaction) {
            return (TL_update.TL_updateSentWalletTransaction) update;
        }
        ArrayList<TLRPC.Update> arrayList = updates.updates;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.Update update2 = arrayList.get(i);
            i++;
            TLRPC.Update update3 = update2;
            if (update3 instanceof TL_update.TL_updateSentWalletTransaction) {
                return (TL_update.TL_updateSentWalletTransaction) update3;
            }
        }
        return null;
    }

    private void applySentTransaction(TL_wallet.walletTransaction wallettransaction, TL_update.TL_updateSentWalletTransaction tL_updateSentWalletTransaction) {
        wallettransaction.messageHash = tL_updateSentWalletTransaction.msg_hash;
        wallettransaction.gasless = tL_updateSentWalletTransaction.gasless;
        TL_wallet.walletTransaction wallettransaction2 = tL_updateSentWalletTransaction.transaction;
        if (wallettransaction2 != null) {
            applyConfirmedTransaction(wallettransaction, wallettransaction2);
        } else {
            onWalletPageUpdate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyConfirmedTransaction(TL_wallet.walletTransaction wallettransaction, TL_wallet.walletTransaction wallettransaction2) {
        CollectiblesList collectiblesList;
        wallettransaction.id = wallettransaction2.id;
        wallettransaction.incoming = wallettransaction2.incoming;
        wallettransaction.gasless = wallettransaction2.gasless;
        wallettransaction.failed = wallettransaction2.failed;
        wallettransaction.key_change = wallettransaction2.key_change;
        wallettransaction.comment_encrypted = wallettransaction2.comment_encrypted;
        wallettransaction.comment_encrypted_preparing = false;
        wallettransaction.amount = wallettransaction2.amount;
        wallettransaction.fee = wallettransaction2.fee;
        wallettransaction.date = wallettransaction2.date;
        wallettransaction.peer = mergeRecipientPeer(wallettransaction.peer, wallettransaction2.peer);
        wallettransaction.comment = wallettransaction2.comment;
        wallettransaction.tx_hash = wallettransaction2.tx_hash;
        TL_wallet.nftItem nftitem = wallettransaction2.nft;
        if (nftitem != null) {
            wallettransaction.nft = nftitem;
        }
        for (int size = this.pendingTransactions.size() - 1; size >= 0; size--) {
            TL_wallet.walletTransaction wallettransaction3 = this.pendingTransactions.get(size);
            if (wallettransaction3 != wallettransaction && !wallettransaction3.pending && !TextUtils.isEmpty(wallettransaction2.id) && TextUtils.equals(wallettransaction3.id, wallettransaction2.id)) {
                this.pendingTransactions.remove(size);
            }
        }
        completePendingTransaction(wallettransaction, !wallettransaction2.failed, wallettransaction2.tx_hash);
        if (wallettransaction.nft == null || (collectiblesList = this.nfts) == null) {
            return;
        }
        collectiblesList.onTransferUpdated(wallettransaction);
        this.nfts.invalidate();
    }

    public void invalidateState() {
        TransactionsList transactionsList = this.transactions;
        if (transactionsList != null) {
            transactionsList.invalidate();
        }
        if (this.requestingStateId >= 0) {
            return;
        }
        requestState();
    }

    public void onCollectibleReceived(String str) {
        AndroidUtilities.cancelRunOnUIThread(this.collectibleReceivedPoll);
        this.receivedCollectibleAddress = str;
        this.receivedCollectibleAttempt = 0;
        refreshReceivedCollectible();
        scheduleReceivedCollectiblePoll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        if (hasReceivedCollectible()) {
            return;
        }
        refreshReceivedCollectible();
        scheduleReceivedCollectiblePoll();
    }

    private void scheduleReceivedCollectiblePoll() {
        int i = this.receivedCollectibleAttempt;
        long[] jArr = COLLECTIBLE_RECEIVED_DELAYS_MS;
        if (i >= jArr.length) {
            return;
        }
        Runnable runnable = this.collectibleReceivedPoll;
        this.receivedCollectibleAttempt = i + 1;
        AndroidUtilities.runOnUIThread(runnable, jArr[i]);
    }

    private void refreshReceivedCollectible() {
        getCollectibles().invalidate();
        getTransactions().invalidate();
        invalidateState();
    }

    private boolean hasReceivedCollectible() {
        CollectiblesList collectiblesList;
        TransactionsList transactionsList;
        TL_wallet.nftItem nftitem;
        if (TextUtils.isEmpty(this.receivedCollectibleAddress) || (collectiblesList = this.nfts) == null || !collectiblesList.containsCollectible(this.receivedCollectibleAddress) || (transactionsList = this.transactions) == null) {
            return false;
        }
        ArrayList<TL_wallet.walletTransaction> arrayList = transactionsList.transactions;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TL_wallet.walletTransaction wallettransaction = arrayList.get(i);
            i++;
            TL_wallet.walletTransaction wallettransaction2 = wallettransaction;
            if (wallettransaction2.incoming && (nftitem = wallettransaction2.nft) != null && addressEquals(nftitem.address, this.receivedCollectibleAddress)) {
                return true;
            }
        }
        return false;
    }

    private void requestState() {
        log("requesting state");
        this.requestingStateId = getConnectionsManager().sendRequestTyped(new TL_wallet.getState(), new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda18
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$requestState$3((TL_wallet.WalletState) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$requestState$3(TL_wallet.WalletState walletState, TLRPC.TL_error tL_error) {
        this.requestingStateId = -1;
        if (walletState == null) {
            StringBuilder sb = new StringBuilder("requesting gasless info: ");
            sb.append(tL_error != null ? tL_error.text : "NULL_ERROR");
            err(sb.toString());
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (walletState instanceof TL_wallet.TL_walletState) {
            TL_wallet.WalletState walletState2 = this.state;
            if ((walletState2 instanceof TL_wallet.TL_walletState) && this.balanceFromStreaming) {
                TL_wallet.TL_walletState tL_walletState = (TL_wallet.TL_walletState) walletState2;
                TL_wallet.TL_walletState tL_walletState2 = (TL_wallet.TL_walletState) walletState;
                if (jCurrentTimeMillis - this.streamingBalanceReceivedTime < NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS) {
                    tL_walletState2.balance = tL_walletState.balance;
                } else {
                    this.serverBalanceReceivedTime = jCurrentTimeMillis;
                    this.balanceFromStreaming = false;
                }
            } else {
                this.serverBalanceReceivedTime = jCurrentTimeMillis;
                this.balanceFromStreaming = false;
            }
        }
        this.state = walletState;
        onStateUpdate();
        notifyUpdate();
    }

    private void requestGaslessInfo() {
        log("requesting gasless info");
        this.requestingGaslessInfoId = getConnectionsManager().sendRequestTyped(new TL_wallet.getGaslessInfo(), new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda19
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$requestGaslessInfo$4((TLRPC.Updates) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestGaslessInfo$4(TLRPC.Updates updates, TLRPC.TL_error tL_error) {
        this.requestingGaslessInfoId = -1;
        if (updates == null) {
            StringBuilder sb = new StringBuilder("requesting gasless info: ");
            sb.append(tL_error != null ? tL_error.text : "NULL_ERROR");
            err(sb.toString());
            return;
        }
        processTransferUpdates(updates);
    }

    private void requestWaltBalance() {
        log("requesting has walt balance");
        this.requestingWaltId = getConnectionsManager().sendRequestTyped(new TL_wallet.getExistingWaltBalance(), new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda17
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$requestWaltBalance$5((TL_wallet.existingBalance) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestWaltBalance$5(TL_wallet.existingBalance existingbalance, TLRPC.TL_error tL_error) {
        this.requestingWaltId = -1;
        if (existingbalance != null) {
            this.hasWaltBalance = Boolean.valueOf(existingbalance.has_balance);
            this.waltBalanceLink = existingbalance.url;
        }
        if (hasWaltBalance()) {
            notifyUpdate();
        }
    }

    private void cancel() {
        if (this.requestingStateId >= 0) {
            getConnectionsManager().cancelRequest(this.requestingStateId, true);
            this.requestingStateId = -1;
        }
        if (this.requestingGaslessInfoId >= 0) {
            getConnectionsManager().cancelRequest(this.requestingGaslessInfoId, true);
            this.requestingGaslessInfoId = -1;
        }
        if (this.requestingWaltId >= 0) {
            getConnectionsManager().cancelRequest(this.requestingWaltId, true);
            this.requestingWaltId = -1;
        }
    }

    public static void cleanup(int i) {
        GramWallet gramWallet = Instance[i];
        if (gramWallet != null) {
            gramWallet.reset();
        }
    }

    public void reset() {
        GramWalletStorage.removeChangeListener(this.onLocalWalletsChanged);
        this.previousWallets.clear();
        this.cachedAddressInfos.clear();
        WalletEngine2 walletEngine2 = this.engine;
        if (walletEngine2 != null) {
            walletEngine2.close();
            this.engine = null;
            this.engineAddress = null;
        }
        CollectiblesList collectiblesList = this.nfts;
        if (collectiblesList != null) {
            collectiblesList.clear();
        }
        cancel();
        stopPolling();
        this.listeningTokens.clear();
        GramWalletStreaming gramWalletStreaming = this.streaming;
        if (gramWalletStreaming != null) {
            gramWalletStreaming.stop();
            this.streaming = null;
        }
        AndroidUtilities.cancelRunOnUIThread(this.refreshStreamingHistory);
        synchronized (GramWallet.class) {
            try {
                if (Instance[this.currentAccount] == this) {
                    Instance[this.currentAccount] = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public Runnable listen() {
        final int i = this.lastListenToken;
        this.lastListenToken = i + 1;
        boolean zIsEmpty = this.listeningTokens.isEmpty();
        this.listeningTokens.add(Integer.valueOf(i));
        if (zIsEmpty) {
            onWalletPageUpdate();
        }
        return new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$listen$6(i);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$listen$6(int i) {
        this.listeningTokens.remove(Integer.valueOf(i));
        if (this.listeningTokens.isEmpty()) {
            onWalletPageUpdate();
        }
    }

    private void onWalletPageUpdate() {
        GramWalletStreaming gramWalletStreaming;
        updatePolling();
        boolean z = false;
        boolean z2 = (!isReady() || TextUtils.isEmpty(getAddress()) || this.listeningTokens.isEmpty()) ? false : true;
        GramWalletStreaming gramWalletStreaming2 = this.streaming;
        if (gramWalletStreaming2 != null && gramWalletStreaming2.isRunning()) {
            z = true;
        }
        if (z == z2 && (!z || (gramWalletStreaming = this.streaming) == null || TextUtils.equals(gramWalletStreaming.address, getAddress()))) {
            return;
        }
        GramWalletStreaming gramWalletStreaming3 = this.streaming;
        if (z2) {
            if (gramWalletStreaming3 != null && !TextUtils.equals(gramWalletStreaming3.address, getAddress())) {
                this.streaming.stop();
                this.streaming = null;
            }
            if (this.streaming == null) {
                this.streaming = new GramWalletStreaming(this.currentAccount, getAddress(), this);
            }
            if (this.streaming.isRunning()) {
                return;
            }
            this.streaming.start();
            return;
        }
        if (gramWalletStreaming3 != null) {
            gramWalletStreaming3.stop();
        }
        AndroidUtilities.cancelRunOnUIThread(this.refreshStreamingHistory);
    }

    private void stopPolling() {
        Iterator<GramWalletPolling> it = this.polling.values().iterator();
        while (it.hasNext()) {
            it.next().stop();
        }
        this.polling.clear();
    }

    private void updatePolling() {
        if (!TextUtils.equals(this.pollingAddress, getAddress())) {
            stopPolling();
            this.pollingAddress = getAddress();
        }
        if (!isReady() || TextUtils.isEmpty(getAddress())) {
            stopPolling();
            return;
        }
        ArrayList arrayList = new ArrayList(this.polling.keySet());
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            TL_wallet.walletTransaction wallettransaction = (TL_wallet.walletTransaction) obj;
            if (!wallettransaction.pending || !TextUtils.equals(this.polling.get(wallettransaction).messageHash, wallettransaction.messageHash)) {
                this.polling.remove(wallettransaction).stop();
            }
        }
        ArrayList<TL_wallet.walletTransaction> arrayList2 = this.pendingTransactions;
        int size2 = arrayList2.size();
        while (i < size2) {
            TL_wallet.walletTransaction wallettransaction2 = arrayList2.get(i);
            i++;
            final TL_wallet.walletTransaction wallettransaction3 = wallettransaction2;
            if (wallettransaction3.pending && !TextUtils.isEmpty(wallettransaction3.messageHash) && !this.polling.containsKey(wallettransaction3)) {
                GramWalletPolling gramWalletPolling = new GramWalletPolling(this.currentAccount, wallettransaction3.messageHash, new GramWalletPolling.IGramWalletPollingSubscriber() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda27
                    @Override // org.telegram.ui.Wallet.GramWalletPolling.IGramWalletPollingSubscriber
                    public final boolean onTransactions(TL_wallet.walletTransactions wallettransactions) {
                        return this.f$0.lambda$updatePolling$7(wallettransaction3, wallettransactions);
                    }
                });
                this.polling.put(wallettransaction3, gramWalletPolling);
                gramWalletPolling.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$updatePolling$7(TL_wallet.walletTransaction wallettransaction, TL_wallet.walletTransactions wallettransactions) {
        Iterator<TL_wallet.walletTransaction> it = wallettransactions.transactions.iterator();
        if (!it.hasNext()) {
            return false;
        }
        TL_wallet.walletTransaction next = it.next();
        MessagesController.getInstance(this.currentAccount).putUsers(wallettransactions.users, false);
        MessagesController.getInstance(this.currentAccount).putChats(wallettransactions.chats, false);
        applyConfirmedTransaction(wallettransaction, next);
        invalidateState();
        return true;
    }

    @Override // org.telegram.ui.Wallet.GramWalletStreaming.IGramWalletStreamingSubscriber
    public void onEvent(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        GramWalletStreaming gramWalletStreaming = this.streaming;
        if (gramWalletStreaming == null || !TextUtils.equals(gramWalletStreaming.address, getAddress())) {
            return;
        }
        String strOptString = jSONObject.optString("type");
        String strOptString2 = jSONObject.optString("finality");
        log("streaming " + strOptString + ", finality: " + strOptString2);
        if ("account_state_change".equals(strOptString) && "finalized".equals(strOptString2) && (this.state instanceof TL_wallet.TL_walletState) && (jSONObjectOptJSONObject = jSONObject.optJSONObject("state")) != null) {
            try {
                long j = Long.parseLong(jSONObjectOptJSONObject.getString("balance"));
                if (j >= 0 && ((TL_wallet.TL_walletState) this.state).balance != j) {
                    log("streaming updates balance to " + j);
                    this.streamingBalanceReceivedTime = System.currentTimeMillis();
                    this.balanceFromStreaming = true;
                    ((TL_wallet.TL_walletState) this.state).balance = j;
                    onStateUpdate();
                    notifyUpdate();
                    TransactionsList transactionsList = this.transactions;
                    if (transactionsList != null) {
                        transactionsList.invalidate();
                    }
                }
            } catch (Exception unused) {
                err("Invalid streaming balance");
            }
        }
        TransactionsList transactionsList2 = this.transactions;
        if (transactionsList2 != null) {
            transactionsList2.onStreamEvent(jSONObject);
        }
        if ("confirmed".equals(strOptString2) || "finalized".equals(strOptString2) || "trace_invalidated".equals(strOptString)) {
            AndroidUtilities.cancelRunOnUIThread(this.refreshStreamingHistory);
            AndroidUtilities.runOnUIThread(this.refreshStreamingHistory, 250L);
        }
    }

    private void clearPendingTransactions() {
        stopPolling();
        this.pendingTransactions.clear();
        ArrayList<PendingDisableBackup> arrayList = this.pendingDisableBackups;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            PendingDisableBackup pendingDisableBackup = arrayList.get(i);
            i++;
            SecretPhrase secretPhrase = pendingDisableBackup.secretPhrase;
            if (secretPhrase != null) {
                secretPhrase.close();
            }
        }
        this.pendingDisableBackups.clear();
        TransactionsList transactionsList = this.transactions;
        if (transactionsList != null) {
            transactionsList.clear();
            this.transactions.updatedTransactions();
            this.transactions.notifyUpdate();
        }
        onWalletPageUpdate();
    }

    private void completePendingTransaction(TL_wallet.walletTransaction wallettransaction, boolean z, String str) {
        PendingDisableBackup pendingDisableBackup;
        if (wallettransaction.pending) {
            TransactionsList transactions = getTransactions();
            wallettransaction.failed = !z;
            int i = 0;
            wallettransaction.pending = false;
            if (!TextUtils.isEmpty(str)) {
                wallettransaction.tx_hash = str;
            }
            if (wallettransaction.key_change) {
                ArrayList<PendingDisableBackup> arrayList = this.pendingDisableBackups;
                int size = arrayList.size();
                while (true) {
                    if (i >= size) {
                        pendingDisableBackup = null;
                        break;
                    }
                    PendingDisableBackup pendingDisableBackup2 = arrayList.get(i);
                    i++;
                    pendingDisableBackup = pendingDisableBackup2;
                    if (TextUtils.equals(pendingDisableBackup.msg_hash, wallettransaction.messageHash)) {
                        break;
                    }
                }
                if (pendingDisableBackup != null) {
                    if (z) {
                        pendingDisableBackup.disableBackup();
                    } else {
                        SecretPhrase secretPhrase = pendingDisableBackup.secretPhrase;
                        if (secretPhrase != null) {
                            secretPhrase.close();
                        }
                    }
                    this.pendingDisableBackups.remove(pendingDisableBackup);
                }
            }
            Utilities.Callback<Boolean> callbackRemove = this.completionCallbacks.remove(wallettransaction);
            if (callbackRemove != null) {
                callbackRemove.run(Boolean.valueOf(z));
            }
            log("completed pending transaction: msg_hash=" + wallettransaction.messageHash + ", body_hash=" + wallettransaction.gaslessMessageBodyHash + ", transaction_id=" + wallettransaction.id + ", tx_hash=" + wallettransaction.tx_hash + ", success=" + z);
            transactions.updatedTransactions();
            transactions.notifyUpdate();
            onWalletPageUpdate();
        }
    }

    private boolean isValidMessageHash(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            transactionHashBytes(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    private boolean sameMessageHash(String str, String str2) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !sameTransactionHash(str, str2)) ? false : true;
    }

    public static boolean addressEquals(String str, String str2) {
        String strTransferRawAddress = transferRawAddress(str);
        return strTransferRawAddress != null && strTransferRawAddress.equals(transferRawAddress(str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String rawAddressToFriendly(String str) {
        return rawAddressToFriendly(str, false);
    }

    private static String rawAddressToFriendly(String str, boolean z) {
        try {
            int iIndexOf = str.indexOf(58);
            if (iIndexOf >= 0) {
                int i = Integer.parseInt(str.substring(0, iIndexOf));
                String strSubstring = str.substring(iIndexOf + 1);
                if (strSubstring.length() == 64) {
                    byte[] bArr = new byte[36];
                    bArr[0] = z ? (byte) 17 : (byte) 81;
                    bArr[1] = (byte) i;
                    for (int i2 = 0; i2 < 32; i2++) {
                        int i3 = i2 * 2;
                        bArr[i2 + 2] = (byte) Integer.parseInt(strSubstring.substring(i3, i3 + 2), 16);
                    }
                    int i4 = 0;
                    for (int i5 = 0; i5 < 34; i5++) {
                        i4 ^= (bArr[i5] & UByte.MAX_VALUE) << 8;
                        for (int i6 = 0; i6 < 8; i6++) {
                            int i7 = 32768 & i4;
                            int i8 = i4 << 1;
                            if (i7 != 0) {
                                i8 ^= 4129;
                            }
                            i4 = i8 & 65535;
                        }
                    }
                    bArr[34] = (byte) (i4 >>> 8);
                    bArr[35] = (byte) i4;
                    return Base64.encodeToString(bArr, 11);
                }
            }
            return str;
        } catch (Exception unused) {
            return str;
        }
    }

    public static boolean transactionMatches(TL_wallet.walletTransaction wallettransaction, TL_wallet.walletTransaction wallettransaction2) {
        if ((!TextUtils.isEmpty(wallettransaction.id) && TextUtils.equals(wallettransaction.id, wallettransaction2.id)) || sameTransactionHash(wallettransaction.tx_hash, wallettransaction2.tx_hash) || sameTransactionHash(wallettransaction.messageHash, wallettransaction2.messageHash)) {
            return true;
        }
        if (wallettransaction.incoming || wallettransaction2.incoming) {
            return false;
        }
        return sameTransactionHash(wallettransaction.gaslessMessageBodyHash, wallettransaction2.gaslessMessageBodyHash) || sameTransactionHash(wallettransaction.normalMessageBodyHash, wallettransaction2.normalMessageBodyHash);
    }

    public static boolean sameTransactionHash(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (TextUtils.equals(str, str2)) {
                return true;
            }
            try {
                return Arrays.equals(transactionHashBytes(str), transactionHashBytes(str2));
            } catch (IllegalArgumentException unused) {
            }
        }
        return false;
    }

    private static byte[] transactionHashBytes(String str) {
        if (str.matches("[0-9a-fA-F]{64}")) {
            byte[] bArr = new byte[32];
            for (int i = 0; i < 32; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
            }
            return bArr;
        }
        byte[] bArrDecode = Base64.decode(str.replace(SignatureVisitor.SUPER, SignatureVisitor.EXTENDS).replace('_', '/'), 0);
        if (bArrDecode.length == 32) {
            return bArrDecode;
        }
        f$$ExternalSyntheticBUOutline1.m215m("Invalid transaction hash");
        return null;
    }

    private static String transferRawAddress(String str) {
        if (str == null) {
            return null;
        }
        if (str.matches("-?[0-9]+:[0-9a-fA-F]{64}")) {
            return str.toLowerCase(Locale.ROOT);
        }
        try {
            byte[] bArrDecode = Base64.decode(str.replace(SignatureVisitor.SUPER, SignatureVisitor.EXTENDS).replace('_', '/'), 0);
            if (bArrDecode.length != 36) {
                return null;
            }
            StringBuilder sb = new StringBuilder();
            sb.append((int) bArrDecode[1]);
            sb.append(':');
            for (int i = 2; i < 34; i++) {
                sb.append(Character.forDigit((bArrDecode[i] >> 4) & 15, 16));
                sb.append(Character.forDigit(bArrDecode[i] & 15, 16));
            }
            return sb.toString();
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$8() {
        GramWalletStreaming gramWalletStreaming = this.streaming;
        if (gramWalletStreaming == null || !gramWalletStreaming.isRunning()) {
            return;
        }
        invalidateState();
    }

    public void notifyUpdate() {
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.walletUpdate, this);
    }

    private void onStateUpdate() {
        byte[] bArr;
        String str;
        TL_wallet.WalletState walletState = this.state;
        if (walletState instanceof TL_wallet.TL_walletState) {
            TL_wallet.TL_walletState tL_walletState = (TL_wallet.TL_walletState) walletState;
            str = tL_walletState.address;
            bArr = tL_walletState.public_key;
        } else {
            bArr = null;
            str = null;
        }
        GramWalletStorage gramWalletStorage = this.storage;
        if (gramWalletStorage != null && !TextUtils.equals(gramWalletStorage.getAddress(), str)) {
            if (str == null) {
                log("received empty state, leaving wallet storage of " + this.storage.getAddress());
            } else {
                log("received new state of " + str + ", leaving wallet storage of " + this.storage.getAddress());
            }
            this.storage = null;
        }
        if (!TextUtils.isEmpty(str) && this.storage == null) {
            log("setting up wallet storage of " + str);
            this.storage = new GramWalletStorage(ApplicationLoader.applicationContext, this.currentAccount, str);
            log("storage public keys = " + this.storage.getPublicKeys().length);
        }
        CollectiblesList collectiblesList = this.nfts;
        if (collectiblesList != null) {
            collectiblesList.setAddress(str);
        }
        if (this.engine != null && !TextUtils.equals(this.engineAddress, str)) {
            this.engine.close();
            this.engine = null;
            this.engineAddress = null;
        }
        if (!TextUtils.isEmpty(str) && bArr != null && (this.engine == null || !TextUtils.equals(this.engineAddress, str))) {
            if (this.engine != null) {
                log("closing wallet-engine of " + this.engineAddress);
                this.engine.close();
                this.engine = null;
            }
            log("creating wallet-engine for " + str);
            try {
                int i = this.currentAccount;
                this.engineAddress = str;
                this.engine = new WalletEngine2(i, str, bArr);
            } catch (Exception e) {
                err("failed to create engine!", e);
                this.engineAddress = null;
            }
        }
        int i2 = 0;
        if ((this.state instanceof TL_wallet.TL_walletState) && this.engine != null) {
            ArrayList<WeakReference<Runnable>> arrayList = this.whenReadyCallbacks;
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                WeakReference<Runnable> weakReference = arrayList.get(i3);
                i3++;
                Runnable runnable = weakReference.get();
                if (runnable != null) {
                    AndroidUtilities.runOnUIThread(runnable);
                }
            }
            this.whenReadyCallbacks.clear();
        }
        if ((this.state instanceof TL_wallet.TL_walletState) && this.engine != null && this.gasless != null) {
            ArrayList<WeakReference<Runnable>> arrayList2 = this.whenReadyGaslessCallbacks;
            int size2 = arrayList2.size();
            while (i2 < size2) {
                WeakReference<Runnable> weakReference2 = arrayList2.get(i2);
                i2++;
                Runnable runnable2 = weakReference2.get();
                if (runnable2 != null) {
                    AndroidUtilities.runOnUIThread(runnable2);
                }
            }
            this.whenReadyGaslessCallbacks.clear();
        }
        if (!TextUtils.equals(this.previousWalletAddress, str)) {
            refreshPreviousWallets();
        }
        onWalletPageUpdate();
    }

    public boolean needsPasscode() {
        return this.usePasscodeSetting && !SharedConfig.passcodeHash.isEmpty();
    }

    public boolean needsFingerprint() {
        GramWalletStorage gramWalletStorage;
        return (this.state instanceof TL_wallet.TL_walletState) && (gramWalletStorage = this.storage) != null && gramWalletStorage.isProtectedByFingerprint();
    }

    public void setNeedsPasscode(boolean z) {
        if (this.usePasscodeSetting == z) {
            return;
        }
        this.usePasscodeSetting = z;
        savePrefs();
    }

    public void setNeedsFingerprint(boolean z, final Utilities.Callback<Boolean> callback) {
        GramWalletStorage gramWalletStorage = this.storage;
        if (gramWalletStorage != null) {
            gramWalletStorage.setProtectedByFingerprint(z, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda23
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    GramWallet.m23044$r8$lambda$ee1srmvU7aPZgH_HZqVanXbTQ(callback, (String) obj);
                }
            });
        } else if (callback != null) {
            callback.run(Boolean.FALSE);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$ee1srmvU7aPZ-gH_HZqVa-nXbTQ, reason: not valid java name */
    public static /* synthetic */ void m23044$r8$lambda$ee1srmvU7aPZgH_HZqVanXbTQ(Utilities.Callback callback, String str) {
        if (callback != null) {
            callback.run(Boolean.valueOf(str == null));
        }
    }

    public void emulateDisableBackup(final Utilities.Callback2<Long, String> callback2) {
        log("emulate disable backup: when ready");
        whenReadyGasless(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$emulateDisableBackup$11(callback2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$emulateDisableBackup$11(final Utilities.Callback2 callback2) {
        log("emulate disable backup: ready");
        if (getBalance() <= 0) {
            callback2.run(500000L, null);
            return;
        }
        WalletEngine2 walletEngine2 = this.engine;
        if (walletEngine2 == null) {
            err("emulate disable backup: no engine!");
            callback2.run(null, "NULL_ENGINE");
        } else {
            walletEngine2.emulateRotateKey(new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda44
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$emulateDisableBackup$10(callback2, (TL_wallet.walletTransaction) obj, (String) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$emulateDisableBackup$10(Utilities.Callback2 callback2, TL_wallet.walletTransaction wallettransaction, String str) {
        if (wallettransaction == null) {
            err("emulate disable backup, no transaction: ".concat(str != null ? str : "NULL_ERROR"));
            if (str == null) {
                str = "NULL_ERROR";
            }
            callback2.run(null, str);
            return;
        }
        callback2.run(Long.valueOf(wallettransaction.fee), null);
    }

    public static class PreparedDisableBackup implements AutoCloseable {
        public byte[] newPublicKey;
        public SecretPhrase newSecretPhrase;
        public TL_wallet.sendTransfer transfer;

        @Override // java.lang.AutoCloseable
        public void close() {
            SecretPhrase secretPhrase = this.newSecretPhrase;
            if (secretPhrase != null) {
                secretPhrase.close();
            }
        }
    }

    public void prepareDisableBackup(final Utilities.Callback2<PreparedDisableBackup, String> callback2) {
        log("prepare disable backup");
        getSecretPhrase(true, false, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda50
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$prepareDisableBackup$14(callback2, (GramWallet.SecretPhrase) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareDisableBackup$14(final Utilities.Callback2 callback2, SecretPhrase secretPhrase, String str) {
        if (secretPhrase == null) {
            err("prepare disable backup, cant get secret phrase: ".concat(str == null ? "NULL_ERROR" : str));
            if (str == null) {
                str = "NULL_ERROR";
            }
            callback2.run(null, str);
            return;
        }
        TL_update.TL_updateWalletGaslessInfo tL_updateWalletGaslessInfo = this.gasless;
        if (tL_updateWalletGaslessInfo != null && tL_updateWalletGaslessInfo.available) {
            TextUtils.isEmpty(tL_updateWalletGaslessInfo.relayer_address);
        }
        log("prepare disable backup: preparing transfer");
        this.engine.prepareRotateKey(secretPhrase, null, new Utilities.Callback4() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda66
            @Override // org.telegram.messenger.Utilities.Callback4
            public final void run(Object obj, Object obj2, Object obj3, Object obj4) {
                this.f$0.lambda$prepareDisableBackup$13(callback2, (TL_wallet.sendTransfer) obj, (GramWallet.SecretPhrase) obj2, (byte[]) obj3, (String) obj4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareDisableBackup$13(final Utilities.Callback2 callback2, TL_wallet.sendTransfer sendtransfer, SecretPhrase secretPhrase, byte[] bArr, String str) {
        if (sendtransfer == null || secretPhrase == null || bArr == null) {
            err("prepare disable backup, failed to prepare transfer: ".concat(str == null ? "NULL_ERROR" : str));
            if (str == null) {
                str = "NULL_ERROR";
            }
            callback2.run(null, str);
            return;
        }
        log("prepare disable backup: transfer ready, initing storage with new secret phrase!");
        final PreparedDisableBackup preparedDisableBackup = new PreparedDisableBackup();
        preparedDisableBackup.newPublicKey = bArr;
        preparedDisableBackup.newSecretPhrase = secretPhrase.copy();
        preparedDisableBackup.transfer = sendtransfer;
        this.storage.init(UserConfig.getInstance(this.currentAccount).getClientUserId(), bArr, secretPhrase, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda74
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$prepareDisableBackup$12(preparedDisableBackup, callback2, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareDisableBackup$12(PreparedDisableBackup preparedDisableBackup, Utilities.Callback2 callback2, String str) {
        if (str != null) {
            preparedDisableBackup.close();
            err("prepare disable backup, failed to save secret phrase to local storage: ".concat(str));
            callback2.run(null, str);
        } else {
            log("prepare disable backup: done!");
            callback2.run(preparedDisableBackup, null);
        }
    }

    public void disableBackup(final PreparedDisableBackup preparedDisableBackup, final Utilities.Callback<String> callback) {
        log("disable backup: getting phrase...");
        getSecretPhrase(new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$disableBackup$17(callback, preparedDisableBackup, (GramWallet.SecretPhrase) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disableBackup$17(Utilities.Callback callback, final PreparedDisableBackup preparedDisableBackup, SecretPhrase secretPhrase, String str) {
        if (secretPhrase == null) {
            err("disable backup: no current phrase ".concat(str == null ? "NULL_ERROR" : str));
            if (str == null) {
                str = "NULL_ERROR";
            }
            callback.run(str);
            return;
        }
        log("disable backup: ready!");
        if (this.engine == null) {
            err("disable backup: no engine");
            callback.run("NULL_ENGINE");
            return;
        }
        String address = getAddress();
        byte[] publicKey = getPublicKey();
        if (TextUtils.isEmpty(address)) {
            err("disable backup: empty address");
            callback.run("NULL_ADDRESS");
            return;
        }
        if (publicKey == null || publicKey.length <= 0) {
            err("disable backup: no public key");
            callback.run("NULL_PUBLIC_KEY");
            return;
        }
        try {
            final SecretPhrase secretPhraseCopy = preparedDisableBackup.newSecretPhrase.copy();
            final TransactionsList transactions = getTransactions();
            final TL_wallet.walletTransaction wallettransaction = new TL_wallet.walletTransaction();
            wallettransaction.key_change = true;
            wallettransaction.incoming = false;
            wallettransaction.pending = true;
            wallettransaction.comment = null;
            wallettransaction.comment_encrypted = false;
            wallettransaction.date = getConnectionsManager().getCurrentTime();
            wallettransaction.amount = 0L;
            TL_wallet.walletTransactionPeerAddress wallettransactionpeeraddress = new TL_wallet.walletTransactionPeerAddress();
            wallettransactionpeeraddress.address = address;
            wallettransaction.peer = wallettransactionpeeraddress;
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$disableBackup$15(secretPhraseCopy, wallettransaction, transactions);
                }
            };
            TL_wallet.sendTransfer sendtransfer = preparedDisableBackup.transfer;
            wallettransaction.gasless = sendtransfer.data_gasless != null;
            wallettransaction.random_id = sendtransfer.random_id;
            wallettransaction.gaslessMessageBodyHash = sendtransfer.gaslessMessageBodyHash;
            wallettransaction.normalMessageBodyHash = sendtransfer.normalMessageBodyHash;
            this.pendingTransactions.add(0, wallettransaction);
            transactions.updatedTransactions();
            transactions.notifyUpdate();
            onWalletPageUpdate();
            if (callback != null) {
                callback.run(null);
            }
            log("disable backup: prepared sendTransfer, sending");
            getConnectionsManager().sendRequestTyped(preparedDisableBackup.transfer, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda10
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$disableBackup$16(runnable, preparedDisableBackup, secretPhraseCopy, wallettransaction, (TLRPC.Updates) obj, (TLRPC.TL_error) obj2);
                }
            });
        } catch (IllegalStateException unused) {
            callback.run("CANCELLED");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disableBackup$15(SecretPhrase secretPhrase, TL_wallet.walletTransaction wallettransaction, TransactionsList transactionsList) {
        secretPhrase.close();
        log("disable backup: fail!");
        wallettransaction.pending = false;
        wallettransaction.failed = true;
        transactionsList.updatedTransactions();
        transactionsList.notifyUpdate();
        transactionsList.invalidate();
        onWalletPageUpdate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disableBackup$16(Runnable runnable, PreparedDisableBackup preparedDisableBackup, SecretPhrase secretPhrase, TL_wallet.walletTransaction wallettransaction, TLRPC.Updates updates, TLRPC.TL_error tL_error) {
        String str;
        TL_update.TL_updateSentWalletTransaction sentTransaction = getSentTransaction(updates);
        if (updates != null) {
            processTransferUpdates(updates);
        }
        if (sentTransaction == null || !isValidMessageHash(sentTransaction.msg_hash)) {
            runnable.run();
            StringBuilder sb = new StringBuilder("disable backup: sendTransfer: ");
            if (tL_error == null || (str = tL_error.text) == null) {
                str = "NULL_ERROR";
            }
            sb.append(str);
            err(sb.toString());
            return;
        }
        log("disable backup: transfer is sent, msg_hash=" + sentTransaction.msg_hash + ", gasless=" + sentTransaction.gasless);
        PendingDisableBackup pendingDisableBackup = new PendingDisableBackup();
        pendingDisableBackup.msg_hash = sentTransaction.msg_hash;
        pendingDisableBackup.publicKey = preparedDisableBackup.newPublicKey;
        pendingDisableBackup.secretPhrase = secretPhrase;
        if (sentTransaction.transaction != null) {
            pendingDisableBackup.disableBackup();
        } else {
            this.pendingDisableBackups.add(pendingDisableBackup);
        }
        applySentTransaction(wallettransaction, sentTransaction);
    }

    public void disableBackupWithoutUpdatingPhrase(final Utilities.Callback<String> callback) {
        log("disableBackupWithoutUpdatingPhrase");
        makeSureSecretPhraseBackedUpLocally(true, false, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$disableBackupWithoutUpdatingPhrase$20(callback, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disableBackupWithoutUpdatingPhrase$20(final Utilities.Callback callback, String str) {
        if (str != null) {
            err("disableBackupWithoutUpdatingPhrase: ".concat(str));
            callback.run(str);
        } else {
            log("sending disableBackup to server");
            PasswordRequest.open(this.currentAccount, new Utilities.CallbackReturn() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda11
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return GramWallet.$r8$lambda$WHd8U8a51BV9X0wGLnd_LsE9jGQ((TLRPC.InputCheckPasswordSRP) obj);
                }
            }, new Utilities.Callback3() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda12
                @Override // org.telegram.messenger.Utilities.Callback3
                public final void run(Object obj, Object obj2, Object obj3) {
                    this.f$0.lambda$disableBackupWithoutUpdatingPhrase$19(callback, (TL_wallet.WalletState) obj, (TLRPC.TL_error) obj2, (TLRPC.InputCheckPasswordSRP) obj3);
                }
            }, true, true);
        }
    }

    public static /* synthetic */ TLMethod $r8$lambda$WHd8U8a51BV9X0wGLnd_LsE9jGQ(TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP) {
        TL_wallet.disableBackup disablebackup = new TL_wallet.disableBackup();
        disablebackup.password = inputCheckPasswordSRP;
        return disablebackup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disableBackupWithoutUpdatingPhrase$19(Utilities.Callback callback, TL_wallet.WalletState walletState, TLRPC.TL_error tL_error, TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP) {
        if (tL_error != null) {
            StringBuilder sb = new StringBuilder("failed to disable backup: ");
            String str = tL_error.text;
            if (str == null) {
                str = "NULL_ERROR";
            }
            sb.append(str);
            err(sb.toString());
            String str2 = tL_error.text;
            callback.run(str2 != null ? str2 : "NULL_ERROR");
            return;
        }
        updateState(walletState);
        callback.run(null);
    }

    private static byte[] padMnemonicBackup(byte[] bArr) {
        byte[] bArr2 = new byte[Opcodes.XOR_INT_LIT16];
        Arrays.fill(bArr2, (byte) 32);
        try {
            boolean z = false;
            int i = 0;
            for (byte b2 : bArr) {
                if (SecretPhrase.isSeparator(b2)) {
                    z = i > 0;
                } else {
                    if (z) {
                        if (i == 215) {
                            throw new IllegalArgumentException("MNEMONIC_BACKUP_TOO_LONG");
                        }
                        int i2 = i + 1;
                        bArr2[i] = 32;
                        i = i2;
                        z = false;
                    }
                    if (i == 215) {
                        throw new IllegalArgumentException("MNEMONIC_BACKUP_TOO_LONG");
                    }
                    bArr2[i] = b2;
                    i++;
                }
            }
            return bArr2;
        } catch (RuntimeException e) {
            Arrays.fill(bArr2, (byte) 0);
            throw e;
        }
    }

    private static byte[][] splitMnemonicBackup(byte[] bArr, SecureRandom secureRandom) {
        if (bArr.length != 215) {
            f$$ExternalSyntheticBUOutline1.m215m("INVALID_MNEMONIC_BACKUP_SIZE");
            return null;
        }
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 3, Opcodes.XOR_INT_LIT16);
        try {
            secureRandom.nextBytes(bArr2[0]);
            secureRandom.nextBytes(bArr2[1]);
            for (int i = 0; i < bArr.length; i++) {
                bArr2[2][i] = (byte) ((bArr[i] ^ bArr2[0][i]) ^ bArr2[1][i]);
            }
            return bArr2;
        } catch (RuntimeException e) {
            for (byte[] bArr3 : bArr2) {
                Arrays.fill(bArr3, (byte) 0);
            }
            throw e;
        }
    }

    public void enableBackup(final Utilities.Callback<String> callback) {
        log("enable backup: when ready...");
        whenReady(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda34
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$enableBackup$26(callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$enableBackup$26(final Utilities.Callback callback) {
        log("enable backup: ready! getting secret phrase...");
        getSecretPhrase(new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda42
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$enableBackup$25(callback, (GramWallet.SecretPhrase) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$enableBackup$25(final Utilities.Callback callback, SecretPhrase secretPhrase, String str) {
        if (secretPhrase == null) {
            err("enable backup: didnt get secret phrase: ".concat(str == null ? "NULL_ERROR" : str));
            if (str == null) {
                str = "NULL_ERROR";
            }
            callback.run(str);
            return;
        }
        final SecretPhrase secretPhraseCopy = secretPhrase.copy();
        final Utilities.Callback callback2 = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda54
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                GramWallet.$r8$lambda$mcz77VYE2bDkJJFj1CSDXSGSVaA(secretPhraseCopy, callback, (String) obj);
            }
        };
        log("enable backup: got secret phrase");
        try {
            final byte[] bArrSecretPhraseToPublicKey = WalletEngine2.secretPhraseToPublicKey(secretPhraseCopy);
            getConnectionsManager().sendRequestTyped(new TL_wallet.getBackupHolderDcs(), new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda55
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) throws Throwable {
                    this.f$0.lambda$enableBackup$24(callback2, secretPhraseCopy, bArrSecretPhraseToPublicKey, (Vector) obj, (TLRPC.TL_error) obj2);
                }
            });
        } catch (Exception e) {
            err("failed to get public key from secret phrase", e);
            callback2.run(e.getMessage() != null ? e.getMessage() : "NULL_ERROR");
        }
    }

    public static /* synthetic */ void $r8$lambda$mcz77VYE2bDkJJFj1CSDXSGSVaA(SecretPhrase secretPhrase, Utilities.Callback callback, String str) {
        secretPhrase.close();
        callback.run(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0203 A[Catch: all -> 0x0225, TryCatch #3 {all -> 0x0225, blocks: (B:126:0x01f5, B:130:0x0207, B:129:0x0203), top: B:156:0x01f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0224 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0158 A[Catch: all -> 0x0097, Exception -> 0x0103, TRY_LEAVE, TryCatch #13 {all -> 0x0097, blocks: (B:25:0x0058, B:27:0x005c, B:38:0x0093, B:44:0x00a1, B:45:0x00a4, B:48:0x00a8, B:57:0x00ff, B:60:0x0105, B:63:0x0110, B:65:0x0114, B:84:0x014a, B:85:0x014d, B:87:0x0158, B:89:0x015c, B:91:0x0166), top: B:168:0x0058 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$enableBackup$24(final Utilities.Callback callback, SecretPhrase secretPhrase, byte[] bArr, Vector vector, TLRPC.TL_error tL_error) throws Throwable {
        byte[] bArr2;
        String str;
        byte[] bArrPadMnemonicBackup;
        byte[][] bArrSplitMnemonicBackup;
        byte[] bArrCopyBytes;
        Long l;
        byte[] bArr3;
        Long lValueOf;
        Long lValueOf2;
        int i;
        byte[] byteArray;
        String str2;
        String str3;
        Vector vector2 = vector;
        String str4 = "NULL_ERROR";
        if (vector2 == null) {
            StringBuilder sb = new StringBuilder("enable backup: didnt get backup holders: ");
            if (tL_error == null || (str2 = tL_error.text) == null) {
                str2 = "NULL_ERROR";
            }
            sb.append(str2);
            err(sb.toString());
            if (tL_error != null && (str3 = tL_error.text) != null) {
                str4 = str3;
            }
            callback.run(str4);
            return;
        }
        int size = vector2.objects.size();
        if (size != 3) {
            err("enable backup: expected three backup holders");
            callback.run("INVALID_BACKUP_HOLDERS_COUNT");
            return;
        }
        byte[][] bArr4 = new byte[size][];
        try {
            bArrCopyBytes = secretPhrase.copyBytes();
        } catch (Exception e) {
            e = e;
            str = "NULL_ERROR";
            bArr2 = null;
        } catch (Throwable th) {
            th = th;
            bArr2 = null;
        }
        try {
            bArrPadMnemonicBackup = padMnemonicBackup(bArrCopyBytes);
        } catch (Exception e2) {
            e = e2;
            str = "NULL_ERROR";
            bArr2 = bArrCopyBytes;
            bArrPadMnemonicBackup = null;
            bArrSplitMnemonicBackup = null;
            try {
                err("enable backup", e);
                callback.run(e.getMessage() == null ? str : e.getMessage());
                byte b2 = 0;
                if (bArr2 != null) {
                }
                if (bArrPadMnemonicBackup != null) {
                }
                if (bArrSplitMnemonicBackup != null) {
                }
            } catch (Throwable th2) {
                th = th2;
                if (bArr2 != null) {
                    Arrays.fill(bArr2, (byte) 0);
                }
                if (bArrPadMnemonicBackup != null) {
                    Arrays.fill(bArrPadMnemonicBackup, (byte) 0);
                }
                if (bArrSplitMnemonicBackup != null) {
                    for (byte[] bArr5 : bArrSplitMnemonicBackup) {
                        Arrays.fill(bArr5, (byte) 0);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            bArr2 = bArrCopyBytes;
            bArrPadMnemonicBackup = null;
            bArrSplitMnemonicBackup = null;
            if (bArr2 != null) {
            }
            if (bArrPadMnemonicBackup != null) {
            }
            if (bArrSplitMnemonicBackup != null) {
            }
            throw th;
        }
        try {
            bArrSplitMnemonicBackup = splitMnemonicBackup(bArrPadMnemonicBackup, new SecureRandom());
            try {
                try {
                    if (BuildVars.LOGS_ENABLED) {
                        byte[] bArr6 = new byte[bArrPadMnemonicBackup.length];
                        try {
                            for (byte[] bArr7 : bArrSplitMnemonicBackup) {
                                for (int i2 = 0; i2 < bArr7.length; i2++) {
                                    bArr6[i2] = (byte) (bArr6[i2] ^ bArr7[i2]);
                                }
                            }
                            log("enable backup: diagnostics sharesReconstructPaddedMnemonic=" + Arrays.equals(bArrPadMnemonicBackup, bArr6));
                            Arrays.fill(bArr6, (byte) 0);
                        } catch (Throwable th4) {
                            Arrays.fill(bArr6, (byte) 0);
                            throw th4;
                        }
                    }
                    int i3 = 0;
                    while (i3 < size) {
                        TL_wallet.holderDc holderdc = (TL_wallet.holderDc) vector2.objects.get(i3);
                        SerializedData serializedData = new SerializedData();
                        try {
                            TL_wallet.mnemonic_decryptedKeyPart mnemonic_decryptedkeypart = new TL_wallet.mnemonic_decryptedKeyPart();
                            mnemonic_decryptedkeypart.share = bArrSplitMnemonicBackup[i3];
                            mnemonic_decryptedkeypart.serializeToStream(serializedData);
                            byteArray = serializedData.toByteArray();
                        } catch (Throwable th5) {
                            th = th5;
                            str = str4;
                            l = null;
                            bArr3 = null;
                        }
                        try {
                            long jKey_generate_temporary_private_key = ConferenceCall.key_generate_temporary_private_key();
                            lValueOf = Long.valueOf(jKey_generate_temporary_private_key);
                            try {
                                byte[] bArrKey_to_public_key = ConferenceCall.key_to_public_key(jKey_generate_temporary_private_key);
                                str = str4;
                                int i4 = i3;
                                try {
                                    long jKey_from_public_key = ConferenceCall.key_from_public_key(holderdc.public_key);
                                    Long lValueOf3 = Long.valueOf(jKey_from_public_key);
                                    try {
                                        long jKey_from_ecdh = ConferenceCall.key_from_ecdh(jKey_generate_temporary_private_key, jKey_from_public_key);
                                        lValueOf2 = Long.valueOf(jKey_from_ecdh);
                                        try {
                                            byte[] bArrEncrypt_message_for_one = ConferenceCall.encrypt_message_for_one(jKey_from_ecdh, byteArray);
                                            byte[] bArr8 = new byte[bArrEncrypt_message_for_one.length + 32];
                                            byte[][] bArr9 = bArr4;
                                            System.arraycopy(bArrKey_to_public_key, 0, bArr8, 0, 32);
                                            System.arraycopy(bArrEncrypt_message_for_one, 0, bArr8, 32, bArrEncrypt_message_for_one.length);
                                            bArr9[i4] = bArr8;
                                            if (byteArray != null) {
                                                try {
                                                    Arrays.fill(byteArray, (byte) 0);
                                                } catch (Exception e3) {
                                                    e = e3;
                                                    bArr2 = bArrCopyBytes;
                                                    err("enable backup", e);
                                                    callback.run(e.getMessage() == null ? str : e.getMessage());
                                                    byte b22 = 0;
                                                    if (bArr2 != null) {
                                                        Arrays.fill(bArr2, (byte) 0);
                                                    }
                                                    if (bArrPadMnemonicBackup != null) {
                                                        Arrays.fill(bArrPadMnemonicBackup, (byte) 0);
                                                    }
                                                    if (bArrSplitMnemonicBackup != null) {
                                                        int length = bArrSplitMnemonicBackup.length;
                                                        int i5 = 0;
                                                        while (i5 < length) {
                                                            Arrays.fill(bArrSplitMnemonicBackup[i5], b22);
                                                            i5++;
                                                            b22 = 0;
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                            }
                                            serializedData.cleanup();
                                            Long[] lArr = {lValueOf2, lValueOf3, lValueOf};
                                            for (int i6 = 0; i6 < 3; i6++) {
                                                Long l2 = lArr[i6];
                                                if (l2 != null) {
                                                    try {
                                                        ConferenceCall.key_destroy(l2.longValue());
                                                    } catch (Exception unused) {
                                                    }
                                                }
                                            }
                                            i3 = i4 + 1;
                                            vector2 = vector;
                                            str4 = str;
                                            bArr4 = bArr9;
                                        } catch (Throwable th6) {
                                            th = th6;
                                            l = lValueOf3;
                                            bArr3 = byteArray;
                                            if (bArr3 != null) {
                                                Arrays.fill(bArr3, (byte) 0);
                                            }
                                            serializedData.cleanup();
                                            Long[] lArr2 = {lValueOf2, l, lValueOf};
                                            for (i = 0; i < 3; i++) {
                                                Long l3 = lArr2[i];
                                                if (l3 != null) {
                                                    try {
                                                        ConferenceCall.key_destroy(l3.longValue());
                                                    } catch (Exception unused2) {
                                                    }
                                                }
                                            }
                                            throw th;
                                        }
                                    } catch (Throwable th7) {
                                        th = th7;
                                        l = lValueOf3;
                                        bArr3 = byteArray;
                                        lValueOf2 = null;
                                        if (bArr3 != null) {
                                        }
                                        serializedData.cleanup();
                                        Long[] lArr22 = {lValueOf2, l, lValueOf};
                                        while (i < 3) {
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th8) {
                                    th = th8;
                                    bArr3 = byteArray;
                                    l = null;
                                    lValueOf2 = null;
                                    if (bArr3 != null) {
                                    }
                                    serializedData.cleanup();
                                    Long[] lArr222 = {lValueOf2, l, lValueOf};
                                    while (i < 3) {
                                    }
                                    throw th;
                                }
                            } catch (Throwable th9) {
                                th = th9;
                                str = str4;
                            }
                        } catch (Throwable th10) {
                            th = th10;
                            str = str4;
                            bArr3 = byteArray;
                            l = null;
                            lValueOf = null;
                            lValueOf2 = null;
                            if (bArr3 != null) {
                            }
                            serializedData.cleanup();
                            Long[] lArr2222 = {lValueOf2, l, lValueOf};
                            while (i < 3) {
                            }
                            throw th;
                        }
                    }
                    byte[][] bArr10 = bArr4;
                    byte b3 = 0;
                    if (bArrCopyBytes != null) {
                        Arrays.fill(bArrCopyBytes, (byte) 0);
                    }
                    if (bArrPadMnemonicBackup != null) {
                        Arrays.fill(bArrPadMnemonicBackup, (byte) 0);
                    }
                    if (bArrSplitMnemonicBackup != null) {
                        int length2 = bArrSplitMnemonicBackup.length;
                        int i7 = 0;
                        while (i7 < length2) {
                            Arrays.fill(bArrSplitMnemonicBackup[i7], b3);
                            i7++;
                            b3 = 0;
                        }
                    }
                    for (int i8 = 0; i8 < size; i8++) {
                        if (bArr10[i8] == null) {
                            err("part " + i8 + " is null");
                            callback.run("PART_" + i8 + "_NULL");
                            return;
                        }
                    }
                    final TL_wallet.enableBackup enablebackup = new TL_wallet.enableBackup();
                    enablebackup.parts = new ArrayList<>(Arrays.asList(bArr10));
                    enablebackup.new_public_key = bArr;
                    proveChallenge(secretPhrase, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda63
                        @Override // org.telegram.messenger.Utilities.Callback2
                        public final void run(Object obj, Object obj2) {
                            this.f$0.lambda$enableBackup$23(callback, enablebackup, (WalletEngine2.ImportedWalletProof) obj, (String) obj2);
                        }
                    });
                } catch (Exception e4) {
                    e = e4;
                    str = "NULL_ERROR";
                }
            } catch (Throwable th11) {
                th = th11;
                bArr2 = bArrCopyBytes;
                if (bArr2 != null) {
                }
                if (bArrPadMnemonicBackup != null) {
                }
                if (bArrSplitMnemonicBackup != null) {
                }
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            str = "NULL_ERROR";
            bArr2 = bArrCopyBytes;
            bArrSplitMnemonicBackup = null;
            err("enable backup", e);
            callback.run(e.getMessage() == null ? str : e.getMessage());
            byte b222 = 0;
            if (bArr2 != null) {
            }
            if (bArrPadMnemonicBackup != null) {
            }
            if (bArrSplitMnemonicBackup != null) {
            }
        } catch (Throwable th12) {
            th = th12;
            bArr2 = bArrCopyBytes;
            bArrSplitMnemonicBackup = null;
            if (bArr2 != null) {
            }
            if (bArrPadMnemonicBackup != null) {
            }
            if (bArrSplitMnemonicBackup != null) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$enableBackup$23(final Utilities.Callback callback, TL_wallet.enableBackup enablebackup, WalletEngine2.ImportedWalletProof importedWalletProof, String str) {
        if (importedWalletProof == null) {
            if (str == null) {
                str = "NULL_ERROR";
            }
            callback.run(str);
        } else {
            TL_wallet.walletOwnershipProof walletownershipproof = new TL_wallet.walletOwnershipProof();
            enablebackup.proof = walletownershipproof;
            walletownershipproof.timestamp = importedWalletProof.timestamp;
            walletownershipproof.signature = importedWalletProof.signature;
            getConnectionsManager().sendRequestTyped(enablebackup, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda72
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$enableBackup$22(callback, (TL_wallet.WalletState) obj, (TLRPC.TL_error) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$enableBackup$22(Utilities.Callback callback, TL_wallet.WalletState walletState, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            err("enable backup: server rejected request code=" + tL_error.code + " error=" + tL_error.text);
            String str = tL_error.text;
            if (str == null) {
                str = "NULL_ERROR";
            }
            callback.run(str);
            return;
        }
        log("enable backup: server accepted request");
        updateState(walletState);
        callback.run(null);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.GramWallet$1EmulationRequest, reason: invalid class name */
    public class C1EmulationRequest implements Runnable {
        private Runnable cancelEmulation;
        private volatile boolean cancelled;
        final /* synthetic */ String val$address;
        final /* synthetic */ long val$amount;
        final /* synthetic */ String val$comment;
        final /* synthetic */ byte[] val$comment_recipient_public_key;
        final /* synthetic */ Utilities.Callback2 val$whenDone;

        public C1EmulationRequest(String str, long j, String str2, byte[] bArr, Utilities.Callback2 callback2) {
            this.val$address = str;
            this.val$amount = j;
            this.val$comment = str2;
            this.val$comment_recipient_public_key = bArr;
            this.val$whenDone = callback2;
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            if (this.cancelled) {
                return;
            }
            WalletEngine2 walletEngine2 = GramWallet.this.engine;
            String str = this.val$address;
            long j = this.val$amount;
            String str2 = this.val$comment;
            byte[] bArr = this.val$comment_recipient_public_key;
            final Utilities.Callback2 callback2 = this.val$whenDone;
            this.cancelEmulation = walletEngine2.emulateSend(str, j, str2, bArr, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$1EmulationRequest$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$run$0(callback2, (TL_wallet.walletTransaction) obj, (String) obj2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(Utilities.Callback2 callback2, TL_wallet.walletTransaction wallettransaction, String str) {
            if (this.cancelled) {
                return;
            }
            callback2.run(wallettransaction, str);
        }

        public synchronized void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            Runnable runnable = this.cancelEmulation;
            if (runnable != null) {
                runnable.run();
                this.cancelEmulation = null;
            }
        }
    }

    public Runnable emulateSend(String str, long j, String str2, byte[] bArr, Utilities.Callback2<TL_wallet.walletTransaction, String> callback2) {
        final C1EmulationRequest c1EmulationRequest = new C1EmulationRequest(str, j, str2, bArr, callback2);
        whenReady(c1EmulationRequest);
        return new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                c1EmulationRequest.cancel();
            }
        };
    }

    public Runnable emulateSendNFT(String str, TL_wallet.nftItem nftitem, Utilities.Callback2<TL_wallet.walletTransaction, String> callback2) {
        return emulateSendNFT(str, nftitem, null, callback2);
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.GramWallet$2EmulationRequest, reason: invalid class name */
    public class C2EmulationRequest implements Runnable {
        private Runnable cancelEmulation;
        private volatile boolean cancelled;
        final /* synthetic */ String val$address;
        final /* synthetic */ TL_wallet.nftItem val$collectible;
        final /* synthetic */ String val$comment;
        final /* synthetic */ Utilities.Callback2 val$whenDone;

        public C2EmulationRequest(String str, TL_wallet.nftItem nftitem, String str2, Utilities.Callback2 callback2) {
            this.val$address = str;
            this.val$collectible = nftitem;
            this.val$comment = str2;
            this.val$whenDone = callback2;
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            if (this.cancelled) {
                return;
            }
            WalletEngine2 walletEngine2 = GramWallet.this.engine;
            String str = this.val$address;
            final TL_wallet.nftItem nftitem = this.val$collectible;
            String str2 = nftitem.address;
            final String str3 = this.val$comment;
            final Utilities.Callback2 callback2 = this.val$whenDone;
            this.cancelEmulation = walletEngine2.emulateSendNFT(str, str2, str3, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$2EmulationRequest$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$run$0(nftitem, str3, callback2, (TL_wallet.walletTransaction) obj, (String) obj2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(TL_wallet.nftItem nftitem, String str, Utilities.Callback2 callback2, TL_wallet.walletTransaction wallettransaction, String str2) {
            if (wallettransaction != null) {
                wallettransaction.nft = nftitem;
                wallettransaction.comment = str;
                wallettransaction.date = GramWallet.this.getConnectionsManager().getCurrentTime();
            }
            if (this.cancelled) {
                return;
            }
            callback2.run(wallettransaction, str2);
        }

        public synchronized void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            Runnable runnable = this.cancelEmulation;
            if (runnable != null) {
                runnable.run();
                this.cancelEmulation = null;
            }
        }
    }

    public Runnable emulateSendNFT(String str, TL_wallet.nftItem nftitem, String str2, Utilities.Callback2<TL_wallet.walletTransaction, String> callback2) {
        final C2EmulationRequest c2EmulationRequest = new C2EmulationRequest(str, nftitem, str2, callback2);
        whenReady(c2EmulationRequest);
        return new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                c2EmulationRequest.cancel();
            }
        };
    }

    public void send(TLRPC.User user, String str, long j, String str2, byte[] bArr, String str3, Utilities.Callback<String> callback, Utilities.Callback<TL_wallet.walletTransaction> callback2) {
        send(user, str, j, str2, bArr, null, str3, callback, callback2);
    }

    public static TL_wallet.WalletTransactionPeer createRecipientPeer(TLRPC.User user, String str, String str2) {
        TL_wallet.WalletTransactionPeer wallettransactionpeeraddress;
        if (user != null) {
            wallettransactionpeeraddress = new TL_wallet.walletTransactionPeerUser();
            wallettransactionpeeraddress.user_id = user.id;
        } else {
            wallettransactionpeeraddress = new TL_wallet.walletTransactionPeerAddress();
        }
        wallettransactionpeeraddress.address = str;
        if (TextUtils.isEmpty(str2) || "null".equals(str2)) {
            str2 = null;
        }
        wallettransactionpeeraddress.domain = str2;
        return wallettransactionpeeraddress;
    }

    public static TL_wallet.WalletTransactionPeer mergeRecipientPeer(TL_wallet.WalletTransactionPeer walletTransactionPeer, TL_wallet.WalletTransactionPeer walletTransactionPeer2) {
        if (walletTransactionPeer2 != null && walletTransactionPeer != null && addressEquals(walletTransactionPeer.address, walletTransactionPeer2.address)) {
            if (TextUtils.isEmpty(walletTransactionPeer2.domain) || "null".equals(walletTransactionPeer2.domain)) {
                walletTransactionPeer2.domain = walletTransactionPeer.domain;
            }
            if ((walletTransactionPeer2 instanceof TL_wallet.walletTransactionPeerAddress) && (walletTransactionPeer instanceof TL_wallet.walletTransactionPeerUser)) {
                walletTransactionPeer.domain = walletTransactionPeer2.domain;
                return walletTransactionPeer;
            }
        }
        return walletTransactionPeer2;
    }

    public void sendNFT(TLRPC.User user, String str, TL_wallet.nftItem nftitem, String str2, Utilities.Callback<String> callback) {
        send(user, str, 0L, str2, (byte[]) null, nftitem, (String) null, callback);
    }

    private void send(TLRPC.User user, String str, long j, String str2, byte[] bArr, TL_wallet.nftItem nftitem, String str3, Utilities.Callback<String> callback) {
        send(user, str, j, str2, bArr, nftitem, str3, callback, null);
    }

    private void send(TLRPC.User user, String str, long j, String str2, byte[] bArr, TL_wallet.nftItem nftitem, String str3, Utilities.Callback<String> callback, Utilities.Callback<TL_wallet.walletTransaction> callback2) {
        send(user, str, j, str2, bArr, nftitem, str3, callback, callback2, null);
    }

    private static String depositAddress(TL_stars.starGiftDepositPayload stargiftdepositpayload) {
        int iIndexOf = stargiftdepositpayload.nft_address.indexOf(58);
        String str = stargiftdepositpayload.nft_address;
        return iIndexOf >= 0 ? rawAddressToFriendly(str, true) : str;
    }

    private static GramWalletTonConnect.Transaction depositTransaction(TL_stars.starGiftDepositPayload stargiftdepositpayload) {
        return new GramWalletTonConnect.Transaction(new JSONObject().put("messages", new JSONArray().put(new JSONObject().put("address", depositAddress(stargiftdepositpayload)).put("amount", Long.toString(stargiftdepositpayload.amount)).put("payload", Base64.encodeToString(stargiftdepositpayload.payload, 2)))));
    }

    public void depositNFT(TLRPC.User user, TL_wallet.nftItem nftitem, TL_stars.starGiftDepositPayload stargiftdepositpayload, Utilities.Callback<String> callback, final Utilities.Callback<Boolean> callback2) {
        try {
            send(user, depositAddress(stargiftdepositpayload), 0L, null, null, nftitem, null, callback, callback2 == null ? null : new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda71
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$depositNFT$27(callback2, (TL_wallet.walletTransaction) obj);
                }
            }, depositTransaction(stargiftdepositpayload));
        } catch (Exception e) {
            err("depositNFT: invalid payload", e);
            if (callback != null) {
                callback.run(e.getMessage() == null ? "NULL_ERROR" : e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$depositNFT$27(Utilities.Callback callback, TL_wallet.walletTransaction wallettransaction) {
        this.completionCallbacks.put(wallettransaction, callback);
    }

    public Runnable emulateDepositNFT(TL_stars.starGiftDepositPayload stargiftdepositpayload, final Utilities.Callback2<TL_wallet.walletTransaction, String> callback2) {
        try {
            final GramWalletTonConnect.Transaction transactionDepositTransaction = depositTransaction(stargiftdepositpayload);
            final boolean[] zArr = new boolean[1];
            whenReady(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda78
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$emulateDepositNFT$31(zArr, callback2, transactionDepositTransaction);
                }
            });
            return new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda79
                @Override // java.lang.Runnable
                public final void run() {
                    GramWallet.$r8$lambda$DquQhtgIG4Fr2L6UlrPvQvkyN0Y(zArr);
                }
            };
        } catch (Exception e) {
            err("emulateDepositNFT: invalid payload", e);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda76
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.Callback2 callback22 = callback2;
                    Exception exc = e;
                    callback22.run(null, exc.getMessage() == null ? "NULL_ERROR" : exc.getMessage());
                }
            });
            return new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda77
                @Override // java.lang.Runnable
                public final void run() {
                    GramWallet.$r8$lambda$G_Z54VdeqMehSKZUXyM4M41ila0();
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$emulateDepositNFT$31(final boolean[] zArr, final Utilities.Callback2 callback2, GramWalletTonConnect.Transaction transaction) {
        if (zArr[0]) {
            return;
        }
        WalletEngine2 walletEngine2 = this.engine;
        if (walletEngine2 == null) {
            callback2.run(null, "NULL_ENGINE");
        } else {
            walletEngine2.previewTonConnect(transaction, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    GramWallet.$r8$lambda$PQVdRVcsXYgkHVsDd40Yz18Ma_4(zArr, callback2, (TL_wallet.walletTransaction) obj, (String) obj2);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$PQVdRVcsXYgkHVsDd40Yz18Ma_4(boolean[] zArr, Utilities.Callback2 callback2, TL_wallet.walletTransaction wallettransaction, String str) {
        if (zArr[0]) {
            return;
        }
        callback2.run(wallettransaction, str);
    }

    public static /* synthetic */ void $r8$lambda$DquQhtgIG4Fr2L6UlrPvQvkyN0Y(boolean[] zArr) {
        zArr[0] = true;
    }

    private void send(final TLRPC.User user, final String str, final long j, final String str2, final byte[] bArr, final TL_wallet.nftItem nftitem, final String str3, final Utilities.Callback<String> callback, final Utilities.Callback<TL_wallet.walletTransaction> callback2, final GramWalletTonConnect.Transaction transaction) {
        final String address = getAddress();
        log("send to " + str + ", amount " + j + ", when ready...");
        whenReady(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda33
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$send$41(str, callback, nftitem, address, str2, bArr, j, transaction, user, str3, callback2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$41(final String str, final Utilities.Callback callback, final TL_wallet.nftItem nftitem, final String str2, final String str3, final byte[] bArr, final long j, final GramWalletTonConnect.Transaction transaction, final TLRPC.User user, final String str4, final Utilities.Callback callback2) {
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda39
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$send$39(str, callback, nftitem, str2, str3, bArr, j, transaction, user, str4, callback2);
            }
        };
        if (needsPasscode() && !needsFingerprint()) {
            log("send " + str + ": asking passcode");
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment == null) {
                return;
            }
            BaseFragment.BottomSheetParams bottomSheetParams = new BaseFragment.BottomSheetParams();
            bottomSheetParams.transitionFromLeft = true;
            bottomSheetParams.allowNestedScroll = false;
            final boolean[] zArr = {false};
            PasscodeActivity passcodeActivity = new PasscodeActivity(3) { // from class: org.telegram.ui.Wallet.GramWallet.1
                @Override // org.telegram.ui.PasscodeActivity, org.telegram.ui.ActionBar.BaseFragment
                public void onFragmentDestroy() {
                    Utilities.Callback callback3;
                    super.onFragmentDestroy();
                    if (zArr[0] || (callback3 = callback) == null) {
                        return;
                    }
                    callback3.run("PASSCODE_FAILED");
                }
            };
            passcodeActivity.setOnEnteredCode(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    GramWallet.$r8$lambda$Sl37HSJU_46U6C3btAQJUsfLtmc(zArr, runnable);
                }
            });
            safeLastFragment.showAsSheet(passcodeActivity, bottomSheetParams);
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$39(final String str, final Utilities.Callback callback, final TL_wallet.nftItem nftitem, final String str2, final String str3, final byte[] bArr, final long j, final GramWalletTonConnect.Transaction transaction, final TLRPC.User user, final String str4, final Utilities.Callback callback2) {
        log("send " + str + ": ready, get secret phrase");
        getSecretPhrase(new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda45
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$send$38(callback, nftitem, str2, str3, bArr, j, transaction, user, str, str4, callback2, (GramWallet.SecretPhrase) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0137  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$send$38(Utilities.Callback callback, final TL_wallet.nftItem nftitem, String str, String str2, byte[] bArr, long j, GramWalletTonConnect.Transaction transaction, final TLRPC.User user, final String str3, String str4, Utilities.Callback callback2, SecretPhrase secretPhrase, String str5) {
        long j2;
        SendMessagesHelper sendMessagesHelper;
        final MessageObject messageObjectCreateSendingGramTransfer;
        String str6;
        if (str5 != null) {
            if (callback != null) {
                callback.run(str5);
                return;
            } else {
                BulletinFactory.showError(str5);
                return;
            }
        }
        if (secretPhrase == null) {
            if (callback != null) {
                callback.run("NULL_ERROR");
                return;
            } else {
                BulletinFactory.showError("NULL_ERROR");
                return;
            }
        }
        if (this.engine == null) {
            if (callback != null) {
                callback.run("NULL_ENGINE");
                return;
            } else {
                BulletinFactory.showError("NULL_ENGINE");
                return;
            }
        }
        if (nftitem != null && !addressEquals(str, getAddress())) {
            if (callback != null) {
                callback.run("WALLET_CHANGED");
                return;
            }
            return;
        }
        final TransactionsList transactions = getTransactions();
        final TL_wallet.walletTransaction wallettransaction = new TL_wallet.walletTransaction();
        wallettransaction.incoming = false;
        wallettransaction.pending = true;
        wallettransaction.comment = str2;
        wallettransaction.comment_encrypted = false;
        wallettransaction.comment_encrypted_preparing = (nftitem != null || bArr == null || TextUtils.isEmpty(str2)) ? false : true;
        wallettransaction.date = getConnectionsManager().getCurrentTime();
        wallettransaction.amount = j;
        wallettransaction.nft = nftitem;
        if (transaction != null && nftitem != null) {
            TL_wallet.walletTransactionPeerTelegramGift wallettransactionpeertelegramgift = new TL_wallet.walletTransactionPeerTelegramGift();
            wallettransactionpeertelegramgift.own_profile = user != null && user.id == UserConfig.getInstance(this.currentAccount).getClientUserId();
            wallettransaction.peer = wallettransactionpeertelegramgift;
        } else {
            wallettransaction.peer = createRecipientPeer(user, str3, str4);
        }
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$send$33(wallettransaction, nftitem, transactions);
            }
        };
        long jNextLong = Utilities.random.nextLong();
        wallettransaction.random_id = jNextLong;
        this.pendingTransactions.add(0, wallettransaction);
        if (nftitem != null) {
            getCollectibles().onTransferQueued(wallettransaction);
        }
        transactions.updatedTransactions();
        transactions.notifyUpdate();
        onWalletPageUpdate();
        SendMessagesHelper sendMessagesHelper2 = SendMessagesHelper.getInstance(this.currentAccount);
        if (user == null || user.id == UserConfig.getInstance(this.currentAccount).getClientUserId() || nftitem != null) {
            j2 = jNextLong;
            sendMessagesHelper = sendMessagesHelper2;
            messageObjectCreateSendingGramTransfer = null;
        } else {
            j2 = jNextLong;
            sendMessagesHelper = sendMessagesHelper2;
            messageObjectCreateSendingGramTransfer = sendMessagesHelper.createSendingGramTransfer(user, str3, j, wallettransaction.comment, wallettransaction.comment_encrypted, wallettransaction.comment_encrypted_preparing, j2);
        }
        wallettransaction.localMessageId = messageObjectCreateSendingGramTransfer == null ? 0 : messageObjectCreateSendingGramTransfer.getId();
        if (callback2 != null) {
            callback2.run(wallettransaction);
        }
        if (callback != null) {
            callback.run(null);
        }
        TL_update.TL_updateWalletGaslessInfo tL_updateWalletGaslessInfo = this.gasless;
        if (tL_updateWalletGaslessInfo == null || TextUtils.isEmpty(tL_updateWalletGaslessInfo.relayer_address)) {
            str6 = null;
        } else {
            TL_update.TL_updateWalletGaslessInfo tL_updateWalletGaslessInfo2 = this.gasless;
            if (tL_updateWalletGaslessInfo2.available) {
                str6 = tL_updateWalletGaslessInfo2.relayer_address;
            }
        }
        log("prepare sending");
        final SendMessagesHelper sendMessagesHelper3 = sendMessagesHelper;
        final long j3 = j2;
        final Utilities.Callback3<TL_wallet.sendTransfer, String, String> callback3 = new Utilities.Callback3() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda60
            @Override // org.telegram.messenger.Utilities.Callback3
            public final void run(Object obj, Object obj2, Object obj3) {
                this.f$0.lambda$send$35(runnable, sendMessagesHelper3, messageObjectCreateSendingGramTransfer, wallettransaction, str3, transactions, j3, user, (TL_wallet.sendTransfer) obj, (String) obj2, (String) obj3);
            }
        };
        if (transaction != null) {
            this.engine.prepareTonConnectTransfer(secretPhrase, transaction, "deposit:" + j3, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda61
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    callback3.run((TL_wallet.sendTransfer) obj, null, (String) obj2);
                }
            });
            return;
        }
        WalletEngine2 walletEngine2 = this.engine;
        if (nftitem != null) {
            walletEngine2.prepareSendNFT(secretPhrase, str3, nftitem.address, str2, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda62
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    callback3.run((TL_wallet.sendTransfer) obj, null, (String) obj2);
                }
            });
        } else {
            walletEngine2.prepareSend(secretPhrase, str3, j, str2, bArr, str6, callback3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$33(TL_wallet.walletTransaction wallettransaction, TL_wallet.nftItem nftitem, TransactionsList transactionsList) {
        CollectiblesList collectiblesList;
        if (wallettransaction.pending || wallettransaction.failed || TextUtils.isEmpty(wallettransaction.id)) {
            wallettransaction.pending = false;
            wallettransaction.failed = true;
            Utilities.Callback<Boolean> callbackRemove = this.completionCallbacks.remove(wallettransaction);
            if (callbackRemove != null) {
                callbackRemove.run(Boolean.FALSE);
            }
            if (nftitem != null && (collectiblesList = this.nfts) != null) {
                collectiblesList.onTransferUpdated(wallettransaction);
            }
            transactionsList.updatedTransactions();
            transactionsList.notifyUpdate();
            transactionsList.invalidate();
            onWalletPageUpdate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$35(final Runnable runnable, final SendMessagesHelper sendMessagesHelper, final MessageObject messageObject, final TL_wallet.walletTransaction wallettransaction, String str, TransactionsList transactionsList, long j, TLRPC.User user, TL_wallet.sendTransfer sendtransfer, String str2, String str3) {
        if (sendtransfer == null) {
            runnable.run();
            sendMessagesHelper.completeSendingGramTransfer(messageObject, null, false);
            err("failed sending: ".concat(str3 != null ? str3 : "NULL_ERROR"));
            return;
        }
        if (str2 != null) {
            wallettransaction.comment = str2;
            wallettransaction.comment_encrypted = true;
        }
        if (addressEquals(getAddress(), str)) {
            sendtransfer.data_gasless = null;
        }
        wallettransaction.comment_encrypted_preparing = false;
        sendMessagesHelper.updateSendingGramTransferComment(messageObject, wallettransaction.comment, wallettransaction.comment_encrypted);
        wallettransaction.gasless = sendtransfer.data_gasless != null;
        wallettransaction.gaslessMessageBodyHash = sendtransfer.gaslessMessageBodyHash;
        wallettransaction.normalMessageBodyHash = sendtransfer.normalMessageBodyHash;
        transactionsList.updatedTransactions();
        transactionsList.notifyUpdate();
        sendtransfer.random_id = j;
        sendtransfer.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(user);
        onWalletPageUpdate();
        log("prepared sendTransfer, sending");
        getConnectionsManager().sendRequestTyped(sendtransfer, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda64
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$send$34(wallettransaction, sendMessagesHelper, messageObject, runnable, (TLRPC.Updates) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$send$34(TL_wallet.walletTransaction wallettransaction, SendMessagesHelper sendMessagesHelper, MessageObject messageObject, Runnable runnable, TLRPC.Updates updates, TLRPC.TL_error tL_error) {
        String str;
        TL_update.TL_updateSentWalletTransaction sentTransaction = getSentTransaction(updates);
        boolean z = tL_error == null && sentTransaction != null && isValidMessageHash(sentTransaction.msg_hash);
        sendMessagesHelper.completeSendingGramTransfer(messageObject, updates, z || (!wallettransaction.pending && !wallettransaction.failed && !TextUtils.isEmpty(wallettransaction.id)));
        if (updates != null) {
            processTransferUpdates(updates);
        }
        if (!z) {
            runnable.run();
            StringBuilder sb = new StringBuilder("sendTransfer: ");
            if (tL_error == null || (str = tL_error.text) == null) {
                str = "NULL_ERROR";
            }
            sb.append(str);
            err(sb.toString());
            return;
        }
        log("transfer is sent, msg_hash=" + sentTransaction.msg_hash + ", gasless=" + sentTransaction.gasless);
        applySentTransaction(wallettransaction, sentTransaction);
    }

    public static /* synthetic */ void $r8$lambda$Sl37HSJU_46U6C3btAQJUsfLtmc(boolean[] zArr, Runnable runnable) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        runnable.run();
    }

    public void decryptTransactionComment(final String str, final String str2, final Utilities.Callback2<String, String> callback2) {
        log("decrypting transaction comment");
        getSecretPhrase(true, false, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda43
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$decryptTransactionComment$42(callback2, str2, str, (GramWallet.SecretPhrase) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$decryptTransactionComment$42(Utilities.Callback2 callback2, String str, String str2, SecretPhrase secretPhrase, String str3) {
        if (secretPhrase == null) {
            err("decrypting transaction comment, failed to get secret phrase");
            if (str3 == null) {
                str3 = "NULL_ERROR";
            }
            callback2.run(null, str3);
            return;
        }
        try {
            callback2.run(WalletEngine2.decryptComment(secretPhrase, str, str2), null);
        } catch (Exception e) {
            this.err("failed to decrypt comment", e);
            callback2.run(null, e.getMessage() != null ? e.getMessage() : "NULL_ERROR");
        }
    }

    public static class PreviousWallet {
        public final String address;
        public long balance;
        public int lastUsage;
        public boolean loading;
        public boolean outdated;
        public byte[] publicKey;
        private final GramWalletStorage storage;

        private PreviousWallet(GramWalletStorage gramWalletStorage) {
            this.balance = -1L;
            this.loading = true;
            this.outdated = false;
            this.storage = gramWalletStorage;
            this.address = gramWalletStorage.getAddress();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$43() {
        refreshPreviousWallets();
        notifyUpdate();
    }

    public List<PreviousWallet> getPreviousWallets() {
        return this.previousWalletsView;
    }

    public long getBalanceOfPreviousWallets() {
        ArrayList<PreviousWallet> arrayList = this.previousWallets;
        int size = arrayList.size();
        int i = 0;
        long j = 0;
        while (i < size) {
            PreviousWallet previousWallet = arrayList.get(i);
            i++;
            PreviousWallet previousWallet2 = previousWallet;
            if (!previousWallet2.outdated) {
                long j2 = previousWallet2.balance;
                if (j2 >= 0) {
                    j += j2;
                }
            }
        }
        return j;
    }

    private void refreshPreviousWallets() {
        this.previousWalletAddress = getAddress();
        ArrayList<String> wallets = GramWalletStorage.getWallets(ApplicationLoader.applicationContext, UserConfig.getInstance(this.currentAccount).getClientUserId());
        wallets.remove(this.previousWalletAddress);
        HashMap map = new HashMap();
        ArrayList<PreviousWallet> arrayList = this.previousWallets;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            PreviousWallet previousWallet = arrayList.get(i2);
            i2++;
            PreviousWallet previousWallet2 = previousWallet;
            map.put(previousWallet2.address, previousWallet2);
        }
        this.previousWallets.clear();
        int size2 = wallets.size();
        while (i < size2) {
            String str = wallets.get(i);
            i++;
            String str2 = str;
            PreviousWallet previousWallet3 = (PreviousWallet) map.get(str2);
            if (previousWallet3 == null) {
                previousWallet3 = new PreviousWallet(new GramWalletStorage(ApplicationLoader.applicationContext, this.currentAccount, str2));
            }
            previousWallet3.lastUsage = previousWallet3.storage.getLastUsage();
            this.previousWallets.add(previousWallet3);
            getAddressBalanceAndPublicKey(str2);
            updatePreviousWallet(this.cachedAddressInfos.get(str2));
        }
        Collections.sort(this.previousWallets, new Comparator() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda16
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.compare(((GramWallet.PreviousWallet) obj2).lastUsage, ((GramWallet.PreviousWallet) obj).lastUsage);
            }
        });
    }

    private void updatePreviousWallet(AddressInfo addressInfo) {
        if (addressInfo == null) {
            return;
        }
        ArrayList<PreviousWallet> arrayList = this.previousWallets;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            PreviousWallet previousWallet = arrayList.get(i);
            i++;
            PreviousWallet previousWallet2 = previousWallet;
            if (TextUtils.equals(previousWallet2.address, addressInfo.address)) {
                previousWallet2.balance = addressInfo.balance;
                byte[] bArr = addressInfo.publicKey;
                previousWallet2.publicKey = bArr;
                previousWallet2.loading = !addressInfo.done;
                previousWallet2.outdated = (bArr == null || bArr.length <= 0 || previousWallet2.storage.containsSecretPhrase(addressInfo.publicKey)) ? false : true;
            }
        }
    }

    public void getSecretPhrase(Utilities.Callback2<SecretPhrase, String> callback2) {
        getSecretPhrase(false, true, callback2);
    }

    public void getSecretPhrase(final boolean z, final boolean z2, final Utilities.Callback2<SecretPhrase, String> callback2) {
        log("getSecretPhrase: whenReady...");
        whenReady(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getSecretPhrase$49(callback2, z, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getSecretPhrase$49(final Utilities.Callback2 callback2, boolean z, boolean z2) {
        log("getSecretPhrase: ready!");
        TL_wallet.TL_walletState tL_walletState = (TL_wallet.TL_walletState) this.state;
        if (this.storage.containsSecretPhrase(tL_walletState.public_key)) {
            log("getSecretPhrase: device has secured phrase, requesting");
            this.storage.getSecretPhrase(tL_walletState.public_key, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda51
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    GramWallet.SecretPhrase secretPhrase = (GramWallet.SecretPhrase) obj;
                    callback2.run(secretPhrase, secretPhrase == null ? "LOCAL_STORAGE_ERROR" : null);
                }
            });
        } else if (!tL_walletState.backup_enabled) {
            err("getSecretPhrase: no server backup!");
            callback2.run(null, "NO_LOCAL_BACKUP");
        } else {
            log("getSecretPhrase: exportSecretPhrase through password request");
            PasswordRequest.open(this.currentAccount, new Utilities.CallbackReturn() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda52
                @Override // org.telegram.messenger.Utilities.CallbackReturn
                public final Object run(Object obj) {
                    return GramWallet.m23039$r8$lambda$UUVWrRLrhkrWWMFWzn30ISiNs((TLRPC.InputCheckPasswordSRP) obj);
                }
            }, new Utilities.Callback3() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda53
                @Override // org.telegram.messenger.Utilities.Callback3
                public final void run(Object obj, Object obj2, Object obj3) {
                    this.f$0.lambda$getSecretPhrase$48(callback2, (TL_wallet.secretPhraseParts) obj, (TLRPC.TL_error) obj2, (TLRPC.InputCheckPasswordSRP) obj3);
                }
            }, z, z2);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$UUVWrRL-rhkrWWMF-Wzn30ISiNs, reason: not valid java name */
    public static /* synthetic */ TLMethod m23039$r8$lambda$UUVWrRLrhkrWWMFWzn30ISiNs(TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP) {
        TL_wallet.exportSecretPhrase exportsecretphrase = new TL_wallet.exportSecretPhrase();
        exportsecretphrase.password = inputCheckPasswordSRP;
        return exportsecretphrase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getSecretPhrase$48(final Utilities.Callback2 callback2, TL_wallet.secretPhraseParts secretphraseparts, TLRPC.TL_error tL_error, TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP) {
        String str;
        String str2;
        if (secretphraseparts == null) {
            StringBuilder sb = new StringBuilder("getSecretPhrase: no secret parts: ");
            String str3 = "NULL_ERROR";
            if (tL_error == null || (str = tL_error.text) == null) {
                str = "NULL_ERROR";
            }
            sb.append(str);
            err(sb.toString());
            if (tL_error != null && (str2 = tL_error.text) != null) {
                str3 = str2;
            }
            callback2.run(null, str3);
            return;
        }
        fetchSecretPhrase(secretphraseparts, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda65
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                callback2.run((GramWallet.SecretPhrase) obj, (String) obj2);
            }
        });
    }

    private void fetchSecretPhrase(TL_wallet.secretPhraseParts secretphraseparts, Utilities.Callback2<SecretPhrase, String> callback2) {
        final GramWallet gramWallet = this;
        ArrayList<Integer> arrayList = secretphraseparts.dcs;
        if (arrayList.size() <= 0) {
            gramWallet.err("getSecretPhrase: no secret parts, zero dcs");
            callback2.run(null, "WALLET_SECRET_PARTS_EMPTY");
            return;
        }
        final Utilities.Callback2<SecretPhrase, String> callback22 = callback2;
        final AlertDialog alertDialog = new AlertDialog(gramWallet.getContext(), 3);
        alertDialog.showDelayed(500L);
        final long jKey_generate_temporary_private_key = ConferenceCall.key_generate_temporary_private_key();
        byte[] bArrKey_to_public_key = ConferenceCall.key_to_public_key(jKey_generate_temporary_private_key);
        final boolean[] zArr = new boolean[arrayList.size()];
        final TL_wallet.encryptedSecretPhrasePart[] encryptedsecretphrasepartArr = new TL_wallet.encryptedSecretPhrasePart[arrayList.size()];
        final TLRPC.TL_error[] tL_errorArr = new TLRPC.TL_error[arrayList.size()];
        final int i = 0;
        while (i < arrayList.size()) {
            final int iIntValue = arrayList.get(i).intValue();
            gramWallet.log("getSecretPhrase: requesting " + i + " part from dc" + iIntValue);
            TL_wallet.fetchEncryptedSecretPhrasePart fetchencryptedsecretphrasepart = new TL_wallet.fetchEncryptedSecretPhrasePart();
            fetchencryptedsecretphrasepart.token = secretphraseparts.token;
            fetchencryptedsecretphrasepart.public_key = bArrKey_to_public_key;
            gramWallet.getConnectionsManager().sendRequestTyped(fetchencryptedsecretphrasepart, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda75
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$fetchSecretPhrase$50(zArr, i, encryptedsecretphrasepartArr, tL_errorArr, iIntValue, jKey_generate_temporary_private_key, callback22, alertDialog, (TL_wallet.encryptedSecretPhrasePart) obj, (TLRPC.TL_error) obj2);
                }
            }, iIntValue, 0);
            i++;
            gramWallet = this;
            callback22 = callback2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fetchSecretPhrase$50(boolean[] zArr, int i, TL_wallet.encryptedSecretPhrasePart[] encryptedsecretphrasepartArr, TLRPC.TL_error[] tL_errorArr, int i2, long j, Utilities.Callback2 callback2, AlertDialog alertDialog, TL_wallet.encryptedSecretPhrasePart encryptedsecretphrasepart, TLRPC.TL_error tL_error) {
        boolean z = true;
        zArr[i] = true;
        encryptedsecretphrasepartArr[i] = encryptedsecretphrasepart;
        tL_errorArr[i] = tL_error;
        log("getSecretPhrase: received " + i + " part from dc" + i2);
        for (int i3 = 0; i3 < zArr.length; i3++) {
            if (!zArr[i3]) {
                z = false;
            }
        }
        if (z) {
            log("getSecretPhrase: received all parts");
            completeFetchingSecretPhrase(j, encryptedsecretphrasepartArr, tL_errorArr, callback2, alertDialog);
        }
    }

    private void completeFetchingSecretPhrase(final long j, final TL_wallet.encryptedSecretPhrasePart[] encryptedsecretphrasepartArr, TLRPC.TL_error[] tL_errorArr, final Utilities.Callback2<SecretPhrase, String> callback2, final AlertDialog alertDialog) {
        final Utilities.Callback2 callback22 = new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$completeFetchingSecretPhrase$53(alertDialog, callback2, (GramWallet.SecretPhrase) obj, (String) obj2);
            }
        };
        for (int i = 0; i < encryptedsecretphrasepartArr.length; i++) {
            TL_wallet.encryptedSecretPhrasePart encryptedsecretphrasepart = encryptedsecretphrasepartArr[i];
            if (encryptedsecretphrasepart == null) {
                TLRPC.TL_error tL_error = tL_errorArr[i];
                StringBuilder sb = new StringBuilder("getSecretPhrase: part ");
                sb.append(i);
                sb.append(": ");
                String str = tL_error.text;
                if (str == null) {
                    str = "NULL_ERROR";
                }
                sb.append(str);
                err(sb.toString());
                String str2 = tL_error.text;
                callback22.run(null, str2 != null ? str2 : "NULL_ERROR");
                return;
            }
            if (encryptedsecretphrasepart.data.length < 33) {
                err("getSecretPhrase: part " + i + " length < 33 (len=" + encryptedsecretphrasepartArr[i].data.length + ")");
                StringBuilder sb2 = new StringBuilder("WALLET_PART_");
                sb2.append(i);
                sb2.append("_INVALID");
                callback22.run(null, sb2.toString());
                return;
            }
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$completeFetchingSecretPhrase$54(encryptedsecretphrasepartArr, j, callback22);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$completeFetchingSecretPhrase$53(final AlertDialog alertDialog, final Utilities.Callback2 callback2, final SecretPhrase secretPhrase, final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$completeFetchingSecretPhrase$52(secretPhrase, alertDialog, callback2, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$completeFetchingSecretPhrase$52(final SecretPhrase secretPhrase, final AlertDialog alertDialog, final Utilities.Callback2 callback2, final String str) {
        SecretPhrase.deliver(secretPhrase, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda15
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$completeFetchingSecretPhrase$51(alertDialog, secretPhrase, callback2, str, (GramWallet.SecretPhrase) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$completeFetchingSecretPhrase$51(AlertDialog alertDialog, SecretPhrase secretPhrase, Utilities.Callback2 callback2, String str, SecretPhrase secretPhrase2) {
        GramWalletStorage gramWalletStorage;
        alertDialog.dismiss();
        if (secretPhrase != null && !secretPhrase.isEmpty()) {
            TL_wallet.WalletState walletState = this.state;
            if ((walletState instanceof TL_wallet.TL_walletState) && (gramWalletStorage = this.storage) != null && !gramWalletStorage.containsSecretPhrase(((TL_wallet.TL_walletState) walletState).public_key)) {
                this.storage.init(UserConfig.getInstance(this.currentAccount).getClientUserId(), ((TL_wallet.TL_walletState) this.state).public_key, secretPhrase, null);
            }
        }
        callback2.run(secretPhrase2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$completeFetchingSecretPhrase$54(TL_wallet.encryptedSecretPhrasePart[] encryptedsecretphrasepartArr, long j, Utilities.Callback2 callback2) {
        SecretPhrase secretPhrase;
        TL_wallet.mnemonic_decryptedKeyPart mnemonic_decryptedkeypartTLdeserialize;
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3 = null;
        for (int i = 0; i < encryptedsecretphrasepartArr.length; i++) {
            try {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(encryptedsecretphrasepartArr[i].data, 0, 32);
                byte[] bArr4 = encryptedsecretphrasepartArr[i].data;
                byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr4, 32, bArr4.length);
                long jKey_from_public_key = ConferenceCall.key_from_public_key(bArrCopyOfRange);
                byte[] bArrDecrypt_message_for_one = ConferenceCall.decrypt_message_for_one(ConferenceCall.key_from_ecdh(j, jKey_from_public_key), bArrCopyOfRange2);
                ConferenceCall.key_destroy(jKey_from_public_key);
                SerializedData serializedData = new SerializedData(bArrDecrypt_message_for_one);
                try {
                    mnemonic_decryptedkeypartTLdeserialize = TL_wallet.mnemonic_decryptedKeyPart.TLdeserialize(serializedData, serializedData.readInt32(false), false);
                    if (mnemonic_decryptedkeypartTLdeserialize != null) {
                        try {
                            byte[] bArr5 = mnemonic_decryptedkeypartTLdeserialize.share;
                            if (bArr5 != null) {
                                if (bArr3 == null) {
                                    bArr3 = (byte[]) bArr5.clone();
                                } else {
                                    if (bArr5.length != bArr3.length) {
                                        err("getSecretPhrase: part " + i + " has length " + mnemonic_decryptedkeypartTLdeserialize.share.length + " while other had " + bArr3.length);
                                        callback2.run(null, "WALLET_PART_SHARE_UNEQUAL_LENGHTS");
                                        byte[] bArr6 = mnemonic_decryptedkeypartTLdeserialize.share;
                                        if (bArr6 != null) {
                                            Arrays.fill(bArr6, (byte) 0);
                                        }
                                        Arrays.fill(bArrDecrypt_message_for_one, (byte) 0);
                                        serializedData.cleanup();
                                        Arrays.fill(bArr3, (byte) 0);
                                        return;
                                    }
                                    for (int i2 = 0; i2 < bArr3.length; i2++) {
                                        bArr3[i2] = (byte) (bArr3[i2] ^ mnemonic_decryptedkeypartTLdeserialize.share[i2]);
                                    }
                                }
                                byte[] bArr7 = mnemonic_decryptedkeypartTLdeserialize.share;
                                if (bArr7 != null) {
                                    Arrays.fill(bArr7, (byte) 0);
                                }
                                Arrays.fill(bArrDecrypt_message_for_one, (byte) 0);
                                serializedData.cleanup();
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (mnemonic_decryptedkeypartTLdeserialize != null && (bArr = mnemonic_decryptedkeypartTLdeserialize.share) != null) {
                                Arrays.fill(bArr, (byte) 0);
                            }
                            Arrays.fill(bArrDecrypt_message_for_one, (byte) 0);
                            serializedData.cleanup();
                            throw th;
                        }
                    }
                    err("getSecretPhrase: couldn't decrypt " + i + " part");
                    callback2.run(null, "WALLET_PART_" + i + "_CANT_DECRYPT");
                    if (mnemonic_decryptedkeypartTLdeserialize != null && (bArr2 = mnemonic_decryptedkeypartTLdeserialize.share) != null) {
                        Arrays.fill(bArr2, (byte) 0);
                    }
                    Arrays.fill(bArrDecrypt_message_for_one, (byte) 0);
                    serializedData.cleanup();
                    if (bArr3 != null) {
                        Arrays.fill(bArr3, (byte) 0);
                        return;
                    }
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    mnemonic_decryptedkeypartTLdeserialize = null;
                }
            } catch (Throwable th3) {
                th = th3;
                secretPhrase = null;
            }
        }
        if (bArr3 == null) {
            err("getSecretPhrase: no parts???");
            callback2.run(null, "WALLET_NO_PARTS");
            if (bArr3 != null) {
                Arrays.fill(bArr3, (byte) 0);
                return;
            }
            return;
        }
        SecretPhrase secretPhrase2 = new SecretPhrase(bArr3);
        try {
            Arrays.fill(bArr3, (byte) 0);
            byte[] bArrSecretPhraseToPublicKey = WalletEngine2.secretPhraseToPublicKey(secretPhrase2);
            TL_wallet.WalletState walletState = this.state;
            byte[] bArr8 = walletState instanceof TL_wallet.TL_walletState ? ((TL_wallet.TL_walletState) walletState).public_key : null;
            if (bArrSecretPhraseToPublicKey != null && bArr8 != null && Arrays.equals(bArrSecretPhraseToPublicKey, bArr8)) {
                Arrays.fill(bArr3, (byte) 0);
                log("getSecretPhrase, received the phrase!");
                callback2.run(secretPhrase2, null);
                return;
            }
            err("getSecretPhrase: mnemonic public key doesn't match one from server: server=" + Utilities.bytesToHex(bArr8) + " derived=" + Utilities.bytesToHex(bArrSecretPhraseToPublicKey));
            secretPhrase2.close();
            callback2.run(null, "WALLET_WORDS_DONT_MATCH");
            Arrays.fill(bArr3, (byte) 0);
        } catch (Throwable th4) {
            secretPhrase = secretPhrase2;
            th = th4;
            if (secretPhrase != null) {
                try {
                    secretPhrase.close();
                } catch (Throwable th5) {
                    if (bArr3 != null) {
                        Arrays.fill(bArr3, (byte) 0);
                    }
                    throw th5;
                }
            }
            callback2.run(null, th.getMessage() == null ? "NULL_ERROR" : th.getMessage());
            err("getSecretPhrase: encryption error", th);
            if (bArr3 != null) {
                Arrays.fill(bArr3, (byte) 0);
            }
        }
    }

    public void makeSureSecretPhraseBackedUpLocally(Utilities.Callback<String> callback) {
        makeSureSecretPhraseBackedUpLocally(false, true, callback);
    }

    public void makeSureSecretPhraseBackedUpLocally(final boolean z, final boolean z2, final Utilities.Callback<String> callback) {
        whenReady(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda36
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$makeSureSecretPhraseBackedUpLocally$58(callback, z, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makeSureSecretPhraseBackedUpLocally$58(final Utilities.Callback callback, boolean z, boolean z2) {
        final TL_wallet.TL_walletState tL_walletState = (TL_wallet.TL_walletState) this.state;
        GramWalletStorage gramWalletStorage = this.storage;
        if (gramWalletStorage != null && TextUtils.equals(gramWalletStorage.getAddress(), tL_walletState.address) && this.storage.containsSecretPhrase(tL_walletState.public_key)) {
            callback.run(null);
        } else {
            getSecretPhrase(z, z2, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda46
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$makeSureSecretPhraseBackedUpLocally$57(callback, tL_walletState, (GramWallet.SecretPhrase) obj, (String) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$makeSureSecretPhraseBackedUpLocally$57(final Utilities.Callback callback, TL_wallet.TL_walletState tL_walletState, SecretPhrase secretPhrase, String str) {
        if (str != null || secretPhrase == null) {
            if (str == null) {
                str = "LOCAL_STORAGE_ERROR";
            }
            callback.run(str);
            return;
        }
        GramWalletStorage gramWalletStorage = this.storage;
        if (gramWalletStorage == null) {
            callback.run("STORAGE_NULL");
        } else if (!TextUtils.equals(gramWalletStorage.getAddress(), tL_walletState.address)) {
            callback.run("STORAGE_CHANGED");
        } else {
            final SecretPhrase secretPhraseCopy = secretPhrase.copy();
            this.storage.init(UserConfig.getInstance(this.currentAccount).getClientUserId(), tL_walletState.public_key, secretPhrase, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda49
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    GramWallet.SecretPhrase.deliver(secretPhraseCopy, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda70
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj2) {
                            callback.run(str);
                        }
                    });
                }
            });
        }
    }

    public void createNewWallet(final Utilities.Callback<String> callback) {
        PasswordRequest.open(this.currentAccount, new Utilities.CallbackReturn() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda67
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return GramWallet.$r8$lambda$Lq0_gQQdGRj7wM01WSs3D0g1wH0((TLRPC.InputCheckPasswordSRP) obj);
            }
        }, new Utilities.Callback3() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda68
            @Override // org.telegram.messenger.Utilities.Callback3
            public final void run(Object obj, Object obj2, Object obj3) {
                this.f$0.lambda$createNewWallet$60(callback, (TL_wallet.WalletState) obj, (TLRPC.TL_error) obj2, (TLRPC.InputCheckPasswordSRP) obj3);
            }
        });
    }

    public static /* synthetic */ TLMethod $r8$lambda$Lq0_gQQdGRj7wM01WSs3D0g1wH0(TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP) {
        TL_wallet.replaceWallet replacewallet = new TL_wallet.replaceWallet();
        replacewallet.wallet = new TL_wallet.inputWalletNew();
        replacewallet.password = inputCheckPasswordSRP;
        return replacewallet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createNewWallet$60(Utilities.Callback callback, TL_wallet.WalletState walletState, TLRPC.TL_error tL_error, TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP) {
        if (tL_error != null) {
            String str = tL_error.text;
            if (str == null) {
                str = "NULL_ERROR";
            }
            callback.run(str);
            return;
        }
        updateState(walletState);
        onWalletChanged();
        callback.run(null);
    }

    public void importWallet(SecretPhrase secretPhrase, Utilities.Callback<String> callback) {
        importWallet(false, true, secretPhrase, callback);
    }

    public void importWallet(boolean z, boolean z2, SecretPhrase secretPhrase, final Utilities.Callback<String> callback) {
        try {
            if (!WalletEngine2.isTgWalletSecretPhrase(secretPhrase)) {
                callback.run("WRONG_CONTRACT");
                return;
            }
        } catch (Exception unused) {
        }
        try {
            final byte[] bArrSecretPhraseToPublicKey = WalletEngine2.secretPhraseToPublicKey(secretPhrase);
            final byte[] bArrSecretPhraseToAnchorPublicKey = WalletEngine2.secretPhraseToAnchorPublicKey(secretPhrase);
            final SecretPhrase secretPhraseCopy = secretPhrase.copy();
            log("import wallet: requesting proof challenge");
            int i = this.currentAccount;
            Utilities.Callback2 callback2 = new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda56
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$importWallet$62(secretPhraseCopy, callback, bArrSecretPhraseToAnchorPublicKey, (TLRPC.InputCheckPasswordSRP) obj, (Utilities.Callback) obj2);
                }
            };
            Utilities.Callback3 callback3 = new Utilities.Callback3() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda57
                @Override // org.telegram.messenger.Utilities.Callback3
                public final void run(Object obj, Object obj2, Object obj3) {
                    this.f$0.lambda$importWallet$63(callback, bArrSecretPhraseToPublicKey, secretPhraseCopy, (TL_wallet.WalletState) obj, (TLRPC.TL_error) obj2, (TLRPC.InputCheckPasswordSRP) obj3);
                }
            };
            Objects.requireNonNull(secretPhraseCopy);
            PasswordRequest.open(i, callback2, callback3, z, z2, new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda58
                @Override // java.lang.Runnable
                public final void run() {
                    secretPhraseCopy.close();
                }
            });
        } catch (Exception unused2) {
            callback.run("INVALID_PHRASE");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$importWallet$62(SecretPhrase secretPhrase, final Utilities.Callback callback, final byte[] bArr, final TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, final Utilities.Callback callback2) {
        proveChallenge(secretPhrase, true, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda69
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                GramWallet.m23027$r8$lambda$3A1X8HKYaK98T8i8XhMOc3m0o(callback, callback2, bArr, inputCheckPasswordSRP, (WalletEngine2.ImportedWalletProof) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$3A1X8HKYaK98-T8i8XhMOc3m-0o, reason: not valid java name */
    public static /* synthetic */ void m23027$r8$lambda$3A1X8HKYaK98T8i8XhMOc3m0o(Utilities.Callback callback, Utilities.Callback callback2, byte[] bArr, TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP, WalletEngine2.ImportedWalletProof importedWalletProof, String str) {
        if (importedWalletProof == null) {
            if (str == null) {
                str = "NULL_ERROR";
            }
            callback.run(str);
            callback2.run(null);
            return;
        }
        TL_wallet.replaceWallet replacewallet = new TL_wallet.replaceWallet();
        TL_wallet.inputWalletImported inputwalletimported = new TL_wallet.inputWalletImported();
        inputwalletimported.public_key = importedWalletProof.publicKey;
        inputwalletimported.anchor_public_key = bArr;
        TL_wallet.walletOwnershipProof walletownershipproof = new TL_wallet.walletOwnershipProof();
        inputwalletimported.proof = walletownershipproof;
        walletownershipproof.signature = importedWalletProof.signature;
        walletownershipproof.timestamp = importedWalletProof.timestamp;
        replacewallet.wallet = inputwalletimported;
        replacewallet.password = inputCheckPasswordSRP;
        callback2.run(replacewallet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$importWallet$63(Utilities.Callback callback, byte[] bArr, SecretPhrase secretPhrase, TL_wallet.WalletState walletState, TLRPC.TL_error tL_error, TLRPC.InputCheckPasswordSRP inputCheckPasswordSRP) {
        if (tL_error == null || !"WALLET_PROOF_EXPIRED".equalsIgnoreCase(tL_error.text)) {
            if (tL_error != null) {
                String str = tL_error.text;
                if (str == null) {
                    str = "NULL_ERROR";
                }
                callback.run(str);
                return;
            }
            updateState(walletState);
            new GramWalletStorage(getContext(), this.currentAccount, getAddress()).init(UserConfig.getInstance(this.currentAccount).getClientUserId(), bArr, secretPhrase, callback);
            onWalletChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onWalletChanged() {
        clearPendingTransactions();
        this.gasless = null;
        requestGaslessInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void proveChallenge(SecretPhrase secretPhrase, Utilities.Callback2<WalletEngine2.ImportedWalletProof, String> callback2) {
        proveChallenge(secretPhrase, false, callback2);
    }

    private void proveChallenge(SecretPhrase secretPhrase, final boolean z, final Utilities.Callback2<WalletEngine2.ImportedWalletProof, String> callback2) {
        final SecretPhrase secretPhraseCopy = secretPhrase.copy();
        log("requesting proof challenge");
        getConnectionsManager().sendRequestTyped(new TL_wallet.getProofChallenge(), new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda73
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$proveChallenge$66(secretPhraseCopy, callback2, z, (TL_wallet.proofChallenge) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$proveChallenge$66(final SecretPhrase secretPhrase, final Utilities.Callback2 callback2, final boolean z, final TL_wallet.proofChallenge proofchallenge, TLRPC.TL_error tL_error) {
        if (proofchallenge == null) {
            secretPhrase.close();
            callback2.run(null, tL_error == null ? "NULL_ERROR" : tL_error.text);
            return;
        }
        final int currentTime = getConnectionsManager().getCurrentTime();
        log("received proof challenge, expires at " + proofchallenge.expires + ", now = " + currentTime + ", expires in " + (proofchallenge.expires - currentTime) + "s");
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$proveChallenge$65(z, secretPhrase, proofchallenge, currentTime, callback2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$proveChallenge$65(boolean z, SecretPhrase secretPhrase, TL_wallet.proofChallenge proofchallenge, int i, final Utilities.Callback2 callback2) {
        WalletEngine2.ImportedWalletProof importedWalletProofCreateOwnershipProof;
        final WalletEngine2.ImportedWalletProof importedWalletProof = null;
        try {
            try {
                if (z) {
                    importedWalletProofCreateOwnershipProof = WalletEngine2.createImportProof(secretPhrase, proofchallenge.domain, proofchallenge.payload, i);
                } else {
                    importedWalletProofCreateOwnershipProof = WalletEngine2.createOwnershipProof(secretPhrase, proofchallenge.domain, proofchallenge.payload, i);
                }
                secretPhrase.close();
                importedWalletProof = importedWalletProofCreateOwnershipProof;
                e = null;
            } catch (Exception e) {
                e = e;
                err("createImportProof", e);
                secretPhrase.close();
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$proveChallenge$64(importedWalletProof, e, callback2);
                }
            });
        } catch (Throwable th) {
            secretPhrase.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$proveChallenge$64(WalletEngine2.ImportedWalletProof importedWalletProof, Exception exc, Utilities.Callback2 callback2) {
        if (importedWalletProof == null) {
            StringBuilder sb = new StringBuilder("failed to prove: ");
            String message = "PROOF_ERROR";
            sb.append((exc == null || exc.getMessage() == null) ? "PROOF_ERROR" : exc.getMessage());
            err(sb.toString(), exc);
            if (exc != null && exc.getMessage() != null) {
                message = exc.getMessage();
            }
            callback2.run(null, message);
            return;
        }
        log("proof done");
        callback2.run(importedWalletProof, null);
    }

    public void getTransaction(final String str, final Utilities.Callback<TL_wallet.walletTransaction> callback) {
        TransactionsList transactionsList = this.transactions;
        if (transactionsList != null) {
            ArrayList<TL_wallet.walletTransaction> arrayList = transactionsList.allTransactions;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_wallet.walletTransaction wallettransaction = arrayList.get(i);
                i++;
                TL_wallet.walletTransaction wallettransaction2 = wallettransaction;
                if (TextUtils.equals(wallettransaction2.id, str)) {
                    callback.run(wallettransaction2);
                    return;
                }
            }
        }
        if (this.transactionsCache.get(str) != null) {
            callback.run(this.transactionsCache.get(str));
            return;
        }
        TL_wallet.getTransactionsByIDs gettransactionsbyids = new TL_wallet.getTransactionsByIDs();
        gettransactionsbyids.id.add(str);
        getConnectionsManager().sendRequestTyped(gettransactionsbyids, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda38
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$getTransaction$67(callback, str, (TL_wallet.walletTransactions) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getTransaction$67(Utilities.Callback callback, String str, TL_wallet.walletTransactions wallettransactions, TLRPC.TL_error tL_error) {
        if (wallettransactions == null || wallettransactions.transactions.isEmpty()) {
            callback.run(null);
            return;
        }
        TL_wallet.walletTransaction wallettransaction = wallettransactions.transactions.get(0);
        this.transactionsCache.put(str, wallettransaction);
        callback.run(wallettransaction);
    }

    public void resolveWallet(final TLRPC.User user, boolean z, final Utilities.Callback2<TL_wallet.walletUserAddress, String> callback2) {
        if (user == null) {
            callback2.run(null, null);
            return;
        }
        if (this.cachedWalletResolvesByUser.containsKey(Long.valueOf(user.id))) {
            callback2.run(this.cachedWalletResolvesByUser.get(Long.valueOf(user.id)), null);
            return;
        }
        TL_wallet.getUserAddresses getuseraddresses = new TL_wallet.getUserAddresses();
        getuseraddresses.force = z;
        getuseraddresses.id.add(MessagesController.getInstance(this.currentAccount).getInputUser(user));
        getConnectionsManager().sendRequestTyped(getuseraddresses, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda29
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$resolveWallet$68(callback2, user, (TL_wallet.userAddresses) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resolveWallet$68(Utilities.Callback2 callback2, TLRPC.User user, TL_wallet.userAddresses useraddresses, TLRPC.TL_error tL_error) {
        if (useraddresses == null || useraddresses.addresses.size() <= 0) {
            callback2.run(null, tL_error == null ? null : tL_error.text);
            return;
        }
        MessagesController.getInstance(this.currentAccount).putUsers(useraddresses.users, false);
        TL_wallet.walletUserAddress walletuseraddress = useraddresses.addresses.get(0);
        long j = walletuseraddress.user_id;
        if (j != 0) {
            long j2 = user.id;
            if (j == j2) {
                this.cachedWalletResolvesByUser.put(Long.valueOf(j2), walletuseraddress);
                this.cachedWalletResolvesByAddress.put(walletuseraddress.address, walletuseraddress);
                callback2.run(walletuseraddress, null);
                return;
            }
        }
        callback2.run(null, tL_error == null ? null : tL_error.text);
    }

    public void resolveWallet(final String str, final Utilities.Callback2<TL_wallet.walletUserAddress, String> callback2) {
        if (str == null) {
            callback2.run(null, null);
        } else {
            if (this.cachedWalletResolvesByAddress.containsKey(str)) {
                callback2.run(this.cachedWalletResolvesByAddress.get(str), null);
                return;
            }
            TL_wallet.getUserAddresses getuseraddresses = new TL_wallet.getUserAddresses();
            getuseraddresses.addresses.add(str);
            getConnectionsManager().sendRequestTyped(getuseraddresses, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda22
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$resolveWallet$70(str, callback2, (TL_wallet.userAddresses) obj, (TLRPC.TL_error) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resolveWallet$70(final String str, final Utilities.Callback2 callback2, TL_wallet.userAddresses useraddresses, TLRPC.TL_error tL_error) {
        if (useraddresses == null || useraddresses.addresses.size() <= 0) {
            resolveWalletPublicKey(str, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda31
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$resolveWallet$69(callback2, str, (byte[]) obj);
                }
            });
            return;
        }
        MessagesController.getInstance(this.currentAccount).putUsers(useraddresses.users, false);
        MessagesStorage.getInstance(this.currentAccount).putUsersAndChats(useraddresses.users, null, true, true);
        TL_wallet.walletUserAddress walletuseraddress = useraddresses.addresses.get(0);
        long j = walletuseraddress.user_id;
        if (j != 0) {
            this.cachedWalletResolvesByUser.put(Long.valueOf(j), walletuseraddress);
        }
        this.cachedWalletResolvesByAddress.put(walletuseraddress.address, walletuseraddress);
        callback2.run(walletuseraddress, tL_error != null ? tL_error.text : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resolveWallet$69(Utilities.Callback2 callback2, String str, byte[] bArr) {
        if (bArr == null) {
            callback2.run(null, null);
            return;
        }
        TL_wallet.walletUserAddress walletuseraddress = new TL_wallet.walletUserAddress();
        walletuseraddress.user_id = 0L;
        walletuseraddress.address = str;
        walletuseraddress.public_key = bArr;
        this.cachedWalletResolvesByAddress.put(str, walletuseraddress);
        callback2.run(walletuseraddress, null);
    }

    public AddressInfo getAddressBalanceAndPublicKey(String str) {
        return getAddressBalanceAndPublicKey(str, null);
    }

    public AddressInfo getAddressBalanceAndPublicKey(final String str, Utilities.Callback<AddressInfo> callback) {
        AddressInfo addressInfo = this.cachedAddressInfos.get(str);
        if (addressInfo != null && !addressInfo.done) {
            if (callback != null) {
                addressInfo.whenDone.add(callback);
            }
            return null;
        }
        if (addressInfo != null && addressInfo.done && now() < addressInfo.time + 300) {
            if (callback != null) {
                callback.run(addressInfo);
            }
            return addressInfo;
        }
        final AddressInfo addressInfo2 = new AddressInfo();
        addressInfo2.address = str;
        addressInfo2.time = now();
        if (callback != null) {
            addressInfo2.whenDone.add(callback);
        }
        this.cachedAddressInfos.put(str, addressInfo2);
        Utilities.raceCallbacks(new Runnable() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getAddressBalanceAndPublicKey$71(str, addressInfo2);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda25
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$getAddressBalanceAndPublicKey$73(str, addressInfo2, (Runnable) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda26
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$getAddressBalanceAndPublicKey$75(str, addressInfo2, (Runnable) obj);
            }
        });
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getAddressBalanceAndPublicKey$71(String str, AddressInfo addressInfo) {
        if (this.cachedAddressInfos.get(str) != addressInfo) {
            return;
        }
        addressInfo.done = true;
        updatePreviousWallet(addressInfo);
        ArrayList<Utilities.Callback<AddressInfo>> arrayList = addressInfo.whenDone;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Utilities.Callback<AddressInfo> callback = arrayList.get(i);
            i++;
            callback.run(addressInfo);
        }
        addressInfo.whenDone.clear();
        notifyUpdate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getAddressBalanceAndPublicKey$73(final String str, final AddressInfo addressInfo, final Runnable runnable) {
        TL_toncenter.performApiRequest performapirequest = new TL_toncenter.performApiRequest();
        performapirequest.endpoint = "/api/v3/walletInformation";
        performapirequest.query = "address=" + Uri.encode(str) + "&use_v2=false";
        getConnectionsManager().sendRequestTyped(performapirequest, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda32
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$getAddressBalanceAndPublicKey$72(addressInfo, str, runnable, (TL_toncenter.apiResponse) obj, (TLRPC.TL_error) obj2);
            }
        }, MessagesController.getInstance(this.currentAccount).webFileDatacenterId, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getAddressBalanceAndPublicKey$72(AddressInfo addressInfo, String str, Runnable runnable, TL_toncenter.apiResponse apiresponse, TLRPC.TL_error tL_error) {
        if (apiresponse != null) {
            try {
                addressInfo.balance = Long.parseLong(new JSONObject(apiresponse.response.data).getString("balance"));
                if (this.cachedAddressInfos.get(str) == addressInfo) {
                    updatePreviousWallet(addressInfo);
                    notifyUpdate();
                }
            } catch (Exception e) {
                err("failed to get balance of " + str, e);
            }
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getAddressBalanceAndPublicKey$75(final String str, final AddressInfo addressInfo, final Runnable runnable) {
        resolveWalletPublicKey(str, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda30
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$getAddressBalanceAndPublicKey$74(addressInfo, str, runnable, (byte[]) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getAddressBalanceAndPublicKey$74(AddressInfo addressInfo, String str, Runnable runnable, byte[] bArr) {
        addressInfo.publicKey = bArr;
        if (this.cachedAddressInfos.get(str) == addressInfo) {
            updatePreviousWallet(addressInfo);
            notifyUpdate();
        }
        runnable.run();
    }

    private void resolveWalletPublicKey(final String str, final Utilities.Callback<byte[]> callback) {
        TL_toncenter.performApiRequest performapirequest = new TL_toncenter.performApiRequest();
        performapirequest.post = true;
        performapirequest.endpoint = "/api/v2/runGetMethod";
        performapirequest.payload = BotWebViewContainer.obj("address", str, "method", "get_public_key", "stack", new JSONArray()).toString();
        getConnectionsManager().sendRequestTyped(performapirequest, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$$ExternalSyntheticLambda35
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$resolveWalletPublicKey$76(str, callback, (TL_toncenter.apiResponse) obj, (TLRPC.TL_error) obj2);
            }
        }, MessagesController.getInstance(this.currentAccount).webFileDatacenterId, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$resolveWalletPublicKey$76(String str, Utilities.Callback callback, TL_toncenter.apiResponse apiresponse, TLRPC.TL_error tL_error) {
        JSONArray jSONArray;
        String string;
        byte[] bArrHexToBytes = null;
        if (apiresponse != null) {
            try {
                JSONObject jSONObject = new JSONObject(apiresponse.response.data);
                if (jSONObject.has("stack")) {
                    jSONArray = jSONObject.getJSONArray("stack");
                    if (jSONObject.has("exit_code") && jSONObject.getInt("exit_code") != 0) {
                        throw new Exception("received exit code: " + jSONObject.getInt("exit_code"));
                    }
                } else {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("result");
                    if (jSONObject2.has("exit_code") && jSONObject2.getInt("exit_code") != 0) {
                        throw new Exception("received exit code: " + jSONObject2.getInt("exit_code"));
                    }
                    jSONArray = jSONObject2.getJSONArray("stack");
                }
                if (jSONArray.get(0) instanceof JSONArray) {
                    string = jSONArray.getJSONArray(0).getString(1);
                } else if (jSONArray.get(0) instanceof JSONObject) {
                    string = jSONArray.getJSONObject(0).getString("value");
                } else {
                    string = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                if (string.startsWith("0x")) {
                    bArrHexToBytes = Utilities.hexToBytes(string.substring(2));
                }
            } catch (Exception e) {
                err("failed to get public key of " + str, e);
            }
        }
        callback.run(bArrHexToBytes);
    }

    public CollectiblesList getCollectibles() {
        if (this.nfts == null) {
            this.nfts = new CollectiblesList();
        }
        return this.nfts;
    }

    public class CollectiblesList {
        private String address;
        private final ArrayList<TL_wallet.walletTransaction> collectibleTransfers;
        public final ArrayList<TL_wallet.nftItem> collectibles;
        private boolean endReached;
        private String error;
        private String lastOffset;
        private final ArrayList<Runnable> listeners;
        private boolean loaded;
        private boolean loading;
        private boolean refreshing;
        private int reqId;
        private final ArrayList<TL_wallet.nftItem> serverCollectibles;

        private CollectiblesList() {
            this.collectibles = new ArrayList<>();
            this.serverCollectibles = new ArrayList<>();
            this.collectibleTransfers = new ArrayList<>();
            this.listeners = new ArrayList<>();
            this.address = GramWallet.this.getAddress();
            this.lastOffset = _UrlKt.FRAGMENT_ENCODE_SET;
            this.reqId = -1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAddress(String str) {
            if (TextUtils.equals(this.address, str)) {
                return;
            }
            this.address = str;
            clear();
        }

        public boolean isLoading() {
            return this.loading;
        }

        public boolean isLoaded() {
            return this.loaded;
        }

        public boolean isEndReached() {
            return this.endReached;
        }

        public String getError() {
            return this.error;
        }

        public void load() {
            if (this.loading || this.endReached) {
                return;
            }
            load(!this.loaded);
        }

        public void invalidate() {
            if (this.refreshing) {
                return;
            }
            cancelRequest();
            load(true);
        }

        private void load(final boolean z) {
            if (TextUtils.isEmpty(this.address)) {
                return;
            }
            TL_wallet.getNfts getnfts = new TL_wallet.getNfts();
            String str = z ? _UrlKt.FRAGMENT_ENCODE_SET : this.lastOffset;
            getnfts.offset = str;
            getnfts.limit = TextUtils.isEmpty(str) ? 5 : 20;
            this.loading = true;
            this.refreshing = z;
            this.error = null;
            notifyUpdate();
            this.reqId = GramWallet.this.getConnectionsManager().sendRequestTyped(getnfts, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$CollectiblesList$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$load$0(z, (TL_wallet.nftItems) obj, (TLRPC.TL_error) obj2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$0(boolean z, TL_wallet.nftItems nftitems, TLRPC.TL_error tL_error) {
            this.reqId = -1;
            int i = 0;
            this.refreshing = false;
            this.loading = false;
            if (nftitems != null) {
                if (z) {
                    this.serverCollectibles.clear();
                }
                ArrayList<TL_wallet.nftItem> arrayList = nftitems.items;
                int size = arrayList.size();
                while (i < size) {
                    TL_wallet.nftItem nftitem = arrayList.get(i);
                    i++;
                    appendOrReplace(nftitem);
                }
                String str = nftitems.next_offset;
                this.lastOffset = str;
                boolean zIsEmpty = TextUtils.isEmpty(str);
                this.endReached = zIsEmpty;
                this.loaded = true;
                if (zIsEmpty) {
                    for (int size2 = this.collectibleTransfers.size() - 1; size2 >= 0; size2--) {
                        TL_wallet.walletTransaction wallettransaction = this.collectibleTransfers.get(size2);
                        if (!wallettransaction.pending && !wallettransaction.failed && !containsCollectible(wallettransaction.nft.address)) {
                            this.collectibleTransfers.remove(size2);
                        }
                    }
                }
                updateVisibleCollectibles();
            } else {
                if (z) {
                    this.endReached = false;
                    this.loaded = false;
                }
                this.error = tL_error == null ? "Could not load collectibles" : tL_error.text;
            }
            notifyUpdate();
        }

        private void appendOrReplace(TL_wallet.nftItem nftitem) {
            int i = 0;
            while (true) {
                int size = this.serverCollectibles.size();
                ArrayList<TL_wallet.nftItem> arrayList = this.serverCollectibles;
                if (i < size) {
                    if (GramWallet.addressEquals(arrayList.get(i).address, nftitem.address)) {
                        this.serverCollectibles.set(i, nftitem);
                        return;
                    }
                    i++;
                } else {
                    arrayList.add(nftitem);
                    return;
                }
            }
        }

        public boolean isSending(String str) {
            TL_wallet.nftItem nftitem;
            ArrayList<TL_wallet.walletTransaction> arrayList = this.collectibleTransfers;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_wallet.walletTransaction wallettransaction = arrayList.get(i);
                i++;
                TL_wallet.walletTransaction wallettransaction2 = wallettransaction;
                if (!wallettransaction2.failed && (nftitem = wallettransaction2.nft) != null && GramWallet.addressEquals(nftitem.address, str)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean containsCollectible(String str) {
            ArrayList<TL_wallet.nftItem> arrayList = this.serverCollectibles;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_wallet.nftItem nftitem = arrayList.get(i);
                i++;
                if (GramWallet.addressEquals(nftitem.address, str)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onTransferQueued(TL_wallet.walletTransaction wallettransaction) {
            this.collectibleTransfers.add(wallettransaction);
            updateVisibleCollectibles();
            notifyUpdate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onTransferUpdated(TL_wallet.walletTransaction wallettransaction) {
            ArrayList<TL_wallet.walletTransaction> arrayList = this.collectibleTransfers;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_wallet.walletTransaction wallettransaction2 = arrayList.get(i);
                i++;
                if (wallettransaction2 == wallettransaction) {
                    if (wallettransaction.failed && !containsCollectible(wallettransaction.nft.address)) {
                        this.serverCollectibles.add(0, wallettransaction.nft);
                    }
                    updateVisibleCollectibles();
                    notifyUpdate();
                    return;
                }
            }
        }

        private void updateVisibleCollectibles() {
            this.collectibles.clear();
            ArrayList<TL_wallet.nftItem> arrayList = this.serverCollectibles;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_wallet.nftItem nftitem = arrayList.get(i);
                i++;
                TL_wallet.nftItem nftitem2 = nftitem;
                ArrayList<TL_wallet.walletTransaction> arrayList2 = this.collectibleTransfers;
                int size2 = arrayList2.size();
                int i2 = 0;
                while (true) {
                    if (i2 < size2) {
                        TL_wallet.walletTransaction wallettransaction = arrayList2.get(i2);
                        i2++;
                        TL_wallet.walletTransaction wallettransaction2 = wallettransaction;
                        if (wallettransaction2.failed || !GramWallet.addressEquals(wallettransaction2.nft.address, nftitem2.address)) {
                        }
                    } else {
                        this.collectibles.add(nftitem2);
                        break;
                    }
                }
            }
        }

        private void cancelRequest() {
            if (this.reqId >= 0) {
                GramWallet.this.getConnectionsManager().cancelRequest(this.reqId, true);
                this.reqId = -1;
            }
            if (this.refreshing) {
                this.endReached = false;
                this.loaded = false;
            }
            this.refreshing = false;
            this.loading = false;
        }

        public void clear() {
            cancelRequest();
            this.collectibles.clear();
            this.serverCollectibles.clear();
            this.collectibleTransfers.clear();
            this.lastOffset = _UrlKt.FRAGMENT_ENCODE_SET;
            this.endReached = false;
            this.loaded = false;
            this.error = null;
            notifyUpdate();
        }

        public void subscribe(Runnable runnable) {
            if (this.listeners.contains(runnable)) {
                return;
            }
            this.listeners.add(runnable);
        }

        public void unsubscribe(Runnable runnable) {
            this.listeners.remove(runnable);
        }

        private void notifyUpdate() {
            ArrayList arrayList = new ArrayList(this.listeners);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((Runnable) obj).run();
            }
        }
    }

    public TransactionsList getTransactions() {
        if (this.transactions == null) {
            this.transactions = new TransactionsList();
        }
        return this.transactions;
    }

    public class TransactionsList {
        public final TransactionCell.SmartWalletAddressFormatter addressFormatter;
        public ArrayList<TL_wallet.walletTransaction> allTransactions;
        private boolean endReached;
        private int invalidationReqId;
        private String lastOffset;
        private boolean loading;
        private boolean loadingInvalidation;
        private int reqId;
        private final HashMap<String, TL_wallet.walletTransaction> streamRows;
        private final HashMap<String, String> streamTraces;
        private final HashSet<String> streamTransactionIds;
        public ArrayList<TL_wallet.walletTransaction> transactions;

        /* JADX INFO: Access modifiers changed from: private */
        public void onStreamEvent(JSONObject jSONObject) {
            JSONArray jSONArrayOptJSONArray;
            String str;
            JSONArray jSONArray;
            String strStreamTransactionId;
            String str2;
            String strOptString = jSONObject.optString("type");
            if ("trace_invalidated".equals(strOptString)) {
                invalidateStreamTrace(jSONObject.optString("trace_external_hash_norm"));
                return;
            }
            if ("transactions".equals(strOptString)) {
                String str3 = "finality";
                String strOptString2 = jSONObject.optString("finality");
                boolean zEquals = "finalized".equals(strOptString2);
                if ((zEquals || "confirmed".equals(strOptString2)) && (jSONArrayOptJSONArray = jSONObject.optJSONArray("transactions")) != null) {
                    ArrayList arrayList = new ArrayList();
                    TL_wallet.walletTransaction wallettransaction = null;
                    int i = 0;
                    boolean z = false;
                    while (i < jSONArrayOptJSONArray.length()) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                        if (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject.optBoolean("emulated") || "pending".equals(jSONObjectOptJSONObject.optString(str3)) || (strStreamTransactionId = streamTransactionId(jSONObjectOptJSONObject)) == null) {
                            str = str3;
                            jSONArray = jSONArrayOptJSONArray;
                        } else {
                            TL_wallet.walletTransaction wallettransactionFromStreamTransaction = fromStreamTransaction(jSONObjectOptJSONObject, jSONObject);
                            if (wallettransactionFromStreamTransaction == null) {
                                arrayList.add(strStreamTransactionId);
                                str = str3;
                                jSONArray = jSONArrayOptJSONArray;
                            } else {
                                TL_wallet.walletTransaction wallettransactionReconcileSignedTransaction = reconcileSignedTransaction(wallettransactionFromStreamTransaction);
                                if (wallettransactionReconcileSignedTransaction != null) {
                                    wallettransaction = wallettransactionReconcileSignedTransaction;
                                }
                                TL_wallet.walletTransaction wallettransactionFindStreamRow = findStreamRow(strStreamTransactionId, wallettransactionFromStreamTransaction);
                                if (wallettransactionFindStreamRow != null) {
                                    this.streamRows.put(strStreamTransactionId, wallettransactionFindStreamRow);
                                    if (wallettransactionReconcileSignedTransaction != null) {
                                        wallettransactionFindStreamRow.gasless = wallettransactionFromStreamTransaction.gasless;
                                        wallettransactionFindStreamRow.gaslessMessageBodyHash = wallettransactionFromStreamTransaction.gaslessMessageBodyHash;
                                        wallettransactionFindStreamRow.normalMessageBodyHash = wallettransactionFromStreamTransaction.normalMessageBodyHash;
                                        TL_wallet.nftItem nftitem = wallettransactionFromStreamTransaction.nft;
                                        if (nftitem != null) {
                                            wallettransactionFindStreamRow.nft = nftitem;
                                            wallettransactionFindStreamRow.peer = wallettransactionFromStreamTransaction.peer;
                                            str = str3;
                                            jSONArray = jSONArrayOptJSONArray;
                                            wallettransactionFindStreamRow.amount = wallettransactionFromStreamTransaction.amount;
                                            wallettransactionFindStreamRow.comment = wallettransactionFromStreamTransaction.comment;
                                        } else {
                                            str = str3;
                                            jSONArray = jSONArrayOptJSONArray;
                                        }
                                        z = true;
                                    } else {
                                        str = str3;
                                        jSONArray = jSONArrayOptJSONArray;
                                    }
                                    if (zEquals) {
                                        this.streamTraces.remove(strStreamTransactionId);
                                    }
                                } else {
                                    str = str3;
                                    jSONArray = jSONArrayOptJSONArray;
                                    if (wallettransactionReconcileSignedTransaction == null && matchesPendingTransaction(wallettransactionFromStreamTransaction)) {
                                        this.streamTransactionIds.remove(strStreamTransactionId);
                                        this.streamTraces.remove(strStreamTransactionId);
                                    } else {
                                        if (wallettransactionReconcileSignedTransaction != null) {
                                            wallettransactionFromStreamTransaction = wallettransactionReconcileSignedTransaction;
                                        }
                                        insertStreamTransaction(wallettransactionFromStreamTransaction);
                                        this.streamRows.put(strStreamTransactionId, wallettransactionFromStreamTransaction);
                                        this.streamTransactionIds.add(strStreamTransactionId);
                                        HashMap<String, String> map = this.streamTraces;
                                        if (zEquals) {
                                            map.remove(strStreamTransactionId);
                                        } else {
                                            map.put(strStreamTransactionId, jSONObject.optString("trace_external_hash_norm"));
                                        }
                                        GramWallet gramWallet = GramWallet.this;
                                        StringBuilder sb = new StringBuilder("stream inserted ");
                                        sb.append(strStreamTransactionId);
                                        String str4 = wallettransactionFromStreamTransaction.id;
                                        if (str4 == null || TextUtils.equals(str4, strStreamTransactionId)) {
                                            str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                                        } else {
                                            str2 = " as " + wallettransactionFromStreamTransaction.id;
                                        }
                                        sb.append(str2);
                                        gramWallet.log(sb.toString());
                                        resolveStreamPeer(wallettransactionFromStreamTransaction);
                                        z = true;
                                    }
                                }
                            }
                        }
                        i++;
                        str3 = str;
                        jSONArrayOptJSONArray = jSONArray;
                    }
                    if (wallettransaction != null) {
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList.get(i2);
                            i2++;
                            String str5 = (String) obj;
                            if (!this.streamRows.containsKey(str5)) {
                                this.streamRows.put(str5, wallettransaction);
                            }
                        }
                    }
                    if (z) {
                        updatedTransactions();
                        notifyUpdate();
                    }
                }
            }
        }

        private String streamTransactionId(JSONObject jSONObject) {
            String strOptString = jSONObject.optString("lt", _UrlKt.FRAGMENT_ENCODE_SET);
            String strOptString2 = jSONObject.optString("hash", _UrlKt.FRAGMENT_ENCODE_SET);
            if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2)) {
                return null;
            }
            return strOptString + ":" + strOptString2;
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x0088  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private TL_wallet.walletTransaction fromStreamTransaction(JSONObject jSONObject, JSONObject jSONObject2) {
            boolean z;
            JSONObject jSONObjectOptJSONObject;
            JSONObject jSONObjectOptJSONObject2;
            int i;
            try {
                if (!GramWallet.addressEquals(jSONObject.getString("account"), GramWallet.this.getAddress())) {
                    return null;
                }
                JSONObject jSONObject3 = jSONObject.getJSONObject(MediaTrack.ROLE_DESCRIPTION);
                if (jSONObject3.optBoolean("destroyed")) {
                    return null;
                }
                boolean zOptBoolean = jSONObject3.optBoolean("aborted");
                JSONObject jSONObjectOptJSONObject3 = jSONObject3.optJSONObject("compute_ph");
                if (jSONObjectOptJSONObject3 == null || jSONObjectOptJSONObject3.optBoolean("skipped") || (jSONObjectOptJSONObject3.optBoolean("success") && jSONObjectOptJSONObject3.optInt("exit_code") == 0)) {
                    String address = GramWallet.this.getAddress();
                    JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("in_msg");
                    ArrayList arrayList = new ArrayList();
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("out_msgs");
                    if (jSONArrayOptJSONArray != null) {
                        int i2 = 0;
                        z = false;
                        while (i2 < jSONArrayOptJSONArray.length()) {
                            JSONObject jSONObjectOptJSONObject5 = jSONArrayOptJSONArray.optJSONObject(i2);
                            if (jSONObjectOptJSONObject5 != null) {
                                if (jSONObjectOptJSONObject5.optBoolean("bounced")) {
                                    i = i2;
                                    z = true;
                                } else if (!jSONObjectOptJSONObject5.isNull("value") && Long.parseLong(jSONObjectOptJSONObject5.getString("value")) > 0) {
                                    i = i2;
                                    if (!GramWallet.addressEquals(jSONObjectOptJSONObject5.getString("destination"), address)) {
                                        arrayList.add(jSONObjectOptJSONObject5);
                                    }
                                } else {
                                    i = i2;
                                }
                            }
                            i2 = i + 1;
                        }
                    } else {
                        z = false;
                    }
                    boolean z2 = (z || jSONObjectOptJSONObject4 == null || jSONObjectOptJSONObject4.isNull("source") || jSONObjectOptJSONObject4.isNull("value") || !GramWallet.addressEquals(jSONObjectOptJSONObject4.getString("destination"), address) || GramWallet.addressEquals(jSONObjectOptJSONObject4.getString("source"), address) || jSONObjectOptJSONObject4.optBoolean("bounced") || Long.parseLong(jSONObjectOptJSONObject4.getString("value")) <= 0 || !arrayList.isEmpty()) ? false : true;
                    boolean z3 = (z2 || z || zOptBoolean || arrayList.size() != 1) ? false : true;
                    if (!z2 && !z3) {
                        return null;
                    }
                    if (z3 && ((jSONObjectOptJSONObject2 = jSONObject3.optJSONObject("action")) == null || !jSONObjectOptJSONObject2.optBoolean("success") || jSONObjectOptJSONObject2.optBoolean("no_funds") || jSONObjectOptJSONObject2.optInt("result_code") != 0)) {
                        return null;
                    }
                    JSONObject jSONObject4 = z2 ? jSONObjectOptJSONObject4 : (JSONObject) arrayList.get(0);
                    long j = Long.parseLong(jSONObject4.getString("value"));
                    if (j < MessagesController.getInstance(GramWallet.this.currentAccount).config.walletTransferMinNanos.get()) {
                        return null;
                    }
                    TL_wallet.walletTransaction wallettransaction = new TL_wallet.walletTransaction();
                    String strStreamTransactionId = streamTransactionId(jSONObject);
                    wallettransaction.id = strStreamTransactionId;
                    if (strStreamTransactionId == null) {
                        return null;
                    }
                    wallettransaction.tx_hash = jSONObject.getString("hash");
                    wallettransaction.messageHash = jSONObject4.optString("hash", null);
                    if (z3 && jSONObjectOptJSONObject4 != null && (jSONObjectOptJSONObject = jSONObjectOptJSONObject4.optJSONObject("message_content")) != null) {
                        if (jSONObjectOptJSONObject4.isNull("source")) {
                            wallettransaction.normalMessageBodyHash = jSONObjectOptJSONObject.optString("hash", null);
                        } else {
                            wallettransaction.gaslessMessageBodyHash = jSONObjectOptJSONObject.optString("hash", null);
                        }
                    }
                    wallettransaction.incoming = z2;
                    if (!z2) {
                        j = -j;
                    }
                    wallettransaction.amount = j;
                    wallettransaction.date = jSONObject.getInt("now");
                    wallettransaction.fee = Long.parseLong(jSONObject.getString("total_fees"));
                    wallettransaction.feeUnknown = false;
                    wallettransaction.failed = false;
                    wallettransaction.pending = false;
                    wallettransaction.phase = WalletEngine2.SendPhase.CONFIRMED;
                    wallettransaction.comment_encrypted = WalletEngine2.isEncryptedComment(jSONObject4);
                    JSONObject jSONObjectOptJSONObject6 = jSONObject4.optJSONObject("message_content");
                    String strOptString = jSONObjectOptJSONObject6 == null ? null : jSONObjectOptJSONObject6.optString("body", null);
                    JSONObject jSONObjectOptJSONObject7 = jSONObjectOptJSONObject6 == null ? null : jSONObjectOptJSONObject6.optJSONObject("decoded");
                    if (wallettransaction.comment_encrypted) {
                        try {
                            wallettransaction.comment = WalletEngine2.encryptedCommentPayload(strOptString);
                        } catch (Exception unused) {
                            wallettransaction.comment_encrypted = false;
                        }
                    } else if (jSONObjectOptJSONObject7 != null && "text_comment".equals(jSONObjectOptJSONObject7.optString("type"))) {
                        wallettransaction.comment = jSONObjectOptJSONObject7.optString("comment", null);
                    } else {
                        wallettransaction.comment = WalletEngine2.textCommentFromBody(strOptString);
                    }
                    String str = wallettransaction.comment;
                    if (str != null && str.isEmpty()) {
                        wallettransaction.comment = null;
                    }
                    String string = z2 ? jSONObjectOptJSONObject4.getString("source") : jSONObject4.getString("destination");
                    JSONObject jSONObjectAddressBookInfo = addressBookInfo(jSONObject2, string);
                    TL_wallet.walletTransactionPeerAddress wallettransactionpeeraddress = new TL_wallet.walletTransactionPeerAddress();
                    wallettransactionpeeraddress.address = jSONObjectAddressBookInfo == null ? GramWallet.rawAddressToFriendly(string) : jSONObjectAddressBookInfo.optString("user_friendly", string);
                    wallettransactionpeeraddress.domain = (jSONObjectAddressBookInfo == null || jSONObjectAddressBookInfo.isNull("domain")) ? null : jSONObjectAddressBookInfo.optString("domain", null);
                    if (!GramWallet.addressEquals(wallettransactionpeeraddress.address, string)) {
                        return null;
                    }
                    wallettransaction.peer = wallettransactionpeeraddress;
                    return wallettransaction;
                }
                return null;
            } catch (Exception e) {
                GramWallet.this.err("stream transaction parse failed", e);
                return null;
            }
        }

        private JSONObject addressBookInfo(JSONObject jSONObject, String str) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("address_book");
            if (jSONObjectOptJSONObject != null && str != null) {
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (GramWallet.addressEquals(next, str)) {
                        return jSONObjectOptJSONObject.optJSONObject(next);
                    }
                }
            }
            return null;
        }

        private boolean matchesPendingTransaction(TL_wallet.walletTransaction wallettransaction) {
            ArrayList arrayList = GramWallet.this.pendingTransactions;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                TL_wallet.walletTransaction wallettransaction2 = (TL_wallet.walletTransaction) obj;
                if (wallettransaction2.incoming == wallettransaction.incoming && ((!TextUtils.isEmpty(wallettransaction2.id) && TextUtils.equals(wallettransaction2.id, wallettransaction.id)) || GramWallet.sameTransactionHash(wallettransaction2.tx_hash, wallettransaction.tx_hash) || GramWallet.sameTransactionHash(wallettransaction2.messageHash, wallettransaction.messageHash))) {
                    return true;
                }
            }
            return false;
        }

        private TL_wallet.walletTransaction reconcileSignedTransaction(TL_wallet.walletTransaction wallettransaction) {
            TL_wallet.nftItem nftitem;
            if (wallettransaction.incoming) {
                return null;
            }
            ArrayList arrayList = new ArrayList(GramWallet.this.pendingTransactions);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                TL_wallet.walletTransaction wallettransaction2 = (TL_wallet.walletTransaction) obj;
                boolean zSameTransactionHash = GramWallet.sameTransactionHash(wallettransaction2.gaslessMessageBodyHash, wallettransaction.gaslessMessageBodyHash);
                boolean zSameTransactionHash2 = GramWallet.sameTransactionHash(wallettransaction2.normalMessageBodyHash, wallettransaction.normalMessageBodyHash);
                if (!wallettransaction2.incoming && (zSameTransactionHash || zSameTransactionHash2)) {
                    wallettransaction.gasless = zSameTransactionHash;
                    if (wallettransaction.nft == null && (nftitem = wallettransaction2.nft) != null) {
                        wallettransaction.nft = nftitem;
                        wallettransaction.peer = wallettransaction2.peer;
                        wallettransaction.amount = wallettransaction2.amount;
                        wallettransaction.comment = wallettransaction2.comment;
                    }
                    if (wallettransaction2.pending || wallettransaction2.failed || TextUtils.isEmpty(wallettransaction2.id)) {
                        GramWallet.this.applyConfirmedTransaction(wallettransaction2, wallettransaction);
                    } else {
                        wallettransaction2.gasless = wallettransaction.gasless;
                    }
                    wallettransaction2.pending = false;
                    wallettransaction2.failed = false;
                    wallettransaction2.phase = wallettransaction.phase;
                    GramWallet.this.pendingTransactions.remove(wallettransaction2);
                    GramWalletPolling gramWalletPolling = (GramWalletPolling) GramWallet.this.polling.remove(wallettransaction2);
                    if (gramWalletPolling != null) {
                        gramWalletPolling.stop();
                    }
                    return wallettransaction2;
                }
            }
            return null;
        }

        private boolean containsRow(TL_wallet.walletTransaction wallettransaction) {
            for (int i = 0; i < this.transactions.size(); i++) {
                if (this.transactions.get(i) == wallettransaction) {
                    return true;
                }
            }
            return false;
        }

        private TL_wallet.walletTransaction findStreamRow(String str, TL_wallet.walletTransaction wallettransaction) {
            TL_wallet.walletTransaction wallettransaction2 = this.streamRows.get(str);
            if (wallettransaction2 != null) {
                if (containsRow(wallettransaction2)) {
                    return wallettransaction2;
                }
                TL_wallet.walletTransaction wallettransactionFindTransactionById = findTransactionById(this.transactions, wallettransaction2.id);
                if (wallettransactionFindTransactionById != null) {
                    return wallettransactionFindTransactionById;
                }
            }
            TL_wallet.walletTransaction wallettransactionFindTransactionById2 = findTransactionById(this.transactions, str);
            if (wallettransactionFindTransactionById2 != null) {
                return wallettransactionFindTransactionById2;
            }
            ArrayList<TL_wallet.walletTransaction> arrayList = this.transactions;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                TL_wallet.walletTransaction wallettransaction3 = arrayList.get(i);
                i++;
                TL_wallet.walletTransaction wallettransaction4 = wallettransaction3;
                if (GramWallet.transactionMatches(wallettransaction4, wallettransaction)) {
                    return wallettransaction4;
                }
            }
            return null;
        }

        private boolean isStreamRow(TL_wallet.walletTransaction wallettransaction) {
            Iterator<String> it = this.streamTransactionIds.iterator();
            while (it.hasNext()) {
                if (this.streamRows.get(it.next()) == wallettransaction) {
                    return true;
                }
            }
            return false;
        }

        private TL_wallet.walletTransaction findLocalTransaction(TL_wallet.walletTransaction wallettransaction) {
            TL_wallet.walletTransaction wallettransactionFindTransactionById = findTransactionById(this.transactions, wallettransaction.id);
            if (wallettransactionFindTransactionById != null) {
                return wallettransactionFindTransactionById;
            }
            TL_wallet.walletTransaction wallettransaction2 = this.streamRows.get(wallettransaction.id);
            if (wallettransaction2 != null && containsRow(wallettransaction2)) {
                return wallettransaction2;
            }
            Iterator<String> it = this.streamTransactionIds.iterator();
            while (it.hasNext()) {
                TL_wallet.walletTransaction wallettransaction3 = this.streamRows.get(it.next());
                if (wallettransaction3 != null && containsRow(wallettransaction3) && GramWallet.transactionMatches(wallettransaction3, wallettransaction)) {
                    return wallettransaction3;
                }
            }
            return null;
        }

        private void forgetStreamRows(TL_wallet.walletTransaction wallettransaction) {
            this.streamTraces.remove(wallettransaction.id);
            TL_wallet.walletTransaction wallettransaction2 = this.streamRows.get(wallettransaction.id);
            ArrayList arrayList = new ArrayList(this.streamTransactionIds);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                String str = (String) obj;
                TL_wallet.walletTransaction wallettransaction3 = this.streamRows.get(str);
                if (TextUtils.equals(str, wallettransaction.id) || (wallettransaction3 != null && (wallettransaction3 == wallettransaction2 || GramWallet.transactionMatches(wallettransaction3, wallettransaction)))) {
                    this.streamTransactionIds.remove(str);
                    this.streamTraces.remove(str);
                }
            }
        }

        private boolean replaceFromRemote(TL_wallet.walletTransaction wallettransaction, TL_wallet.walletTransaction wallettransaction2) {
            boolean z = wallettransaction.set(wallettransaction2);
            if (TextUtils.equals(wallettransaction.id, wallettransaction2.id)) {
                return z;
            }
            wallettransaction.id = wallettransaction2.id;
            return true;
        }

        private void invalidateStreamTrace(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ArrayList arrayList = new ArrayList(this.streamTraces.keySet());
            int size = arrayList.size();
            boolean z = false;
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                String str2 = (String) obj;
                if (GramWallet.sameTransactionHash(this.streamTraces.get(str2), str)) {
                    this.streamTraces.remove(str2);
                    this.streamTransactionIds.remove(str2);
                    TL_wallet.walletTransaction wallettransactionRemove = this.streamRows.remove(str2);
                    for (int size2 = this.transactions.size() - 1; size2 >= 0; size2--) {
                        if (this.transactions.get(size2) == wallettransactionRemove || TextUtils.equals(this.transactions.get(size2).id, str2)) {
                            this.transactions.remove(size2);
                            z = true;
                        }
                    }
                }
            }
            if (z) {
                updatedTransactions();
                notifyUpdate();
            }
        }

        private void resolveStreamPeer(TL_wallet.walletTransaction wallettransaction) {
            TL_wallet.WalletTransactionPeer walletTransactionPeer = wallettransaction.peer;
            if (walletTransactionPeer instanceof TL_wallet.walletTransactionPeerAddress) {
                final String str = walletTransactionPeer.address;
                final String str2 = walletTransactionPeer.domain;
                final String str3 = wallettransaction.id;
                GramWallet.this.resolveWallet(str, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$TransactionsList$$ExternalSyntheticLambda3
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$resolveStreamPeer$0(str3, str, str2, (TL_wallet.walletUserAddress) obj, (String) obj2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$resolveStreamPeer$0(String str, String str2, String str3, TL_wallet.walletUserAddress walletuseraddress, String str4) {
            if (walletuseraddress == null || walletuseraddress.user_id == 0 || MessagesController.getInstance(GramWallet.this.currentAccount).getUser(Long.valueOf(walletuseraddress.user_id)) == null) {
                return;
            }
            ArrayList<TL_wallet.walletTransaction> arrayList = this.transactions;
            int size = arrayList.size();
            boolean z = false;
            int i = 0;
            while (i < size) {
                TL_wallet.walletTransaction wallettransaction = arrayList.get(i);
                i++;
                TL_wallet.walletTransaction wallettransaction2 = wallettransaction;
                if (TextUtils.equals(wallettransaction2.id, str) && (wallettransaction2.peer instanceof TL_wallet.walletTransactionPeerAddress)) {
                    TL_wallet.walletTransactionPeerUser wallettransactionpeeruser = new TL_wallet.walletTransactionPeerUser();
                    wallettransactionpeeruser.user_id = walletuseraddress.user_id;
                    wallettransactionpeeruser.address = str2;
                    wallettransactionpeeruser.domain = str3;
                    wallettransaction2.peer = wallettransactionpeeruser;
                    z = true;
                }
            }
            if (z) {
                updatedTransactions();
                notifyUpdate();
            }
        }

        private void insertStreamTransaction(TL_wallet.walletTransaction wallettransaction) {
            int i = 0;
            while (i < this.transactions.size() && this.transactions.get(i).date >= wallettransaction.date) {
                i++;
            }
            this.transactions.add(i, wallettransaction);
        }

        private TransactionsList() {
            this.addressFormatter = new TransactionCell.SmartWalletAddressFormatter();
            this.transactions = new ArrayList<>();
            this.allTransactions = new ArrayList<>();
            this.streamTransactionIds = new HashSet<>();
            this.streamTraces = new HashMap<>();
            this.streamRows = new HashMap<>();
            this.lastOffset = _UrlKt.FRAGMENT_ENCODE_SET;
            this.invalidationReqId = -1;
            this.reqId = -1;
        }

        public boolean isLoading() {
            return this.loading;
        }

        public boolean hasEndReached() {
            return this.endReached;
        }

        public void invalidate() {
            if (this.loadingInvalidation) {
                return;
            }
            final TL_wallet.getTransactions gettransactions = new TL_wallet.getTransactions();
            gettransactions.inbound = true;
            gettransactions.outbound = true;
            gettransactions.limit = 10;
            gettransactions.offset = _UrlKt.FRAGMENT_ENCODE_SET;
            this.loadingInvalidation = true;
            this.invalidationReqId = GramWallet.this.getConnectionsManager().sendRequestTyped(gettransactions, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$TransactionsList$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$invalidate$1(gettransactions, (TL_wallet.walletTransactions) obj, (TLRPC.TL_error) obj2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$invalidate$1(TL_wallet.getTransactions gettransactions, TL_wallet.walletTransactions wallettransactions, TLRPC.TL_error tL_error) {
            this.invalidationReqId = -1;
            this.loadingInvalidation = false;
            if (wallettransactions != null) {
                MessagesController.getInstance(GramWallet.this.currentAccount).putUsers(wallettransactions.users, false);
                MessagesController.getInstance(GramWallet.this.currentAccount).putChats(wallettransactions.chats, false);
                ArrayList<TL_wallet.walletTransaction> arrayList = wallettransactions.transactions;
                int size = arrayList.size();
                int i = 0;
                while (true) {
                    if (i < size) {
                        TL_wallet.walletTransaction wallettransaction = arrayList.get(i);
                        i++;
                        if (findLocalTransaction(wallettransaction) != null) {
                            boolean z = false;
                            for (int size2 = wallettransactions.transactions.size() - 1; size2 >= 0; size2--) {
                                TL_wallet.walletTransaction wallettransaction2 = wallettransactions.transactions.get(size2);
                                TL_wallet.walletTransaction wallettransactionFindLocalTransaction = findLocalTransaction(wallettransaction2);
                                forgetStreamRows(wallettransaction2);
                                if (wallettransactionFindLocalTransaction != null) {
                                    if (replaceFromRemote(wallettransactionFindLocalTransaction, wallettransaction2)) {
                                    }
                                } else {
                                    this.transactions.add(0, wallettransaction2);
                                }
                                z = true;
                            }
                            z = z;
                        }
                    } else {
                        boolean z2 = this.loading;
                        if (z2) {
                            cancel();
                        }
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList<TL_wallet.walletTransaction> arrayList3 = this.transactions;
                        int size3 = arrayList3.size();
                        int i2 = 0;
                        while (i2 < size3) {
                            TL_wallet.walletTransaction wallettransaction3 = arrayList3.get(i2);
                            i2++;
                            TL_wallet.walletTransaction wallettransaction4 = wallettransaction3;
                            if (isStreamRow(wallettransaction4)) {
                                arrayList2.add(wallettransaction4);
                            }
                        }
                        ArrayList<TL_wallet.walletTransaction> arrayList4 = wallettransactions.transactions;
                        int size4 = arrayList4.size();
                        int i3 = 0;
                        while (i3 < size4) {
                            TL_wallet.walletTransaction wallettransaction5 = arrayList4.get(i3);
                            i3++;
                            forgetStreamRows(wallettransaction5);
                        }
                        this.transactions.clear();
                        this.transactions.addAll(wallettransactions.transactions);
                        int size5 = arrayList2.size();
                        int i4 = 0;
                        while (i4 < size5) {
                            Object obj = arrayList2.get(i4);
                            i4++;
                            TL_wallet.walletTransaction wallettransaction6 = (TL_wallet.walletTransaction) obj;
                            if (isStreamRow(wallettransaction6)) {
                                insertStreamTransaction(wallettransaction6);
                            }
                        }
                        this.lastOffset = wallettransactions.next_offset;
                        this.endReached = wallettransactions.transactions.size() < gettransactions.limit;
                        if (z2) {
                            load();
                        }
                        z = true;
                    }
                }
            }
            if (z) {
                updatedTransactions();
                notifyUpdate();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updatedTransactions() {
            int i;
            TL_wallet.WalletTransactionPeer walletTransactionPeer;
            String str;
            int size = GramWallet.this.pendingTransactions.size();
            while (true) {
                size--;
                i = 0;
                if (size < 0) {
                    break;
                }
                TL_wallet.walletTransaction wallettransaction = (TL_wallet.walletTransaction) GramWallet.this.pendingTransactions.get(size);
                if (!TextUtils.isEmpty(wallettransaction.id) || !TextUtils.isEmpty(wallettransaction.tx_hash) || !TextUtils.isEmpty(wallettransaction.messageHash)) {
                    ArrayList<TL_wallet.walletTransaction> arrayList = this.transactions;
                    int size2 = arrayList.size();
                    while (i < size2) {
                        TL_wallet.walletTransaction wallettransaction2 = arrayList.get(i);
                        i++;
                        TL_wallet.walletTransaction wallettransaction3 = wallettransaction2;
                        if ((!TextUtils.isEmpty(wallettransaction.id) && TextUtils.equals(wallettransaction.id, wallettransaction3.id)) || (wallettransaction.incoming == wallettransaction3.incoming && (GramWallet.sameTransactionHash(wallettransaction.tx_hash, wallettransaction3.tx_hash) || GramWallet.sameTransactionHash(wallettransaction.messageHash, wallettransaction3.messageHash)))) {
                            if (TextUtils.isEmpty(wallettransaction3.gaslessMessageBodyHash)) {
                                wallettransaction3.gaslessMessageBodyHash = wallettransaction.gaslessMessageBodyHash;
                            }
                            if (TextUtils.isEmpty(wallettransaction3.normalMessageBodyHash)) {
                                wallettransaction3.normalMessageBodyHash = wallettransaction.normalMessageBodyHash;
                            }
                            GramWallet.this.pendingTransactions.remove(size);
                            GramWalletPolling gramWalletPolling = (GramWalletPolling) GramWallet.this.polling.remove(wallettransaction);
                            if (gramWalletPolling != null) {
                                gramWalletPolling.stop();
                            }
                        }
                    }
                }
            }
            HashSet hashSet = new HashSet();
            int i2 = 0;
            while (i2 < this.transactions.size()) {
                String str2 = this.transactions.get(i2).id;
                if (!TextUtils.isEmpty(str2) && !hashSet.add(str2)) {
                    this.transactions.remove(i2);
                    i2--;
                }
                i2++;
            }
            this.allTransactions.clear();
            this.allTransactions.addAll(GramWallet.this.pendingTransactions);
            this.allTransactions.addAll(this.transactions);
            this.allTransactions.sort(new Comparator() { // from class: org.telegram.ui.Wallet.GramWallet$TransactionsList$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Integer.compare(((TL_wallet.walletTransaction) obj2).date, ((TL_wallet.walletTransaction) obj).date);
                }
            });
            this.addressFormatter.clear();
            ArrayList<TL_wallet.walletTransaction> arrayList2 = this.allTransactions;
            int size3 = arrayList2.size();
            while (i < size3) {
                TL_wallet.walletTransaction wallettransaction4 = arrayList2.get(i);
                i++;
                TL_wallet.walletTransaction wallettransaction5 = wallettransaction4;
                if (wallettransaction5 != null && (walletTransactionPeer = wallettransaction5.peer) != null && (str = walletTransactionPeer.address) != null) {
                    this.addressFormatter.add(str);
                }
            }
            this.addressFormatter.done();
        }

        public void load() {
            if (this.loading || this.endReached) {
                return;
            }
            final TL_wallet.getTransactions gettransactions = new TL_wallet.getTransactions();
            gettransactions.inbound = true;
            gettransactions.outbound = true;
            gettransactions.limit = 10;
            gettransactions.offset = this.lastOffset;
            this.reqId = GramWallet.this.getConnectionsManager().sendRequestTyped(gettransactions, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWallet$TransactionsList$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$load$3(gettransactions, (TL_wallet.walletTransactions) obj, (TLRPC.TL_error) obj2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$load$3(TL_wallet.getTransactions gettransactions, TL_wallet.walletTransactions wallettransactions, TLRPC.TL_error tL_error) {
            this.reqId = -1;
            int i = 0;
            this.loading = false;
            if (wallettransactions != null) {
                MessagesController.getInstance(GramWallet.this.currentAccount).putUsers(wallettransactions.users, false);
                MessagesController.getInstance(GramWallet.this.currentAccount).putChats(wallettransactions.chats, false);
                ArrayList<TL_wallet.walletTransaction> arrayList = wallettransactions.transactions;
                int size = arrayList.size();
                while (i < size) {
                    TL_wallet.walletTransaction wallettransaction = arrayList.get(i);
                    i++;
                    appendOrReplace(wallettransaction);
                }
                this.lastOffset = wallettransactions.next_offset;
                if (wallettransactions.transactions.size() < gettransactions.limit) {
                    this.endReached = true;
                }
            } else {
                this.endReached = true;
            }
            updatedTransactions();
            notifyUpdate();
        }

        public boolean isEndReached() {
            return this.endReached;
        }

        public void clear() {
            cancel();
            this.transactions.clear();
            this.streamTransactionIds.clear();
            this.streamTraces.clear();
            this.streamRows.clear();
            this.lastOffset = _UrlKt.FRAGMENT_ENCODE_SET;
            this.endReached = false;
            updatedTransactions();
        }

        private TL_wallet.walletTransaction findTransactionById(ArrayList<TL_wallet.walletTransaction> arrayList, String str) {
            for (int i = 0; i < arrayList.size(); i++) {
                if (TextUtils.equals(arrayList.get(i).id, str)) {
                    return arrayList.get(i);
                }
            }
            return null;
        }

        public void cancel() {
            if (this.reqId >= 0) {
                GramWallet.this.getConnectionsManager().cancelRequest(this.reqId, true);
                this.reqId = -1;
            }
            if (this.invalidationReqId >= 0) {
                GramWallet.this.getConnectionsManager().cancelRequest(this.invalidationReqId, true);
                this.invalidationReqId = -1;
            }
            this.loading = false;
            this.loadingInvalidation = false;
        }

        private void appendOrReplace(TL_wallet.walletTransaction wallettransaction) {
            if (wallettransaction == null) {
                return;
            }
            TL_wallet.walletTransaction wallettransactionFindLocalTransaction = findLocalTransaction(wallettransaction);
            forgetStreamRows(wallettransaction);
            if (wallettransactionFindLocalTransaction != null) {
                replaceFromRemote(wallettransactionFindLocalTransaction, wallettransaction);
            } else {
                this.transactions.add(wallettransaction);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyUpdate() {
            NotificationCenter.getInstance(GramWallet.this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.walletTransactionsUpdate, this, GramWallet.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ConnectionsManager getConnectionsManager() {
        return ConnectionsManager.getInstance(this.currentAccount);
    }

    private int now() {
        return getConnectionsManager().getCurrentTime();
    }

    private void loadPrefs() {
        try {
            this.usePasscodeSetting = getContext().getSharedPreferences("gram_wallet", 0).getBoolean("passcode", true);
        } catch (Exception e) {
            err("failed to load prefs", e);
        }
    }

    private void savePrefs() {
        try {
            getContext().getSharedPreferences("gram_wallet", 0).edit().putBoolean("passcode", this.usePasscodeSetting).apply();
        } catch (Exception e) {
            err("failed to save prefs", e);
        }
    }

    public static String formatGrams(long j) {
        return formatGrams(j, false);
    }

    public static String formatGrams(long j, boolean z) {
        if ((j > -10000000 && j < 10000000) || z) {
            return StarsIntroActivity.formatTON(j);
        }
        if (gramsFormat == null) {
            gramsFormat = new DecimalFormat("0.##", new DecimalFormatSymbols(Locale.US));
        }
        return gramsFormat.format(j / 1.0E9d);
    }

    public static String formatGramsBalance(long j, boolean z) {
        boolean z2 = j <= -1000000000 || j >= 1000000000;
        if (z && z2) {
            return formatGrams(j, true);
        }
        return MathFormat$$ExternalSyntheticBackportWithForwarding0.m260m(BigDecimal.valueOf(j, 9).setScale(z ? 4 : z2 ? 2 : 3, RoundingMode.DOWN)).toPlainString();
    }

    public static CharSequence formatGramsWithUnit(long j) {
        return formatGramsWithUnit(j, false);
    }

    public static CharSequence formatGramsWithUnit(long j, boolean z) {
        return formatGramsWithUnit(formatGrams(j, z));
    }

    public static CharSequence formatGramsBalanceWithUnit(long j, boolean z) {
        return formatGramsWithUnit(formatGramsBalance(j, z));
    }

    public static CharSequence formatGramsWithUnit(CharSequence charSequence) {
        return formatAmountWithUnit("Grams", C2807R.string.Grams_other, charSequence);
    }

    public static CharSequence formatGramCapital(long j) {
        return formatGramCapital(j, false);
    }

    public static CharSequence formatGramCapital(long j, boolean z) {
        return formatGramCapital(formatGrams(j, z));
    }

    public static CharSequence formatGramCapital(CharSequence charSequence) {
        return formatAmountWithUnit("GramCapital", C2807R.string.GramCapital_other, charSequence);
    }

    private static CharSequence formatAmountWithUnit(String str, int i, CharSequence charSequence) {
        String strReplace = charSequence.toString().replace(Typography.ndash, SignatureVisitor.SUPER);
        String string = LocaleController.getString(i);
        if (strReplace.indexOf(46) < 0) {
            try {
                long j = Long.parseLong(strReplace);
                string = LocaleController.getPluralString(str, (int) ((j < -2147483647L || j > 2147483647L) ? Math.abs(j % 100) + 100 : Math.abs(j)));
            } catch (NumberFormatException unused) {
            }
        }
        return AndroidUtilities.replaceCharSequence("%1$s", string, charSequence);
    }

    public static SpannableStringBuilder formatGramsScaled(long j, float f) {
        return formatGramsScaled(formatGrams(j), f);
    }

    public static SpannableStringBuilder formatGramsScaled(String str, float f) {
        int i;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        int iIndexOf = str.indexOf(46);
        if (iIndexOf >= 0 && (i = iIndexOf + 1) < str.length()) {
            spannableStringBuilder.setSpan(new RelativeSizeSpan(f), i, str.length(), 33);
        }
        return spannableStringBuilder;
    }

    public CharSequence formatCurrency(long j) {
        return formatCurrency(j, false);
    }

    public CharSequence formatCurrency(long j, boolean z) {
        BigDecimal scale;
        int iMax;
        String strConcat;
        String currency = this.currencies.getCurrency();
        TL_wallet.currencyRate selectedCurrencyRate = this.currencies.getSelectedCurrencyRate();
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        if (selectedCurrencyRate == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String str2 = selectedCurrencyRate.symbol;
        String str3 = selectedCurrencyRate.thousandsSeparator;
        String str4 = selectedCurrencyRate.decimalSeparator;
        boolean z2 = selectedCurrencyRate.symbolLeft;
        boolean z3 = selectedCurrencyRate.spaceBetween;
        boolean z4 = selectedCurrencyRate.dropZeros;
        int i = selectedCurrencyRate.exp;
        double d = selectedCurrencyRate.rate;
        if (d <= 0.0d || Double.isNaN(d) || Double.isInfinite(d)) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        double d2 = d * MessagesController.getInstance(this.currentAccount).config.tonUsdRate.get();
        int iMax2 = Math.max(0, Math.min(i, 20));
        BigDecimal bigDecimalMovePointLeft = BigDecimal.valueOf(j).multiply(BigDecimal.valueOf(d2)).movePointLeft(9);
        if (z && bigDecimalMovePointLeft.signum() != 0) {
            scale = MathFormat$$ExternalSyntheticBackportWithForwarding0.m260m(bigDecimalMovePointLeft.round(new MathContext(3, RoundingMode.HALF_UP)));
            iMax = Math.max(iMax2, Math.min(20, Math.max(0, scale.scale())));
        } else {
            scale = bigDecimalMovePointLeft.setScale(iMax2, RoundingMode.HALF_UP);
            iMax = iMax2;
        }
        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.US);
        boolean zIsEmpty = TextUtils.isEmpty(str3);
        boolean z5 = !zIsEmpty;
        if (!zIsEmpty) {
            decimalFormatSymbols.setGroupingSeparator(str3.charAt(0));
        }
        decimalFormatSymbols.setDecimalSeparator(TextUtils.isEmpty(str4) ? '.' : str4.charAt(0));
        DecimalFormat decimalFormat = new DecimalFormat("#,##0", decimalFormatSymbols);
        decimalFormat.setGroupingUsed(z5);
        if (z4) {
            iMax2 = 0;
        }
        decimalFormat.setMinimumFractionDigits(iMax2);
        decimalFormat.setMaximumFractionDigits(iMax);
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        boolean z6 = scale.signum() < 0;
        String str5 = decimalFormat.format(scale.abs());
        if (!TextUtils.isEmpty(str2)) {
            currency = str2;
        }
        if (z3) {
            str = " ";
        }
        if (z2) {
            strConcat = currency + str + str5;
        } else {
            strConcat = str5 + str + currency;
        }
        if (z6) {
            strConcat = "-".concat(strConcat);
        }
        int iIndexOf = strConcat.indexOf(8387);
        if (iIndexOf < 0) {
            return strConcat;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strConcat);
        spannableStringBuilder.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface("fonts/gram.ttf")), iIndexOf, iIndexOf + 1, 33);
        return spannableStringBuilder;
    }

    private Context getContext() {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null && safeLastFragment.getContext() != null) {
            return safeLastFragment.getContext();
        }
        return ApplicationLoader.applicationContext;
    }

    public static final class SecretPhrase implements AutoCloseable {
        private final byte[] bytes;
        private boolean closed;

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isSeparator(byte b2) {
            return b2 == 32 || b2 == 9 || b2 == 10 || b2 == 13 || b2 == 12 || b2 == 11;
        }

        public SecretPhrase(byte[] bArr) {
            if (bArr == null) {
                f$$ExternalSyntheticBUOutline1.m215m("Missing recovery phrase");
                throw null;
            }
            this.bytes = (byte[]) bArr.clone();
        }

        public static SecretPhrase fromWords(List<String> list) {
            int iMax = Math.max(0, list.size() - 1);
            ArrayList arrayList = new ArrayList();
            try {
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    byte[] bytes = it.next().getBytes(StandardCharsets.UTF_8);
                    arrayList.add(bytes);
                    iMax = Math.addExact(iMax, bytes.length);
                }
                byte[] bArr = new byte[iMax];
                int length = 0;
                for (int i = 0; i < arrayList.size(); i++) {
                    try {
                        if (i > 0) {
                            bArr[length] = 32;
                            length++;
                        }
                        byte[] bArr2 = (byte[]) arrayList.get(i);
                        System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                        length += bArr2.length;
                    } finally {
                        Arrays.fill(bArr, (byte) 0);
                    }
                }
                SecretPhrase secretPhrase = new SecretPhrase(bArr);
                Arrays.fill(bArr, (byte) 0);
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    Arrays.fill((byte[]) obj, (byte) 0);
                }
                return secretPhrase;
            } catch (Throwable th) {
                int size2 = arrayList.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj2 = arrayList.get(i3);
                    i3++;
                    Arrays.fill((byte[]) obj2, (byte) 0);
                }
                throw th;
            }
        }

        private void checkOpen() {
            if (this.closed) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Recovery phrase is closed");
            }
        }

        public synchronized int wordCount() {
            int i;
            checkOpen();
            i = 0;
            boolean z = false;
            for (byte b2 : this.bytes) {
                if (isSeparator(b2)) {
                    z = false;
                } else if (!z) {
                    i++;
                    z = true;
                }
            }
            return i;
        }

        public synchronized boolean isEmpty() {
            return wordCount() == 0;
        }

        public synchronized byte[] copyBytes() {
            checkOpen();
            return (byte[]) this.bytes.clone();
        }

        public synchronized SecretPhrase copy() {
            checkOpen();
            return new SecretPhrase(this.bytes);
        }

        public synchronized SecretPhrase firstWords(int i) {
            byte[] bArrCopyOfRange;
            checkOpen();
            if (i <= 0) {
                throw new IllegalArgumentException("Invalid word count");
            }
            int i2 = 0;
            while (true) {
                byte[] bArr = this.bytes;
                if (i2 >= bArr.length || !isSeparator(bArr[i2])) {
                    break;
                }
                i2++;
            }
            int i3 = 0;
            int i4 = i2;
            while (true) {
                byte[] bArr2 = this.bytes;
                if (i3 < i) {
                    if (i4 == bArr2.length) {
                        throw new IllegalArgumentException("Not enough recovery words");
                    }
                    while (true) {
                        byte[] bArr3 = this.bytes;
                        if (i4 >= bArr3.length || isSeparator(bArr3[i4])) {
                            break;
                        }
                        i4++;
                    }
                    i3++;
                    if (i3 < i) {
                        while (true) {
                            byte[] bArr4 = this.bytes;
                            if (i4 >= bArr4.length || !isSeparator(bArr4[i4])) {
                                break;
                            }
                            i4++;
                        }
                    }
                } else {
                    bArrCopyOfRange = Arrays.copyOfRange(bArr2, i2, i4);
                    try {
                    } finally {
                        Arrays.fill(bArrCopyOfRange, (byte) 0);
                    }
                }
            }
            return new SecretPhrase(bArrCopyOfRange);
        }

        public synchronized ArrayList<String> toWordsForDisplay() {
            ArrayList<String> arrayList;
            try {
                checkOpen();
                arrayList = new ArrayList<>();
                int i = 0;
                while (i < this.bytes.length) {
                    while (true) {
                        byte[] bArr = this.bytes;
                        if (i >= bArr.length || !isSeparator(bArr[i])) {
                            break;
                        }
                        i++;
                    }
                    int i2 = i;
                    while (true) {
                        byte[] bArr2 = this.bytes;
                        if (i2 >= bArr2.length || isSeparator(bArr2[i2])) {
                            break;
                        }
                        i2++;
                    }
                    if (i2 > i) {
                        arrayList.add(new String(this.bytes, i, i2 - i, StandardCharsets.UTF_8));
                    }
                    i = i2;
                }
            } catch (Throwable th) {
                throw th;
            }
            return arrayList;
        }

        @Override // java.lang.AutoCloseable
        public synchronized void close() {
            Arrays.fill(this.bytes, (byte) 0);
            this.closed = true;
        }

        public String toString() {
            return "SecretPhrase[redacted]";
        }

        public static void deliver(SecretPhrase secretPhrase, Utilities.Callback<SecretPhrase> callback) {
            if (callback != null) {
                try {
                    callback.run(secretPhrase);
                } finally {
                    if (secretPhrase != null) {
                        secretPhrase.close();
                    }
                }
            }
        }
    }
}
