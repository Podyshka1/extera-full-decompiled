package org.telegram.ui.Wallet;

import android.util.Base64;
import androidx.annotation.Keep;
import androidx.credentials.CredentialManager$$ExternalSyntheticLambda0;
import com.android.dx.io.Opcodes;
import com.google.android.gms.cast.MediaTrack;
import j$.net.URLEncoder;
import java.io.ByteArrayOutputStream;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_toncenter;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.Wallet.GramWallet;
import org.telegram.ui.Wallet.GramWalletTonConnect;
import org.telegram.ui.Wallet.WalletEngine2;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes8.dex */
@Keep
public class WalletEngine2 implements AutoCloseable {
    private static final long NFT_ATTACHED_NANOGRAMS = 100000000;
    private static final long NFT_FORWARD_NANOGRAMS = 10000000;
    private static String[] mnemonicWordlist;
    public final String address;
    private volatile boolean closed;
    public final int currentAccount;
    private String nftPreviewAddress;
    private String nftPreviewComment;
    private String nftPreviewOperationId;
    private String nftPreviewRecipient;
    private PendingSend pendingSend;
    private long ptr;
    public final byte[] publicKey;
    private ScheduledFuture<?> resolutionTask;
    private final HttpTransport transport;
    private final ScheduledExecutorService worker = Executors.newSingleThreadScheduledExecutor(new ThreadFactory() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda25
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return WalletEngine2.$r8$lambda$GPo4JApAm5jTIKVCdycMNiz9aUg(runnable);
        }
    });
    private long nextAuxiliaryRequestId = -1;

    public static class PendingSend {
    }

    public static native boolean isValidCellBoc(String str);

    private static native String[] mnemonicWordlist();

    private static native long nativeBalance(long j);

    private static native void nativeClose(long j);

    private static native long nativeCreate(int i, String str, byte[] bArr, HttpTransport httpTransport, String str2);

    private static native ImportedWalletProof nativeCreateImportProof(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, boolean z);

    private static native byte[] nativeDecryptComment(long j, byte[] bArr, String str, String str2);

    private static native byte[] nativeDecryptRawComment(byte[] bArr, String str, String str2);

    private static native TL_wallet.walletTransaction nativeEmulateRotateKey(long j, String str);

    private static native TL_wallet.walletTransaction nativeEmulateSend(long j, String str, long j2, byte[] bArr, boolean z);

    private static native TL_wallet.walletTransaction nativeEmulateSendNFT(long j, String str, String str2, byte[] bArr, String str3, long j2, long j3);

    private static native boolean nativeIsValidAddress(String str);

    /* JADX INFO: Access modifiers changed from: private */
    public static native String nativeMessageBodyHash(String str);

    private static native PreparedRotation nativePrepareRotateKey(long j, byte[] bArr, String str);

    private static native PreparedSend nativePrepareSend(long j, byte[] bArr, String str, long j2, byte[] bArr2, byte[] bArr3, String str2, String str3);

    private static native PreparedSend nativePrepareSendNFT(long j, byte[] bArr, String str, String str2, byte[] bArr2, String str3, long j2, long j3);

    private static native PreparedSend nativePrepareTonConnectTransfer(long j, byte[] bArr, String[] strArr, long j2, String str);

    private static native void nativePreviewSignMessage(long j, String[] strArr, long j2);

    private static native TL_wallet.walletTransaction nativePreviewTonConnect(long j, String[] strArr, long j2);

    private static native SendResolution nativeResolvePending(long j);

    private static native void nativeRotateKey(long j, byte[] bArr, String str, RotationCallbacks rotationCallbacks);

    private static native String nativeSecretPhraseToAddress(byte[] bArr);

    private static native byte[] nativeSecretPhraseToPublicKey(byte[] bArr);

    private static native TL_wallet.walletTransaction nativeSend(long j, byte[] bArr, String str, long j2, byte[] bArr2, byte[] bArr3, String str2, SendCallbacks sendCallbacks);

    private static native String nativeSignMessage(long j, byte[] bArr, String[] strArr, long j2, String str);

    private static native byte[] nativeTonConnectCrypto(byte[] bArr, byte[] bArr2);

    private static native String nativeTransactionAddress(String str);

    private long resolvePendingSend() {
        return 4000L;
    }

    public static /* synthetic */ Thread $r8$lambda$GPo4JApAm5jTIKVCdycMNiz9aUg(Runnable runnable) {
        return new Thread(runnable, "WalletEngine2");
    }

    public static String[] getMnemonicWordlist() {
        if (mnemonicWordlist == null) {
            mnemonicWordlist = mnemonicWordlist();
        }
        return mnemonicWordlist;
    }

    public static boolean isTgWalletSecretPhrase(GramWallet.SecretPhrase secretPhrase) {
        try {
            secretPhraseToPublicKey(secretPhrase);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public static byte[] secretPhraseToPublicKey(GramWallet.SecretPhrase secretPhrase) {
        if (secretPhrase == null || secretPhrase.isEmpty()) {
            f$$ExternalSyntheticBUOutline1.m215m("Recovery phrase is required");
            return null;
        }
        byte[] bArrCopyBytes = secretPhrase.copyBytes();
        try {
            return nativeSecretPhraseToPublicKey(bArrCopyBytes);
        } finally {
            Arrays.fill(bArrCopyBytes, (byte) 0);
        }
    }

    public static byte[] secretPhraseToAnchorPublicKey(GramWallet.SecretPhrase secretPhrase) {
        if (secretPhrase == null || secretPhrase.isEmpty()) {
            f$$ExternalSyntheticBUOutline1.m215m("Recovery phrase is required");
            return null;
        }
        int iWordCount = secretPhrase.wordCount();
        if (iWordCount != 12 && iWordCount != 24) {
            f$$ExternalSyntheticBUOutline1.m215m("Recovery phrase must contain 12 or 24 words");
            return null;
        }
        GramWallet.SecretPhrase secretPhraseFirstWords = secretPhrase.firstWords(12);
        try {
            byte[] bArrSecretPhraseToPublicKey = secretPhraseToPublicKey(secretPhraseFirstWords);
            if (secretPhraseFirstWords != null) {
                secretPhraseFirstWords.close();
            }
            return bArrSecretPhraseToPublicKey;
        } catch (Throwable th) {
            if (secretPhraseFirstWords != null) {
                try {
                    secretPhraseFirstWords.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static String secretPhraseToAddress(GramWallet.SecretPhrase secretPhrase) {
        if (secretPhrase == null || secretPhrase.isEmpty()) {
            f$$ExternalSyntheticBUOutline1.m215m("Recovery phrase is required");
            return null;
        }
        byte[] bArrCopyBytes = secretPhrase.copyBytes();
        try {
            return nativeSecretPhraseToAddress(bArrCopyBytes);
        } finally {
            Arrays.fill(bArrCopyBytes, (byte) 0);
        }
    }

    public static JSONObject tonConnectCrypto(GramWallet.SecretPhrase secretPhrase, TL_wallet.tonConnectSession tonconnectsession, String str, byte[] bArr, JSONObject jSONObject) {
        String str2;
        byte[] bArrNativeTonConnectCrypto = null;
        if (tonconnectsession == null || tonconnectsession.nonce == null || (str2 = tonconnectsession.dapp_client_id) == null || secretPhrase == null || str == null || bArr == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Missing TON Connect crypto parameters");
            return null;
        }
        jSONObject.put("dappClientId", str2);
        jSONObject.put("sessionNonce", Base64.encodeToString(tonconnectsession.nonce, 2));
        jSONObject.put("clientId", tonconnectsession.client_id);
        jSONObject.put("walletPublicKey", Base64.encodeToString(bArr, 2));
        jSONObject.put("walletAddress", str);
        byte[] bArrCopyBytes = secretPhrase.copyBytes();
        try {
            String string = jSONObject.toString();
            Charset charset = StandardCharsets.UTF_8;
            bArrNativeTonConnectCrypto = nativeTonConnectCrypto(bArrCopyBytes, string.getBytes(charset));
            return new JSONObject(new String(bArrNativeTonConnectCrypto, charset));
        } finally {
            Arrays.fill(bArrCopyBytes, (byte) 0);
            if (bArrNativeTonConnectCrypto != null) {
                Arrays.fill(bArrNativeTonConnectCrypto, (byte) 0);
            }
        }
    }

    public static boolean sameTonConnectAddress(String str, String str2) {
        return isValidAddress(str) && isValidAddress(str2) && nativeTransactionAddress(str).equals(nativeTransactionAddress(str2));
    }

    public void previewTonConnect(final GramWalletTonConnect.Transaction transaction, final Utilities.Callback2<TL_wallet.walletTransaction, String> callback2) {
        try {
            this.worker.execute(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$previewTonConnect$2(transaction, callback2);
                }
            });
        } catch (RejectedExecutionException e) {
            final String strException = GramWalletTonConnect.exception("schedule transaction preview", e);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    callback2.run(null, strException);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$previewTonConnect$2(GramWalletTonConnect.Transaction transaction, final Utilities.Callback2 callback2) {
        final String strException;
        final TL_wallet.walletTransaction wallettransactionNativePreviewTonConnect = null;
        try {
        } catch (RuntimeException e) {
            strException = GramWalletTonConnect.exception("wallet-engine transaction", e);
        }
        if (this.closed) {
            throw new IllegalStateException("Wallet engine is closed");
        }
        wallettransactionNativePreviewTonConnect = nativePreviewTonConnect(this.ptr, transaction.fields(), transaction.validUntil);
        strException = null;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$previewTonConnect$1(callback2, wallettransactionNativePreviewTonConnect, strException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$previewTonConnect$1(Utilities.Callback2 callback2, TL_wallet.walletTransaction wallettransaction, String str) {
        if (this.closed) {
            wallettransaction = null;
        }
        if (this.closed) {
            str = "Wallet engine is closed";
        }
        callback2.run(wallettransaction, str);
    }

    public void prepareTonConnectTransfer(GramWallet.SecretPhrase secretPhrase, final GramWalletTonConnect.Transaction transaction, final String str, Utilities.Callback2<TL_wallet.sendTransfer, String> callback2) {
        final Utilities.Callback2<TL_wallet.sendTransfer, String> callback22;
        final byte[] bArrCopyBytes = secretPhrase.copyBytes();
        try {
            callback22 = callback2;
        } catch (RejectedExecutionException e) {
            e = e;
            callback22 = callback2;
        }
        try {
            this.worker.execute(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.lambda$prepareTonConnectTransfer$5(bArrCopyBytes, transaction, str, callback22);
                }
            });
        } catch (RejectedExecutionException e2) {
            e = e2;
            RejectedExecutionException rejectedExecutionException = e;
            Arrays.fill(bArrCopyBytes, (byte) 0);
            final String strException = GramWalletTonConnect.exception("schedule transaction signing", rejectedExecutionException);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    callback22.run(null, strException);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareTonConnectTransfer$5(byte[] bArr, GramWalletTonConnect.Transaction transaction, String str, final Utilities.Callback2 callback2) throws Throwable {
        final String strException;
        final TL_wallet.sendTransfer sendtransfer = null;
        try {
            try {
                try {
                } catch (RuntimeException e) {
                    e = e;
                    strException = GramWalletTonConnect.exception("wallet-engine transaction", e);
                    Arrays.fill(bArr, (byte) 0);
                }
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                Arrays.fill(bArr, (byte) 0);
                throw th2;
            }
        } catch (RuntimeException e2) {
            e = e2;
        } catch (Throwable th3) {
            th = th3;
            Throwable th22 = th;
            Arrays.fill(bArr, (byte) 0);
            throw th22;
        }
        if (this.closed) {
            throw new IllegalStateException("Wallet engine is closed");
        }
        resolveBeforeNewSend();
        if (isPendingPhase(nativeResolvePending(this.ptr).phase)) {
            throw new IllegalStateException("Previous wallet send is still unresolved");
        }
        TL_wallet.sendTransfer sendtransfer2 = nativePrepareTonConnectTransfer(this.ptr, bArr, transaction.fields(), transaction.validUntil, str).transfer;
        Arrays.fill(bArr, (byte) 0);
        sendtransfer = sendtransfer2;
        strException = null;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$prepareTonConnectTransfer$4(callback2, sendtransfer, strException);
            }
        });
        strException = GramWalletTonConnect.exception("wallet-engine transaction", e);
        Arrays.fill(bArr, (byte) 0);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$prepareTonConnectTransfer$4(callback2, sendtransfer, strException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareTonConnectTransfer$4(Utilities.Callback2 callback2, TL_wallet.sendTransfer sendtransfer, String str) {
        if (this.closed) {
            sendtransfer = null;
        }
        if (this.closed) {
            str = "Wallet engine is closed";
        }
        callback2.run(sendtransfer, str);
    }

    public void previewSignMessage(final GramWalletTonConnect.Transaction transaction, final Utilities.Callback<String> callback) {
        try {
            this.worker.execute(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$previewSignMessage$8(transaction, callback);
                }
            });
        } catch (RejectedExecutionException unused) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run("Wallet engine is closed");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$previewSignMessage$8(GramWalletTonConnect.Transaction transaction, final Utilities.Callback callback) {
        final String strException;
        try {
        } catch (RuntimeException e) {
            strException = GramWalletTonConnect.exception("preview signing", e);
        }
        if (this.closed) {
            throw new IllegalStateException("Wallet engine is closed");
        }
        nativePreviewSignMessage(this.ptr, transaction.fields(), transaction.validUntil);
        strException = null;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$previewSignMessage$7(callback, strException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$previewSignMessage$7(Utilities.Callback callback, String str) {
        if (this.closed) {
            str = "Wallet engine is closed";
        }
        callback.run(str);
    }

    public void signMessage(GramWallet.SecretPhrase secretPhrase, final GramWalletTonConnect.Transaction transaction, final String str, Utilities.Callback2<String, String> callback2) {
        final Utilities.Callback2<String, String> callback22;
        final byte[] bArrCopyBytes = secretPhrase.copyBytes();
        try {
            callback22 = callback2;
            try {
                this.worker.execute(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() throws Throwable {
                        this.f$0.lambda$signMessage$11(bArrCopyBytes, transaction, str, callback22);
                    }
                });
            } catch (RejectedExecutionException unused) {
                Arrays.fill(bArrCopyBytes, (byte) 0);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback22.run(null, "Wallet engine is closed");
                    }
                });
            }
        } catch (RejectedExecutionException unused2) {
            callback22 = callback2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$signMessage$11(byte[] bArr, GramWalletTonConnect.Transaction transaction, String str, final Utilities.Callback2 callback2) throws Throwable {
        final String strException;
        final String str2 = null;
        try {
            try {
                try {
                } catch (RuntimeException e) {
                    e = e;
                    strException = GramWalletTonConnect.exception("sign message", e);
                    Arrays.fill(bArr, (byte) 0);
                }
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                Arrays.fill(bArr, (byte) 0);
                throw th2;
            }
        } catch (RuntimeException e2) {
            e = e2;
        } catch (Throwable th3) {
            th = th3;
            Throwable th22 = th;
            Arrays.fill(bArr, (byte) 0);
            throw th22;
        }
        if (this.closed) {
            throw new IllegalStateException("Wallet engine is closed");
        }
        String strNativeSignMessage = nativeSignMessage(this.ptr, bArr, transaction.fields(), transaction.validUntil, str);
        Arrays.fill(bArr, (byte) 0);
        str2 = strNativeSignMessage;
        strException = null;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$signMessage$10(callback2, str2, strException);
            }
        });
        strException = GramWalletTonConnect.exception("sign message", e);
        Arrays.fill(bArr, (byte) 0);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda32
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$signMessage$10(callback2, str2, strException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$signMessage$10(Utilities.Callback2 callback2, String str, String str2) {
        if (this.closed) {
            str = null;
        }
        if (this.closed) {
            str2 = "Wallet engine is closed";
        }
        callback2.run(str, str2);
    }

    public static JSONObject signData(GramWallet.SecretPhrase secretPhrase, TL_wallet.tonConnectSession tonconnectsession, String str, byte[] bArr, JSONObject jSONObject, String str2, int i) {
        JSONObject jSONObject2 = tonConnectCrypto(secretPhrase, tonconnectsession, str, bArr, new JSONObject().put("signData", jSONObject).put("signDomain", str2).put("timestamp", i));
        return new JSONObject().put("signature", jSONObject2.getString("signature")).put("address", jSONObject2.getString("address")).put("timestamp", i).put("domain", str2).put("payload", jSONObject);
    }

    @Keep
    public static final class ImportedWalletProof {
        public final byte[] publicKey;
        public final byte[] signature;
        public final int timestamp;

        @Keep
        private ImportedWalletProof(byte[] bArr, int i, byte[] bArr2) {
            this.publicKey = bArr;
            this.timestamp = i;
            this.signature = bArr2;
        }
    }

    public static ImportedWalletProof createImportProof(GramWallet.SecretPhrase secretPhrase, String str, String str2, int i) {
        return createProof(secretPhrase, str, str2, i, true);
    }

    public static ImportedWalletProof createOwnershipProof(GramWallet.SecretPhrase secretPhrase, String str, String str2, int i) {
        return createProof(secretPhrase, str, str2, i, false);
    }

    private static ImportedWalletProof createProof(GramWallet.SecretPhrase secretPhrase, String str, String str2, int i, boolean z) {
        if (secretPhrase == null || secretPhrase.isEmpty()) {
            f$$ExternalSyntheticBUOutline1.m215m("Recovery phrase is required");
            return null;
        }
        if (str == null || str.isEmpty() || str2 == null || str2.isEmpty() || i <= 0) {
            f$$ExternalSyntheticBUOutline1.m215m("Challenge domain, payload and positive timestamp are required");
            return null;
        }
        byte[] bArrCopyBytes = secretPhrase.copyBytes();
        try {
            Charset charset = StandardCharsets.UTF_8;
            return nativeCreateImportProof(bArrCopyBytes, str.getBytes(charset), str2.getBytes(charset), i, z);
        } finally {
            Arrays.fill(bArrCopyBytes, (byte) 0);
        }
    }

    public static String decryptComment(GramWallet.SecretPhrase secretPhrase, String str, String str2) {
        byte[] bArrNativeDecryptRawComment = null;
        if (secretPhrase == null || secretPhrase.isEmpty()) {
            f$$ExternalSyntheticBUOutline1.m215m("Recovery phrase is required");
            return null;
        }
        if (!isValidAddress(str)) {
            f$$ExternalSyntheticBUOutline1.m215m("Valid sender address is required");
            return null;
        }
        String strEncryptedCommentBody = encryptedCommentBody(decodeEncryptedComment(str2));
        byte[] bArrCopyBytes = secretPhrase.copyBytes();
        try {
            bArrNativeDecryptRawComment = nativeDecryptRawComment(bArrCopyBytes, str, strEncryptedCommentBody);
            return new String(bArrNativeDecryptRawComment, StandardCharsets.UTF_8);
        } finally {
            Arrays.fill(bArrCopyBytes, (byte) 0);
            if (bArrNativeDecryptRawComment != null) {
                Arrays.fill(bArrNativeDecryptRawComment, (byte) 0);
            }
        }
    }

    private static byte[] decodeEncryptedComment(String str) {
        if (str == null || str.isEmpty() || str.length() > 1368 || !str.matches("[A-Za-z0-9+/]+={0,2}")) {
            f$$ExternalSyntheticBUOutline1.m215m("Invalid encrypted comment base64");
            return null;
        }
        byte[] bArrDecode = Base64.decode(str, 2);
        if (bArrDecode.length >= 64 && bArrDecode.length <= 1024 && bArrDecode.length % 16 == 0) {
            return bArrDecode;
        }
        f$$ExternalSyntheticBUOutline1.m215m("Invalid encrypted comment size");
        return null;
    }

    private static String encryptedCommentBody(byte[] bArr) {
        int length = ((bArr.length + 91) / 127) + 1;
        int length2 = bArr.length + 4 + (length * 2) + length;
        int i = length2 - 1;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length2 + 11);
        byteArrayOutputStream.write(new byte[]{-75, -18, -100, 114, 1, 2, (byte) length, 1, 0, (byte) (i >> 8), (byte) i, 0}, 0, 12);
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int iMin = Math.min(i2 == 0 ? 35 : 127, bArr.length - i3);
            int i4 = i2 + 1;
            int i5 = i4 < length ? 1 : 0;
            byteArrayOutputStream.write(i5);
            byteArrayOutputStream.write(((i2 == 0 ? 4 : 0) + iMin) * 2);
            if (i2 == 0) {
                byteArrayOutputStream.write(33);
                byteArrayOutputStream.write(103);
                byteArrayOutputStream.write(Opcodes.MUL_INT_LIT8);
                byteArrayOutputStream.write(75);
            }
            byteArrayOutputStream.write(bArr, i3, iMin);
            if (i5 != 0) {
                byteArrayOutputStream.write(i4);
            }
            i3 += iMin;
            i2 = i4;
        }
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
    }

    public static boolean isValidAddress(String str) {
        return (str == null || str.isEmpty() || !nativeIsValidAddress(str)) ? false : true;
    }

    public static boolean isValidRecipientAddress(String str) {
        if (isValidAddress(str)) {
            return str.indexOf(58) >= 0 || (Base64.decode(str.replace(SignatureVisitor.SUPER, SignatureVisitor.EXTENDS).replace('_', '/'), 2)[0] & ByteCompanionObject.MIN_VALUE) == 0;
        }
        return false;
    }

    public static String toUserFriendlyAddress(String str) {
        return nativeTransactionAddress(str);
    }

    public WalletEngine2(int i, String str, byte[] bArr) {
        this.currentAccount = i;
        this.address = str;
        byte[] bArr2 = (byte[]) bArr.clone();
        this.publicKey = bArr2;
        HttpTransport httpTransport = new HttpTransport(i);
        this.transport = httpTransport;
        this.ptr = nativeCreate(i, str, bArr2, httpTransport, ApplicationLoader.applicationContext.getNoBackupFilesDir().getAbsolutePath() + "/wallet-engine");
    }

    public synchronized void balance(final Utilities.Callback2<Long, String> callback2) {
        this.worker.execute(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda44
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$balance$14(callback2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$balance$14(final Utilities.Callback2 callback2) {
        final String message;
        final Long lValueOf = null;
        try {
            lValueOf = Long.valueOf(nativeBalance(this.ptr));
            message = null;
        } catch (RuntimeException e) {
            message = e.getMessage() == null ? "NULL_ERROR" : e.getMessage();
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                callback2.run(lValueOf, message);
            }
        });
    }

    public Runnable emulateSend(final String str, final long j, String str2, final byte[] bArr, final Utilities.Callback2<TL_wallet.walletTransaction, String> callback2) {
        final byte[] bytes = str2 == null ? null : str2.getBytes(StandardCharsets.UTF_8);
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        final FutureTask futureTask = new FutureTask(new Callable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda45
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.lambda$emulateSend$16(atomicBoolean, bytes, bArr, str, j, callback2);
            }
        });
        try {
            this.worker.execute(futureTask);
        } catch (RejectedExecutionException unused) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda46
                @Override // java.lang.Runnable
                public final void run() {
                    WalletEngine2.m23394$r8$lambda$SLQkVvrvCisyP4x4tm3wV2V8(atomicBoolean, callback2);
                }
            });
        }
        return new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                WalletEngine2.$r8$lambda$Ft0sw41hashDkqwqJUQNF7KCJgQ(atomicBoolean, futureTask);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void lambda$emulateSend$16(final AtomicBoolean atomicBoolean, byte[] bArr, byte[] bArr2, String str, long j, final Utilities.Callback2 callback2) {
        final TL_wallet.walletTransaction wallettransactionNativeEmulateSend;
        final String strErrorMessage;
        if (atomicBoolean.get()) {
            return null;
        }
        if (bArr != null && bArr2 != null) {
            try {
                bArr = encryptedCommentPreview(bArr.length);
            } catch (RuntimeException e) {
                strErrorMessage = errorMessage(e);
                wallettransactionNativeEmulateSend = null;
            }
        }
        wallettransactionNativeEmulateSend = nativeEmulateSend(this.ptr, str, j, bArr, bArr2 != null);
        strErrorMessage = null;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                WalletEngine2.m23397$r8$lambda$ZLWCCHMh9O6qQl9ViWqaoo_vc(atomicBoolean, callback2, wallettransactionNativeEmulateSend, strErrorMessage);
            }
        });
        return null;
    }

    /* JADX INFO: renamed from: $r8$lambda$ZLWCCHMh9O6qQl9-ViWqa-oo_vc, reason: not valid java name */
    public static /* synthetic */ void m23397$r8$lambda$ZLWCCHMh9O6qQl9ViWqaoo_vc(AtomicBoolean atomicBoolean, Utilities.Callback2 callback2, TL_wallet.walletTransaction wallettransaction, String str) {
        if (atomicBoolean.get()) {
            return;
        }
        callback2.run(wallettransaction, str);
    }

    /* JADX INFO: renamed from: $r8$lambda$S-LQkVvrvCisy--P4x4tm3wV2V8, reason: not valid java name */
    public static /* synthetic */ void m23394$r8$lambda$SLQkVvrvCisyP4x4tm3wV2V8(AtomicBoolean atomicBoolean, Utilities.Callback2 callback2) {
        if (atomicBoolean.get()) {
            return;
        }
        callback2.run(null, "NO_WALLET_ENGINE");
    }

    public static /* synthetic */ void $r8$lambda$Ft0sw41hashDkqwqJUQNF7KCJgQ(AtomicBoolean atomicBoolean, FutureTask futureTask) {
        atomicBoolean.set(true);
        futureTask.cancel(false);
    }

    public synchronized Runnable emulateSendNFT(String str, String str2, Utilities.Callback2<TL_wallet.walletTransaction, String> callback2) {
        return emulateSendNFT(str, str2, null, callback2);
    }

    public synchronized Runnable emulateSendNFT(final String str, final String str2, final String str3, final Utilities.Callback2<TL_wallet.walletTransaction, String> callback2) throws Throwable {
        final WalletEngine2 walletEngine2;
        try {
            try {
                final AtomicBoolean atomicBoolean = new AtomicBoolean();
                walletEngine2 = this;
                final FutureTask futureTask = new FutureTask(new Callable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda50
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f$0.lambda$emulateSendNFT$20(atomicBoolean, str, str2, str3, callback2);
                    }
                });
                if (walletEngine2.closed) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda51
                        @Override // java.lang.Runnable
                        public final void run() {
                            WalletEngine2.$r8$lambda$VqzeiwNFEwOcfYkZFSnrMnpFkcU(atomicBoolean, callback2);
                        }
                    });
                } else {
                    try {
                        walletEngine2.worker.execute(futureTask);
                    } catch (RejectedExecutionException unused) {
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda52
                            @Override // java.lang.Runnable
                            public final void run() {
                                WalletEngine2.m23399$r8$lambda$pxrll1W30cvdJ0EE9G28khKNNQ(atomicBoolean, callback2);
                            }
                        });
                    }
                }
                Runnable runnable = new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda53
                    @Override // java.lang.Runnable
                    public final void run() {
                        WalletEngine2.$r8$lambda$DLMU2EYWZjO9pdNa8XXz4UDhVdc(atomicBoolean, futureTask);
                    }
                };
                return runnable;
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
            walletEngine2 = this;
            Throwable th22 = th;
            throw th22;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void lambda$emulateSendNFT$20(final AtomicBoolean atomicBoolean, String str, String str2, String str3, final Utilities.Callback2 callback2) {
        TL_wallet.walletTransaction wallettransactionNativeEmulateSendNFT;
        final String strErrorMessage;
        if (atomicBoolean.get()) {
            return null;
        }
        try {
        } catch (RuntimeException e) {
            e = e;
            wallettransactionNativeEmulateSendNFT = null;
        }
        if (this.closed) {
            throw new IllegalStateException("NO_WALLET_ENGINE");
        }
        String string = UUID.randomUUID().toString();
        wallettransactionNativeEmulateSendNFT = nativeEmulateSendNFT(this.ptr, str, str2, str3 == null ? null : str3.getBytes(StandardCharsets.UTF_8), string, NFT_ATTACHED_NANOGRAMS, NFT_FORWARD_NANOGRAMS);
        try {
            this.nftPreviewRecipient = str;
            this.nftPreviewAddress = str2;
            this.nftPreviewComment = str3;
            this.nftPreviewOperationId = string;
            strErrorMessage = null;
        } catch (RuntimeException e2) {
            e = e2;
            strErrorMessage = errorMessage(e);
        }
        final TL_wallet.walletTransaction wallettransaction = wallettransactionNativeEmulateSendNFT;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$emulateSendNFT$19(atomicBoolean, callback2, wallettransaction, strErrorMessage);
            }
        });
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$emulateSendNFT$19(AtomicBoolean atomicBoolean, Utilities.Callback2 callback2, TL_wallet.walletTransaction wallettransaction, String str) {
        if (atomicBoolean.get()) {
            return;
        }
        if (this.closed) {
            wallettransaction = null;
        }
        if (this.closed) {
            str = "NO_WALLET_ENGINE";
        }
        callback2.run(wallettransaction, str);
    }

    public static /* synthetic */ void $r8$lambda$VqzeiwNFEwOcfYkZFSnrMnpFkcU(AtomicBoolean atomicBoolean, Utilities.Callback2 callback2) {
        if (atomicBoolean.get()) {
            return;
        }
        callback2.run(null, "NO_WALLET_ENGINE");
    }

    /* JADX INFO: renamed from: $r8$lambda$pxrll1W30cvdJ0EE9-G28khKNNQ, reason: not valid java name */
    public static /* synthetic */ void m23399$r8$lambda$pxrll1W30cvdJ0EE9G28khKNNQ(AtomicBoolean atomicBoolean, Utilities.Callback2 callback2) {
        if (atomicBoolean.get()) {
            return;
        }
        callback2.run(null, "NO_WALLET_ENGINE");
    }

    public static /* synthetic */ void $r8$lambda$DLMU2EYWZjO9pdNa8XXz4UDhVdc(AtomicBoolean atomicBoolean, FutureTask futureTask) {
        atomicBoolean.set(true);
        futureTask.cancel(false);
    }

    public synchronized void prepareSendNFT(GramWallet.SecretPhrase secretPhrase, String str, String str2, Utilities.Callback2<TL_wallet.sendTransfer, String> callback2) {
        prepareSendNFT(secretPhrase, str, str2, null, callback2);
    }

    public synchronized void prepareSendNFT(GramWallet.SecretPhrase secretPhrase, final String str, final String str2, final String str3, final Utilities.Callback2<TL_wallet.sendTransfer, String> callback2) {
        final WalletEngine2 walletEngine2;
        final Utilities.Callback2<TL_wallet.sendTransfer, String> callback22;
        try {
            try {
                if (this.closed || secretPhrase == null || secretPhrase.isEmpty()) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$prepareSendNFT$24(callback2);
                        }
                    });
                    return;
                }
                final byte[] bArrCopyBytes = secretPhrase.copyBytes();
                try {
                    walletEngine2 = this;
                    callback22 = callback2;
                    try {
                        this.worker.execute(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda6
                            @Override // java.lang.Runnable
                            public final void run() throws Throwable {
                                this.f$0.lambda$prepareSendNFT$26(str, str2, str3, bArrCopyBytes, callback22);
                            }
                        });
                    } catch (RejectedExecutionException unused) {
                        Arrays.fill(bArrCopyBytes, (byte) 0);
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda7
                            @Override // java.lang.Runnable
                            public final void run() {
                                callback22.run(null, "NO_WALLET_ENGINE");
                            }
                        });
                    }
                } catch (RejectedExecutionException unused2) {
                    walletEngine2 = this;
                    callback22 = callback2;
                }
                return;
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareSendNFT$24(Utilities.Callback2 callback2) {
        callback2.run(null, this.closed ? "NO_WALLET_ENGINE" : "Recovery phrase is required");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0058 A[Catch: all -> 0x0088, RuntimeException -> 0x008c, TRY_LEAVE, TryCatch #6 {RuntimeException -> 0x008c, all -> 0x0088, blocks: (B:3:0x0004, B:5:0x0008, B:7:0x0019, B:23:0x0052, B:26:0x0058, B:22:0x0049), top: B:57:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006f A[Catch: all -> 0x0077, RuntimeException -> 0x007e, TRY_LEAVE, TryCatch #1 {all -> 0x0077, blocks: (B:29:0x0069, B:31:0x006f, B:32:0x0071, B:51:0x00a4, B:41:0x0080, B:42:0x0087, B:47:0x0090, B:48:0x0099, B:49:0x009a, B:50:0x00a3), top: B:57:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0080 A[Catch: all -> 0x0077, RuntimeException -> 0x007e, TRY_ENTER, TryCatch #1 {all -> 0x0077, blocks: (B:29:0x0069, B:31:0x006f, B:32:0x0071, B:51:0x00a4, B:41:0x0080, B:42:0x0087, B:47:0x0090, B:48:0x0099, B:49:0x009a, B:50:0x00a3), top: B:57:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$prepareSendNFT$26(String str, String str2, String str3, byte[] bArr, final Utilities.Callback2 callback2) throws Throwable {
        byte[] bArr2;
        byte[] bArr3;
        Throwable th;
        RuntimeException runtimeException;
        final TL_wallet.sendTransfer sendtransfer;
        String str4;
        String string;
        PreparedSend preparedSendNativePrepareSendNFT;
        TL_wallet.sendTransfer sendtransfer2 = null;
        final String str5 = null;
        sendtransfer2 = null;
        sendtransfer2 = null;
        try {
            try {
                try {
                } catch (RuntimeException e) {
                    e = e;
                }
            } catch (Throwable th2) {
                th = th2;
                th = th;
                Arrays.fill(bArr2, (byte) 0);
                throw th;
            }
        } catch (RuntimeException e2) {
            e = e2;
            bArr3 = bArr;
        } catch (Throwable th3) {
            th = th3;
            bArr2 = bArr;
            th = th;
            Arrays.fill(bArr2, (byte) 0);
            throw th;
        }
        if (this.closed) {
            throw new IllegalStateException("NO_WALLET_ENGINE");
        }
        resolveBeforeNewSend();
        if (isPendingPhase(nativeResolvePending(this.ptr).phase)) {
            throw new IllegalStateException("Previous wallet send is still unresolved");
        }
        if (this.nftPreviewOperationId != null) {
            try {
                if (Objects.equals(str, this.nftPreviewRecipient)) {
                    str4 = str2;
                    if (Objects.equals(str4, this.nftPreviewAddress) && Objects.equals(str3, this.nftPreviewComment)) {
                        string = this.nftPreviewOperationId;
                    }
                    bArr3 = bArr;
                    preparedSendNativePrepareSendNFT = nativePrepareSendNFT(this.ptr, bArr3, str, str4, str3 != null ? null : str3.getBytes(StandardCharsets.UTF_8), string, NFT_ATTACHED_NANOGRAMS, NFT_FORWARD_NANOGRAMS);
                    if (preparedSendNativePrepareSendNFT != null) {
                        throw new IllegalStateException("Could not prepare NFT transfer");
                    }
                    sendtransfer = preparedSendNativePrepareSendNFT.transfer;
                    try {
                        this.nftPreviewOperationId = null;
                        Arrays.fill(bArr3, (byte) 0);
                    } catch (RuntimeException e3) {
                        e = e3;
                        sendtransfer2 = sendtransfer;
                        runtimeException = e;
                        String strErrorMessage = errorMessage(runtimeException);
                        Arrays.fill(bArr3, (byte) 0);
                        TL_wallet.sendTransfer sendtransfer3 = sendtransfer2;
                        str5 = strErrorMessage;
                        sendtransfer = sendtransfer3;
                    }
                } else {
                    str4 = str2;
                }
                string = UUID.randomUUID().toString();
                bArr3 = bArr;
                preparedSendNativePrepareSendNFT = nativePrepareSendNFT(this.ptr, bArr3, str, str4, str3 != null ? null : str3.getBytes(StandardCharsets.UTF_8), string, NFT_ATTACHED_NANOGRAMS, NFT_FORWARD_NANOGRAMS);
                if (preparedSendNativePrepareSendNFT != null) {
                }
            } catch (RuntimeException e4) {
                runtimeException = e4;
                bArr3 = bArr;
                String strErrorMessage2 = errorMessage(runtimeException);
                Arrays.fill(bArr3, (byte) 0);
                TL_wallet.sendTransfer sendtransfer32 = sendtransfer2;
                str5 = strErrorMessage2;
                sendtransfer = sendtransfer32;
            } catch (Throwable th4) {
                th = th4;
                bArr2 = bArr;
                Arrays.fill(bArr2, (byte) 0);
                throw th;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$prepareSendNFT$25(callback2, sendtransfer, str5);
            }
        });
        runtimeException = e;
        String strErrorMessage22 = errorMessage(runtimeException);
        Arrays.fill(bArr3, (byte) 0);
        TL_wallet.sendTransfer sendtransfer322 = sendtransfer2;
        str5 = strErrorMessage22;
        sendtransfer = sendtransfer322;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$prepareSendNFT$25(callback2, sendtransfer, str5);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareSendNFT$25(Utilities.Callback2 callback2, TL_wallet.sendTransfer sendtransfer, String str) {
        if (this.closed) {
            sendtransfer = null;
        }
        if (this.closed) {
            str = "NO_WALLET_ENGINE";
        }
        callback2.run(sendtransfer, str);
    }

    private static byte[] encryptedCommentPreview(int i) {
        if (i > 960) {
            f$$ExternalSyntheticBUOutline1.m215m("The encrypted comment exceeds 960 UTF-8 bytes");
            return null;
        }
        int i2 = i + 64 + ((16 - (i % 16)) % 16);
        int i3 = ((i2 + 91) / 127) + 1;
        int i4 = i2 + 4 + (i3 * 2) + i3;
        int i5 = i4 - 1;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i4 + 11);
        byteBufferAllocate.putInt(-1242653582);
        byteBufferAllocate.put((byte) 1);
        byteBufferAllocate.put((byte) 2);
        byteBufferAllocate.put((byte) i3).put((byte) 1).put((byte) 0);
        byteBufferAllocate.putShort((short) i5).put((byte) 0);
        int i6 = 0;
        while (i6 < i3) {
            int iMin = Math.min(i2, i6 == 0 ? 35 : 127);
            int i7 = i6 + 1;
            int i8 = i7 < i3 ? 1 : 0;
            byteBufferAllocate.put((byte) i8);
            byteBufferAllocate.put((byte) (((i6 == 0 ? 4 : 0) + iMin) * 2));
            if (i6 == 0) {
                byteBufferAllocate.putInt(560454219);
            }
            byteBufferAllocate.position(byteBufferAllocate.position() + iMin);
            if (i8 != 0) {
                byteBufferAllocate.put((byte) i7);
            }
            i2 -= iMin;
            i6 = i7;
        }
        return Base64.encode(byteBufferAllocate.array(), 2);
    }

    public void emulateRotateKey(final Utilities.Callback2<TL_wallet.walletTransaction, String> callback2) {
        if (callback2 == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Result callback is required");
        } else {
            if (this.closed) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda20
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback2.run(null, "NO_WALLET_ENGINE");
                    }
                });
                return;
            }
            try {
                this.worker.execute(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda21
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$emulateRotateKey$30(callback2);
                    }
                });
            } catch (RejectedExecutionException unused) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda22
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback2.run(null, "NO_WALLET_ENGINE");
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$emulateRotateKey$30(final Utilities.Callback2 callback2) {
        final String strErrorMessage;
        final TL_wallet.walletTransaction wallettransactionNativeEmulateRotateKey = null;
        try {
        } catch (RuntimeException e) {
            strErrorMessage = errorMessage(e);
        }
        if (this.closed) {
            throw new IllegalStateException("NO_WALLET_ENGINE");
        }
        strErrorMessage = null;
        wallettransactionNativeEmulateRotateKey = nativeEmulateRotateKey(this.ptr, this.address);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda48
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$emulateRotateKey$29(callback2, wallettransactionNativeEmulateRotateKey, strErrorMessage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$emulateRotateKey$29(Utilities.Callback2 callback2, TL_wallet.walletTransaction wallettransaction, String str) {
        if (this.closed) {
            wallettransaction = null;
        }
        if (this.closed) {
            str = "NO_WALLET_ENGINE";
        }
        callback2.run(wallettransaction, str);
    }

    public void prepareRotateKey(GramWallet.SecretPhrase secretPhrase, final String str, final Utilities.Callback4<TL_wallet.sendTransfer, GramWallet.SecretPhrase, byte[], String> callback4) {
        if (callback4 == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Result callback is required");
            return;
        }
        if (this.closed) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    callback4.run(null, null, null, "NO_WALLET_ENGINE");
                }
            });
            return;
        }
        if (secretPhrase == null || secretPhrase.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    callback4.run(null, null, null, "Recovery phrase is required");
                }
            });
            return;
        }
        final byte[] bArrCopyBytes = secretPhrase.copyBytes();
        try {
            this.worker.execute(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda35
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$prepareRotateKey$35(bArrCopyBytes, str, callback4);
                }
            });
        } catch (RejectedExecutionException unused) {
            Arrays.fill(bArrCopyBytes, (byte) 0);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda36
                @Override // java.lang.Runnable
                public final void run() {
                    callback4.run(null, null, null, "NO_WALLET_ENGINE");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareRotateKey$35(byte[] bArr, String str, final Utilities.Callback4 callback4) {
        RuntimeException e;
        final PreparedRotation preparedRotationNativePrepareRotateKey;
        final String strErrorMessage = null;
        try {
            try {
                resolveBeforeNewSend();
            } finally {
                Arrays.fill(bArr, (byte) 0);
            }
        } catch (RuntimeException e2) {
            e = e2;
            preparedRotationNativePrepareRotateKey = null;
        }
        if (isPendingPhase(nativeResolvePending(this.ptr).phase)) {
            throw new IllegalStateException("Previous wallet send is still unresolved");
        }
        preparedRotationNativePrepareRotateKey = nativePrepareRotateKey(this.ptr, bArr, str);
        if (preparedRotationNativePrepareRotateKey == null) {
            try {
                throw new IllegalStateException("Could not prepare key rotation");
            } catch (RuntimeException e3) {
                e = e3;
                strErrorMessage = errorMessage(e);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda42
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$prepareRotateKey$34(callback4, preparedRotationNativePrepareRotateKey, strErrorMessage);
                    }
                });
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$prepareRotateKey$34(callback4, preparedRotationNativePrepareRotateKey, strErrorMessage);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareRotateKey$34(Utilities.Callback4 callback4, PreparedRotation preparedRotation, String str) {
        try {
            if (this.closed) {
                callback4.run(null, null, null, "NO_WALLET_ENGINE");
            } else if (preparedRotation == null) {
                callback4.run(null, null, null, str);
            } else {
                callback4.run(preparedRotation.transfer, preparedRotation.newSecretPhrase, preparedRotation.newPublicKey, null);
            }
            if (preparedRotation != null) {
                preparedRotation.newSecretPhrase.close();
            }
        } catch (Throwable th) {
            if (preparedRotation != null) {
                preparedRotation.newSecretPhrase.close();
            }
            throw th;
        }
    }

    public void getTransactionByHash(final String str, final Utilities.Callback<TL_wallet.walletTransaction> callback) {
        if (callback == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Result callback is required");
            return;
        }
        if (str == null || str.isEmpty() || this.closed) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda38
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(null);
                }
            });
            return;
        }
        try {
            this.worker.execute(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$getTransactionByHash$39(str, callback);
                }
            });
        } catch (RejectedExecutionException unused) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda40
                @Override // java.lang.Runnable
                public final void run() {
                    callback.run(null);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getTransactionByHash$39(String str, final Utilities.Callback callback) {
        final TL_wallet.walletTransaction transactionResponse;
        try {
            String str2 = "https://toncenter.com/api/v3/transactions?hash=" + URLEncoder.encode(str, "UTF-8") + "&limit=1";
            HttpTransport httpTransport = this.transport;
            long j = this.nextAuxiliaryRequestId;
            this.nextAuxiliaryRequestId = j - 1;
            transactionResponse = parseTransactionResponse(httpTransport.execute(j, str2, false, new byte[0], 15000L));
        } catch (Exception e) {
            FileLog.m1040e(e);
            transactionResponse = null;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                callback.run(transactionResponse);
            }
        });
    }

    private static TL_wallet.walletTransaction parseTransactionResponse(byte[] bArr) throws JSONException {
        JSONArray jSONArray = new JSONObject(new String(bArr, StandardCharsets.UTF_8)).getJSONArray("transactions");
        boolean z = true;
        if (jSONArray.length() != 1) {
            return null;
        }
        JSONObject jSONObject = jSONArray.getJSONObject(0);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("in_msg");
        JSONArray jSONArray2 = jSONObject.getJSONArray("out_msgs");
        String str = "source";
        boolean z2 = (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject.isNull("source") || jSONObjectOptJSONObject.getString("source").isEmpty()) ? false : true;
        int length = jSONArray2.length();
        if (!z2 ? length == 1 : length == 0) {
            return null;
        }
        if (!z2) {
            jSONObjectOptJSONObject = jSONArray2.getJSONObject(0);
        }
        if (!z2) {
            str = "destination";
        }
        if (jSONObjectOptJSONObject.isNull(str)) {
            return null;
        }
        long j = Long.parseLong(jSONObjectOptJSONObject.getString("value"));
        long j2 = Long.parseLong(jSONObject.getString("total_fees"));
        if (j < 0 || j2 < 0) {
            return null;
        }
        TL_wallet.walletTransaction wallettransactionCreateTransaction = createTransaction(jSONObjectOptJSONObject.getString(str), j);
        wallettransactionCreateTransaction.incoming = z2;
        wallettransactionCreateTransaction.tx_hash = jSONObject.getString("hash");
        StringBuilder sb = new StringBuilder("chain:");
        sb.append(wallettransactionCreateTransaction.tx_hash);
        sb.append(z2 ? ":in:0" : ":out:0");
        wallettransactionCreateTransaction.id = sb.toString();
        wallettransactionCreateTransaction.date = Math.toIntExact(jSONObject.getLong("now"));
        wallettransactionCreateTransaction.fee = j2;
        if (!jSONObject.getJSONObject(MediaTrack.ROLE_DESCRIPTION).getBoolean("aborted") && !jSONObjectOptJSONObject.optBoolean("bounced", false)) {
            z = false;
        }
        wallettransactionCreateTransaction.failed = z;
        wallettransactionCreateTransaction.phase = z ? SendPhase.FAILED : SendPhase.CONFIRMED;
        wallettransactionCreateTransaction.comment_encrypted = isEncryptedComment(jSONObjectOptJSONObject);
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("message_content");
        JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optJSONObject("decoded") : null;
        if (wallettransactionCreateTransaction.comment_encrypted) {
            wallettransactionCreateTransaction.comment = encryptedCommentPayload(jSONObjectOptJSONObject2.getString("body"));
            return wallettransactionCreateTransaction;
        }
        if (jSONObjectOptJSONObject3 != null && "text_comment".equals(jSONObjectOptJSONObject3.optString("type"))) {
            wallettransactionCreateTransaction.comment = jSONObjectOptJSONObject3.getString("comment");
        }
        return wallettransactionCreateTransaction;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00aa, code lost:
    
        p002c.f$$ExternalSyntheticBUOutline1.m215m("Invalid BOC reference");
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00af, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b3, code lost:
    
        p002c.f$$ExternalSyntheticBUOutline1.m215m("Invalid encrypted comment snake");
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00b8, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String encryptedCommentPayload(String str) {
        if (str == null || str.length() > 8192) {
            f$$ExternalSyntheticBUOutline1.m215m("Invalid encrypted comment BOC");
            return null;
        }
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(Base64.decode(str, 0));
        if (byteBufferWrap.getInt() != -1242653582) {
            f$$ExternalSyntheticBUOutline1.m215m("Invalid BOC magic");
            return null;
        }
        byte b2 = byteBufferWrap.get();
        int i = b2 & 7;
        int i2 = byteBufferWrap.get() & UByte.MAX_VALUE;
        if ((b2 & 56) != 0) {
            f$$ExternalSyntheticBUOutline1.m215m("Unsupported BOC flags");
            return null;
        }
        int bocInt = readBocInt(byteBufferWrap, i);
        int bocInt2 = readBocInt(byteBufferWrap, i);
        int bocInt3 = readBocInt(byteBufferWrap, i);
        int bocInt4 = readBocInt(byteBufferWrap, i2);
        if (bocInt < 1 || bocInt > 1028 || bocInt2 != 1 || bocInt3 != 0) {
            f$$ExternalSyntheticBUOutline1.m215m("Invalid encrypted comment cells");
            return null;
        }
        int bocInt5 = readBocInt(byteBufferWrap, i);
        if (bocInt5 >= bocInt) {
            f$$ExternalSyntheticBUOutline1.m215m("Invalid BOC root");
            return null;
        }
        if ((b2 & ByteCompanionObject.MIN_VALUE) != 0) {
            for (int i3 = 0; i3 < bocInt; i3++) {
                readBocInt(byteBufferWrap, i2);
            }
        }
        if (bocInt4 != byteBufferWrap.remaining() - ((b2 & 64) != 0 ? 4 : 0)) {
            f$$ExternalSyntheticBUOutline1.m215m("Invalid BOC size");
            return null;
        }
        int iPosition = byteBufferWrap.position() + bocInt4;
        byteBufferWrap.limit(iPosition);
        byte[][] bArr = new byte[bocInt][];
        int[] iArr = new int[bocInt];
        int i4 = 0;
        while (true) {
            if (i4 < bocInt) {
                int i5 = byteBufferWrap.get() & UByte.MAX_VALUE;
                byte b3 = byteBufferWrap.get();
                int i6 = b3 & UByte.MAX_VALUE;
                if (i5 > 1 || (b3 & 1) != 0) {
                    break;
                }
                byte[] bArr2 = new byte[i6 / 2];
                bArr[i4] = bArr2;
                byteBufferWrap.get(bArr2);
                int bocInt6 = i5 != 0 ? readBocInt(byteBufferWrap, i) : -1;
                iArr[i4] = bocInt6;
                if (i5 != 0 && (bocInt6 <= i4 || bocInt6 >= bocInt)) {
                    break;
                }
                i4++;
            } else {
                if (byteBufferWrap.position() != iPosition) {
                    f$$ExternalSyntheticBUOutline1.m215m("Invalid BOC cell data");
                    return null;
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                while (bocInt5 != -1) {
                    int size = byteArrayOutputStream.size();
                    byte[] bArr3 = bArr[bocInt5];
                    if (size + bArr3.length > 1028) {
                        f$$ExternalSyntheticBUOutline1.m215m("Encrypted comment is too long");
                        return null;
                    }
                    byteArrayOutputStream.write(bArr3, 0, bArr3.length);
                    bocInt5 = iArr[bocInt5];
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (byteArray.length < 4 || ByteBuffer.wrap(byteArray).getInt() != 560454219) {
                    f$$ExternalSyntheticBUOutline1.m215m("Invalid encrypted comment opcode");
                    return null;
                }
                String strEncodeToString = Base64.encodeToString(Arrays.copyOfRange(byteArray, 4, byteArray.length), 2);
                decodeEncryptedComment(strEncodeToString);
                return strEncodeToString;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:118:?, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:?, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0101, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x010a, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x010b, code lost:
    
        r16 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0111, code lost:
    
        if (r0.position() == r3) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0113, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0114, code lost:
    
        r0 = new java.io.ByteArrayOutputStream();
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0119, code lost:
    
        if (r7 == (-1)) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x011b, code lost:
    
        r1 = r0.size();
        r3 = r8[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0123, code lost:
    
        if ((r1 + r3.length) <= 1028) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0125, code lost:
    
        return r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0126, code lost:
    
        r0.write(r3, 0, r3.length);
        r7 = r9[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x012d, code lost:
    
        r0 = r0.toByteArray();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0133, code lost:
    
        if (r0.length < 4) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x013d, code lost:
    
        if (java.nio.ByteBuffer.wrap(r0).getInt() == 0) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0149, code lost:
    
        return new java.lang.String(r0, 4, r0.length - 4, java.nio.charset.StandardCharsets.UTF_8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String textCommentFromBody(String str) {
        String str2;
        String str3 = null;
        if (str == null || str.length() > 8192) {
            return null;
        }
        try {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(Base64.decode(str, 0));
            if (byteBufferWrap.getInt() != -1242653582) {
                return null;
            }
            byte b2 = byteBufferWrap.get();
            int i = b2 & 7;
            int i2 = byteBufferWrap.get() & UByte.MAX_VALUE;
            if ((b2 & 56) != 0) {
                return null;
            }
            int bocInt = readBocInt(byteBufferWrap, i);
            int bocInt2 = readBocInt(byteBufferWrap, i);
            int bocInt3 = readBocInt(byteBufferWrap, i);
            int bocInt4 = readBocInt(byteBufferWrap, i2);
            int i3 = 1;
            if (bocInt < 1 || bocInt > 1028 || bocInt2 != 1 || bocInt3 != 0) {
                return null;
            }
            int bocInt5 = readBocInt(byteBufferWrap, i);
            if (bocInt5 >= bocInt) {
                return null;
            }
            if ((b2 & ByteCompanionObject.MIN_VALUE) != 0) {
                for (int i4 = 0; i4 < bocInt; i4++) {
                    readBocInt(byteBufferWrap, i2);
                }
            }
            if (bocInt4 != byteBufferWrap.remaining() - ((b2 & 64) != 0 ? 4 : 0)) {
                return null;
            }
            int iPosition = byteBufferWrap.position() + bocInt4;
            byteBufferWrap.limit(iPosition);
            byte[][] bArr = new byte[bocInt][];
            int[] iArr = new int[bocInt];
            int i5 = 0;
            while (true) {
                int bocInt6 = -1;
                if (i5 >= bocInt) {
                    break;
                }
                byte b3 = byteBufferWrap.get();
                byte b4 = byteBufferWrap.get();
                str2 = str3;
                int i6 = b4 & UByte.MAX_VALUE;
                int i7 = b3 & 7;
                if ((b3 & 248) != 0 || i7 > i3) {
                    break;
                }
                int i8 = (i6 + i3) >> i3;
                try {
                    int i9 = i3;
                    if (byteBufferWrap.remaining() < i8 + (i7 * i)) {
                        return str2;
                    }
                    byte[] bArr2 = new byte[i8];
                    bArr[i5] = bArr2;
                    byteBufferWrap.get(bArr2);
                    if (i7 == 0) {
                        if ((b4 & 1) != 0 && i8 > 0) {
                            int i10 = i8 - 1;
                            int i11 = bArr[i5][i10] & UByte.MAX_VALUE;
                            int i12 = 0;
                            while (i12 < 8 && (i11 & (i9 << i12)) == 0) {
                                i12++;
                            }
                            if (i12 == 8) {
                                return str2;
                            }
                            int i13 = i11 & (~(i9 << i12));
                            if (i13 == 0) {
                                bArr[i5] = Arrays.copyOf(bArr[i5], i10);
                            } else {
                                bArr[i5][i10] = (byte) i13;
                            }
                        }
                    } else if ((b4 & 1) != 0) {
                        return str2;
                    }
                    if (i7 != 0) {
                        bocInt6 = readBocInt(byteBufferWrap, i);
                    }
                    iArr[i5] = bocInt6;
                    if (i7 != 0 && (bocInt6 <= i5 || bocInt6 >= bocInt)) {
                        break;
                    }
                    i5++;
                    str3 = str2;
                    i3 = i9;
                } catch (Exception unused) {
                    return str2;
                }
                return str2;
            }
        } catch (Exception unused2) {
            return str3;
        }
    }

    private static int readBocInt(ByteBuffer byteBuffer, int i) {
        if (i < 1 || i > 4) {
            f$$ExternalSyntheticBUOutline1.m215m("Invalid BOC integer size");
            return 0;
        }
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | ((long) (byteBuffer.get() & UByte.MAX_VALUE));
        }
        if (j <= 2147483647L) {
            return (int) j;
        }
        f$$ExternalSyntheticBUOutline1.m215m("BOC integer overflow");
        return 0;
    }

    public void decryptTransactionComment(GramWallet.SecretPhrase secretPhrase, final String str, final Utilities.Callback2<String, String> callback2) {
        if (callback2 == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Result callback is required");
            return;
        }
        if (secretPhrase == null || secretPhrase.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    callback2.run(null, "Recovery phrase is required");
                }
            });
            return;
        }
        if (str == null || str.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda27
                @Override // java.lang.Runnable
                public final void run() {
                    callback2.run(null, "Transaction hash is required");
                }
            });
            return;
        }
        if (this.closed) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda28
                @Override // java.lang.Runnable
                public final void run() {
                    callback2.run(null, "NO_WALLET_ENGINE");
                }
            });
            return;
        }
        final byte[] bArrCopyBytes = secretPhrase.copyBytes();
        try {
            this.worker.execute(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda29
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$decryptTransactionComment$45(str, bArrCopyBytes, callback2);
                }
            });
        } catch (RejectedExecutionException unused) {
            Arrays.fill(bArrCopyBytes, (byte) 0);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda30
                @Override // java.lang.Runnable
                public final void run() {
                    callback2.run(null, "NO_WALLET_ENGINE");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$decryptTransactionComment$45(String str, byte[] bArr, final Utilities.Callback2 callback2) {
        final String message;
        final String str2 = null;
        try {
            try {
                String str3 = "https://toncenter.com/api/v3/transactions?hash=" + URLEncoder.encode(str, "UTF-8") + "&limit=1";
                HttpTransport httpTransport = this.transport;
                long j = this.nextAuxiliaryRequestId;
                this.nextAuxiliaryRequestId = j - 1;
                String strDecryptTransactionCommentResponse = decryptTransactionCommentResponse(bArr, httpTransport.execute(j, str3, false, new byte[0], 15000L));
                Arrays.fill(bArr, (byte) 0);
                str2 = strDecryptTransactionCommentResponse;
                message = null;
            } catch (Exception e) {
                message = e.getMessage() == null ? "Could not decrypt transaction comment" : e.getMessage();
                Arrays.fill(bArr, (byte) 0);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    callback2.run(str2, message);
                }
            });
        } catch (Throwable th) {
            Arrays.fill(bArr, (byte) 0);
            throw th;
        }
    }

    private String decryptTransactionCommentResponse(byte[] bArr, byte[] bArr2) throws JSONException {
        JSONArray jSONArrayOptJSONArray = new JSONObject(new String(bArr2, StandardCharsets.UTF_8)).optJSONArray("transactions");
        if (jSONArrayOptJSONArray == null) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Toncenter returned an invalid transaction response");
            return null;
        }
        if (jSONArrayOptJSONArray.length() == 0) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Transaction not found");
            return null;
        }
        RuntimeException e = null;
        String strDecryptMessageComment = null;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < jSONArrayOptJSONArray.length(); i3++) {
            JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(i3);
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("in_msg");
            if (isEncryptedComment(jSONObjectOptJSONObject)) {
                i++;
                try {
                    strDecryptMessageComment = decryptMessageComment(bArr, jSONObjectOptJSONObject);
                    i2++;
                } catch (RuntimeException e2) {
                    e = e2;
                }
            }
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("out_msgs");
            if (jSONArrayOptJSONArray2 != null) {
                for (int i4 = 0; i4 < jSONArrayOptJSONArray2.length(); i4++) {
                    JSONObject jSONObject2 = jSONArrayOptJSONArray2.getJSONObject(i4);
                    if (isEncryptedComment(jSONObject2)) {
                        i++;
                        try {
                            strDecryptMessageComment = decryptMessageComment(bArr, jSONObject2);
                            i2++;
                        } catch (RuntimeException e3) {
                            e = e3;
                        }
                    }
                }
            }
        }
        if (i == 0) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Transaction has no encrypted comment");
            return null;
        }
        if (i2 == 0) {
            if (e != null) {
                throw e;
            }
            throw new IllegalStateException("Transaction comment could not be decrypted");
        }
        if (i2 == 1) {
            return strDecryptMessageComment;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Transaction contains multiple decryptable comments");
        return null;
    }

    private String decryptMessageComment(byte[] bArr, JSONObject jSONObject) {
        String strOptString = jSONObject.optString("source", null);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("message_content");
        String strOptString2 = jSONObjectOptJSONObject == null ? null : jSONObjectOptJSONObject.optString("body", null);
        if (strOptString == null || strOptString.isEmpty() || strOptString2 == null || strOptString2.isEmpty()) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Encrypted transaction message is incomplete");
            return null;
        }
        return new String(nativeDecryptComment(this.ptr, bArr, strOptString, strOptString2), StandardCharsets.UTF_8);
    }

    public static boolean isEncryptedComment(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        Object objOpt = jSONObject.opt("opcode");
        if (objOpt instanceof Number) {
            return (4294967295L & ((Number) objOpt).longValue()) == 560454219;
        }
        if (objOpt instanceof String) {
            return (4294967295L & Long.decode((String) objOpt).longValue()) == 560454219;
        }
        return false;
    }

    public void prepareSend(GramWallet.SecretPhrase secretPhrase, final String str, final long j, String str2, byte[] bArr, final String str3, final Utilities.Callback3<TL_wallet.sendTransfer, String, String> callback3) {
        if (callback3 == null) {
            f$$ExternalSyntheticBUOutline1.m215m("Result callback is required");
            return;
        }
        if (this.closed) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    callback3.run(null, null, "NO_WALLET_ENGINE");
                }
            });
            return;
        }
        if (secretPhrase == null || secretPhrase.isEmpty()) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    callback3.run(null, null, "Recovery phrase is required");
                }
            });
            return;
        }
        final byte[] bArr2 = bArr == null ? null : (byte[]) bArr.clone();
        final byte[] bArrCopyBytes = secretPhrase.copyBytes();
        final byte[] bytes = str2 != null ? str2.getBytes(StandardCharsets.UTF_8) : null;
        try {
            this.worker.execute(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$prepareSend$50(bArrCopyBytes, str, j, bytes, bArr2, str3, callback3);
                }
            });
        } catch (RejectedExecutionException unused) {
            Arrays.fill(bArrCopyBytes, (byte) 0);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    callback3.run(null, null, "NO_WALLET_ENGINE");
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x006e  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$prepareSend$50(byte[] bArr, String str, long j, byte[] bArr2, byte[] bArr3, String str2, final Utilities.Callback3 callback3) {
        TL_wallet.sendTransfer sendtransfer;
        String str3;
        String strErrorMessage;
        try {
            try {
                resolveBeforeNewSend();
            } catch (RuntimeException e) {
                e = e;
                sendtransfer = null;
                str3 = null;
            }
            if (isPendingPhase(nativeResolvePending(this.ptr).phase)) {
                throw new IllegalStateException("Previous wallet send is still unresolved");
            }
            PreparedSend preparedSendNativePrepareSend = nativePrepareSend(this.ptr, bArr, str, j, bArr2, bArr3, str2, UUID.randomUUID().toString());
            if (preparedSendNativePrepareSend != null) {
                String str4 = preparedSendNativePrepareSend.encryptedCommentBody;
                String strEncryptedCommentPayload = str4 == null ? null : encryptedCommentPayload(str4);
                try {
                    str3 = strEncryptedCommentPayload;
                    sendtransfer = preparedSendNativePrepareSend.transfer;
                } catch (RuntimeException e2) {
                    e = e2;
                    str3 = strEncryptedCommentPayload;
                    sendtransfer = null;
                    strErrorMessage = errorMessage(e);
                    final String str5 = strErrorMessage;
                    final TL_wallet.sendTransfer sendtransfer2 = sendtransfer;
                    final String str6 = sendtransfer != null ? str3 : null;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$prepareSend$49(callback3, sendtransfer2, str6, str5);
                        }
                    });
                }
            } else {
                sendtransfer = null;
                str3 = null;
            }
            try {
                if (this.closed) {
                    strErrorMessage = "NO_WALLET_ENGINE";
                    sendtransfer = null;
                } else {
                    strErrorMessage = sendtransfer == null ? "Could not prepare transfer" : null;
                }
            } catch (RuntimeException e3) {
                e = e3;
                strErrorMessage = errorMessage(e);
            }
            final String str52 = strErrorMessage;
            final TL_wallet.sendTransfer sendtransfer22 = sendtransfer;
            final String str62 = sendtransfer != null ? str3 : null;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$prepareSend$49(callback3, sendtransfer22, str62, str52);
                }
            });
        } finally {
            Arrays.fill(bArr, (byte) 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepareSend$49(Utilities.Callback3 callback3, TL_wallet.sendTransfer sendtransfer, String str, String str2) {
        if (this.closed) {
            sendtransfer = null;
        }
        if (this.closed) {
            str = null;
        }
        if (this.closed) {
            str2 = "NO_WALLET_ENGINE";
        }
        callback3.run(sendtransfer, str, str2);
    }

    public static boolean isPendingPhase(SendPhase sendPhase) {
        return (sendPhase == null || sendPhase == SendPhase.IDLE || isFinalPhase(sendPhase)) ? false : true;
    }

    @Keep
    public static class SendResolution {
        final String error;
        final String operationId;
        final SendPhase phase;
        final long retryAfterMs;
        final String transactionHash;

        @Keep
        public SendResolution(String str, int i, String str2, String str3, long j) {
            this.operationId = str;
            this.phase = SendPhase.fromNative(i);
            this.transactionHash = str2;
            this.error = str3;
            this.retryAfterMs = j;
        }
    }

    private void resolveBeforeNewSend() {
        if (this.closed) {
            Segment$$ExternalSyntheticBUOutline1.m973m("NO_WALLET_ENGINE");
        }
    }

    private static String errorMessage(Exception exc) {
        return exc.getMessage() == null ? "NULL_ERROR" : exc.getMessage();
    }

    @Keep
    public static class SendCallbacks {
        final Utilities.Callback3<SendPhase, String, String> callback;
        String error;
        SendPhase phase = SendPhase.IDLE;
        String transactionHash;

        public SendCallbacks(Utilities.Callback3<SendPhase, String, String> callback3) {
            this.callback = callback3;
        }

        @Keep
        public synchronized void state(int i, String str, String str2) {
            SendPhase sendPhaseFromNative = SendPhase.fromNative(i);
            if (this.phase == sendPhaseFromNative && Objects.equals(this.error, str) && Objects.equals(this.transactionHash, str2)) {
                return;
            }
            this.phase = sendPhaseFromNative;
            this.error = str;
            this.transactionHash = str2;
            dispatch(sendPhaseFromNative, str, str2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$dispatch$0(SendPhase sendPhase, String str, String str2) {
            this.callback.run(sendPhase, str, str2);
        }

        public void dispatch(final SendPhase sendPhase, final String str, final String str2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$SendCallbacks$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$dispatch$0(sendPhase, str, str2);
                }
            });
        }

        public synchronized void failed(String str) {
            SendPhase sendPhase = this.phase;
            if (sendPhase != SendPhase.SUBMISSION_UNKNOWN) {
                sendPhase = SendPhase.FAILED;
            }
            state(sendPhase.nativeValue, str, null);
        }
    }

    public void rotateKey(GramWallet.SecretPhrase secretPhrase, Utilities.Callback2<GramWallet.SecretPhrase, byte[]> callback2, Utilities.Callback2<SendPhase, String> callback22) {
        final RotationCallbacks rotationCallbacks = new RotationCallbacks(callback22, callback2);
        if (secretPhrase == null || secretPhrase.isEmpty() || callback2 == null) {
            rotationCallbacks.failed("Current recovery phrase and replacement callback are required");
            return;
        }
        final byte[] bArrCopyBytes = secretPhrase.copyBytes();
        final String string = UUID.randomUUID().toString();
        try {
            this.worker.execute(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda43
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$rotateKey$52(rotationCallbacks, bArrCopyBytes, string);
                }
            });
        } catch (RejectedExecutionException unused) {
            Arrays.fill(bArrCopyBytes, (byte) 0);
            rotationCallbacks.failed("NO_WALLET_ENGINE");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$rotateKey$52(RotationCallbacks rotationCallbacks, byte[] bArr, String str) {
        try {
            resolveBeforeNewSend();
            rotationCallbacks.state(SendPhase.VALIDATING.nativeValue, null, null);
            nativeRotateKey(this.ptr, bArr, str, rotationCallbacks);
        } catch (RuntimeException e) {
            rotationCallbacks.failed(errorMessage(e));
        } finally {
            Arrays.fill(bArr, (byte) 0);
        }
    }

    @Keep
    public static class RotationCallbacks extends SendCallbacks {
        private final Utilities.Callback2<GramWallet.SecretPhrase, byte[]> onReplacement;

        public RotationCallbacks(final Utilities.Callback2<SendPhase, String> callback2, Utilities.Callback2<GramWallet.SecretPhrase, byte[]> callback22) {
            super(new Utilities.Callback3() { // from class: org.telegram.ui.Wallet.WalletEngine2$RotationCallbacks$$ExternalSyntheticLambda1
                @Override // org.telegram.messenger.Utilities.Callback3
                public final void run(Object obj, Object obj2, Object obj3) {
                    callback2.run((WalletEngine2.SendPhase) obj, (String) obj2);
                }
            });
            this.onReplacement = callback22;
        }

        @Keep
        private void replacement(final byte[] bArr, final byte[] bArr2) throws Throwable {
            boolean z;
            try {
                FutureTask futureTask = new FutureTask(new Callable() { // from class: org.telegram.ui.Wallet.WalletEngine2$RotationCallbacks$$ExternalSyntheticLambda0
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f$0.lambda$replacement$2(bArr, bArr2);
                    }
                });
                AndroidUtilities.runOnUIThread(futureTask);
                z = false;
                while (true) {
                    try {
                        try {
                            futureTask.get();
                            break;
                        } catch (InterruptedException unused) {
                            z = true;
                        } catch (ExecutionException unused2) {
                            throw new IllegalStateException("Could not save replacement recovery phrase");
                        }
                    } catch (Throwable th) {
                        th = th;
                        Arrays.fill(bArr, (byte) 0);
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                }
                if (z) {
                    throw new IllegalStateException("Key rotation was interrupted before submission");
                }
                Arrays.fill(bArr, (byte) 0);
                if (z) {
                    Thread.currentThread().interrupt();
                }
            } catch (Throwable th2) {
                th = th2;
                z = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$replacement$1(byte[] bArr, GramWallet.SecretPhrase secretPhrase) {
            this.onReplacement.run(secretPhrase, bArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Void lambda$replacement$2(byte[] bArr, final byte[] bArr2) {
            GramWallet.SecretPhrase.deliver(new GramWallet.SecretPhrase(bArr), new Utilities.Callback() { // from class: org.telegram.ui.Wallet.WalletEngine2$RotationCallbacks$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$replacement$1(bArr2, (GramWallet.SecretPhrase) obj);
                }
            });
            return null;
        }
    }

    @Override // java.lang.AutoCloseable
    public synchronized void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.transport.close();
        this.worker.execute(new Runnable() { // from class: org.telegram.ui.Wallet.WalletEngine2$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$close$53();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$close$53() {
        ScheduledFuture<?> scheduledFuture = this.resolutionTask;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        try {
            nativeClose(this.ptr);
        } finally {
            this.ptr = 0L;
            this.worker.shutdown();
        }
    }

    @Keep
    public static class PreparedSend {
        final String encryptedCommentBody;
        final TL_wallet.sendTransfer transfer;

        @Keep
        public PreparedSend(String str, String str2, String str3) {
            TL_wallet.sendTransfer sendtransfer = new TL_wallet.sendTransfer();
            this.transfer = sendtransfer;
            sendtransfer.user_id = new TLRPC.TL_inputUserEmpty();
            sendtransfer.random_id = Utilities.random.nextLong();
            sendtransfer.data_normal = decodeTransferBoc(str);
            sendtransfer.normalMessageBodyHash = WalletEngine2.nativeMessageBodyHash(str);
            byte[] bArrDecodeTransferBoc = str2 == null ? null : decodeTransferBoc(str2);
            sendtransfer.data_gasless = bArrDecodeTransferBoc;
            if (bArrDecodeTransferBoc != null) {
                sendtransfer.gaslessMessageBodyHash = WalletEngine2.nativeMessageBodyHash(str2);
            }
            this.encryptedCommentBody = str3;
        }

        private static byte[] decodeTransferBoc(String str) {
            byte[] bArrDecode = Base64.decode(str, 0);
            if (bArrDecode.length != 0 && bArrDecode.length <= 16384) {
                return bArrDecode;
            }
            f$$ExternalSyntheticBUOutline1.m215m("WALLET_TRANSFER_DATA_INVALID");
            return null;
        }
    }

    @Keep
    public static class PreparedRotation {
        final byte[] newPublicKey;
        final GramWallet.SecretPhrase newSecretPhrase;
        final TL_wallet.sendTransfer transfer;

        @Keep
        public PreparedRotation(String str, String str2, byte[] bArr, byte[] bArr2) {
            if (bArr2 != null) {
                try {
                    if (bArr2.length == 32 && bArr != null && bArr.length != 0) {
                        this.transfer = new PreparedSend(str, str2, null).transfer;
                        this.newSecretPhrase = new GramWallet.SecretPhrase(bArr);
                        this.newPublicKey = bArr2;
                        Arrays.fill(bArr, (byte) 0);
                        return;
                    }
                } catch (Throwable th) {
                    if (bArr != null) {
                        Arrays.fill(bArr, (byte) 0);
                    }
                    throw th;
                }
            }
            throw new IllegalArgumentException("Invalid key rotation result");
        }
    }

    @Keep
    private static TL_wallet.walletTransaction createTransaction(String str, long j) {
        TL_wallet.walletTransaction wallettransaction = new TL_wallet.walletTransaction();
        TL_wallet.walletTransactionPeerAddress wallettransactionpeeraddress = new TL_wallet.walletTransactionPeerAddress();
        wallettransactionpeeraddress.address = nativeTransactionAddress(str);
        wallettransaction.peer = wallettransactionpeeraddress;
        wallettransaction.amount = j;
        return wallettransaction;
    }

    @Keep
    private static void setTransactionPhase(TL_wallet.walletTransaction wallettransaction, int i) {
        SendPhase sendPhaseFromNative = SendPhase.fromNative(i);
        wallettransaction.phase = sendPhaseFromNative;
        wallettransaction.failed = isFailedPhase(sendPhaseFromNative);
        wallettransaction.pending = !wallettransaction.preview && isPendingPhase(wallettransaction.phase);
    }

    @Keep
    public enum SendPhase {
        IDLE(1),
        VALIDATING(2),
        AUTHORIZING(3),
        PREPARING(4),
        PERSISTING(5),
        READY_TO_SUBMIT(6),
        SUBMITTING(7),
        SUBMISSION_UNKNOWN(8),
        SUBMITTED(9),
        HANDED_OFF(10),
        CONFIRMED(11),
        REPLACED(12),
        SEQUENCE_NUMBER_CONSUMED(13),
        EXPIRED(14),
        SUPERSEDED(15),
        FAILED(16),
        CANCELLED(17);

        private final int nativeValue;

        SendPhase(int i) {
            this.nativeValue = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static SendPhase fromNative(int i) {
            for (SendPhase sendPhase : values()) {
                if (sendPhase.nativeValue == i) {
                    return sendPhase;
                }
            }
            CharCodeKt$$ExternalSyntheticBUOutline0.m908m("Unknown native send phase: ", i);
            return null;
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.WalletEngine2$1 */
    public static /* synthetic */ class C64921 {
        static final /* synthetic */ int[] $SwitchMap$org$telegram$ui$Wallet$WalletEngine2$SendPhase;

        static {
            int[] iArr = new int[SendPhase.values().length];
            $SwitchMap$org$telegram$ui$Wallet$WalletEngine2$SendPhase = iArr;
            try {
                iArr[SendPhase.CONFIRMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$telegram$ui$Wallet$WalletEngine2$SendPhase[SendPhase.REPLACED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$telegram$ui$Wallet$WalletEngine2$SendPhase[SendPhase.SEQUENCE_NUMBER_CONSUMED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$telegram$ui$Wallet$WalletEngine2$SendPhase[SendPhase.EXPIRED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$telegram$ui$Wallet$WalletEngine2$SendPhase[SendPhase.SUPERSEDED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$telegram$ui$Wallet$WalletEngine2$SendPhase[SendPhase.FAILED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$telegram$ui$Wallet$WalletEngine2$SendPhase[SendPhase.CANCELLED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public static boolean isFinalPhase(SendPhase sendPhase) {
        if (sendPhase == null) {
            return false;
        }
        switch (C64921.$SwitchMap$org$telegram$ui$Wallet$WalletEngine2$SendPhase[sendPhase.ordinal()]) {
        }
        return false;
    }

    public static boolean isFailedPhase(SendPhase sendPhase) {
        if (sendPhase == null) {
            return false;
        }
        switch (C64921.$SwitchMap$org$telegram$ui$Wallet$WalletEngine2$SendPhase[sendPhase.ordinal()]) {
        }
        return false;
    }

    @Keep
    public static class HttpTransport {
        private boolean closed;
        public final int currentAccount;
        private final HashMap<Long, Pending> pending = new HashMap<>();

        public static class Pending {
            byte[] body;
            final CountDownLatch done;
            HostException error;
            int token;

            private Pending() {
                this.done = new CountDownLatch(1);
            }

            public synchronized void complete(byte[] bArr, HostException hostException) {
                if (this.done.getCount() == 0) {
                    return;
                }
                this.body = bArr;
                this.error = hostException;
                this.done.countDown();
            }
        }

        @Keep
        public static class HostException extends RuntimeException {

            @Keep
            final int kind;

            public HostException(int i) {
                super("Wallet provider request failed");
                this.kind = i;
            }
        }

        public HttpTransport(int i) {
            this.currentAccount = i;
        }

        @Keep
        public byte[] execute(long j, String str, boolean z, byte[] bArr, long j2) {
            int i;
            HashMap<Long, Pending> map;
            try {
                URI uriCreate = URI.create(str);
                if (!"https".equalsIgnoreCase(uriCreate.getScheme()) || !"toncenter.com".equalsIgnoreCase(uriCreate.getHost()) || uriCreate.getRawUserInfo() != null || uriCreate.getRawFragment() != null || ((uriCreate.getPort() != -1 && uriCreate.getPort() != 443) || j2 <= 0)) {
                    throw new HostException(4);
                }
                TL_toncenter.performApiRequest performapirequest = new TL_toncenter.performApiRequest();
                performapirequest.post = z;
                performapirequest.endpoint = uriCreate.getRawPath();
                performapirequest.query = uriCreate.getRawQuery();
                performapirequest.payload = bArr.length == 0 ? null : new String(bArr, StandardCharsets.UTF_8);
                final Pending pending = new Pending();
                long jNanoTime = System.nanoTime();
                try {
                    try {
                        HashMap<Long, Pending> map2 = this.pending;
                        try {
                            synchronized (map2) {
                                try {
                                    try {
                                        if (this.closed) {
                                            throw new HostException(6);
                                        }
                                        try {
                                            this.pending.put(Long.valueOf(j), pending);
                                        } catch (Throwable th) {
                                            th = th;
                                            map = map2;
                                        }
                                        try {
                                            pending.token = getConnectionsManager().sendRequestTyped(performapirequest, new CredentialManager$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.WalletEngine2$HttpTransport$$ExternalSyntheticLambda0
                                                @Override // org.telegram.messenger.Utilities.Callback2
                                                public final void run(Object obj, Object obj2) {
                                                    WalletEngine2.HttpTransport.$r8$lambda$kvLwsHkVekdL9KZ6jX4yOyxchmU(pending, (TL_toncenter.apiResponse) obj, (TLRPC.TL_error) obj2);
                                                }
                                            }, MessagesController.getInstance(this.currentAccount).webFileDatacenterId, 0);
                                        } catch (Throwable th2) {
                                            th = th2;
                                            map = map2;
                                            i = 6;
                                            try {
                                                throw th;
                                            } catch (InterruptedException unused) {
                                                Thread.currentThread().interrupt();
                                                pending.complete(null, new HostException(i));
                                                throw new HostException(i);
                                            }
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    i = 6;
                                    map = map2;
                                }
                            }
                            try {
                                if (!pending.done.await(Math.max(0L, TimeUnit.MILLISECONDS.toNanos(j2) - (System.nanoTime() - jNanoTime)), TimeUnit.NANOSECONDS)) {
                                    pending.complete(null, new HostException(2));
                                }
                                HostException hostException = pending.error;
                                if (hostException != null) {
                                    throw hostException;
                                }
                                byte[] bArr2 = pending.body;
                                synchronized (this.pending) {
                                    try {
                                        this.pending.remove(Long.valueOf(j));
                                        if (pending.error != null && pending.token != 0) {
                                            getConnectionsManager().cancelRequest(pending.token, true);
                                        }
                                    } finally {
                                    }
                                }
                                return bArr2;
                            } catch (InterruptedException unused2) {
                                i = 6;
                                Thread.currentThread().interrupt();
                                pending.complete(null, new HostException(i));
                                throw new HostException(i);
                            }
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    } catch (Throwable th6) {
                        synchronized (this.pending) {
                            try {
                                this.pending.remove(Long.valueOf(j));
                                if (pending.error != null && pending.token != 0) {
                                    getConnectionsManager().cancelRequest(pending.token, true);
                                }
                                throw th6;
                            } finally {
                            }
                        }
                    }
                } catch (InterruptedException unused3) {
                    i = 6;
                }
            } catch (IllegalArgumentException unused4) {
                throw new HostException(4);
            }
        }

        public static /* synthetic */ void $r8$lambda$kvLwsHkVekdL9KZ6jX4yOyxchmU(Pending pending, TL_toncenter.apiResponse apiresponse, TLRPC.TL_error tL_error) {
            TLRPC.TL_dataJSON tL_dataJSON;
            String str;
            if (tL_error != null) {
                pending.complete(null, new HostException(3));
            } else if (apiresponse == null || (tL_dataJSON = apiresponse.response) == null || (str = tL_dataJSON.data) == null) {
                pending.complete(null, new HostException(7));
            } else {
                pending.complete(str.getBytes(StandardCharsets.UTF_8), null);
            }
        }

        @Keep
        public void cancel(long j) {
            synchronized (this.pending) {
                try {
                    Pending pending = this.pending.get(Long.valueOf(j));
                    if (pending != null) {
                        pending.complete(null, new HostException(6));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void close() {
            synchronized (this.pending) {
                try {
                    this.closed = true;
                    Iterator<Pending> it = this.pending.values().iterator();
                    while (it.hasNext()) {
                        it.next().complete(null, new HostException(6));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        private ConnectionsManager getConnectionsManager() {
            return ConnectionsManager.getInstance(this.currentAccount);
        }
    }
}
