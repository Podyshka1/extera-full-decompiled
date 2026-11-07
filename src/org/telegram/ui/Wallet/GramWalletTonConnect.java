package org.telegram.ui.Wallet;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.util.Base64;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.view.Lifecycle$Event$$ExternalSyntheticBUOutline0;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.google.android.gms.cast.MediaError;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.function.Predicate;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mvel2.MVEL;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.WebFile;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_update;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.MessageDrawable;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.IconBackgroundColors;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LoadingSpan;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Wallet.GramWallet;
import org.telegram.ui.Wallet.GramWalletTonConnect;
import org.telegram.ui.Wallet.NavBottomSheet;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes8.dex */
public class GramWalletTonConnect {
    private Pending activeRequest;
    private final ConnectionsManager connections;
    public final int currentAccount;
    private boolean loadingRequest;
    public final GramWallet wallet;
    private final HashSet<Long> disconnecting = new HashSet<>();
    public final ArrayList<TL_wallet.tonConnectSession> sessions = new ArrayList<>();
    private int requestingSessionsReqId = -1;

    public static final class ConnectRequest {
        boolean busy;
        final String embedded;
        final String json;
        final String manifestUrl;
        TL_wallet.tonConnectSession session;
        final String traceId;

        public ConnectRequest(TL_wallet.tonConnectSession tonconnectsession, String str, String str2, String str3, String str4) {
            this.session = tonconnectsession;
            this.json = str;
            this.manifestUrl = str2;
            this.traceId = str3;
            this.embedded = str4;
        }
    }

    public GramWalletTonConnect(GramWallet gramWallet) {
        int i = gramWallet.currentAccount;
        this.currentAccount = i;
        this.wallet = gramWallet;
        this.connections = ConnectionsManager.getInstance(i);
        requestSessions();
    }

    public boolean isLoadingSessions() {
        return this.requestingSessionsReqId >= 0;
    }

    private void requestSessions() {
        if (this.requestingSessionsReqId >= 0) {
            return;
        }
        this.requestingSessionsReqId = this.connections.sendRequestTyped(new TL_wallet.tonConnectGetSessions(), new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda28
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$requestSessions$0((TL_wallet.tonConnectSessions) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestSessions$0(TL_wallet.tonConnectSessions tonconnectsessions, TLRPC.TL_error tL_error) {
        this.requestingSessionsReqId = -1;
        if (tL_error != null || tonconnectsessions == null) {
            rpc("getSessions", tL_error);
            this.wallet.notifyUpdate();
            return;
        }
        this.sessions.clear();
        ArrayList<TL_wallet.tonConnectSession> arrayList = tonconnectsessions.sessions;
        if (arrayList != null) {
            this.sessions.addAll(arrayList);
        }
        this.wallet.notifyUpdate();
    }

    public void createSession(String str, final String str2, final String str3, final String str4, final String str5, final Utilities.Callback2<ConnectRequest, String> callback2) {
        TL_wallet.tonConnectCreateSession tonconnectcreatesession = new TL_wallet.tonConnectCreateSession();
        tonconnectcreatesession.dapp_client_id = str;
        tonconnectcreatesession.manifest_url = str2;
        this.connections.sendRequestTyped(tonconnectcreatesession, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda35
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$createSession$1(callback2, str3, str2, str4, str5, (TL_wallet.tonConnectSession) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createSession$1(Utilities.Callback2 callback2, String str, String str2, String str3, String str4, TL_wallet.tonConnectSession tonconnectsession, TLRPC.TL_error tL_error) {
        TL_wallet.tonConnectSession tonconnectsession2;
        if (tL_error != null || tonconnectsession == null) {
            callback2.run(null, rpc("createSession", tL_error));
            return;
        }
        ArrayList<TL_wallet.tonConnectSession> arrayList = this.sessions;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TL_wallet.tonConnectSession tonconnectsession3 = arrayList.get(i);
            i++;
            TL_wallet.tonConnectSession tonconnectsession4 = tonconnectsession3;
            if (tonconnectsession4.id == tonconnectsession.id && (tonconnectsession4.manifest != null || tonconnectsession4.manifest_error != null || tonconnectsession4.closed || tonconnectsession4.closing)) {
                tonconnectsession2 = tonconnectsession4;
                break;
            }
        }
        tonconnectsession2 = tonconnectsession;
        onSessionUpdate(tonconnectsession2);
        callback2.run(new ConnectRequest(tonconnectsession2, str, str2, str3, str4), null);
    }

    /* JADX INFO: renamed from: $r8$lambda$07JIjVKdgNS88hdn-lIaRNHPvGA, reason: not valid java name */
    public static /* synthetic */ boolean m23114$r8$lambda$07JIjVKdgNS88hdnlIaRNHPvGA(TL_wallet.tonConnectSession tonconnectsession, TL_wallet.tonConnectSession tonconnectsession2) {
        return tonconnectsession2.id == tonconnectsession.id;
    }

    public void onSessionUpdate(final TL_wallet.tonConnectSession tonconnectsession) {
        this.sessions.removeIf(new Predicate() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda27
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return GramWalletTonConnect.m23114$r8$lambda$07JIjVKdgNS88hdnlIaRNHPvGA(tonconnectsession, (TL_wallet.tonConnectSession) obj);
            }
        });
        if (!tonconnectsession.closed) {
            this.sessions.add(tonconnectsession);
        }
        updateOpenRequests(tonconnectsession);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.walletUpdate, this.wallet, tonconnectsession);
    }

    public boolean requestsProof(ConnectRequest connectRequest) {
        if (connectRequest != null && connectRequest.json != null) {
            try {
                JSONArray jSONArray = new JSONObject(connectRequest.json).getJSONArray(PluginsConstants.Settings.ITEMS);
                for (int i = 0; i < jSONArray.length(); i++) {
                    if ("ton_proof".equals(jSONArray.getJSONObject(i).optString("name"))) {
                        return true;
                    }
                }
            } catch (Exception e) {
                exception("read proof request", e);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$approveSession$4(ConnectRequest connectRequest, final Utilities.Callback callback) {
        approveSessionOnUIThread(connectRequest, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda60
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                GramWalletTonConnect.$r8$lambda$ZhnIyVVOIVUZPGqSyK9fpcjRsnM(callback, (String) obj);
            }
        });
    }

    public void approveSession(final ConnectRequest connectRequest, final Utilities.Callback<String> callback) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$approveSession$4(connectRequest, callback);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$ZhnIyVVOIVUZPGqSyK9fpcjRsnM(Utilities.Callback callback, String str) {
        log("approve session", str);
        callback.run(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disconnectSession$6(TL_wallet.tonConnectSession tonconnectsession, final Utilities.Callback callback) {
        disconnectSessionOnUIThread(tonconnectsession, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda72
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                GramWalletTonConnect.m23124$r8$lambda$Onfv6YVCnO_daLFBffrgIKywcw(callback, (String) obj);
            }
        });
    }

    public void disconnectSession(final TL_wallet.tonConnectSession tonconnectsession, final Utilities.Callback<String> callback) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda64
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$disconnectSession$6(tonconnectsession, callback);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$Onfv6YVCnO_daLFBffrgIKy-wcw, reason: not valid java name */
    public static /* synthetic */ void m23124$r8$lambda$Onfv6YVCnO_daLFBffrgIKywcw(Utilities.Callback callback, String str) {
        log("disconnect session", str);
        callback.run(str);
    }

    private void disconnectSessionOnUIThread(final TL_wallet.tonConnectSession tonconnectsession, final Utilities.Callback<String> callback) {
        if (tonconnectsession == null || tonconnectsession.dapp_client_id == null || tonconnectsession.client_id == null || tonconnectsession.nonce == null) {
            callback.run("Missing TON Connect session data");
            return;
        }
        if (!this.disconnecting.add(Long.valueOf(tonconnectsession.id))) {
            callback.run("A TON Connect operation is already in progress");
            return;
        }
        final Utilities.Callback callback2 = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda85
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$disconnectSessionOnUIThread$9(tonconnectsession, callback, (String) obj);
            }
        };
        if (tonconnectsession.closed) {
            callback2.run(null);
        } else {
            this.wallet.whenReady(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda86
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$disconnectSessionOnUIThread$16(callback2, tonconnectsession);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disconnectSessionOnUIThread$9(final TL_wallet.tonConnectSession tonconnectsession, final Utilities.Callback callback, final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda89
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$disconnectSessionOnUIThread$8(tonconnectsession, str, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disconnectSessionOnUIThread$8(final TL_wallet.tonConnectSession tonconnectsession, String str, Utilities.Callback callback) {
        if (this.disconnecting.remove(Long.valueOf(tonconnectsession.id))) {
            if (str == null) {
                this.sessions.removeIf(new Predicate() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return GramWalletTonConnect.$r8$lambda$j9ayWaIVKJoDMmDRtjQDZopQRKQ(tonconnectsession, (TL_wallet.tonConnectSession) obj);
                    }
                });
                this.wallet.notifyUpdate();
            }
            callback.run(str);
        }
    }

    public static /* synthetic */ boolean $r8$lambda$j9ayWaIVKJoDMmDRtjQDZopQRKQ(TL_wallet.tonConnectSession tonconnectsession, TL_wallet.tonConnectSession tonconnectsession2) {
        return tonconnectsession2.id == tonconnectsession.id;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disconnectSessionOnUIThread$16(final Utilities.Callback callback, final TL_wallet.tonConnectSession tonconnectsession) {
        final String address = this.wallet.getAddress();
        byte[] publicKey = this.wallet.getPublicKey();
        final byte[] bArr = publicKey == null ? null : (byte[]) publicKey.clone();
        if (address == null || bArr == null) {
            callback.run("Wallet is not ready");
        } else {
            this.wallet.getSecretPhrase(true, false, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda96
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$disconnectSessionOnUIThread$15(callback, tonconnectsession, address, bArr, (GramWallet.SecretPhrase) obj, (String) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disconnectSessionOnUIThread$15(final Utilities.Callback callback, final TL_wallet.tonConnectSession tonconnectsession, final String str, final byte[] bArr, GramWallet.SecretPhrase secretPhrase, String str2) {
        if (str2 != null || secretPhrase == null) {
            if (str2 == null) {
                str2 = "Recovery phrase is unavailable";
            }
            callback.run(str2);
        } else {
            final GramWallet.SecretPhrase secretPhraseCopy = secretPhrase.copy();
            final Utilities.Callback callback2 = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    GramWalletTonConnect.$r8$lambda$M8XD3NxC7MfvEBVWAgcqlIZwmsY(secretPhraseCopy, callback, (String) obj);
                }
            };
            TL_wallet.tonConnectGetNextEventId tonconnectgetnexteventid = new TL_wallet.tonConnectGetNextEventId();
            tonconnectgetnexteventid.session_id = tonconnectsession.id;
            this.connections.sendRequestTyped(tonconnectgetnexteventid, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda4
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$disconnectSessionOnUIThread$14(callback2, secretPhraseCopy, tonconnectsession, str, bArr, (TL_wallet.tonConnectNextEventId) obj, (TLRPC.TL_error) obj2);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$M8XD3NxC7MfvEBVWAgcqlIZwmsY(GramWallet.SecretPhrase secretPhrase, Utilities.Callback callback, String str) {
        secretPhrase.close();
        callback.run(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disconnectSessionOnUIThread$14(final Utilities.Callback callback, final GramWallet.SecretPhrase secretPhrase, final TL_wallet.tonConnectSession tonconnectsession, final String str, final byte[] bArr, final TL_wallet.tonConnectNextEventId tonconnectnexteventid, TLRPC.TL_error tL_error) {
        if (tL_error != null || tonconnectnexteventid == null) {
            callback.run(rpc("getNextEventId", tL_error));
        } else {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$disconnectSessionOnUIThread$13(secretPhrase, tonconnectsession, str, bArr, tonconnectnexteventid, callback);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disconnectSessionOnUIThread$13(GramWallet.SecretPhrase secretPhrase, final TL_wallet.tonConnectSession tonconnectsession, final String str, final byte[] bArr, TL_wallet.tonConnectNextEventId tonconnectnexteventid, final Utilities.Callback callback) {
        try {
            final Prepared preparedPrepareDisconnect = prepareDisconnect(secretPhrase, tonconnectsession, str, bArr, tonconnectnexteventid.event_id);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$disconnectSessionOnUIThread$12(str, bArr, callback, tonconnectsession, preparedPrepareDisconnect);
                }
            });
        } catch (Exception e) {
            callback.run(exception("prepare disconnect", e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$disconnectSessionOnUIThread$12(String str, byte[] bArr, final Utilities.Callback callback, TL_wallet.tonConnectSession tonconnectsession, Prepared prepared) {
        if (!TextUtils.equals(str, this.wallet.getAddress()) || !Arrays.equals(bArr, this.wallet.getPublicKey())) {
            callback.run("Wallet or TON Connect session changed. Open the request again.");
            return;
        }
        TL_wallet.tonConnectCloseSession tonconnectclosesession = new TL_wallet.tonConnectCloseSession();
        tonconnectclosesession.session_id = tonconnectsession.id;
        tonconnectclosesession.body = prepared.body;
        this.connections.sendRequestTyped(tonconnectclosesession, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda23
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                TLRPC.TL_error tL_error = (TLRPC.TL_error) obj2;
                callback.run((tL_error == null && (((TLRPC.Bool) obj) instanceof TLRPC.TL_boolTrue)) ? null : GramWalletTonConnect.rpc("closeSession", tL_error));
            }
        });
    }

    private void approveSessionOnUIThread(final ConnectRequest connectRequest, final Utilities.Callback<String> callback) {
        final TL_wallet.tonConnectSession tonconnectsession = connectRequest.session;
        if (connectRequest.json == null) {
            callback.run("The original connection request is unavailable");
            return;
        }
        if (tonconnectsession.closed || tonconnectsession.closing || tonconnectsession.manifest_error != null || tonconnectsession.manifest == null) {
            callback.run("The dApp manifest is unavailable or the session is closed");
        } else if (connectRequest.busy) {
            callback.run("A TON Connect operation is already in progress");
        } else {
            connectRequest.busy = true;
            this.wallet.whenReady(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda73
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$approveSessionOnUIThread$29(connectRequest, callback, tonconnectsession);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$approveSessionOnUIThread$29(final ConnectRequest connectRequest, final Utilities.Callback callback, final TL_wallet.tonConnectSession tonconnectsession) {
        final String address = this.wallet.getAddress();
        byte[] publicKey = this.wallet.getPublicKey();
        final byte[] bArr = publicKey == null ? null : (byte[]) publicKey.clone();
        final Utilities.Callback callback2 = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda77
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda94
                    @Override // java.lang.Runnable
                    public final void run() {
                        GramWalletTonConnect.$r8$lambda$dRmsmjzpml2FlwHKL6CZf6bYsa0(connectRequest, callback, str);
                    }
                });
            }
        };
        if (address == null || bArr == null) {
            callback2.run("Wallet is not ready");
        } else {
            this.wallet.getSecretPhrase(true, false, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda78
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$approveSessionOnUIThread$28(callback2, tonconnectsession, address, bArr, connectRequest, (GramWallet.SecretPhrase) obj, (String) obj2);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$dRmsmjzpml2FlwHKL6CZf6bYsa0(ConnectRequest connectRequest, Utilities.Callback callback, String str) {
        connectRequest.busy = false;
        callback.run(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$approveSessionOnUIThread$28(final Utilities.Callback callback, final TL_wallet.tonConnectSession tonconnectsession, final String str, final byte[] bArr, final ConnectRequest connectRequest, GramWallet.SecretPhrase secretPhrase, String str2) {
        if (str2 != null || secretPhrase == null) {
            if (str2 == null) {
                str2 = "Recovery phrase is unavailable";
            }
            callback.run(str2);
        } else {
            final GramWallet.SecretPhrase secretPhraseCopy = secretPhrase.copy();
            final Utilities.Callback callback2 = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda91
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    GramWalletTonConnect.$r8$lambda$dgRB7Hqxt_iUcN3EOB6JuJtjS7k(secretPhraseCopy, callback, (String) obj);
                }
            };
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda92
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$approveSessionOnUIThread$27(secretPhraseCopy, tonconnectsession, str, bArr, connectRequest, callback2);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$dgRB7Hqxt_iUcN3EOB6JuJtjS7k(GramWallet.SecretPhrase secretPhrase, Utilities.Callback callback, String str) {
        secretPhrase.close();
        callback.run(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$approveSessionOnUIThread$27(final GramWallet.SecretPhrase secretPhrase, final TL_wallet.tonConnectSession tonconnectsession, final String str, final byte[] bArr, final ConnectRequest connectRequest, final Utilities.Callback callback) {
        try {
            final Prepared preparedPrepareConnect = prepareConnect(secretPhrase, tonconnectsession, str, bArr, connectRequest.json, connectRequest.manifestUrl, connectRequest.embedded, (TL_wallet.tonConnectChallenge) null, this.connections.getCurrentTime());
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$approveSessionOnUIThread$26(connectRequest, tonconnectsession, str, bArr, preparedPrepareConnect, callback, secretPhrase);
                }
            });
        } catch (Exception e) {
            final String strException = exception("prepare connect", e);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(strException);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$approveSessionOnUIThread$26(final ConnectRequest connectRequest, final TL_wallet.tonConnectSession tonconnectsession, final String str, final byte[] bArr, Prepared prepared, final Utilities.Callback callback, final GramWallet.SecretPhrase secretPhrase) {
        String str2;
        if (!canSubmit(connectRequest, tonconnectsession, str, bArr) || ((str2 = connectRequest.session.client_id) != null && !prepared.clientId.equalsIgnoreCase(str2))) {
            callback.run("Wallet or TON Connect session changed. Open the request again.");
            return;
        }
        TL_wallet.tonConnectRegisterKey tonconnectregisterkey = new TL_wallet.tonConnectRegisterKey();
        tonconnectregisterkey.session_id = tonconnectsession.id;
        tonconnectregisterkey.client_id = prepared.clientId;
        this.connections.sendRequestTyped(tonconnectregisterkey, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda17
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$approveSessionOnUIThread$25(callback, secretPhrase, tonconnectsession, str, bArr, connectRequest, (TL_wallet.tonConnectChallenge) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$approveSessionOnUIThread$25(final Utilities.Callback callback, final GramWallet.SecretPhrase secretPhrase, final TL_wallet.tonConnectSession tonconnectsession, final String str, final byte[] bArr, final ConnectRequest connectRequest, final TL_wallet.tonConnectChallenge tonconnectchallenge, TLRPC.TL_error tL_error) {
        if (tL_error != null || tonconnectchallenge == null) {
            callback.run(rpc("registerKey", tL_error));
        } else {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$approveSessionOnUIThread$24(secretPhrase, tonconnectsession, str, bArr, connectRequest, tonconnectchallenge, callback);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$approveSessionOnUIThread$24(GramWallet.SecretPhrase secretPhrase, final TL_wallet.tonConnectSession tonconnectsession, final String str, final byte[] bArr, final ConnectRequest connectRequest, TL_wallet.tonConnectChallenge tonconnectchallenge, final Utilities.Callback callback) {
        try {
            final Prepared preparedPrepareConnect = prepareConnect(secretPhrase, tonconnectsession, str, bArr, connectRequest.json, connectRequest.manifestUrl, connectRequest.embedded, tonconnectchallenge, this.connections.getCurrentTime());
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$approveSessionOnUIThread$23(connectRequest, tonconnectsession, str, bArr, preparedPrepareConnect, callback);
                }
            });
        } catch (Exception e) {
            final String strException = exception("prepare connect challenge", e);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(strException);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$approveSessionOnUIThread$23(ConnectRequest connectRequest, TL_wallet.tonConnectSession tonconnectsession, String str, byte[] bArr, final Prepared prepared, final Utilities.Callback callback) {
        if (!canSubmit(connectRequest, tonconnectsession, str, bArr)) {
            Arrays.fill(prepared.challengeAnswer, (byte) 0);
            callback.run("Wallet or TON Connect session changed. Open the request again.");
            return;
        }
        TL_wallet.tonConnectSubmitConnectResult tonconnectsubmitconnectresult = new TL_wallet.tonConnectSubmitConnectResult();
        tonconnectsubmitconnectresult.session_id = tonconnectsession.id;
        tonconnectsubmitconnectresult.challenge_answer = prepared.challengeAnswer;
        tonconnectsubmitconnectresult.body = prepared.body;
        tonconnectsubmitconnectresult.trace_id = connectRequest.traceId;
        this.connections.sendRequestTyped(tonconnectsubmitconnectresult, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda26
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$approveSessionOnUIThread$22(prepared, callback, (TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$approveSessionOnUIThread$22(Prepared prepared, Utilities.Callback callback, TLRPC.Bool bool, TLRPC.TL_error tL_error) {
        Arrays.fill(prepared.challengeAnswer, (byte) 0);
        callback.run((tL_error == null && (bool instanceof TLRPC.TL_boolTrue)) ? null : rpc("submitConnectResult", tL_error));
        requestSessions();
    }

    private void prepareOauthSession(final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, final String str, final byte[] bArr, final Utilities.Callback2<TL_wallet.inputTonConnectOauthSession, String> callback2) {
        if (!tL_urlAuthResultRequest.request_wallet || tL_urlAuthResultRequest.bot == null || TextUtils.isEmpty(tL_urlAuthResultRequest.domain) || !TLObject.hasFlag(tL_urlAuthResultRequest.flags, 512) || !TLObject.hasFlag(tL_urlAuthResultRequest.flags, 1024) || TextUtils.isEmpty(tL_urlAuthResultRequest.tc_client_id) || str == null || bArr == null) {
            callback2.run(null, "Missing wallet login request data");
            return;
        }
        try {
            final JSONArray jSONArrayPut = new JSONArray().put(new JSONObject().put("name", "ton_addr")).put(new JSONObject().put("name", "ton_proof").put("payload", "tc-login:" + tL_urlAuthResultRequest.bot.id + ":" + tL_urlAuthResultRequest.tc_client_id + ":" + tL_urlAuthResultRequest.tc_session_id));
            TL_wallet.tonConnectCreateSession tonconnectcreatesession = new TL_wallet.tonConnectCreateSession();
            tonconnectcreatesession.dapp_client_id = tL_urlAuthResultRequest.tc_client_id;
            tonconnectcreatesession.manifest_url = "https://" + tL_urlAuthResultRequest.domain + "/tonconnect-manifest.json";
            this.connections.sendRequestTyped(tonconnectcreatesession, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda39
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$prepareOauthSession$38(callback2, tL_urlAuthResultRequest, str, bArr, jSONArrayPut, (TL_wallet.tonConnectSession) obj, (TLRPC.TL_error) obj2);
                }
            });
        } catch (JSONException e) {
            callback2.run(null, exception("prepare OAuth request", e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareOauthSession$38(final Utilities.Callback2 callback2, final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, final String str, final byte[] bArr, final JSONArray jSONArray, final TL_wallet.tonConnectSession tonconnectsession, TLRPC.TL_error tL_error) {
        if (tL_error != null || tonconnectsession == null) {
            callback2.run(null, rpc("createSession", tL_error));
            return;
        }
        if (tonconnectsession.id != tL_urlAuthResultRequest.tc_session_id || !tL_urlAuthResultRequest.tc_client_id.equals(tonconnectsession.dapp_client_id) || tonconnectsession.closed || tonconnectsession.closing || tonconnectsession.nonce == null || !TextUtils.equals(str, this.wallet.getAddress()) || !Arrays.equals(bArr, this.wallet.getPublicKey())) {
            callback2.run(null, "Wallet or TON Connect session changed. Open the request again.");
        } else {
            this.wallet.getSecretPhrase(true, false, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda62
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$prepareOauthSession$37(callback2, tonconnectsession, str, bArr, jSONArray, tL_urlAuthResultRequest, (GramWallet.SecretPhrase) obj, (String) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareOauthSession$37(final Utilities.Callback2 callback2, final TL_wallet.tonConnectSession tonconnectsession, final String str, final byte[] bArr, final JSONArray jSONArray, final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, GramWallet.SecretPhrase secretPhrase, String str2) {
        if (str2 != null || secretPhrase == null) {
            if (str2 == null) {
                str2 = "Recovery phrase is unavailable";
            }
            callback2.run(null, str2);
        } else {
            final GramWallet.SecretPhrase secretPhraseCopy = secretPhrase.copy();
            final Utilities.Callback2 callback22 = new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda69
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    GramWalletTonConnect.$r8$lambda$8q2ZfM2KuCKDcfOXlsZsIvzXRTQ(secretPhraseCopy, callback2, (TL_wallet.inputTonConnectOauthSession) obj, (String) obj2);
                }
            };
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda70
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$prepareOauthSession$36(secretPhraseCopy, tonconnectsession, str, bArr, jSONArray, tL_urlAuthResultRequest, callback22);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$8q2ZfM2KuCKDcfOXlsZsIvzXRTQ(GramWallet.SecretPhrase secretPhrase, final Utilities.Callback2 callback2, final TL_wallet.inputTonConnectOauthSession inputtonconnectoauthsession, final String str) {
        secretPhrase.close();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda79
            @Override // java.lang.Runnable
            public final void run() {
                callback2.run(inputtonconnectoauthsession, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareOauthSession$36(final GramWallet.SecretPhrase secretPhrase, final TL_wallet.tonConnectSession tonconnectsession, final String str, final byte[] bArr, final JSONArray jSONArray, final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, final Utilities.Callback2 callback2) {
        try {
            final Prepared preparedPrepareConnect = prepareConnect(secretPhrase, tonconnectsession, str, bArr, jSONArray, tL_urlAuthResultRequest.domain, (String) null, (TL_wallet.tonConnectChallenge) null, this.connections.getCurrentTime());
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda87
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$prepareOauthSession$35(str, bArr, tonconnectsession, preparedPrepareConnect, callback2, secretPhrase, jSONArray, tL_urlAuthResultRequest);
                }
            });
        } catch (Exception e) {
            callback2.run(null, exception("prepare OAuth identity", e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareOauthSession$35(final String str, final byte[] bArr, final TL_wallet.tonConnectSession tonconnectsession, Prepared prepared, final Utilities.Callback2 callback2, final GramWallet.SecretPhrase secretPhrase, final JSONArray jSONArray, final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest) {
        String str2;
        if (!TextUtils.equals(str, this.wallet.getAddress()) || !Arrays.equals(bArr, this.wallet.getPublicKey()) || ((str2 = tonconnectsession.client_id) != null && !prepared.clientId.equalsIgnoreCase(str2))) {
            callback2.run(null, "Wallet or TON Connect session changed. Open the request again.");
            return;
        }
        TL_wallet.tonConnectRegisterKey tonconnectregisterkey = new TL_wallet.tonConnectRegisterKey();
        tonconnectregisterkey.session_id = tonconnectsession.id;
        tonconnectregisterkey.client_id = prepared.clientId;
        this.connections.sendRequestTyped(tonconnectregisterkey, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda93
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$prepareOauthSession$34(callback2, secretPhrase, tonconnectsession, str, bArr, jSONArray, tL_urlAuthResultRequest, (TL_wallet.tonConnectChallenge) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareOauthSession$34(final Utilities.Callback2 callback2, final GramWallet.SecretPhrase secretPhrase, final TL_wallet.tonConnectSession tonconnectsession, final String str, final byte[] bArr, final JSONArray jSONArray, final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, final TL_wallet.tonConnectChallenge tonconnectchallenge, TLRPC.TL_error tL_error) {
        if (tL_error != null || tonconnectchallenge == null) {
            callback2.run(null, rpc("registerKey", tL_error));
        } else {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$prepareOauthSession$33(secretPhrase, tonconnectsession, str, bArr, jSONArray, tL_urlAuthResultRequest, tonconnectchallenge, callback2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareOauthSession$33(GramWallet.SecretPhrase secretPhrase, final TL_wallet.tonConnectSession tonconnectsession, final String str, final byte[] bArr, JSONArray jSONArray, TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, TL_wallet.tonConnectChallenge tonconnectchallenge, final Utilities.Callback2 callback2) {
        try {
            final Prepared preparedPrepareConnect = prepareConnect(secretPhrase, tonconnectsession, str, bArr, jSONArray, tL_urlAuthResultRequest.domain, (String) null, tonconnectchallenge, this.connections.getCurrentTime());
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$prepareOauthSession$32(str, bArr, preparedPrepareConnect, callback2, tonconnectsession);
                }
            });
        } catch (Exception e) {
            callback2.run(null, exception("prepare OAuth connect", e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareOauthSession$32(String str, byte[] bArr, Prepared prepared, Utilities.Callback2 callback2, TL_wallet.tonConnectSession tonconnectsession) {
        if (!TextUtils.equals(str, this.wallet.getAddress()) || !Arrays.equals(bArr, this.wallet.getPublicKey())) {
            Arrays.fill(prepared.challengeAnswer, (byte) 0);
            callback2.run(null, "Wallet changed. Open the request again.");
            return;
        }
        TL_wallet.inputTonConnectOauthSession inputtonconnectoauthsession = new TL_wallet.inputTonConnectOauthSession();
        inputtonconnectoauthsession.session_id = tonconnectsession.id;
        inputtonconnectoauthsession.challenge_answer = prepared.challengeAnswer;
        inputtonconnectoauthsession.body = prepared.body;
        inputtonconnectoauthsession.proof = prepared.proof;
        callback2.run(inputtonconnectoauthsession, null);
    }

    public static boolean sameIcon(TLRPC.WebDocument webDocument, TLRPC.WebDocument webDocument2) {
        if (webDocument != webDocument2) {
            return (webDocument == null || webDocument2 == null || !Objects.equals(webDocument.url, webDocument2.url)) ? false : true;
        }
        return true;
    }

    private boolean canSubmit(ConnectRequest connectRequest, TL_wallet.tonConnectSession tonconnectsession, String str, byte[] bArr) {
        TL_wallet.tonConnectManifest tonconnectmanifest;
        TL_wallet.tonConnectSession tonconnectsession2 = connectRequest.session;
        return !tonconnectsession2.closed && !tonconnectsession2.closing && tonconnectsession2.manifest_error == null && (tonconnectmanifest = tonconnectsession2.manifest) != null && Objects.equals(tonconnectmanifest.url, tonconnectsession.manifest.url) && Objects.equals(connectRequest.session.manifest.name, tonconnectsession.manifest.name) && sameIcon(connectRequest.session.manifest.icon, tonconnectsession.manifest.icon) && Arrays.equals(connectRequest.session.nonce, tonconnectsession.nonce) && Objects.equals(str, this.wallet.getAddress()) && Arrays.equals(bArr, this.wallet.getPublicKey());
    }

    public static final class Prepared {
        final byte[] body;
        final byte[] challengeAnswer;
        final String clientId;
        TL_wallet.walletOwnershipProof proof;

        public Prepared(JSONObject jSONObject) {
            this.clientId = jSONObject.getString("clientId");
            this.challengeAnswer = jSONObject.has("challengeAnswer") ? Base64.decode(jSONObject.getString("challengeAnswer"), 2) : null;
            this.body = jSONObject.has("body") ? Base64.decode(jSONObject.getString("body"), 2) : null;
        }
    }

    private static String manifestHost(String str) {
        URI uriCreate = URI.create(str);
        if (!"https".equalsIgnoreCase(uriCreate.getScheme()) || uriCreate.getHost() == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Manifest URL must use HTTPS and include a host");
            return null;
        }
        return uriCreate.getHost().toLowerCase(Locale.ROOT);
    }

    private static Prepared prepareConnect(GramWallet.SecretPhrase secretPhrase, TL_wallet.tonConnectSession tonconnectsession, String str, byte[] bArr, String str2, String str3, String str4, TL_wallet.tonConnectChallenge tonconnectchallenge, int i) {
        JSONObject jSONObject = new JSONObject(str2);
        if (!str3.equals(jSONObject.getString("manifestUrl"))) {
            f$$ExternalSyntheticBUOutline1.m215m("Manifest URL changed");
            return null;
        }
        String strManifestHost = manifestHost(str3);
        TL_wallet.tonConnectManifest tonconnectmanifest = tonconnectsession.manifest;
        if (tonconnectmanifest == null || !strManifestHost.equals(manifestHost(tonconnectmanifest.url))) {
            f$$ExternalSyntheticBUOutline1.m215m("Manifest domain does not match the connection request");
            return null;
        }
        return prepareConnect(secretPhrase, tonconnectsession, str, bArr, jSONObject.getJSONArray(PluginsConstants.Settings.ITEMS), strManifestHost, str4, tonconnectchallenge, i);
    }

    private static Prepared prepareConnect(GramWallet.SecretPhrase secretPhrase, TL_wallet.tonConnectSession tonconnectsession, String str, byte[] bArr, JSONArray jSONArray, String str2, String str3, TL_wallet.tonConnectChallenge tonconnectchallenge, int i) throws JSONException {
        JSONObject jSONObject;
        String str4;
        int i2;
        String str5;
        String str6;
        GramWallet.SecretPhrase secretPhrase2 = secretPhrase;
        JSONArray jSONArray2 = jSONArray;
        if (jSONArray2.length() == 0) {
            f$$ExternalSyntheticBUOutline1.m215m("Empty connect request");
            return null;
        }
        String str7 = "account";
        JSONObject jSONObjectPut = new JSONObject().put("account", tonconnectchallenge != null);
        HashSet hashSet = new HashSet();
        int i3 = 0;
        while (true) {
            String str8 = "ton_proof";
            TL_wallet.walletOwnershipProof walletownershipproof = null;
            String str9 = "ton_addr";
            if (i3 < jSONArray2.length()) {
                JSONObject jSONObject2 = jSONArray2.getJSONObject(i3);
                int i4 = i3;
                if (!hashSet.add(jSONObject2.getString("name"))) {
                    f$$ExternalSyntheticBUOutline1.m215m("Duplicate connect item");
                    return null;
                }
                if ("ton_addr".equals(jSONObject2.getString("name")) && jSONObject2.has("network") && !"-239".equals(jSONObject2.getString("network"))) {
                    f$$ExternalSyntheticBUOutline1.m215m("Requested network does not match the wallet network");
                    return null;
                }
                if ("ton_proof".equals(jSONObject2.getString("name"))) {
                    if (str2.replaceFirst("\\.$", _UrlKt.FRAGMENT_ENCODE_SET).equals("telegram.org")) {
                        f$$ExternalSyntheticBUOutline1.m215m("The telegram.org proof domain is reserved for wallet import");
                        return null;
                    }
                    jSONObject2.getString("payload");
                }
                i3 = i4 + 1;
            } else {
                if (!hashSet.contains("ton_addr")) {
                    f$$ExternalSyntheticBUOutline1.m215m("Missing ton_addr item");
                    return null;
                }
                if (tonconnectchallenge != null) {
                    jSONObjectPut.put("challenge", Base64.encodeToString(tonconnectchallenge.challenge, 2));
                }
                JSONObject jSONObject3 = WalletEngine2.tonConnectCrypto(secretPhrase2, tonconnectsession, str, bArr, jSONObjectPut);
                if (tonconnectchallenge == null) {
                    return new Prepared(jSONObject3);
                }
                if (tonconnectchallenge.event_id < 0) {
                    f$$ExternalSyntheticBUOutline1.m215m("Invalid connect event ID");
                    return null;
                }
                JSONArray jSONArray3 = new JSONArray();
                int i5 = 0;
                while (i5 < jSONArray2.length()) {
                    JSONObject jSONObject4 = jSONArray2.getJSONObject(i5);
                    String string = jSONObject4.getString("name");
                    if (str9.equals(string)) {
                        jSONArray3.put(jSONObject3.getJSONObject(str7));
                        jSONObject = jSONObject3;
                        str4 = str9;
                        i2 = i5;
                        str5 = str7;
                        str6 = str8;
                    } else if (str8.equals(string)) {
                        String string2 = jSONObject4.getString("payload");
                        str4 = str9;
                        i2 = i5;
                        JSONObject jSONObject5 = WalletEngine2.tonConnectCrypto(secretPhrase2, tonconnectsession, str, bArr, new JSONObject().put("proofDomain", str2).put("proofPayload", string2).put("timestamp", i));
                        str5 = str7;
                        TL_wallet.walletOwnershipProof walletownershipproof2 = new TL_wallet.walletOwnershipProof();
                        walletownershipproof2.timestamp = i;
                        str6 = str8;
                        jSONObject = jSONObject3;
                        walletownershipproof2.signature = Base64.decode(jSONObject5.getString("signature"), 2);
                        jSONArray3.put(new JSONObject().put("name", string).put("proof", new JSONObject().put("timestamp", i).put("domain", new JSONObject().put("lengthBytes", str2.getBytes(StandardCharsets.UTF_8).length).put("value", str2)).put("payload", string2).put("signature", jSONObject5.getString("signature"))));
                        walletownershipproof = walletownershipproof2;
                    } else {
                        jSONObject = jSONObject3;
                        str4 = str9;
                        i2 = i5;
                        str5 = str7;
                        str6 = str8;
                        jSONArray3.put(new JSONObject().put("name", string).put("error", protocolError(MediaError.DetailedErrorCode.MANIFEST_UNKNOWN, "Method is not supported")));
                    }
                    i5 = i2 + 1;
                    secretPhrase2 = secretPhrase;
                    jSONArray2 = jSONArray;
                    str9 = str4;
                    str7 = str5;
                    str8 = str6;
                    jSONObject3 = jSONObject;
                }
                JSONObject jSONObject6 = jSONObject3;
                JSONObject jSONObjectPut2 = new JSONObject().put("event", "connect").put("id", tonconnectchallenge.event_id).put("payload", new JSONObject().put(PluginsConstants.Settings.ITEMS, jSONArray3).put("device", new JSONObject().put("platform", "android").put("appName", "gramwallet").put("appVersion", BuildVars.BUILD_VERSION_STRING).put("maxProtocolVersion", 2).put("features", supportedFeatures())));
                if (str3 != null) {
                    jSONObjectPut2.put(PluginsConstants.RESPONSE, new JSONObject().put("error", protocolError(MediaError.DetailedErrorCode.MANIFEST_UNKNOWN, "Embedded request is not supported")));
                }
                JSONObject jSONObject7 = WalletEngine2.tonConnectCrypto(secretPhrase, tonconnectsession, str, bArr, new JSONObject().put("encrypt", jSONObjectPut2));
                jSONObject7.put("challengeAnswer", jSONObject6.getString("challengeAnswer"));
                Prepared prepared = new Prepared(jSONObject7);
                prepared.proof = walletownershipproof;
                return prepared;
            }
        }
    }

    public static JSONArray supportedFeatures() {
        return new JSONArray().put(new JSONObject().put("name", "SendTransaction").put("maxMessages", 255)).put(new JSONObject().put("name", "SignMessage").put("maxMessages", 255)).put(new JSONObject().put("name", "SignData").put("types", new JSONArray().put("text").put("binary").put("cell")));
    }

    private static JSONObject protocolError(int i, String str) {
        return new JSONObject().put("code", i).put("message", str);
    }

    private static Prepared prepareDisconnect(GramWallet.SecretPhrase secretPhrase, TL_wallet.tonConnectSession tonconnectsession, String str, byte[] bArr, long j) throws JSONException {
        if (j < 0 || tonconnectsession.client_id == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Invalid disconnect session or event ID");
            return null;
        }
        return new Prepared(WalletEngine2.tonConnectCrypto(secretPhrase, tonconnectsession, str, bArr, new JSONObject().put("encrypt", new JSONObject().put("event", "disconnect").put("id", j).put("payload", new JSONObject()))));
    }

    private static JSONObject decodeRequest(GramWallet.SecretPhrase secretPhrase, TL_wallet.tonConnectSession tonconnectsession, String str, byte[] bArr, byte[] bArr2, int i) {
        if (tonconnectsession.client_id == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Missing registered session key");
            return null;
        }
        return parseRequest(WalletEngine2.tonConnectCrypto(secretPhrase, tonconnectsession, str, bArr, new JSONObject().put("decrypt", Base64.encodeToString(bArr2, 2))).getString("plaintext"), tonconnectsession, str, i);
    }

    public static JSONObject parseRequest(String str, TL_wallet.tonConnectSession tonconnectsession, String str2, int i) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        Object obj = jSONObject.get("id");
        if (!(obj instanceof String) || !((String) obj).matches("[\\x20-\\x7e]{1,100}")) {
            f$$ExternalSyntheticBUOutline1.m215m("Request ID must contain 1–100 printable ASCII characters");
            return null;
        }
        try {
            String string = jSONObject.getString("method");
            JSONArray jSONArray = jSONObject.getJSONArray(PluginsConstants.PARAMS);
            if ("disconnect".equals(string)) {
                if (jSONArray.length() != 0) {
                    throw new IllegalArgumentException("Disconnect takes no parameters");
                }
            } else if ("sendTransaction".equals(string) || "signMessage".equals(string)) {
                if (jSONArray.length() != 1 || !(jSONArray.get(0) instanceof String)) {
                    throw new IllegalArgumentException("Expected one JSON transaction parameter");
                }
                JSONObject jSONObject2 = new JSONObject(jSONArray.getString(0));
                validateTransaction(jSONObject2, str2, i);
                jSONObject.put("transaction", jSONObject2);
            } else if (!"signData".equals(string)) {
                jSONObject.put("errorCode", MediaError.DetailedErrorCode.MANIFEST_UNKNOWN).put("errorMessage", "Method is not supported");
            } else {
                if (jSONArray.length() != 1 || !(jSONArray.get(0) instanceof String)) {
                    throw new IllegalArgumentException("Expected one JSON data parameter");
                }
                JSONObject jSONObject3 = new JSONObject(jSONArray.getString(0));
                validateSignData(jSONObject3, str2);
                jSONObject.put("data", jSONObject3);
            }
        } catch (Exception e) {
            jSONObject.put("errorCode", 1).put("errorMessage", e.getMessage());
        }
        if (tonconnectsession.closed || tonconnectsession.closing || tonconnectsession.pending || tonconnectsession.manifest == null) {
            jSONObject.put("errorCode", 100).put("errorMessage", "Unknown app");
        }
        return jSONObject;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
    
        if (r5.longValue() <= 4294967295L) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void validateTransaction(JSONObject jSONObject, String str, int i) throws JSONException {
        validateSigningAccount(jSONObject, str);
        if (jSONObject.has("valid_until")) {
            Object obj = jSONObject.get("valid_until");
            if (obj instanceof Number) {
                Number number = (Number) obj;
                if (number.doubleValue() == number.longValue()) {
                    if (number.longValue() > i) {
                    }
                }
            }
            f$$ExternalSyntheticBUOutline1.m215m("Invalid or expired transaction");
            return;
        }
        if (jSONObject.has(PluginsConstants.Settings.ITEMS)) {
            f$$ExternalSyntheticBUOutline1.m215m("Structured transactions are not supported");
        } else {
            new Transaction(jSONObject);
        }
    }

    private static String requiredString(JSONObject jSONObject, String str) throws JSONException {
        Object obj = jSONObject.get(str);
        if (!(obj instanceof String)) {
            Lifecycle$Event$$ExternalSyntheticBUOutline0.m151m(str, " must be a string");
            return null;
        }
        return (String) obj;
    }

    private static void validateSigningAccount(JSONObject jSONObject, String str) {
        if (jSONObject.has("network") && !"-239".equals(requiredString(jSONObject, "network"))) {
            f$$ExternalSyntheticBUOutline1.m215m("Wrong network");
        } else {
            if (!jSONObject.has("from") || WalletEngine2.sameTonConnectAddress(requiredString(jSONObject, "from"), str)) {
                return;
            }
            f$$ExternalSyntheticBUOutline1.m215m("Wrong signer");
        }
    }

    private static void validateSignData(JSONObject jSONObject, String str) throws JSONException {
        validateSigningAccount(jSONObject, str);
        String strRequiredString = requiredString(jSONObject, "type");
        strRequiredString.getClass();
        switch (strRequiredString) {
            case "binary":
                String strRequiredString2 = requiredString(jSONObject, "bytes");
                if (!strRequiredString2.matches("[A-Za-z0-9+/]*={0,2}") || !Base64.encodeToString(Base64.decode(strRequiredString2, 2), 2).replace("=", _UrlKt.FRAGMENT_ENCODE_SET).equals(strRequiredString2.replace("=", _UrlKt.FRAGMENT_ENCODE_SET))) {
                    f$$ExternalSyntheticBUOutline1.m215m("Invalid base64 data");
                    break;
                }
                break;
            case "cell":
                requiredString(jSONObject, "schema");
                if (!WalletEngine2.isValidCellBoc(requiredString(jSONObject, "cell"))) {
                    f$$ExternalSyntheticBUOutline1.m215m("Invalid data cell");
                    break;
                }
                break;
            case "text":
                requiredString(jSONObject, "text");
                break;
            default:
                f$$ExternalSyntheticBUOutline1.m215m("Unknown signing data type");
                break;
        }
    }

    public static final class Pending {
        private final String address;
        public final String appRequestId;
        private final byte[] body;
        private boolean busy;
        private boolean claimed;
        private final String data;
        private final int errorCode;
        private final String errorMessage;
        public final int expires;
        private boolean invalidated;
        public final int messageId;
        public final String method;
        private Runnable onProcessed;
        private boolean previewReady;
        private boolean processed;
        private final byte[] publicKey;
        public final TL_wallet.tonConnectSession session;
        private final String traceId;
        public final Transaction transaction;

        private Pending(TL_wallet.tonConnectPending tonconnectpending, TL_wallet.tonConnectRequest tonconnectrequest, JSONObject jSONObject, String str, byte[] bArr) {
            this.session = tonconnectpending.session;
            this.messageId = tonconnectrequest.msg_id;
            this.expires = tonconnectrequest.expires;
            this.body = (byte[]) tonconnectrequest.body.clone();
            this.traceId = tonconnectrequest.trace_id;
            this.appRequestId = jSONObject.getString("id");
            this.method = jSONObject.optString("method");
            int iOptInt = jSONObject.optInt("errorCode", -1);
            this.errorCode = iOptInt;
            String string = null;
            this.errorMessage = jSONObject.optString("errorMessage", null);
            this.transaction = (iOptInt >= 0 || !jSONObject.has("transaction")) ? null : new Transaction(jSONObject.getJSONObject("transaction"));
            if (iOptInt < 0 && jSONObject.has("data")) {
                string = jSONObject.getJSONObject("data").toString();
            }
            this.data = string;
            this.address = str;
            this.publicKey = (byte[]) bArr.clone();
        }

        public boolean isProcessed() {
            return this.processed;
        }

        public boolean isBusy() {
            return this.busy;
        }

        public void setOnProcessed(Runnable runnable) {
            this.onProcessed = runnable;
        }
    }

    private String key(long j, long j2) {
        return "tonconnect_reply." + j + "." + j2;
    }

    private boolean expired(Pending pending) {
        long currentTime = this.connections.getCurrentTime();
        if (pending.expires <= currentTime) {
            return true;
        }
        Transaction transaction = pending.transaction;
        if (transaction == null) {
            return false;
        }
        long j = transaction.validUntil;
        return j != 0 && j <= currentTime;
    }

    private boolean sameWallet(Pending pending) {
        return !pending.invalidated && Objects.equals(pending.address, this.wallet.getAddress()) && Arrays.equals(pending.publicKey, this.wallet.getPublicKey());
    }

    public void load(final long j, final int i, final Utilities.Callback2<Pending, String> callback2) {
        if (this.loadingRequest || this.activeRequest != null) {
            callback2.run(null, "A TON Connect request is already open");
            return;
        }
        String string = MessagesController.getMainSettings(this.currentAccount).getString(key(j, i), null);
        if (string != null) {
            this.loadingRequest = true;
            retryResponse(j, i, string, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda40
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$load$39(callback2, (String) obj);
                }
            });
        } else {
            this.loadingRequest = true;
            this.wallet.whenReady(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda41
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$load$47(j, callback2, i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$39(Utilities.Callback2 callback2, String str) {
        this.loadingRequest = false;
        callback2.run(null, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$47(final long j, final Utilities.Callback2 callback2, final int i) {
        TL_wallet.tonConnectGetPending tonconnectgetpending = new TL_wallet.tonConnectGetPending();
        tonconnectgetpending.session_id = Long.valueOf(j);
        this.connections.sendRequestTyped(tonconnectgetpending, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda63
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$load$46(callback2, j, i, (TL_wallet.tonConnectPending) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$46(final Utilities.Callback2 callback2, final long j, int i, final TL_wallet.tonConnectPending tonconnectpending, TLRPC.TL_error tL_error) {
        final int i2;
        final TL_wallet.tonConnectRequest tonconnectrequest;
        TL_wallet.tonConnectSession tonconnectsession;
        if (tL_error != null || tonconnectpending == null) {
            this.loadingRequest = false;
            callback2.run(null, rpc("getPending", tL_error));
            return;
        }
        ArrayList<TL_wallet.tonConnectRequest> arrayList = tonconnectpending.requests;
        int size = arrayList.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                i2 = i;
                tonconnectrequest = null;
                break;
            }
            TL_wallet.tonConnectRequest tonconnectrequest2 = arrayList.get(i3);
            i3++;
            TL_wallet.tonConnectRequest tonconnectrequest3 = tonconnectrequest2;
            if (tonconnectrequest3.session_id == j && tonconnectrequest3.msg_id == (i2 = i)) {
                tonconnectrequest = tonconnectrequest3;
                break;
            }
        }
        if (tonconnectrequest == null || (tonconnectsession = tonconnectpending.session) == null || tonconnectsession.id != j || tonconnectrequest.expires <= this.connections.getCurrentTime()) {
            this.loadingRequest = false;
            callback2.run(null, "This request has expired or has already been answered");
        } else {
            final String address = this.wallet.getAddress();
            final byte[] bArr = this.wallet.getPublicKey() != null ? (byte[]) this.wallet.getPublicKey().clone() : null;
            this.wallet.getSecretPhrase(true, false, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda71
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$load$45(callback2, tonconnectpending, tonconnectrequest, address, bArr, j, i2, (GramWallet.SecretPhrase) obj, (String) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$45(final Utilities.Callback2 callback2, final TL_wallet.tonConnectPending tonconnectpending, final TL_wallet.tonConnectRequest tonconnectrequest, final String str, final byte[] bArr, final long j, final int i, GramWallet.SecretPhrase secretPhrase, String str2) {
        if (secretPhrase == null || str2 != null) {
            this.loadingRequest = false;
            if (str2 == null) {
                str2 = "Recovery phrase is unavailable";
            }
            callback2.run(null, str2);
            return;
        }
        final GramWallet.SecretPhrase secretPhraseCopy = secretPhrase.copy();
        final Utilities.Callback2 callback22 = new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda80
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                GramWalletTonConnect.$r8$lambda$bXycas7MBVONT6n_71fcr0Jbqvk(secretPhraseCopy, callback2, (GramWalletTonConnect.Pending) obj, (String) obj2);
            }
        };
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda81
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$load$44(tonconnectpending, tonconnectrequest, secretPhraseCopy, str, bArr, callback22, j, i);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$bXycas7MBVONT6n_71fcr0Jbqvk(GramWallet.SecretPhrase secretPhrase, Utilities.Callback2 callback2, Pending pending, String str) {
        secretPhrase.close();
        callback2.run(pending, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$44(TL_wallet.tonConnectPending tonconnectpending, TL_wallet.tonConnectRequest tonconnectrequest, final GramWallet.SecretPhrase secretPhrase, String str, byte[] bArr, final Utilities.Callback2 callback2, final long j, final int i) {
        final GramWalletTonConnect gramWalletTonConnect;
        final String strException;
        final Pending pending;
        try {
            gramWalletTonConnect = this;
        } catch (Exception e) {
            e = e;
            gramWalletTonConnect = this;
        }
        try {
            strException = null;
            pending = new Pending(tonconnectpending, tonconnectrequest, decodeRequest(secretPhrase, tonconnectpending.session, str, bArr, tonconnectrequest.body, gramWalletTonConnect.connections.getCurrentTime()), str, bArr);
        } catch (Exception e2) {
            e = e2;
            strException = exception("decode request", e);
            pending = null;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda90
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$load$43(pending, callback2, strException, j, i, secretPhrase);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$43(final Pending pending, final Utilities.Callback2 callback2, String str, long j, int i, GramWallet.SecretPhrase secretPhrase) {
        this.loadingRequest = false;
        if (pending == null) {
            callback2.run(null, str);
            return;
        }
        if (!sameWallet(pending) || expired(pending)) {
            callback2.run(null, "Request expired or wallet changed");
            return;
        }
        this.activeRequest = pending;
        if ("sendTransaction".equals(pending.method) && pending.transaction != null) {
            if (MessagesController.getMainSettings(this.currentAccount).contains(key(j, i) + ".transfer")) {
                pending.busy = true;
                sendTransaction(pending, secretPhrase, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda5
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$load$41(pending, callback2, (String) obj);
                    }
                });
                return;
            }
        }
        if (pending.errorCode >= 0 || "disconnect".equals(pending.method)) {
            secretPhrase.close();
            decide(pending, false, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$load$42(pending, callback2, (String) obj);
                }
            });
        } else {
            callback2.run(pending, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$41(Pending pending, Utilities.Callback2 callback2, String str) {
        pending.busy = false;
        release(pending);
        callback2.run(null, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$42(Pending pending, Utilities.Callback2 callback2, String str) {
        release(pending);
        callback2.run(null, str);
    }

    public void release(Pending pending) {
        pending.onProcessed = null;
        if (pending.busy || this.activeRequest != pending) {
            return;
        }
        this.activeRequest = null;
    }

    public void markProcessed(long j, int i) {
        Pending pending = this.activeRequest;
        if (pending == null || pending.session.id != j || pending.messageId != i || pending.busy) {
            return;
        }
        pending.processed = true;
        if (pending.onProcessed != null) {
            pending.onProcessed.run();
        }
    }

    private void updateOpenRequests(TL_wallet.tonConnectSession tonconnectsession) {
        TL_wallet.tonConnectManifest tonconnectmanifest;
        TL_wallet.tonConnectManifest tonconnectmanifest2;
        Pending pending = this.activeRequest;
        if (pending != null) {
            TL_wallet.tonConnectSession tonconnectsession2 = pending.session;
            if (tonconnectsession2.id != tonconnectsession.id) {
                return;
            }
            if (!tonconnectsession.closed && !tonconnectsession.closing && Objects.equals(tonconnectsession.client_id, tonconnectsession2.client_id) && Arrays.equals(tonconnectsession.nonce, pending.session.nonce) && (tonconnectmanifest = tonconnectsession.manifest) != null && (tonconnectmanifest2 = pending.session.manifest) != null && Objects.equals(tonconnectmanifest.url, tonconnectmanifest2.url) && Objects.equals(tonconnectsession.manifest.name, pending.session.manifest.name) && sameIcon(tonconnectsession.manifest.icon, pending.session.manifest.icon)) {
                return;
            }
            pending.invalidated = true;
            markProcessed(tonconnectsession.id, pending.messageId);
        }
    }

    public void preview(final Pending pending, final Utilities.Callback2<TL_wallet.walletTransaction, String> callback2) {
        WalletEngine2 walletEngine2 = this.wallet.tonConnectEngine();
        if (pending.processed || expired(pending) || !sameWallet(pending) || walletEngine2 == null) {
            callback2.run(null, "Request expired, was processed, or the wallet changed");
            return;
        }
        boolean zEquals = "signMessage".equals(pending.method);
        Transaction transaction = pending.transaction;
        if (zEquals) {
            walletEngine2.previewSignMessage(transaction, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda65
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$preview$48(pending, callback2, (String) obj);
                }
            });
        } else {
            walletEngine2.previewTonConnect(transaction, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda66
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$preview$49(pending, callback2, (TL_wallet.walletTransaction) obj, (String) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preview$48(Pending pending, Utilities.Callback2 callback2, String str) {
        pending.previewReady = !pending.processed && !expired(pending) && sameWallet(pending) && str == null;
        callback2.run(null, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preview$49(Pending pending, Utilities.Callback2 callback2, TL_wallet.walletTransaction wallettransaction, String str) {
        pending.previewReady = (pending.processed || expired(pending) || !sameWallet(pending) || wallettransaction == null || !wallettransaction.traceSucceeded || wallettransaction.traceIncomplete) ? false : true;
        callback2.run(wallettransaction, str);
    }

    public void decide(final Pending pending, final boolean z, final Utilities.Callback<String> callback) {
        if (pending.busy) {
            return;
        }
        if (pending.processed || expired(pending) || !sameWallet(pending) || (!z && pending.errorCode < 0 && !"disconnect".equals(pending.method) && !pending.previewReady)) {
            callback.run("Request expired, was processed, or the wallet changed");
            return;
        }
        pending.busy = true;
        final Utilities.Callback<String> callback2 = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda75
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$decide$50(pending, callback, (String) obj);
            }
        };
        String string = MessagesController.getMainSettings(this.currentAccount).getString(key(pending.session.id, pending.messageId), null);
        if (string != null) {
            retryResponse(pending.session.id, pending.messageId, string, callback2);
        } else {
            this.wallet.getSecretPhrase(true, false, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda76
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$decide$57(callback2, pending, z, (GramWallet.SecretPhrase) obj, (String) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$decide$50(Pending pending, Utilities.Callback callback, String str) {
        pending.busy = false;
        if (pending.onProcessed == null && this.activeRequest == pending) {
            this.activeRequest = null;
        }
        callback.run(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$decide$57(final Utilities.Callback callback, final Pending pending, final boolean z, GramWallet.SecretPhrase secretPhrase, String str) {
        if (secretPhrase == null || str != null) {
            if (str == null) {
                str = "Recovery phrase is unavailable";
            }
            callback.run(str);
            return;
        }
        final GramWallet.SecretPhrase secretPhraseCopy = secretPhrase.copy();
        final Utilities.Callback<String> callback2 = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda82
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                GramWalletTonConnect.m23141$r8$lambda$zVSCfLbPWUhhdZZoF8yfZs3swA(secretPhraseCopy, callback, (String) obj);
            }
        };
        if ("sendTransaction".equals(pending.method)) {
            if (MessagesController.getMainSettings(this.currentAccount).contains(key(pending.session.id, pending.messageId) + ".transfer")) {
                sendTransaction(pending, secretPhraseCopy, callback2);
                return;
            }
        }
        final Utilities.Callback callback3 = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda83
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$decide$53(pending, callback2, z, secretPhraseCopy, (byte[]) obj);
            }
        };
        if (pending.session.closed) {
            callback3.run(null);
            return;
        }
        TL_wallet.tonConnectRegisterKey tonconnectregisterkey = new TL_wallet.tonConnectRegisterKey();
        TL_wallet.tonConnectSession tonconnectsession = pending.session;
        tonconnectregisterkey.session_id = tonconnectsession.id;
        tonconnectregisterkey.client_id = tonconnectsession.client_id;
        this.connections.sendRequestTyped(tonconnectregisterkey, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda84
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                GramWalletTonConnect.$r8$lambda$1KPPqBoGaTaibe5ac4_5R4Yr6Ys(callback2, secretPhraseCopy, pending, callback3, (TL_wallet.tonConnectChallenge) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$zVSCfLbPWU-hhdZZoF8yfZs3swA, reason: not valid java name */
    public static /* synthetic */ void m23141$r8$lambda$zVSCfLbPWUhhdZZoF8yfZs3swA(GramWallet.SecretPhrase secretPhrase, Utilities.Callback callback, String str) {
        secretPhrase.close();
        callback.run(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$decide$53(final Pending pending, final Utilities.Callback callback, final boolean z, final GramWallet.SecretPhrase secretPhrase, final byte[] bArr) {
        if (expired(pending) || !sameWallet(pending)) {
            if (bArr != null) {
                Arrays.fill(bArr, (byte) 0);
            }
            callback.run("Request expired or wallet changed");
            return;
        }
        TL_wallet.tonConnectClaimRequest tonconnectclaimrequest = new TL_wallet.tonConnectClaimRequest();
        tonconnectclaimrequest.session_id = pending.session.id;
        tonconnectclaimrequest.msg_id = pending.messageId;
        tonconnectclaimrequest.app_request_id = pending.appRequestId;
        tonconnectclaimrequest.declined = z;
        tonconnectclaimrequest.challenge_answer = bArr;
        this.connections.sendRequestTyped(tonconnectclaimrequest, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda97
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$decide$52(bArr, pending, callback, z, secretPhrase, (TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$decide$52(byte[] bArr, Pending pending, Utilities.Callback callback, boolean z, GramWallet.SecretPhrase secretPhrase, TLRPC.Bool bool, TLRPC.TL_error tL_error) {
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
        if (tL_error != null || !(bool instanceof TLRPC.TL_boolTrue)) {
            if (tL_error != null && ("TONCONNECT_REQUEST_ALREADY_CLAIMED".equals(tL_error.text) || "TONCONNECT_REQUEST_EXPIRED".equals(tL_error.text) || "TONCONNECT_REQUEST_NOT_FOUND".equals(tL_error.text))) {
                pending.processed = true;
            }
            callback.run(rpc("claimRequest", tL_error));
            return;
        }
        pending.claimed = true;
        if (z || pending.errorCode >= 0) {
            respond(pending, secretPhrase, null, z ? 300 : pending.errorCode, z ? "User declined the request" : pending.errorMessage, callback);
            return;
        }
        if ("disconnect".equals(pending.method)) {
            respond(pending, secretPhrase, new JSONObject(), -1, null, callback);
            return;
        }
        if ("signData".equals(pending.method)) {
            signData(pending, secretPhrase, callback);
        } else if ("signMessage".equals(pending.method)) {
            signMessage(pending, secretPhrase, callback);
        } else {
            sendTransaction(pending, secretPhrase, callback);
        }
    }

    public static /* synthetic */ void $r8$lambda$1KPPqBoGaTaibe5ac4_5R4Yr6Ys(final Utilities.Callback callback, final GramWallet.SecretPhrase secretPhrase, final Pending pending, final Utilities.Callback callback2, final TL_wallet.tonConnectChallenge tonconnectchallenge, TLRPC.TL_error tL_error) {
        if (tonconnectchallenge == null || tL_error != null) {
            callback.run(rpc("registerKey", tL_error));
        } else {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda88
                @Override // java.lang.Runnable
                public final void run() {
                    GramWalletTonConnect.$r8$lambda$tbJvEIF0a_oESNCmNdtfbjYax8w(secretPhrase, pending, tonconnectchallenge, callback, callback2);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$tbJvEIF0a_oESNCmNdtfbjYax8w(GramWallet.SecretPhrase secretPhrase, Pending pending, TL_wallet.tonConnectChallenge tonconnectchallenge, final Utilities.Callback callback, final Utilities.Callback callback2) {
        final String strException;
        final byte[] bArrDecode = null;
        try {
            bArrDecode = Base64.decode(WalletEngine2.tonConnectCrypto(secretPhrase, pending.session, pending.address, pending.publicKey, new JSONObject().put("challenge", Base64.encodeToString(tonconnectchallenge.challenge, 2))).getString("challengeAnswer"), 2);
            strException = null;
        } catch (Exception e) {
            strException = exception("decrypt challenge", e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                GramWalletTonConnect.$r8$lambda$iub4jA547bYQOLY71KY7I7LCVn4(bArrDecode, callback, strException, callback2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$iub4jA547bYQOLY71KY7I7LCVn4(byte[] bArr, Utilities.Callback callback, String str, Utilities.Callback callback2) {
        if (bArr == null) {
            callback.run(str);
        } else {
            callback2.run(bArr);
        }
    }

    private void signData(final Pending pending, final GramWallet.SecretPhrase secretPhrase, final Utilities.Callback<String> callback) {
        if (!sameWallet(pending) || expired(pending)) {
            respond(pending, secretPhrase, null, 0, "Request expired or wallet changed", callback);
        } else {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$signData$59(secretPhrase, pending, callback);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$signData$59(GramWallet.SecretPhrase secretPhrase, final Pending pending, final Utilities.Callback callback) {
        GramWallet.SecretPhrase secretPhrase2;
        final String strException;
        final JSONObject jSONObjectSignData;
        try {
            secretPhrase2 = secretPhrase;
        } catch (Exception e) {
            e = e;
            secretPhrase2 = secretPhrase;
        }
        try {
            jSONObjectSignData = WalletEngine2.signData(secretPhrase2, pending.session, pending.address, pending.publicKey, new JSONObject(pending.data), manifestHost(pending.session.manifest.url), this.connections.getCurrentTime());
            strException = null;
        } catch (Exception e2) {
            e = e2;
            strException = exception("sign data", e);
            jSONObjectSignData = null;
        }
        final GramWallet.SecretPhrase secretPhrase3 = secretPhrase2;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$signData$58(pending, secretPhrase3, callback, jSONObjectSignData, strException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$signData$58(Pending pending, GramWallet.SecretPhrase secretPhrase, Utilities.Callback callback, JSONObject jSONObject, String str) {
        if (!sameWallet(pending) || expired(pending)) {
            respond(pending, secretPhrase, null, 0, "Request expired or wallet changed", callback);
        } else {
            respond(pending, secretPhrase, jSONObject, jSONObject == null ? 0 : -1, str, callback);
        }
    }

    private void signMessage(final Pending pending, final GramWallet.SecretPhrase secretPhrase, final Utilities.Callback<String> callback) {
        WalletEngine2 walletEngine2 = this.wallet.tonConnectEngine();
        if (walletEngine2 == null || !sameWallet(pending) || expired(pending)) {
            respond(pending, secretPhrase, null, 0, "Wallet unavailable or request expired", callback);
            return;
        }
        walletEngine2.signMessage(secretPhrase, pending.transaction, "ton-connect:" + pending.session.id + ":" + pending.messageId, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda14
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$signMessage$60(pending, secretPhrase, callback, (String) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$signMessage$60(Pending pending, GramWallet.SecretPhrase secretPhrase, Utilities.Callback callback, String str, String str2) {
        if (str != null) {
            try {
                if (sameWallet(pending) && !expired(pending)) {
                    respond(pending, secretPhrase, new JSONObject().put("internalBoc", str), -1, null, callback);
                    return;
                }
            } catch (JSONException e) {
                respond(pending, secretPhrase, null, 0, exception("sign message response", e), callback);
                return;
            }
        }
        respond(pending, secretPhrase, null, 0, str2 != null ? str2 : "Request expired or wallet changed", callback);
    }

    private void sendTransaction(final Pending pending, final GramWallet.SecretPhrase secretPhrase, final Utilities.Callback<String> callback) {
        WalletEngine2 walletEngine2 = this.wallet.tonConnectEngine();
        if (walletEngine2 == null || !sameWallet(pending) || expired(pending)) {
            respond(pending, secretPhrase, null, 0, "Wallet unavailable or request expired", callback);
            return;
        }
        String string = MessagesController.getMainSettings(this.currentAccount).getString(key(pending.session.id, pending.messageId) + ".transfer", null);
        if (string != null) {
            try {
                JSONObject jSONObject = new JSONObject(string);
                TL_wallet.sendTransfer sendtransfer = new TL_wallet.sendTransfer();
                sendtransfer.user_id = new TLRPC.TL_inputUserEmpty();
                sendtransfer.data_normal = Base64.decode(jSONObject.getString("boc"), 2);
                sendtransfer.random_id = jSONObject.getLong("randomId");
                broadcast(pending, secretPhrase, sendtransfer, callback);
                return;
            } catch (Exception e) {
                callback.run(exception("restore transfer", e));
                return;
            }
        }
        walletEngine2.prepareTonConnectTransfer(secretPhrase, pending.transaction, "ton-connect:" + pending.session.id + ":" + pending.messageId, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda95
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$sendTransaction$63(pending, secretPhrase, callback, (TL_wallet.sendTransfer) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendTransaction$63(final Pending pending, final GramWallet.SecretPhrase secretPhrase, final Utilities.Callback callback, final TL_wallet.sendTransfer sendtransfer, String str) {
        if (sendtransfer != null && str == null && sameWallet(pending) && !expired(pending)) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendTransaction$62(sendtransfer, pending, callback, secretPhrase);
                }
            });
            return;
        }
        if (str == null) {
            str = "Transfer unavailable or request expired";
        }
        respond(pending, secretPhrase, null, 0, str, callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendTransaction$62(final TL_wallet.sendTransfer sendtransfer, final Pending pending, final Utilities.Callback callback, final GramWallet.SecretPhrase secretPhrase) {
        String strException;
        try {
            String string = new JSONObject().put("boc", Base64.encodeToString(sendtransfer.data_normal, 2)).put("randomId", sendtransfer.random_id).toString();
            if (!MessagesController.getMainSettings(this.currentAccount).edit().putString(key(pending.session.id, pending.messageId) + ".transfer", string).commit()) {
                throw new IllegalStateException("Could not save signed transfer");
            }
            strException = null;
        } catch (Exception e) {
            strException = exception("save transfer", e);
        }
        final String str = strException;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendTransaction$61(str, callback, pending, secretPhrase, sendtransfer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendTransaction$61(String str, Utilities.Callback callback, Pending pending, GramWallet.SecretPhrase secretPhrase, TL_wallet.sendTransfer sendtransfer) {
        if (str != null) {
            callback.run(str);
        } else if (!sameWallet(pending) || expired(pending)) {
            callback.run("Request expired or wallet changed");
        } else {
            broadcast(pending, secretPhrase, sendtransfer, callback);
        }
    }

    private void broadcast(final Pending pending, final GramWallet.SecretPhrase secretPhrase, final TL_wallet.sendTransfer sendtransfer, final Utilities.Callback<String> callback) {
        this.connections.sendRequestTyped(sendtransfer, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$broadcast$65(callback, pending, secretPhrase, sendtransfer, (TLRPC.Updates) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcast$65(Utilities.Callback callback, Pending pending, GramWallet.SecretPhrase secretPhrase, TL_wallet.sendTransfer sendtransfer, final TLRPC.Updates updates, TLRPC.TL_error tL_error) {
        boolean z;
        int i;
        if (updates != null) {
            z = updates.update instanceof TL_update.TL_updateSentWalletTransaction;
            ArrayList<TLRPC.Update> arrayList = updates.updates;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                TLRPC.Update update = arrayList.get(i2);
                i2++;
                z |= update instanceof TL_update.TL_updateSentWalletTransaction;
            }
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$broadcast$64(updates);
                }
            });
        } else {
            z = false;
        }
        if (tL_error != null && "WALLET_KEY_MISMATCH".equals(tL_error.text)) {
            this.wallet.invalidateState();
        }
        if ((tL_error == null && !z) || (tL_error != null && ((i = tL_error.code) < 0 || i >= 500))) {
            callback.run(rpc("sendTransfer", tL_error));
        } else {
            respond(pending, secretPhrase, tL_error == null ? Base64.encodeToString(sendtransfer.data_normal, 2) : null, tL_error == null ? -1 : 0, tL_error != null ? rpc("sendTransfer", tL_error) : null, callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$broadcast$64(TLRPC.Updates updates) {
        MessagesController.getInstance(this.currentAccount).processUpdates(updates, false);
    }

    private void respond(final Pending pending, final GramWallet.SecretPhrase secretPhrase, final Object obj, final int i, final String str, final Utilities.Callback<String> callback) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$respond$67(pending, i, obj, str, secretPhrase, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$respond$67(final Pending pending, int i, Object obj, String str, GramWallet.SecretPhrase secretPhrase, final Utilities.Callback callback) {
        final String strException;
        final JSONObject jSONObject;
        try {
            JSONObject jSONObjectPut = new JSONObject().put("id", pending.appRequestId);
            if (i < 0) {
                jSONObjectPut.put("result", obj);
            } else {
                if (str == null) {
                    str = "Could not complete request";
                }
                jSONObjectPut.put("error", protocolError(i, str));
            }
            JSONObject jSONObjectPut2 = new JSONObject().put("body", WalletEngine2.tonConnectCrypto(secretPhrase, pending.session, pending.address, pending.publicKey, new JSONObject().put("encrypt", jSONObjectPut)).getString("body")).put("traceId", pending.traceId).put("disconnect", i < 0 && "disconnect".equals(pending.method));
            if (!MessagesController.getMainSettings(this.currentAccount).edit().putString(key(pending.session.id, pending.messageId), jSONObjectPut2.toString()).commit()) {
                throw new IllegalStateException("Could not save TON Connect response");
            }
            jSONObject = jSONObjectPut2;
            strException = null;
        } catch (Exception e) {
            strException = exception("encrypt response", e);
            jSONObject = null;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$respond$66(jSONObject, callback, strException, pending);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$respond$66(JSONObject jSONObject, Utilities.Callback callback, String str, Pending pending) {
        if (jSONObject == null) {
            callback.run(str);
        } else {
            submitResponse(pending.session.id, pending.messageId, jSONObject, callback);
        }
    }

    private void retryResponse(long j, int i, String str, Utilities.Callback<String> callback) {
        try {
            submitResponse(j, i, new JSONObject(str), callback);
        } catch (Exception e) {
            callback.run(exception("restore response", e));
        }
    }

    private void submitResponse(final long j, final int i, final JSONObject jSONObject, final Utilities.Callback<String> callback) {
        TL_wallet.tonConnectSubmitResponse tonconnectsubmitresponse = new TL_wallet.tonConnectSubmitResponse();
        tonconnectsubmitresponse.session_id = j;
        tonconnectsubmitresponse.msg_id = i;
        tonconnectsubmitresponse.trace_id = jSONObject.optString("traceId", null);
        tonconnectsubmitresponse.body = Base64.decode(jSONObject.optString("body"), 2);
        this.connections.sendRequestTyped(tonconnectsubmitresponse, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda68
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$submitResponse$69(callback, jSONObject, j, i, (TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$submitResponse$69(final Utilities.Callback callback, JSONObject jSONObject, final long j, final int i, TLRPC.Bool bool, TLRPC.TL_error tL_error) {
        if (tL_error != null || !(bool instanceof TLRPC.TL_boolTrue)) {
            callback.run(rpc("submitResponse", tL_error));
        } else {
            if (jSONObject.optBoolean("disconnect")) {
                TL_wallet.tonConnectCloseSession tonconnectclosesession = new TL_wallet.tonConnectCloseSession();
                tonconnectclosesession.session_id = j;
                this.connections.sendRequestTyped(tonconnectclosesession, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda74
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$submitResponse$68(callback, j, i, (TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
                    }
                });
                return;
            }
            completeResponse(j, i, callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$submitResponse$68(Utilities.Callback callback, long j, int i, TLRPC.Bool bool, TLRPC.TL_error tL_error) {
        if (tL_error != null || !(bool instanceof TLRPC.TL_boolTrue)) {
            callback.run(rpc("closeSession", tL_error));
        } else {
            completeResponse(j, i, callback);
        }
    }

    private void completeResponse(long j, int i, Utilities.Callback<String> callback) {
        long j2 = i;
        MessagesController.getMainSettings(this.currentAccount).edit().remove(key(j, j2)).remove(key(j, j2) + ".transfer").apply();
        Pending pending = this.activeRequest;
        if (pending != null && pending.session.id == j && pending.messageId == i) {
            pending.processed = true;
        }
        callback.run(null);
    }

    public static final class Transaction {
        public final List<Message> messages;
        public final long total;
        public final long validUntil;

        public static final class Message {
            public final String address;
            public final long amount;
            public final boolean bounce;
            public final String comment;
            public final String payload;
            public final String stateInit;

            private Message(JSONObject jSONObject) throws JSONException {
                String string = jSONObject.getString("address");
                this.address = string;
                if (string.contains(":") || !WalletEngine2.isValidAddress(string)) {
                    f$$ExternalSyntheticBUOutline1.m215m("Expected a friendly destination address");
                    throw null;
                }
                this.bounce = (Base64.decode(string.replace(SignatureVisitor.SUPER, SignatureVisitor.EXTENDS).replace('_', '/'), 2)[0] & ByteCompanionObject.MAX_VALUE) == 17;
                Object obj = jSONObject.get("amount");
                if (obj instanceof String) {
                    String str = (String) obj;
                    if (str.matches("[0-9]+")) {
                        long j = Long.parseLong(str);
                        this.amount = j;
                        if (jSONObject.has("extra_currency") && jSONObject.getJSONObject("extra_currency").length() != 0) {
                            f$$ExternalSyntheticBUOutline1.m215m("Extra currencies are not supported");
                            throw null;
                        }
                        if (j < 0) {
                            f$$ExternalSyntheticBUOutline1.m215m("Transfer amount must not be negative");
                            throw null;
                        }
                        String string2 = jSONObject.has("payload") ? jSONObject.getString("payload") : null;
                        this.payload = string2;
                        String string3 = jSONObject.has("stateInit") ? jSONObject.getString("stateInit") : null;
                        this.stateInit = string3;
                        if ((string2 != null && !WalletEngine2.isValidCellBoc(string2)) || (string3 != null && !WalletEngine2.isValidCellBoc(string3))) {
                            f$$ExternalSyntheticBUOutline1.m215m("Invalid transaction cell");
                            throw null;
                        }
                        this.comment = WalletEngine2.textCommentFromBody(string2);
                        return;
                    }
                }
                f$$ExternalSyntheticBUOutline1.m215m("Invalid transfer amount");
                throw null;
            }
        }

        public Transaction(JSONObject jSONObject) throws JSONException {
            long jAddExact = 0;
            long jOptLong = jSONObject.optLong("valid_until", 0L);
            this.validUntil = jOptLong;
            JSONArray jSONArray = jSONObject.getJSONArray("messages");
            if (jSONArray.length() == 0 || jSONArray.length() > 255 || jOptLong < 0) {
                throw new JSONException("Invalid transaction");
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                Message message = new Message(jSONArray.getJSONObject(i));
                jAddExact = Math.addExact(jAddExact, message.amount);
                arrayList.add(message);
            }
            this.total = jAddExact;
            this.messages = Collections.unmodifiableList(arrayList);
        }

        public String[] fields() {
            String[] strArr = new String[this.messages.size() * 5];
            for (int i = 0; i < this.messages.size(); i++) {
                Message message = this.messages.get(i);
                int i2 = i * 5;
                strArr[i2] = message.address;
                strArr[i2 + 1] = Long.toString(message.amount);
                strArr[i2 + 2] = message.payload;
                strArr[i2 + 3] = message.stateInit;
                strArr[i2 + 4] = message.bounce ? "1" : MVEL.VERSION_SUB;
            }
            return strArr;
        }
    }

    public static String exception(String str, Throwable th) {
        FileLog.m1039e("[gram-wallet] TON Connect " + str, th);
        String message = th.getMessage();
        return (message == null || message.isEmpty()) ? th.getClass().getSimpleName() : message;
    }

    public static String rpc(String str, TLRPC.TL_error tL_error) {
        String str2;
        String str3;
        if (tL_error == null) {
            str2 = str + " returned an empty or unsuccessful response";
        } else {
            str2 = tL_error.text;
            if (str2 == null) {
                str2 = "RPC error " + tL_error.code;
            }
        }
        StringBuilder sb = new StringBuilder("[gram-wallet] TON Connect ");
        sb.append(str);
        sb.append(": ");
        if (tL_error == null) {
            str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            str3 = "code=" + tL_error.code + " ";
        }
        sb.append(str3);
        sb.append(str2);
        FileLog.m1038e(sb.toString());
        return str2;
    }

    public static void log(String str, String str2) {
        if (str2 != null) {
            FileLog.m1038e("[gram-wallet] TON Connect " + str + ": " + str2);
        }
    }

    public static BottomSheet showConnectSheet(Context context, int i, ConnectRequest connectRequest, Theme.ResourcesProvider resourcesProvider, Runnable runnable) {
        return showConnectSheet(context, i, connectRequest, null, resourcesProvider, null, runnable);
    }

    public static BottomSheet showOauthConnectSheet(Context context, int i, TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, Theme.ResourcesProvider resourcesProvider, Utilities.Callback<TL_wallet.inputTonConnectOauthSession> callback, Runnable runnable) {
        return showConnectSheet(context, i, null, tL_urlAuthResultRequest, resourcesProvider, callback, runnable);
    }

    private static BottomSheet showConnectSheet(Context context, final int i, final ConnectRequest connectRequest, final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, final Theme.ResourcesProvider resourcesProvider, final Utilities.Callback<TL_wallet.inputTonConnectOauthSession> callback, final Runnable runnable) {
        TLRPC.WebDocument webDocument;
        String string;
        final GramWallet gramWallet = GramWallet.getInstance(i);
        final boolean z = tL_urlAuthResultRequest != null;
        final TL_wallet.tonConnectSession tonconnectsession = z ? null : connectRequest.session;
        final TL_wallet.inputTonConnectOauthSession[] inputtonconnectoauthsessionArr = {null};
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        FrameLayout frameLayout = new FrameLayout(context);
        final ImageView imageView = new ImageView(context);
        imageView.setImageResource(C2807R.drawable.ic_ab_close);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider)));
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2, resourcesProvider), PorterDuff.Mode.SRC_IN));
        ScaleStateListAnimator.apply(imageView);
        frameLayout.addView(imageView, LayoutHelper.createFrame(48, 48.0f, 51, 4.0f, 0.0f, 0.0f, 0.0f));
        final BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.dp(38.0f));
        if (z) {
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            avatarDrawable.setInfo(tL_urlAuthResultRequest.bot);
            backupImageView.setForUserOrChat(tL_urlAuthResultRequest.bot, avatarDrawable);
        } else {
            TL_wallet.tonConnectManifest tonconnectmanifest = tonconnectsession.manifest;
            if (tonconnectmanifest != null && (webDocument = tonconnectmanifest.icon) != null) {
                backupImageView.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(webDocument)), "76_76", (Drawable) null, 0, tonconnectsession.manifest);
            }
        }
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(76, 76.0f, 49, 0.0f, 32.0f, 0.0f, 0.0f));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2));
        final TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setTextSize(1, 20.0f);
        textView.setGravity(17);
        if (z) {
            textView.setText(LocaleController.formatSpannable(C2807R.string.WalletConnectToApp, UserObject.getUserName(tL_urlAuthResultRequest.bot)));
        } else {
            TL_wallet.tonConnectManifest tonconnectmanifest2 = tonconnectsession.manifest;
            if (tonconnectmanifest2 != null) {
                textView.setText(LocaleController.formatSpannable(C2807R.string.WalletConnectToApp, tonconnectmanifest2.name));
            } else {
                textView.setText(LocaleController.getString(C2807R.string.WalletConnectToDApp));
            }
        }
        textView.setTextColor(Theme.getColor(i2, resourcesProvider));
        linearLayout.addView(textView, LayoutHelper.createLinear(-2, -2, 49, 36, 16, 36, 0));
        String hostAuthority = z ? tL_urlAuthResultRequest.domain : AndroidUtilities.getHostAuthority(connectRequest.manifestUrl);
        if (!TextUtils.isEmpty(hostAuthority)) {
            linearLayout.addView(domainView(context, hostAuthority, resourcesProvider), LayoutHelper.createLinear(-2, -2, 49, 36, 6, 36, 0));
        }
        final TextView textView2 = new TextView(context);
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(17);
        if (z || gramWallet.tonConnect.requestsProof(connectRequest)) {
            string = LocaleController.getString(C2807R.string.WalletConnectProofInfo);
        } else {
            string = LocaleController.getString(C2807R.string.WalletConnectInfo);
        }
        textView2.setText(string);
        textView2.setTextColor(Theme.getColor(i2, resourcesProvider));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-2, -2, 49, 36, 16, 36, 28));
        FrameLayout frameLayout2 = new FrameLayout(context);
        linearLayout.addView(frameLayout2, LayoutHelper.createLinear(-1, -2, 0.0f, -12.0f, 0.0f, -12.0f));
        WalletCardComponent walletCardComponent = new WalletCardComponent(context, false);
        walletCardComponent.update(gramWallet);
        walletCardComponent.listen(i, gramWallet);
        frameLayout2.addView(walletCardComponent);
        TextView textView3 = new TextView(context);
        textView3.setTextSize(1, 14.0f);
        textView3.setGravity(17);
        textView3.setText(LocaleController.getString(C2807R.string.WalletConnectPermissionInfo));
        textView3.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        linearLayout.addView(textView3, LayoutHelper.createLinear(-2, -2, 49, 36, 16, 36, 28));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), 0);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 16.0f));
        final ButtonWithCounterView neutral = new ButtonWithCounterView(context, resourcesProvider).setRound().setNeutral();
        neutral.setText(LocaleController.getString(C2807R.string.WalletCancel));
        linearLayout2.addView(neutral, LayoutHelper.createLinear(0, 44, 1.0f, 0, 0, 6, 0));
        final ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        round.setText(LocaleController.getString(C2807R.string.WalletConnect));
        linearLayout2.addView(round, LayoutHelper.createLinear(0, 44, 1.0f, 6, 0, 0, 0));
        final NewBottomSheet newBottomSheet = new NewBottomSheet(context, linearLayout, resourcesProvider);
        newBottomSheet.setDelegate(new BottomSheet.BottomSheetDelegate() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect.1
            @Override // org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegate, org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegateInterface
            public boolean canDismiss() {
                return !round.isLoading();
            }
        });
        final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                GramWalletTonConnect.m23111$r8$lambda$O98FUIpctl_LJamQV7DnvaF04M(z, round, gramWallet, tonconnectsession, connectRequest, textView, backupImageView, textView2);
            }
        };
        final NotificationCenter.NotificationCenterDelegate notificationCenterDelegate = new NotificationCenter.NotificationCenterDelegate() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda30
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i3, int i4, Object[] objArr) {
                GramWalletTonConnect.m23140$r8$lambda$yrHkTMCCrZGqasl7Ieov5iEZ1E(z, tonconnectsession, connectRequest, runnable2, i3, i4, objArr);
            }
        };
        NotificationCenter.getInstance(i).addObserver(notificationCenterDelegate, NotificationCenter.walletUpdate);
        runnable2.run();
        final boolean[] zArr = {false};
        final boolean z2 = z;
        newBottomSheet.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda31
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                GramWalletTonConnect.$r8$lambda$ACA44mSGgUwxIbAxu5t8cH9XjEk(i, notificationCenterDelegate, zArr, z2, inputtonconnectoauthsessionArr, callback, runnable, dialogInterface);
            }
        });
        newBottomSheet.show();
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda32
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                newBottomSheet.lambda$new$0();
            }
        });
        neutral.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda33
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GramWalletTonConnect.$r8$lambda$0opz344O4oyktTpx6YX7BaR0lg4(round, newBottomSheet, view);
            }
        });
        final boolean z3 = z;
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda34
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GramWalletTonConnect.$r8$lambda$VnFL9Z_aJ6Gnj6ea4ZKLD5HJVD4(round, neutral, imageView, newBottomSheet, resourcesProvider, runnable2, z3, gramWallet, tL_urlAuthResultRequest, inputtonconnectoauthsessionArr, connectRequest, view);
            }
        });
        return newBottomSheet;
    }

    /* JADX INFO: renamed from: $r8$lambda$-O98FUIpctl_LJamQV7DnvaF04M, reason: not valid java name */
    public static /* synthetic */ void m23111$r8$lambda$O98FUIpctl_LJamQV7DnvaF04M(boolean z, ButtonWithCounterView buttonWithCounterView, GramWallet gramWallet, TL_wallet.tonConnectSession tonconnectsession, ConnectRequest connectRequest, TextView textView, BackupImageView backupImageView, TextView textView2) {
        boolean z2 = false;
        if (z) {
            if (gramWallet.isReady() && gramWallet.getAddress() != null && gramWallet.getPublicKey() != null && !buttonWithCounterView.isLoading()) {
                z2 = true;
            }
            buttonWithCounterView.setEnabled(z2);
            return;
        }
        ArrayList<TL_wallet.tonConnectSession> arrayList = gramWallet.tonConnect.sessions;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            TL_wallet.tonConnectSession tonconnectsession2 = arrayList.get(i);
            i++;
            TL_wallet.tonConnectSession tonconnectsession3 = tonconnectsession2;
            if (tonconnectsession3.id == tonconnectsession.id) {
                connectRequest.session = tonconnectsession3;
                break;
            }
        }
        TL_wallet.tonConnectSession tonconnectsession4 = connectRequest.session;
        boolean z3 = (tonconnectsession4.manifest == null || tonconnectsession4.manifest_error != null || tonconnectsession4.closed || tonconnectsession4.closing) ? false : true;
        if (z3 && !connectRequest.busy) {
            z2 = true;
        }
        buttonWithCounterView.setEnabled(z2);
        TL_wallet.tonConnectManifest tonconnectmanifest = tonconnectsession4.manifest;
        if (tonconnectmanifest != null) {
            textView.setText(LocaleController.formatSpannable(C2807R.string.WalletConnectToApp, tonconnectmanifest.name));
            TLRPC.WebDocument webDocument = tonconnectsession4.manifest.icon;
            if (webDocument != null) {
                backupImageView.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(webDocument)), "76_76", (Drawable) null, 0, tonconnectsession4.manifest);
            }
        }
        Integer num = tonconnectsession4.manifest_error;
        if (num != null) {
            textView2.setText(LocaleController.formatString(C2807R.string.WalletTonConnectManifestLoadFailed, num));
        } else if (z3) {
            textView2.setText(LocaleController.getString(gramWallet.tonConnect.requestsProof(connectRequest) ? C2807R.string.WalletConnectProofInfo : C2807R.string.WalletConnectInfo));
        } else {
            textView2.setText(LocaleController.getString((tonconnectsession4.closed || tonconnectsession4.closing) ? C2807R.string.WalletTonConnectSessionClosed : C2807R.string.Loading));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$yrHkTMCCr-ZGqasl7Ieov5iEZ1E, reason: not valid java name */
    public static /* synthetic */ void m23140$r8$lambda$yrHkTMCCrZGqasl7Ieov5iEZ1E(boolean z, TL_wallet.tonConnectSession tonconnectsession, ConnectRequest connectRequest, Runnable runnable, int i, int i2, Object[] objArr) {
        if (!z && objArr.length > 1) {
            Object obj = objArr[1];
            if (obj instanceof TL_wallet.tonConnectSession) {
                TL_wallet.tonConnectSession tonconnectsession2 = (TL_wallet.tonConnectSession) obj;
                if (tonconnectsession2.id == tonconnectsession.id) {
                    connectRequest.session = tonconnectsession2;
                }
            }
        }
        runnable.run();
    }

    public static /* synthetic */ void $r8$lambda$ACA44mSGgUwxIbAxu5t8cH9XjEk(int i, NotificationCenter.NotificationCenterDelegate notificationCenterDelegate, boolean[] zArr, boolean z, TL_wallet.inputTonConnectOauthSession[] inputtonconnectoauthsessionArr, Utilities.Callback callback, Runnable runnable, DialogInterface dialogInterface) {
        TL_wallet.inputTonConnectOauthSession inputtonconnectoauthsession;
        NotificationCenter.getInstance(i).removeObserver(notificationCenterDelegate, NotificationCenter.walletUpdate);
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        if (z && (inputtonconnectoauthsession = inputtonconnectoauthsessionArr[0]) != null) {
            callback.run(inputtonconnectoauthsession);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$0opz344O4oyktTpx6YX7BaR0lg4(ButtonWithCounterView buttonWithCounterView, NewBottomSheet newBottomSheet, View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        newBottomSheet.lambda$new$0();
    }

    public static /* synthetic */ void $r8$lambda$VnFL9Z_aJ6Gnj6ea4ZKLD5HJVD4(final ButtonWithCounterView buttonWithCounterView, final ButtonWithCounterView buttonWithCounterView2, final ImageView imageView, final NewBottomSheet newBottomSheet, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable, boolean z, GramWallet gramWallet, TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, final TL_wallet.inputTonConnectOauthSession[] inputtonconnectoauthsessionArr, ConnectRequest connectRequest, View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        buttonWithCounterView.setLoading(true);
        buttonWithCounterView2.setEnabled(false);
        imageView.setEnabled(false);
        final Utilities.Callback<String> callback = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda36
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                GramWalletTonConnect.$r8$lambda$frHj8sJW2MIVBBm5HcNk1niiDSs(buttonWithCounterView, buttonWithCounterView2, imageView, newBottomSheet, resourcesProvider, runnable, (String) obj);
            }
        };
        if (z) {
            String address = gramWallet.getAddress();
            byte[] publicKey = gramWallet.getPublicKey();
            gramWallet.tonConnect.prepareOauthSession(tL_urlAuthResultRequest, address, publicKey == null ? null : (byte[]) publicKey.clone(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda37
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    GramWalletTonConnect.$r8$lambda$BzxFyHCbff4wpLBteIyinRMQlsM(inputtonconnectoauthsessionArr, callback, (TL_wallet.inputTonConnectOauthSession) obj, (String) obj2);
                }
            });
            return;
        }
        gramWallet.tonConnect.approveSession(connectRequest, callback);
    }

    public static /* synthetic */ void $r8$lambda$frHj8sJW2MIVBBm5HcNk1niiDSs(ButtonWithCounterView buttonWithCounterView, ButtonWithCounterView buttonWithCounterView2, ImageView imageView, NewBottomSheet newBottomSheet, Theme.ResourcesProvider resourcesProvider, Runnable runnable, String str) {
        buttonWithCounterView.setLoading(false);
        buttonWithCounterView2.setEnabled(true);
        imageView.setEnabled(true);
        if (str == null) {
            newBottomSheet.lambda$new$0();
        } else {
            BulletinFactory.showError(str, newBottomSheet.topBulletinContainer, resourcesProvider);
            runnable.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$BzxFyHCbff4wpLBteIyinRMQlsM(TL_wallet.inputTonConnectOauthSession[] inputtonconnectoauthsessionArr, Utilities.Callback callback, TL_wallet.inputTonConnectOauthSession inputtonconnectoauthsession, String str) {
        if (str == null) {
            inputtonconnectoauthsessionArr[0] = inputtonconnectoauthsession;
        }
        callback.run(str);
    }

    public static void openTransactionRequest(Context context, int i, long j, int i2, Theme.ResourcesProvider resourcesProvider) {
        openTransactionRequest(context, i, j, i2, resourcesProvider, null);
    }

    public static void openTransactionRequest(final Context context, final int i, long j, int i2, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
        final GramWallet gramWallet = GramWallet.getInstance(i);
        gramWallet.tonConnect.load(j, i2, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda38
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                GramWalletTonConnect.m23125$r8$lambda$_teNJWZxUELD33DEpVtHEKVp5c(context, i, gramWallet, resourcesProvider, runnable, (GramWalletTonConnect.Pending) obj, (String) obj2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$_-teNJWZxUELD33DEpVtHEKVp5c, reason: not valid java name */
    public static /* synthetic */ void m23125$r8$lambda$_teNJWZxUELD33DEpVtHEKVp5c(Context context, int i, GramWallet gramWallet, Theme.ResourcesProvider resourcesProvider, Runnable runnable, Pending pending, String str) {
        if (pending == null) {
            if (str != null) {
                BulletinFactory.showError(str);
                return;
            }
            return;
        }
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (activity.isFinishing() || activity.isDestroyed() || !LaunchActivity.isResumed || SharedConfig.appLocked || SharedConfig.isWaitingForPasscodeEnter || UserConfig.selectedAccount != i) {
                gramWallet.tonConnect.release(pending);
                return;
            }
        }
        if ("signData".equals(pending.method)) {
            showSignDataSheet(context, i, pending, resourcesProvider, runnable);
        } else {
            showTransactionSheet(context, i, pending, resourcesProvider, runnable);
        }
    }

    private static BottomSheet showSignDataSheet(Context context, int i, final Pending pending, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
        String string;
        int i2;
        final GramWalletTonConnect gramWalletTonConnect = GramWallet.getInstance(i).tonConnect;
        try {
            final JSONObject jSONObject = new JSONObject(pending.data);
            boolean zEquals = "text".equals(jSONObject.optString("type"));
            final NavBottomSheet backgroundOverride = new NavBottomSheet(context, resourcesProvider, new View[0]).setBackgroundOverride(Theme.getColor(Theme.key_windowBackgroundGray, resourcesProvider));
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            LinearLayout linearLayout2 = new LinearLayout(context);
            linearLayout2.setGravity(16);
            ImageView imageView = new ImageView(context);
            imageView.setImageResource(C2807R.drawable.ic_ab_close);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider), PorterDuff.Mode.SRC_IN));
            imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider)));
            imageView.setContentDescription(LocaleController.getString(C2807R.string.Close));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda50
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    GramWalletTonConnect.$r8$lambda$D2ZdpxjY_LyVMzUoqWpFsRmOCtA(pending, backgroundOverride, view);
                }
            });
            linearLayout2.addView(imageView, LayoutHelper.createLinear(48, 48, 0.0f, 16, 4, 0, 12, 0));
            BackupImageView backupImageView = new BackupImageView(context);
            backupImageView.setRoundRadius(AndroidUtilities.dp(22.0f));
            TLRPC.WebDocument webDocument = pending.session.manifest.icon;
            if (webDocument != null) {
                backupImageView.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(webDocument)), "44_44", (Drawable) null, 0, pending.session.manifest);
            }
            linearLayout2.addView(backupImageView, LayoutHelper.createLinear(44, 44, 0.0f, 16, 0, 0, 12, 0));
            LinearLayout linearLayout3 = new LinearLayout(context);
            linearLayout3.setOrientation(1);
            TextView textViewRequestText = requestText(context, LocaleController.getString(C2807R.string.WalletSignData), 18, resourcesProvider);
            textViewRequestText.setTypeface(AndroidUtilities.bold());
            textViewRequestText.setGravity(3);
            linearLayout3.addView(textViewRequestText, LayoutHelper.createLinear(-1, -2));
            TextView textViewRequestText2 = requestText(context, AndroidUtilities.getHostAuthority(pending.session.manifest.url), 14, resourcesProvider);
            int i3 = Theme.key_windowBackgroundWhiteGrayText2;
            textViewRequestText2.setTextColor(Theme.getColor(i3, resourcesProvider));
            textViewRequestText2.setGravity(3);
            textViewRequestText2.setSingleLine(true);
            textViewRequestText2.setEllipsize(TextUtils.TruncateAt.END);
            linearLayout3.addView(textViewRequestText2, LayoutHelper.createLinear(-1, -2));
            linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(0, -2, 1.0f, 0, 0, 16, 0));
            linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, 56));
            LinearLayout linearLayout4 = new LinearLayout(context);
            linearLayout4.setOrientation(1);
            linearLayout4.setPadding(AndroidUtilities.dp(20.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(20.0f), AndroidUtilities.dp(16.0f));
            linearLayout4.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(16.0f), Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider)));
            if (zEquals) {
                string = jSONObject.optString("text");
            } else {
                string = LocaleController.getString(C2807R.string.WalletBinaryDataWarning);
            }
            TextView textViewRequestText3 = requestText(context, string, zEquals ? 14 : 16, resourcesProvider);
            textViewRequestText3.setGravity(3);
            textViewRequestText3.setTextIsSelectable(zEquals);
            if (zEquals) {
                TextView textViewRequestText4 = requestText(context, LocaleController.getString(C2807R.string.WalletSigningData), 14, resourcesProvider);
                textViewRequestText4.setGravity(3);
                textViewRequestText4.setTypeface(AndroidUtilities.bold());
                textViewRequestText4.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueHeader, resourcesProvider));
                linearLayout4.addView(textViewRequestText4, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 12.0f));
                textViewRequestText3.setTypeface(Typeface.MONOSPACE);
                i2 = -2;
            } else {
                LinearLayout linearLayout5 = new LinearLayout(context);
                linearLayout5.setGravity(16);
                TextView textViewRequestText5 = requestText(context, "!", 12, resourcesProvider);
                textViewRequestText5.setTypeface(AndroidUtilities.bold());
                textViewRequestText5.setTextColor(-1);
                textViewRequestText5.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(8.0f), Theme.getColor(Theme.key_text_RedBold, resourcesProvider)));
                linearLayout5.addView(textViewRequestText5, LayoutHelper.createLinear(16, 16, 0.0f, 16, 0, 0, 6, 0));
                TextView textViewRequestText6 = requestText(context, LocaleController.getString(C2807R.string.WalletBinaryData), 14, resourcesProvider);
                textViewRequestText6.setGravity(3);
                textViewRequestText6.setTypeface(AndroidUtilities.bold());
                i2 = -2;
                linearLayout5.addView(textViewRequestText6, LayoutHelper.createLinear(-1, -2));
                linearLayout4.addView(linearLayout5, LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 4.0f));
            }
            linearLayout4.addView(textViewRequestText3, LayoutHelper.createLinear(-1, i2));
            if (zEquals) {
                textViewRequestText3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda51
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        GramWalletTonConnect.$r8$lambda$QKlYbmoUbfwlzyVju4i2u6YNz5o(jSONObject, backgroundOverride, resourcesProvider, view);
                    }
                });
            }
            final ScrollView scrollView = new ScrollView(context) { // from class: org.telegram.ui.Wallet.GramWalletTonConnect.2
                @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
                public void onMeasure(int i4, int i5) {
                    super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i5), AndroidUtilities.dp(320.0f)), Integer.MIN_VALUE));
                }
            };
            scrollView.addView(linearLayout4);
            linearLayout.addView(scrollView, LayoutHelper.createLinear(-1, -2, 12.0f, 4.0f, 12.0f, 0.0f));
            NavBottomSheet.Page page = new NavBottomSheet.Page(context);
            page.getContent().addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f));
            backgroundOverride.addPage(page);
            LinearLayout linearLayout6 = new LinearLayout(context);
            linearLayout6.setOrientation(1);
            if (zEquals) {
                TextView textViewRequestText7 = requestText(context, LocaleController.getString(C2807R.string.WalletReviewSigningData), 14, resourcesProvider);
                textViewRequestText7.setGravity(3);
                textViewRequestText7.setTextColor(Theme.getColor(i3, resourcesProvider));
                linearLayout6.addView(textViewRequestText7, LayoutHelper.createLinear(-1, -2, 36.0f, 12.0f, 36.0f, 0.0f));
            }
            LinearLayout linearLayout7 = new LinearLayout(context);
            linearLayout7.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
            final ButtonWithCounterView neutral = new ButtonWithCounterView(context, resourcesProvider).setRound().setNeutral();
            neutral.setText(LocaleController.getString(C2807R.string.Cancel));
            final ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
            round.setText(LocaleController.getString(C2807R.string.WalletSign));
            round.setEnabled(false);
            linearLayout7.addView(neutral, LayoutHelper.createLinear(0, 44, 1.0f, 0, 0, 6, 0));
            linearLayout7.addView(round, LayoutHelper.createLinear(0, 44, 1.0f, 6, 0, 0, 0));
            linearLayout6.addView(linearLayout7);
            backgroundOverride.setFixedFooter(linearLayout6);
            backgroundOverride.setDelegate(new BottomSheet.BottomSheetDelegate() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect.3
                @Override // org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegate, org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegateInterface
                public boolean canDismiss() {
                    return !pending.isBusy();
                }
            });
            final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda52
                @Override // java.lang.Runnable
                public final void run() {
                    GramWalletTonConnect.m23119$r8$lambda$Hk6cD9ppFax2CNefQibUzJMxA(scrollView, pending, round);
                }
            };
            scrollView.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda53
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    runnable2.run();
                }
            });
            scrollView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda54
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    runnable2.run();
                }
            });
            final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda55
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    GramWalletTonConnect.$r8$lambda$Li9a6a2vL8rcyHdRnqqvcJZ2vL0(round, neutral, gramWalletTonConnect, pending, backgroundOverride, resourcesProvider, runnable2, (Boolean) obj);
                }
            };
            round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda56
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    callback.run(Boolean.FALSE);
                }
            });
            neutral.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda57
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    callback.run(Boolean.TRUE);
                }
            });
            final boolean[] zArr = {false};
            final Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect.4
                @Override // java.lang.Runnable
                public void run() {
                    if (zArr[0]) {
                        return;
                    }
                    if (pending.isBusy()) {
                        AndroidUtilities.runOnUIThread(this, 1000L);
                    } else {
                        backgroundOverride.lambda$new$0();
                    }
                }
            };
            pending.setOnProcessed(new GramWalletTonConnect$$ExternalSyntheticLambda47(backgroundOverride));
            backgroundOverride.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda58
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    GramWalletTonConnect.$r8$lambda$wklccVJroHw3up8fzDW_uOd7hwo(zArr, runnable3, gramWalletTonConnect, pending, runnable, dialogInterface);
                }
            });
            backgroundOverride.show();
            AndroidUtilities.runOnUIThread(runnable3, Math.max(0L, ((long) pending.expires) - ((long) gramWalletTonConnect.connections.getCurrentTime())) * 1000);
            return backgroundOverride;
        } catch (JSONException e) {
            gramWalletTonConnect.release(pending);
            BulletinFactory.showError(exception("display signing data", e));
            return null;
        }
    }

    public static /* synthetic */ void $r8$lambda$D2ZdpxjY_LyVMzUoqWpFsRmOCtA(Pending pending, NavBottomSheet navBottomSheet, View view) {
        if (pending.isBusy()) {
            return;
        }
        navBottomSheet.lambda$new$0();
    }

    public static /* synthetic */ void $r8$lambda$QKlYbmoUbfwlzyVju4i2u6YNz5o(JSONObject jSONObject, NavBottomSheet navBottomSheet, Theme.ResourcesProvider resourcesProvider, View view) {
        if (AndroidUtilities.addToClipboard(jSONObject.optString("text"))) {
            BulletinFactory.of(navBottomSheet.topBulletinContainer, resourcesProvider).createCopyBulletin(LocaleController.getString(C2807R.string.WalletSigningDataCopied)).show();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$Hk6-cD9ppFax2CNefQib-UzJMxA, reason: not valid java name */
    public static /* synthetic */ void m23119$r8$lambda$Hk6cD9ppFax2CNefQibUzJMxA(ScrollView scrollView, Pending pending, ButtonWithCounterView buttonWithCounterView) {
        if (!scrollView.canScrollVertically(1)) {
            pending.previewReady = true;
        }
        buttonWithCounterView.setEnabled((!pending.previewReady || pending.isBusy() || pending.isProcessed()) ? false : true);
    }

    public static /* synthetic */ void $r8$lambda$Li9a6a2vL8rcyHdRnqqvcJZ2vL0(final ButtonWithCounterView buttonWithCounterView, final ButtonWithCounterView buttonWithCounterView2, GramWalletTonConnect gramWalletTonConnect, final Pending pending, final NavBottomSheet navBottomSheet, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable, Boolean bool) {
        buttonWithCounterView.setEnabled(false);
        buttonWithCounterView2.setEnabled(false);
        (bool.booleanValue() ? buttonWithCounterView2 : buttonWithCounterView).setLoading(true);
        gramWalletTonConnect.decide(pending, bool.booleanValue(), new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda61
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                GramWalletTonConnect.$r8$lambda$1JCFHa5i09kz2aLTWBp789Jaggk(buttonWithCounterView, buttonWithCounterView2, navBottomSheet, resourcesProvider, runnable, pending, (String) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$1JCFHa5i09kz2aLTWBp789Jaggk(ButtonWithCounterView buttonWithCounterView, ButtonWithCounterView buttonWithCounterView2, NavBottomSheet navBottomSheet, Theme.ResourcesProvider resourcesProvider, Runnable runnable, Pending pending, String str) {
        boolean z = false;
        buttonWithCounterView.setLoading(false);
        buttonWithCounterView2.setLoading(false);
        if (str == null) {
            navBottomSheet.lambda$new$0();
            return;
        }
        BulletinFactory.showError(str, navBottomSheet.topBulletinContainer, resourcesProvider);
        runnable.run();
        if (!pending.isProcessed() && !pending.claimed) {
            z = true;
        }
        buttonWithCounterView2.setEnabled(z);
    }

    public static /* synthetic */ void $r8$lambda$wklccVJroHw3up8fzDW_uOd7hwo(boolean[] zArr, Runnable runnable, GramWalletTonConnect gramWalletTonConnect, Pending pending, Runnable runnable2, DialogInterface dialogInterface) {
        zArr[0] = true;
        AndroidUtilities.cancelRunOnUIThread(runnable);
        gramWalletTonConnect.release(pending);
        if (runnable2 != null) {
            runnable2.run();
        }
    }

    private static BottomSheet showTransactionSheet(Context context, int i, final Pending pending, final Theme.ResourcesProvider resourcesProvider, final Runnable runnable) {
        CharSequence spannable;
        final GramWallet gramWallet = GramWallet.getInstance(i);
        GramWalletTonConnect gramWalletTonConnect = gramWallet.tonConnect;
        final boolean zEquals = "signMessage".equals(pending.method);
        final NavBottomSheet backgroundOverride = new NavBottomSheet(context, resourcesProvider, new View[0]).setBackgroundOverride(Theme.getColor(Theme.key_windowBackgroundGray, resourcesProvider));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.dp(38.0f));
        TLRPC.WebDocument webDocument = pending.session.manifest.icon;
        if (webDocument != null) {
            backupImageView.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(webDocument)), "76_76", (Drawable) null, 0, pending.session.manifest);
        }
        linearLayout.addView(backupImageView, LayoutHelper.createLinear(76, 76, 1, 0, 24, 0, 0));
        TextView textViewRequestText = requestText(context, LocaleController.formatSpannable(zEquals ? C2807R.string.WalletAppRequestsSignature : C2807R.string.WalletAppRequestsTransfer, pending.session.manifest.name), 20, resourcesProvider);
        textViewRequestText.setTypeface(AndroidUtilities.bold());
        linearLayout.addView(textViewRequestText, LayoutHelper.createLinear(-1, -2, 24.0f, 12.0f, 24.0f, 0.0f));
        String hostAuthority = AndroidUtilities.getHostAuthority(pending.session.manifest.url);
        if (!TextUtils.isEmpty(hostAuthority)) {
            linearLayout.addView(domainView(context, hostAuthority, resourcesProvider), LayoutHelper.createLinear(-2, -2, 1, 36, 6, 36, 12));
        }
        WalletCardComponent walletCardComponent = new WalletCardComponent(context, false, C2807R.drawable.wallet_card_info, 24);
        walletCardComponent.getCardHolderView().setMaxLines(2);
        walletCardComponent.getCardHolderView().setSingleLine(false);
        walletCardComponent.setCardHolder(WalletImportFragment.formatAddressTwoLines(pending.transaction.messages.get(0).address));
        walletCardComponent.getBalanceView().setText(formatCardDebit(pending.transaction.total));
        walletCardComponent.getUsdBalanceView().setText(gramWallet.formatCurrency(pending.transaction.total));
        linearLayout.addView(walletCardComponent, LayoutHelper.createLinear(-1, -2));
        walletCardComponent.setCardOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda42
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                backgroundOverride.openPage(1);
            }
        });
        NavBottomSheet.Page page = new NavBottomSheet.Page(context);
        page.getContent().addView(linearLayout, LayoutHelper.createFrame(-1, -2.0f));
        backgroundOverride.addPage(page);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(0);
        linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-1, 56));
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(C2807R.drawable.ic_ab_back);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider)));
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2, resourcesProvider), PorterDuff.Mode.SRC_IN));
        ScaleStateListAnimator.apply(imageView);
        linearLayout3.addView(imageView, LayoutHelper.createLinear(48, 48, 0.0f, 19, 4, 0, 0, 0));
        BackupImageView backupImageView2 = new BackupImageView(context);
        backupImageView2.setRoundRadius(AndroidUtilities.dp(22.0f));
        TLRPC.WebDocument webDocument2 = pending.session.manifest.icon;
        if (webDocument2 != null) {
            backupImageView2.setImage(ImageLocation.getForWebFile(WebFile.createWithWebDocument(webDocument2)), "44_44", (Drawable) null, 0, pending.session.manifest);
        }
        linearLayout3.addView(backupImageView2, LayoutHelper.createLinear(44, 44, 19, 12, 0, 11, 0));
        LinearLayout linearLayout4 = new LinearLayout(context);
        linearLayout4.setOrientation(1);
        linearLayout3.addView(linearLayout4, LayoutHelper.createLinear(0, 44, 1.0f, 23, 0, 0, 12, 0));
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView.setTextSize(1, 18.0f);
        linearLayout4.addView(textView, LayoutHelper.createLinear(-1, -2));
        textView.setText(LocaleController.getString(C2807R.string.WalletConfirmAction));
        if (!TextUtils.isEmpty(hostAuthority)) {
            TextView textView2 = new TextView(context);
            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
            textView2.setTextSize(1, 14.0f);
            linearLayout4.addView(textView2, LayoutHelper.createLinear(-1, -2));
            textView2.setText(hostAuthority);
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda43
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                backgroundOverride.openPage(0);
            }
        });
        LinearLayout linearLayout5 = new LinearLayout(context);
        linearLayout5.setOrientation(1);
        LinearLayout linearLayoutTransactionBlock = transactionBlock(context, LocaleController.getString(C2807R.string.WalletPreview), resourcesProvider);
        String strShortAddress = shortAddress(pending.transaction.messages.get(0).address);
        IconBackgroundColors iconBackgroundColors = IconBackgroundColors.BLUE;
        int i3 = C2807R.drawable.mini_gram_24;
        CharSequence gramsWithUnit = GramWallet.formatGramsWithUnit(pending.transaction.total, true);
        if (pending.transaction.messages.size() > 1) {
            spannable = LocaleController.formatSpannable(C2807R.string.WalletTransferToMultiple, strShortAddress, Integer.valueOf(pending.transaction.messages.size() - 1));
        } else {
            spannable = LocaleController.formatSpannable(C2807R.string.WalletTransferTo, strShortAddress);
        }
        linearLayoutTransactionBlock.addView(block(context, iconBackgroundColors, i3, gramsWithUnit, spannable, null, null, resourcesProvider), LayoutHelper.createLinear(-1, -2));
        linearLayout5.addView(linearLayoutTransactionBlock, LayoutHelper.createLinear(-1, -2, 12.0f, 4.0f, 12.0f, 6.0f));
        LinearLayout linearLayoutTransactionBlock2 = transactionBlock(context, LocaleController.getString(C2807R.string.WalletActions), resourcesProvider);
        for (Transaction.Message message : pending.transaction.messages) {
            linearLayoutTransactionBlock2.addView(block(context, IconBackgroundColors.BLUE, C2807R.drawable.mini_gram_24, LocaleController.getString((message.payload == null || message.comment != null) ? C2807R.string.WalletTransfer : C2807R.string.WalletContractCall), LocaleController.formatSpannable(C2807R.string.WalletTransferTo, shortAddress(message.address)), actionPrice(-message.amount), message.comment, resourcesProvider), LayoutHelper.createLinear(-1, -2));
            gramWalletTonConnect = gramWalletTonConnect;
        }
        final GramWalletTonConnect gramWalletTonConnect2 = gramWalletTonConnect;
        linearLayout5.addView(linearLayoutTransactionBlock2, LayoutHelper.createLinear(-1, -2, 12.0f, 6.0f, 12.0f, 12.0f));
        ScrollView scrollView = new ScrollView(context) { // from class: org.telegram.ui.Wallet.GramWalletTonConnect.5
            @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
            public void onMeasure(int i4, int i5) {
                super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i5), AndroidUtilities.dp(360.0f)), Integer.MIN_VALUE));
            }
        };
        scrollView.setFillViewport(false);
        scrollView.addView(linearLayout5);
        linearLayout2.addView(scrollView, LayoutHelper.createLinear(-1, -2));
        NavBottomSheet.Page page2 = new NavBottomSheet.Page(context);
        page2.getContent().addView(linearLayout2, LayoutHelper.createFrame(-1, -2.0f));
        backgroundOverride.addPage(page2);
        LinearLayout linearLayout6 = new LinearLayout(context);
        linearLayout6.setOrientation(1);
        final TextView textViewRequestText2 = requestText(context, null, 14, resourcesProvider);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(" ");
        spannableStringBuilder.setSpan(new LoadingSpan(textViewRequestText2, AndroidUtilities.dp(80.0f)), 0, spannableStringBuilder.length(), 33);
        textViewRequestText2.setText(LocaleController.formatSpannable(C2807R.string.WalletFeeAmount, spannableStringBuilder));
        textViewRequestText2.setVisibility(zEquals ? 8 : 0);
        textViewRequestText2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
        linearLayout6.addView(textViewRequestText2, LayoutHelper.createLinear(-1, -2, 20.0f, 16.0f, 20.0f, 16.0f));
        LinearLayout linearLayout7 = new LinearLayout(context);
        linearLayout7.setPadding(AndroidUtilities.dp(16.0f), 0, AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
        final ButtonWithCounterView neutral = new ButtonWithCounterView(context, resourcesProvider).setRound().setNeutral();
        neutral.setText(LocaleController.getString(C2807R.string.WalletDecline));
        linearLayout7.addView(neutral, LayoutHelper.createLinear(0, 44, 1.0f, 0, 0, 6, 0));
        final ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        round.setText(LocaleController.getString(zEquals ? C2807R.string.WalletSign : C2807R.string.WalletConfirm));
        round.setEnabled(false);
        linearLayout7.addView(round, LayoutHelper.createLinear(0, 44, 1.0f, 6, 0, 0, 0));
        linearLayout6.addView(linearLayout7);
        backgroundOverride.setFixedFooter(linearLayout6);
        final boolean[] zArr = {false};
        final boolean[] zArr2 = {false};
        final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda44
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                GramWalletTonConnect.$r8$lambda$JQgNC1pJcgzH3imtRpfREEUxluE(pending, zArr2, round, neutral, gramWalletTonConnect2, backgroundOverride, zArr, resourcesProvider, (Boolean) obj);
            }
        };
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda45
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                callback.run(Boolean.FALSE);
            }
        });
        neutral.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda46
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                callback.run(Boolean.TRUE);
            }
        });
        final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect.6
            @Override // java.lang.Runnable
            public void run() {
                if (zArr[0]) {
                    return;
                }
                if (pending.isBusy()) {
                    AndroidUtilities.runOnUIThread(this, 1000L);
                } else {
                    backgroundOverride.lambda$new$0();
                }
            }
        };
        long j = pending.expires;
        long j2 = pending.transaction.validUntil;
        if (j2 == 0) {
            j2 = LongCompanionObject.MAX_VALUE;
        }
        long jMax = 1000 * Math.max(0L, Math.min(j, j2) - ((long) ConnectionsManager.getInstance(i).getCurrentTime()));
        pending.setOnProcessed(new GramWalletTonConnect$$ExternalSyntheticLambda47(backgroundOverride));
        backgroundOverride.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda48
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                GramWalletTonConnect.$r8$lambda$1gLedBfCSEsl_k0iUIlsOWa3Eo8(zArr, runnable2, gramWalletTonConnect2, pending, runnable, dialogInterface);
            }
        });
        backgroundOverride.show();
        AndroidUtilities.runOnUIThread(runnable2, jMax);
        gramWalletTonConnect2.preview(pending, new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda49
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                GramWalletTonConnect.$r8$lambda$FVdH5mlhA8Fwq159rHxdtjlKoVU(zArr, pending, zArr2, round, zEquals, gramWallet, textViewRequestText2, backgroundOverride, resourcesProvider, (TL_wallet.walletTransaction) obj, (String) obj2);
            }
        });
        return backgroundOverride;
    }

    public static /* synthetic */ void $r8$lambda$JQgNC1pJcgzH3imtRpfREEUxluE(final Pending pending, final boolean[] zArr, final ButtonWithCounterView buttonWithCounterView, final ButtonWithCounterView buttonWithCounterView2, GramWalletTonConnect gramWalletTonConnect, final NavBottomSheet navBottomSheet, final boolean[] zArr2, final Theme.ResourcesProvider resourcesProvider, Boolean bool) {
        if (pending.isBusy() || pending.isProcessed()) {
            return;
        }
        if (bool.booleanValue() || zArr[0]) {
            buttonWithCounterView.setEnabled(false);
            buttonWithCounterView2.setEnabled(false);
            (bool.booleanValue() ? buttonWithCounterView2 : buttonWithCounterView).setLoading(true);
            gramWalletTonConnect.decide(pending, bool.booleanValue(), new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletTonConnect$$ExternalSyntheticLambda67
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    GramWalletTonConnect.m23126$r8$lambda$_pQTfQZ6dLNg_r0chDI6r5SvN8(buttonWithCounterView, buttonWithCounterView2, navBottomSheet, zArr2, resourcesProvider, pending, zArr, (String) obj);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$_pQTfQZ6dLNg_r0chDI6-r5SvN8, reason: not valid java name */
    public static /* synthetic */ void m23126$r8$lambda$_pQTfQZ6dLNg_r0chDI6r5SvN8(ButtonWithCounterView buttonWithCounterView, ButtonWithCounterView buttonWithCounterView2, NavBottomSheet navBottomSheet, boolean[] zArr, Theme.ResourcesProvider resourcesProvider, Pending pending, boolean[] zArr2, String str) {
        boolean z = false;
        buttonWithCounterView.setLoading(false);
        buttonWithCounterView2.setLoading(false);
        if (str == null) {
            navBottomSheet.lambda$new$0();
            return;
        }
        if (zArr[0]) {
            BulletinFactory.showError(str);
            return;
        }
        BulletinFactory.showError(str, navBottomSheet.topBulletinContainer, resourcesProvider);
        buttonWithCounterView.setEnabled(!pending.isProcessed() && zArr2[0]);
        if (!pending.isProcessed() && !pending.claimed) {
            z = true;
        }
        buttonWithCounterView2.setEnabled(z);
    }

    public static /* synthetic */ void $r8$lambda$1gLedBfCSEsl_k0iUIlsOWa3Eo8(boolean[] zArr, Runnable runnable, GramWalletTonConnect gramWalletTonConnect, Pending pending, Runnable runnable2, DialogInterface dialogInterface) {
        zArr[0] = true;
        AndroidUtilities.cancelRunOnUIThread(runnable);
        gramWalletTonConnect.release(pending);
        if (runnable2 != null) {
            runnable2.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$FVdH5mlhA8Fwq159rHxdtjlKoVU(boolean[] zArr, Pending pending, boolean[] zArr2, ButtonWithCounterView buttonWithCounterView, boolean z, GramWallet gramWallet, TextView textView, NavBottomSheet navBottomSheet, Theme.ResourcesProvider resourcesProvider, TL_wallet.walletTransaction wallettransaction, String str) {
        CharSequence spannable;
        if (zArr[0] || pending.isBusy() || pending.isProcessed()) {
            return;
        }
        boolean z2 = pending.previewReady;
        zArr2[0] = z2;
        buttonWithCounterView.setEnabled(z2);
        boolean z3 = zArr2[0];
        if (!z3 || z) {
            if (z3) {
                return;
            }
            String string = str != null ? str : LocaleController.getString(C2807R.string.WalletTransactionSimulationFailed);
            if (str == null) {
                log("preview", string);
            }
            BulletinFactory.showError(string, navBottomSheet.topBulletinContainer, resourcesProvider);
            return;
        }
        CharSequence gramCapital = GramWallet.formatGramCapital(wallettransaction.fee, true);
        CharSequence currency = gramWallet.formatCurrency(wallettransaction.fee, true);
        if (TextUtils.isEmpty(currency)) {
            spannable = LocaleController.formatSpannable(C2807R.string.WalletFeeAmount, gramCapital);
        } else {
            spannable = LocaleController.formatSpannable(C2807R.string.WalletFeeAmountWithCurrency, gramCapital, currency);
        }
        textView.setText(spannable);
    }

    private static LinearLayout transactionBlock(Context context, String str, Theme.ResourcesProvider resourcesProvider) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(16.0f), Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider)));
        HeaderCell headerCell = new HeaderCell(context, resourcesProvider);
        headerCell.setText(str);
        linearLayout.addView(headerCell, LayoutHelper.createLinear(-1, -2));
        return linearLayout;
    }

    private static TextView domainView(Context context, String str, Theme.ResourcesProvider resourcesProvider) {
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setTextSize(1, 14.0f);
        textView.setTextColor(Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) str);
        textView.setText(spannableStringBuilder);
        return textView;
    }

    private static TextView requestText(Context context, CharSequence charSequence, int i, Theme.ResourcesProvider resourcesProvider) {
        TextView textView = new TextView(context);
        textView.setText(charSequence);
        textView.setTextSize(1, i);
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        textView.setGravity(17);
        return textView;
    }

    private static LinearLayout block(Context context, IconBackgroundColors iconBackgroundColors, int i, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, Theme.ResourcesProvider resourcesProvider) {
        LinearLayout.LayoutParams layoutParamsCreateLinear;
        int color;
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        linearLayout.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(5.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(5.0f));
        ImageView imageView = new ImageView(context);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[]{iconBackgroundColors.top, iconBackgroundColors.bottom});
        gradientDrawable.setShape(1);
        imageView.setBackground(gradientDrawable);
        imageView.setImageResource(i);
        imageView.setPadding(AndroidUtilities.dp(7.0f), AndroidUtilities.dp(7.0f), AndroidUtilities.dp(7.0f), AndroidUtilities.dp(7.0f));
        linearLayout.addView(imageView, LayoutHelper.createLinear(46, 46, 0.0f, 16, 0, 0, 12, 0));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout2.setGravity((charSequence2 == null && charSequence4 == null) ? 16 : 48);
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setTextSize(1, 16.0f);
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView.setSingleLine(charSequence2 != null);
        if (charSequence2 == null) {
            textView.setGravity(16);
        }
        textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        textView.setText(charSequence);
        if (charSequence2 == null) {
            layoutParamsCreateLinear = LayoutHelper.createLinear(-1, AndroidUtilities.dp(24.0f), 16);
        } else {
            layoutParamsCreateLinear = LayoutHelper.createLinear(-1, -2);
        }
        layoutParamsCreateLinear.weight = 0.0f;
        linearLayout2.addView(textView, layoutParamsCreateLinear);
        if (!TextUtils.isEmpty(charSequence2)) {
            TextView textView2 = new TextView(context);
            textView2.setTextSize(1, 14.0f);
            textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2, resourcesProvider));
            textView2.setSingleLine(true);
            textView2.setEllipsize(TextUtils.TruncateAt.END);
            textView2.setText(charSequence2);
            linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2, 0.0f, 3.0f, 0.0f, 0.0f));
        }
        if (!TextUtils.isEmpty(charSequence4)) {
            TextView textView3 = new TextView(context);
            MessageDrawable messageDrawable = new MessageDrawable(0, false, false);
            messageDrawable.shadow = false;
            messageDrawable.overrideColor = Integer.valueOf(Theme.getColor(Theme.key_wallet_comment, resourcesProvider));
            textView3.setBackground(messageDrawable);
            textView3.setPadding(AndroidUtilities.dp(19.0f), AndroidUtilities.dp(9.0f), AndroidUtilities.dp(15.0f), AndroidUtilities.dp(8.0f));
            textView3.setTextSize(1, 15.0f);
            textView3.setTextColor(Theme.getColor(i2, resourcesProvider));
            textView3.setMaxLines(2);
            textView3.setText(charSequence4);
            linearLayout2.addView(textView3, LayoutHelper.createLinear(-2, -2, 0.0f, 6.0f, 0.0f, 0.0f));
        }
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(0, -2, 1.0f, 16));
        if (!TextUtils.isEmpty(charSequence3)) {
            TextView textView4 = new TextView(context);
            textView4.setTypeface(AndroidUtilities.bold());
            textView4.setTextSize(1, 14.0f);
            textView4.setGravity(21);
            textView4.setText(charSequence3);
            if (charSequence3.toString().startsWith("+")) {
                color = Theme.getColor(Theme.key_color_green, resourcesProvider);
            } else {
                color = Theme.getColor(i2, resourcesProvider);
            }
            textView4.setTextColor(color);
            linearLayout.addView(textView4, LayoutHelper.createLinear(-2, -2, 0.0f, 16, 8, 0, 0, 0));
        }
        return linearLayout;
    }

    private static CharSequence actionPrice(long j) {
        String grams = GramWallet.formatGrams(j, true);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(grams);
        int iIndexOf = grams.indexOf(46);
        if (iIndexOf >= 0) {
            spannableStringBuilder.setSpan(new RelativeSizeSpan(0.6875f), iIndexOf, spannableStringBuilder.length(), 33);
        }
        if (spannableStringBuilder.length() == 0 || spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) != 'x') {
            spannableStringBuilder.append((CharSequence) " x");
        }
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.wallet_gram_small, 2);
        coloredImageSpan.recolorDrawable = false;
        coloredImageSpan.setSize(AndroidUtilities.dp(16.0f));
        spannableStringBuilder.setSpan(coloredImageSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }

    private static String shortAddress(String str) {
        if (TextUtils.isEmpty(str)) {
            return LocaleController.getString(C2807R.string.WalletUnknownAddress);
        }
        if (str.length() <= 10) {
            return str;
        }
        return str.substring(0, 4) + "…" + str.substring(str.length() - 4);
    }

    private static CharSequence formatCardDebit(long j) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        SpannableString spannableString = new SpannableString("GRAM");
        spannableString.setSpan(new ColoredImageSpan(C2807R.drawable.wallet_gram_large), 0, spannableString.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString).append((CharSequence) " ");
        spannableStringBuilder.append((CharSequence) GramWallet.formatGrams(-j, true)).append((CharSequence) " ");
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) LocaleController.getString(C2807R.string.GramCurrency));
        spannableStringBuilder.setSpan(new ForegroundColorSpan(-9577217), length, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }
}
