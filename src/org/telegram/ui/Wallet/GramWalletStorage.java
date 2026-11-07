package org.telegram.ui.Wallet;

import android.app.KeyguardManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import android.security.keystore.UserNotAuthenticatedException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Base64;
import com.google.protobuf.UnsafeUtil$$ExternalSyntheticBUOutline0;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.UByte;
import okhttp3.internal.url._UrlKt;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.ui.Wallet.GramWallet;
import org.telegram.ui.Wallet.GramWalletStorageAuth;
import org.vosk.Model$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes8.dex */
public class GramWalletStorage {
    private final String address;
    private final String aliasPrefix;
    private final Context context;
    private final int currentAccount;
    private final File file;
    private volatile Exception lastError;
    private static final Object LOCK = new Object();
    private static final Map<String, Long> EPOCHS = new HashMap();
    private static final ExecutorService WORKER = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: org.telegram.ui.Wallet.GramWalletStorage$$ExternalSyntheticLambda0
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return GramWalletStorage.$r8$lambda$0V0jYHRHJ9B3sj5nC6fJr5n_HWg(runnable);
        }
    });
    private static final CopyOnWriteArrayList<WeakReference<Runnable>> changeListeners = new CopyOnWriteArrayList<>();

    public static class Wallet {
        int lastUsage;
        boolean legacy;
        boolean locked;
        final LinkedHashMap<String, JSONObject> records = new LinkedHashMap<>();
        long userId;
    }

    public static /* synthetic */ Thread $r8$lambda$0V0jYHRHJ9B3sj5nC6fJr5n_HWg(Runnable runnable) {
        return new Thread(runnable, "GramWalletStorage");
    }

    public static synchronized void addChangeListener(Runnable runnable) {
        try {
            boolean z = false;
            for (WeakReference<Runnable> weakReference : changeListeners) {
                Runnable runnable2 = weakReference.get();
                if (runnable2 == null) {
                    changeListeners.remove(weakReference);
                } else if (runnable2 == runnable) {
                    z = true;
                }
            }
            if (runnable != null && !z) {
                changeListeners.add(new WeakReference<>(runnable));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void removeChangeListener(Runnable runnable) {
        for (WeakReference<Runnable> weakReference : changeListeners) {
            Runnable runnable2 = weakReference.get();
            if (runnable2 == null || runnable2 == runnable) {
                changeListeners.remove(weakReference);
            }
        }
    }

    private static void notifyChanged() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStorage$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                GramWalletStorage.m23084$r8$lambda$TmfuKgKUifOj2ixWMrm0O7J32A();
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$TmfuKgKUifOj-2ixWMrm0O7J32A, reason: not valid java name */
    public static /* synthetic */ void m23084$r8$lambda$TmfuKgKUifOj2ixWMrm0O7J32A() {
        for (WeakReference<Runnable> weakReference : changeListeners) {
            Runnable runnable = weakReference.get();
            if (runnable == null) {
                changeListeners.remove(weakReference);
            } else {
                runnable.run();
            }
        }
    }

    public GramWalletStorage(Context context, int i, String str) {
        if (context == null || str == null || str.isEmpty()) {
            f$$ExternalSyntheticBUOutline1.m215m("context/address");
            throw null;
        }
        Context applicationContext = context.getApplicationContext();
        context = applicationContext != null ? applicationContext : context;
        this.context = context;
        this.currentAccount = i;
        this.address = str;
        String strDigest = digest(str);
        this.file = new File(directory(context), strDigest + ".json");
        this.aliasPrefix = "gramwallet_v2_" + strDigest + "_";
    }

    public String getAddress() {
        return this.address;
    }

    public int getLastUsage() {
        int i;
        synchronized (LOCK) {
            try {
                try {
                    i = load().lastUsage;
                } catch (Exception e) {
                    this.failed(e);
                    return 0;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    public byte[][] getPublicKeys() {
        byte[][] bArr;
        synchronized (LOCK) {
            try {
                try {
                    ArrayList arrayList = new ArrayList();
                    Iterator<String> it = load().records.keySet().iterator();
                    while (it.hasNext()) {
                        arrayList.add(unhex(it.next()));
                    }
                    bArr = (byte[][]) arrayList.toArray(new byte[0][]);
                } catch (Exception e) {
                    failed(e);
                    return new byte[0][];
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bArr;
    }

    public boolean containsSecretPhrase(byte[] bArr) {
        boolean zContainsKey;
        if (bArr == null || bArr.length == 0) {
            return false;
        }
        synchronized (LOCK) {
            try {
                try {
                    zContainsKey = load().records.containsKey(hex(bArr));
                } catch (Exception e) {
                    this.failed(e);
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zContainsKey;
    }

    public boolean isProtectedByFingerprint() {
        boolean z;
        synchronized (LOCK) {
            try {
                try {
                    z = load().locked;
                } catch (Exception e) {
                    this.failed(e);
                    return true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    public void init(final long j, byte[] bArr, GramWallet.SecretPhrase secretPhrase, final Utilities.Callback<String> callback) {
        final GramWallet.SecretPhrase secretPhraseCopy = secretPhrase == null ? null : secretPhrase.copy();
        final String strHex = bArr == null ? _UrlKt.FRAGMENT_ENCODE_SET : hex(bArr);
        final long jEpoch = epoch();
        WORKER.execute(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStorage$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.lambda$init$2(strHex, secretPhraseCopy, jEpoch, j, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(17:8|20|12|(6:91|14|(1:16)(2:17|18)|35|71|72)|23|24|81|25|26|27|68|31|(2:34|32)|94|35|71|72) */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009e, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x009f, code lost:
    
        r6 = r15;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00be A[Catch: all -> 0x0098, TryCatch #6 {all -> 0x0098, blocks: (B:25:0x0052, B:27:0x0058, B:28:0x0068, B:39:0x0097, B:59:0x00b7, B:61:0x00be, B:54:0x00ab, B:57:0x00ae, B:58:0x00b6), top: B:88:0x000e }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00da A[LOOP:1: B:68:0x00d4->B:70:0x00da, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00fb A[LOOP:2: B:76:0x00f5->B:78:0x00fb, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$init$2(String str, GramWallet.SecretPhrase secretPhrase, long j, long j2, Utilities.Callback callback) throws Throwable {
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        Throwable th;
        Iterator<GramWallet.SecretPhrase> it;
        Exception exc;
        Iterator<GramWallet.SecretPhrase> it2;
        Wallet walletLoad;
        long j3 = j;
        ArrayList<String> arrayList = new ArrayList<>();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        String message = null;
        try {
            try {
                this.lastError = null;
                try {
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th2) {
                th = th2;
                th = th;
                if (secretPhrase != null) {
                    secretPhrase.close();
                }
                it = linkedHashMap.values().iterator();
                while (it.hasNext()) {
                    it.next().close();
                }
                cleanupUncommitted(arrayList);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            linkedHashMap2 = linkedHashMap3;
        } catch (Throwable th3) {
            th = th3;
            linkedHashMap = linkedHashMap3;
            th = th;
            if (secretPhrase != null) {
            }
            it = linkedHashMap.values().iterator();
            while (it.hasNext()) {
            }
            cleanupUncommitted(arrayList);
            throw th;
        }
        if (str.isEmpty() || secretPhrase == null || secretPhrase.isEmpty()) {
            throw new StorageException("INVALID_ARGUMENT");
        }
        Object obj = LOCK;
        synchronized (obj) {
            try {
                checkEpoch(j3);
                walletLoad = load();
            } catch (Throwable th4) {
                th = th4;
                while (true) {
                    try {
                        throw th;
                    } catch (Throwable th5) {
                        th = th5;
                    }
                }
            }
        }
        if (!walletLoad.records.isEmpty()) {
            try {
                if (walletLoad.userId != j2) {
                    throw new StorageException("USER_MISMATCH");
                }
            } catch (Exception e3) {
                exc = e3;
                linkedHashMap2 = linkedHashMap3;
                failed(exc);
                message = exc instanceof StorageException ? exc.getMessage() : "STORAGE_BROKEN";
                if (secretPhrase != null) {
                }
                it2 = linkedHashMap2.values().iterator();
                while (it2.hasNext()) {
                }
            } catch (Throwable th6) {
                th = th6;
                linkedHashMap = linkedHashMap3;
                if (secretPhrase != null) {
                }
                it = linkedHashMap.values().iterator();
                while (it.hasNext()) {
                }
                cleanupUncommitted(arrayList);
                throw th;
            }
            cleanupUncommitted(arrayList);
            deliver(j3, callback, message);
        }
        walletLoad.userId = j2;
        migrate(walletLoad, str, linkedHashMap3, arrayList, j3);
        linkedHashMap2 = linkedHashMap3;
        j3 = j;
        walletLoad.records.put(str, encrypt(walletLoad, str, secretPhrase, arrayList, j3));
        linkedHashMap2.put(str, secretPhrase);
        walletLoad.lastUsage = now();
        synchronized (obj) {
            checkEpoch(j3);
            persist(walletLoad, linkedHashMap2);
            cleanup(walletLoad);
        }
        secretPhrase.close();
        Iterator<GramWallet.SecretPhrase> it3 = linkedHashMap2.values().iterator();
        while (it3.hasNext()) {
            it3.next().close();
        }
        cleanupUncommitted(arrayList);
        deliver(j3, callback, message);
        exc = e;
        failed(exc);
        message = exc instanceof StorageException ? exc.getMessage() : "STORAGE_BROKEN";
        if (secretPhrase != null) {
            secretPhrase.close();
        }
        it2 = linkedHashMap2.values().iterator();
        while (it2.hasNext()) {
            it2.next().close();
        }
        cleanupUncommitted(arrayList);
        deliver(j3, callback, message);
    }

    public void getSecretPhrase(byte[] bArr, Utilities.Callback<GramWallet.SecretPhrase> callback) {
        getSecretPhrase(bArr, callback, true);
    }

    public void getSecretPhrase(byte[] bArr, final Utilities.Callback<GramWallet.SecretPhrase> callback, final boolean z) {
        final String strHex = bArr == null ? _UrlKt.FRAGMENT_ENCODE_SET : hex(bArr);
        final long jEpoch = epoch();
        WORKER.execute(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStorage$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getSecretPhrase$5(jEpoch, strHex, z, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getSecretPhrase$5(final long j, String str, boolean z, final Utilities.Callback callback) {
        Exception exc;
        GramWallet.SecretPhrase secretPhraseDecryptAuthenticated;
        Wallet walletLoad;
        GramWallet.SecretPhrase secretPhrase = null;
        try {
            this.lastError = null;
            Object obj = LOCK;
            synchronized (obj) {
                checkEpoch(j);
                walletLoad = load();
            }
            if (walletLoad.records.containsKey(str)) {
                secretPhraseDecryptAuthenticated = decryptAuthenticated(walletLoad, str, j);
                try {
                    synchronized (obj) {
                        try {
                            checkEpoch(j);
                            if (z) {
                                walletLoad.lastUsage = now();
                                if (!this.file.exists()) {
                                    if (!legacyPrefs().edit().putInt("lastUsageDate", walletLoad.lastUsage).commit()) {
                                        throw new IOException("usage write");
                                    }
                                    notifyChanged();
                                } else {
                                    persist(walletLoad, new LinkedHashMap());
                                }
                            }
                        } catch (Exception e) {
                            failed(e);
                        } finally {
                        }
                    }
                    secretPhrase = secretPhraseDecryptAuthenticated;
                } catch (Exception e2) {
                    exc = e2;
                    failed(exc);
                    if (secretPhraseDecryptAuthenticated != null) {
                        secretPhraseDecryptAuthenticated.close();
                    }
                }
            }
        } catch (Exception e3) {
            exc = e3;
            secretPhraseDecryptAuthenticated = null;
        }
        final GramWallet.SecretPhrase secretPhrase2 = secretPhrase;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStorage$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getSecretPhrase$4(secretPhrase2, callback, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getSecretPhrase$4(GramWallet.SecretPhrase secretPhrase, final Utilities.Callback callback, final long j) {
        GramWallet.SecretPhrase.deliver(secretPhrase, new Utilities.Callback() { // from class: org.telegram.ui.Wallet.GramWalletStorage$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$getSecretPhrase$3(callback, j, (GramWallet.SecretPhrase) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getSecretPhrase$3(Utilities.Callback callback, long j, GramWallet.SecretPhrase secretPhrase) {
        if (callback != null) {
            if (j != epoch()) {
                secretPhrase = null;
            }
            callback.run(secretPhrase);
        }
    }

    public void setProtectedByFingerprint(final boolean z, final Utilities.Callback<String> callback) {
        final long jEpoch = epoch();
        WORKER.execute(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStorage$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setProtectedByFingerprint$6(jEpoch, z, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProtectedByFingerprint$6(long j, boolean z, Utilities.Callback callback) {
        Wallet walletLoad;
        ArrayList<String> arrayList = new ArrayList<>();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String message = null;
        try {
            try {
                this.lastError = null;
            } catch (Exception e) {
                e = e;
            }
            try {
                synchronized (LOCK) {
                    try {
                        checkEpoch(j);
                        walletLoad = load();
                    } catch (Throwable th) {
                        th = th;
                        while (true) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    }
                }
                if (walletLoad.locked != z || walletLoad.records.isEmpty()) {
                    if (z && !deviceHasFingerprint(this.context)) {
                        throw new StorageException("AUTH_UNAVAILABLE");
                    }
                    if (!walletLoad.records.isEmpty()) {
                        authenticate(false, j);
                        for (String str : walletLoad.records.keySet()) {
                            linkedHashMap.put(str, decryptAuthenticated(walletLoad, str, j));
                        }
                    }
                    walletLoad.locked = z;
                    walletLoad.records.clear();
                    for (Map.Entry<String, GramWallet.SecretPhrase> entry : linkedHashMap.entrySet()) {
                        walletLoad.records.put(entry.getKey(), encrypt(walletLoad, entry.getKey(), entry.getValue(), arrayList, j));
                        walletLoad = walletLoad;
                    }
                    Wallet wallet = walletLoad;
                    wallet.legacy = false;
                    synchronized (LOCK) {
                        checkEpoch(j);
                        persist(wallet, linkedHashMap);
                        cleanup(wallet);
                    }
                }
            } catch (Exception e2) {
                e = e2;
                failed(e);
                message = e instanceof StorageException ? e.getMessage() : "STORAGE_BROKEN";
                Iterator<GramWallet.SecretPhrase> it = linkedHashMap.values().iterator();
                while (it.hasNext()) {
                    it.next().close();
                }
            }
            deliver(j, callback, message);
        } finally {
            Iterator<GramWallet.SecretPhrase> it2 = linkedHashMap.values().iterator();
            while (it2.hasNext()) {
                it2.next().close();
            }
            cleanupUncommitted(arrayList);
        }
    }

    public void wipe() {
        synchronized (LOCK) {
            invalidate();
            try {
                this.lastError = null;
                Wallet wallet = new Wallet();
                wallet.locked = deviceHasFingerprint(this.context);
                persist(wallet, new LinkedHashMap());
                cleanup(wallet);
            } catch (Exception e) {
                failed(e);
            }
        }
    }

    public static void wipeForUser(Context context, int i, long j) {
        if (j == 0) {
            return;
        }
        synchronized (LOCK) {
            try {
                ArrayList<String> wallets = getWallets(context, j);
                int size = wallets.size();
                int i2 = 0;
                while (i2 < size) {
                    String str = wallets.get(i2);
                    i2++;
                    new GramWalletStorage(context, i, str).wipe();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean deviceHasFingerprint(Context context) {
        if (context != null) {
            try {
                KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
                if (keyguardManager != null) {
                    if (keyguardManager.isDeviceSecure()) {
                        return true;
                    }
                }
                return false;
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0071 A[Catch: all -> 0x0054, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0013, B:8:0x0017, B:11:0x0026, B:14:0x003e, B:16:0x0048, B:18:0x0050, B:24:0x005b, B:23:0x0058, B:25:0x005e, B:27:0x0071, B:29:0x0075, B:36:0x0091, B:40:0x009c, B:41:0x00a7, B:44:0x00b5, B:46:0x00bf, B:48:0x00c7, B:50:0x00cd, B:53:0x00d2, B:54:0x00d5, B:32:0x0086, B:55:0x00d8), top: B:59:0x0003, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d8 A[Catch: all -> 0x0054, DONT_GENERATE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0013, B:8:0x0017, B:11:0x0026, B:14:0x003e, B:16:0x0048, B:18:0x0050, B:24:0x005b, B:23:0x0058, B:25:0x005e, B:27:0x0071, B:29:0x0075, B:36:0x0091, B:40:0x009c, B:41:0x00a7, B:44:0x00b5, B:46:0x00bf, B:48:0x00c7, B:50:0x00cd, B:53:0x00d2, B:54:0x00d5, B:32:0x0086, B:55:0x00d8), top: B:59:0x0003, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList<String> getWallets(Context context, long j) {
        ArrayList<String> arrayList;
        File[] fileArrListFiles;
        synchronized (LOCK) {
            arrayList = new ArrayList<>();
            File[] fileArrListFiles2 = directory(context).listFiles();
            if (fileArrListFiles2 != null) {
                for (File file : fileArrListFiles2) {
                    if (file.getName().endsWith(".json")) {
                        try {
                            JSONObject json = readJson(file);
                            String string = json.getString("address");
                            GramWalletStorage gramWalletStorage = new GramWalletStorage(context, 0, string);
                            if (gramWalletStorage.file.equals(file)) {
                                Wallet wallet = gramWalletStorage.parse(json);
                                if (wallet.userId == j && !wallet.records.isEmpty()) {
                                    arrayList.add(string);
                                }
                            }
                        } catch (Exception e) {
                            FileLog.m1040e(e);
                        }
                    }
                }
                fileArrListFiles = new File(context.getApplicationInfo().dataDir, "shared_prefs").listFiles();
                if (fileArrListFiles == null) {
                    for (File file2 : fileArrListFiles) {
                        String name = file2.getName();
                        int i = name.endsWith(".xml.bak") ? 8 : name.endsWith(".xml") ? 4 : 0;
                        if (name.startsWith("gramwallet_") && i != 0) {
                            String strSubstring = name.substring(11, name.length() - i);
                            try {
                                GramWalletStorage gramWalletStorage2 = new GramWalletStorage(context, 0, strSubstring);
                                if (!gramWalletStorage2.file.exists()) {
                                    Wallet walletLoad = gramWalletStorage2.load();
                                    if (walletLoad.userId == j && !walletLoad.records.isEmpty() && !arrayList.contains(strSubstring)) {
                                        arrayList.add(strSubstring);
                                    }
                                }
                            } catch (Exception e2) {
                                FileLog.m1040e(e2);
                            }
                        }
                    }
                }
            } else {
                fileArrListFiles = new File(context.getApplicationInfo().dataDir, "shared_prefs").listFiles();
                if (fileArrListFiles == null) {
                }
            }
        }
        return arrayList;
    }

    private Wallet load() throws JSONException, IOException {
        if (this.file.exists()) {
            return parse(readJson(this.file));
        }
        Wallet wallet = new Wallet();
        SharedPreferences sharedPreferencesLegacyPrefs = legacyPrefs();
        wallet.locked = sharedPreferencesLegacyPrefs.getBoolean("locked", deviceHasFingerprint(this.context));
        wallet.userId = sharedPreferencesLegacyPrefs.getLong("userId", 0L);
        wallet.lastUsage = sharedPreferencesLegacyPrefs.getInt("lastUsageDate", 0);
        if (!sharedPreferencesLegacyPrefs.contains("phrase")) {
            return wallet;
        }
        String strHex = hex(unhex(sharedPreferencesLegacyPrefs.getString("pubkey", _UrlKt.FRAGMENT_ENCODE_SET)));
        if (strHex.isEmpty()) {
            Model$$ExternalSyntheticBUOutline0.m1107m("legacy public key missing");
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("legacy", true);
        jSONObject.put("ciphertext", sharedPreferencesLegacyPrefs.getString("phrase", null));
        jSONObject.put("iv", sharedPreferencesLegacyPrefs.getString("iv", null));
        wallet.records.put(strHex, jSONObject);
        wallet.legacy = true;
        return wallet;
    }

    private Wallet parse(JSONObject jSONObject) throws JSONException, IOException {
        if (jSONObject.getInt("version") != 2 || !this.address.equals(jSONObject.getString("address"))) {
            Model$$ExternalSyntheticBUOutline0.m1107m("wallet format/address");
            return null;
        }
        Wallet wallet = new Wallet();
        wallet.userId = jSONObject.getLong("userId");
        wallet.lastUsage = jSONObject.getInt("lastUsage");
        wallet.locked = jSONObject.getBoolean("locked");
        JSONObject jSONObject2 = jSONObject.getJSONObject("records");
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (next.isEmpty() || !next.equals(hex(unhex(next)))) {
                Model$$ExternalSyntheticBUOutline0.m1107m("public key encoding");
                return null;
            }
            JSONObject jSONObject3 = jSONObject2.getJSONObject(next);
            wallet.records.put(next, jSONObject3);
            wallet.legacy |= jSONObject3.optBoolean("legacy", false);
        }
        return wallet;
    }

    private byte[] serialize(Wallet wallet) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, JSONObject> entry : wallet.records.entrySet()) {
            jSONObject.put(entry.getKey(), entry.getValue());
        }
        return new JSONObject().put("version", 2).put("address", this.address).put("userId", wallet.userId).put("lastUsage", wallet.lastUsage).put("locked", wallet.locked).put("records", jSONObject).toString().getBytes(StandardCharsets.UTF_8);
    }

    private void persist(Wallet wallet, Map<String, GramWallet.SecretPhrase> map) throws JSONException, IOException {
        File parentFile = this.file.getParentFile();
        if (!parentFile.isDirectory() && !parentFile.mkdirs()) {
            Model$$ExternalSyntheticBUOutline0.m1107m("wallet directory");
            return;
        }
        byte[] bArrSerialize = serialize(wallet);
        if (bArrSerialize.length > 4194304) {
            Model$$ExternalSyntheticBUOutline0.m1107m("wallet too large");
            return;
        }
        File file = new File(parentFile, this.file.getName() + ".pending");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bArrSerialize);
                fileOutputStream.flush();
                fileOutputStream.getFD().sync();
                fileOutputStream.close();
                byte[] bytes = readBytes(file);
                if (!Arrays.equals(bArrSerialize, bytes)) {
                    throw new IOException("wallet read-back mismatch");
                }
                Wallet wallet2 = parse(new JSONObject(new String(bytes, StandardCharsets.UTF_8)));
                for (Map.Entry<String, GramWallet.SecretPhrase> entry : map.entrySet()) {
                    byte[] bArrCopyBytes = entry.getValue().copyBytes();
                    byte[] bArrDecrypt = null;
                    try {
                        bArrDecrypt = decrypt(wallet2, entry.getKey());
                        if (!MessageDigest.isEqual(bArrCopyBytes, bArrDecrypt)) {
                            throw new IOException("wallet decryption mismatch");
                        }
                        Arrays.fill(bArrCopyBytes, (byte) 0);
                        if (bArrDecrypt != null) {
                            Arrays.fill(bArrDecrypt, (byte) 0);
                        }
                    } catch (Throwable th) {
                        Arrays.fill(bArrCopyBytes, (byte) 0);
                        if (bArrDecrypt != null) {
                            Arrays.fill(bArrDecrypt, (byte) 0);
                        }
                        throw th;
                    }
                }
                Os.rename(file.getAbsolutePath(), this.file.getAbsolutePath());
                notifyChanged();
            } finally {
            }
        } finally {
            if (file.exists() && !file.delete()) {
                FileLog.m1040e(new IOException("wallet staging cleanup"));
            }
        }
    }

    private void migrate(Wallet wallet, String str, Map<String, GramWallet.SecretPhrase> map, ArrayList<String> arrayList, long j) throws Exception {
        ArrayList arrayList2 = new ArrayList(wallet.records.keySet());
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            String str2 = (String) obj;
            if (!str2.equals(str) && wallet.records.get(str2).optBoolean("legacy", false)) {
                GramWallet.SecretPhrase secretPhraseDecryptAuthenticated = decryptAuthenticated(wallet, str2, j);
                map.put(str2, secretPhraseDecryptAuthenticated);
                wallet.records.put(str2, encrypt(wallet, str2, secretPhraseDecryptAuthenticated, arrayList, j));
            }
        }
        wallet.legacy = false;
    }

    private JSONObject encrypt(Wallet wallet, String str, GramWallet.SecretPhrase secretPhrase, ArrayList<String> arrayList, long j) throws Exception {
        Cipher cipherEncryptionCipher;
        String str2 = this.aliasPrefix + UUID.randomUUID();
        arrayList.add(str2);
        JSONObject jSONObjectPut = new JSONObject().put("alias", str2);
        KeyGenParameterSpec.Builder userAuthenticationRequired = new KeyGenParameterSpec.Builder(str2, 3).setKeySize(256).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setUserAuthenticationRequired(wallet.locked);
        if (wallet.locked) {
            if (Build.VERSION.SDK_INT >= 30) {
                userAuthenticationRequired.setUserAuthenticationParameters(30, 3);
            } else {
                userAuthenticationRequired.setUserAuthenticationValidityDurationSeconds(30);
            }
            userAuthenticationRequired.setInvalidatedByBiometricEnrollment(false);
        }
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
        keyGenerator.init(userAuthenticationRequired.build());
        keyGenerator.generateKey();
        try {
            cipherEncryptionCipher = encryptionCipher(wallet, str, jSONObjectPut);
        } catch (Exception e) {
            if (!wallet.locked || !needsAuthentication(e)) {
                throw e;
            }
            this.authenticate(false, j);
            try {
                cipherEncryptionCipher = this.encryptionCipher(wallet, str, jSONObjectPut);
            } catch (Exception e2) {
                if (!needsAuthentication(e2)) {
                    throw e2;
                }
                this.authenticate(true, j);
                cipherEncryptionCipher = this.encryptionCipher(wallet, str, jSONObjectPut);
            }
        }
        byte[] bArrCopyBytes = secretPhrase.copyBytes();
        try {
            jSONObjectPut.put("ciphertext", encode(cipherEncryptionCipher.doFinal(bArrCopyBytes)));
            jSONObjectPut.put("iv", encode(cipherEncryptionCipher.getIV()));
            return jSONObjectPut;
        } finally {
            Arrays.fill(bArrCopyBytes, (byte) 0);
        }
    }

    private Cipher encryptionCipher(Wallet wallet, String str, JSONObject jSONObject) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(1, recordKey(jSONObject));
        cipher.updateAAD(aad(wallet, str));
        return cipher;
    }

    private GramWallet.SecretPhrase decryptAuthenticated(Wallet wallet, String str, long j) throws Exception {
        byte[] bArrDecrypt;
        try {
            bArrDecrypt = decrypt(wallet, str);
        } catch (Exception e) {
            if (!wallet.locked || !needsAuthentication(e)) {
                throw e;
            }
            this.authenticate(false, j);
            try {
                bArrDecrypt = this.decrypt(wallet, str);
            } catch (Exception e2) {
                if (!needsAuthentication(e2)) {
                    throw e2;
                }
                this.authenticate(true, j);
                bArrDecrypt = this.decrypt(wallet, str);
            }
        }
        try {
            return new GramWallet.SecretPhrase(bArrDecrypt);
        } finally {
            Arrays.fill(bArrDecrypt, (byte) 0);
        }
    }

    public byte[] decrypt(Wallet wallet, String str) throws NoSuchPaddingException, NoSuchAlgorithmException, UnrecoverableKeyException, InvalidKeyException, IOException, KeyStoreException, CertificateException, InvalidAlgorithmParameterException {
        Key secretKeySpec;
        JSONObject jSONObject = wallet.records.get(str);
        if (jSONObject == null) {
            Model$$ExternalSyntheticBUOutline0.m1107m("record missing");
            return null;
        }
        if (jSONObject.optBoolean("legacy", false)) {
            String string = legacyPrefs().getString("swkey", null);
            if (string != null) {
                secretKeySpec = new SecretKeySpec(Base64.decode(string, 2), "AES");
            } else {
                KeyStore keyStore = keyStore();
                StringBuilder sb = new StringBuilder();
                sb.append(wallet.locked ? "gramwallet_lock_" : "gramwallet_free_");
                sb.append(this.address);
                Key key = keyStore.getKey(sb.toString(), null);
                if (!(key instanceof SecretKey)) {
                    Model$$ExternalSyntheticBUOutline0.m1107m("legacy key missing");
                    return null;
                }
                secretKeySpec = (SecretKey) key;
            }
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(unhex(jSONObject.getString("iv"))));
            return cipher.doFinal(unhex(jSONObject.getString("ciphertext")));
        }
        Cipher cipher2 = Cipher.getInstance("AES/GCM/NoPadding");
        cipher2.init(2, recordKey(jSONObject), new GCMParameterSpec(128, decode(jSONObject.getString("iv"))));
        cipher2.updateAAD(aad(wallet, str));
        return cipher2.doFinal(decode(jSONObject.getString("ciphertext")));
    }

    private SecretKey recordKey(JSONObject jSONObject) throws JSONException, BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, UnrecoverableKeyException, InvalidKeyException, IOException, KeyStoreException {
        String string = jSONObject.getString("alias");
        if (!string.startsWith(this.aliasPrefix)) {
            Model$$ExternalSyntheticBUOutline0.m1107m("key alias outside wallet");
            return null;
        }
        Key key = keyStore().getKey(string, null);
        if (key == null) {
            Model$$ExternalSyntheticBUOutline0.m1107m("keystore key missing");
            return null;
        }
        if (jSONObject.has("wrappedKey")) {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(2, key);
            byte[] bArrDoFinal = cipher.doFinal(decode(jSONObject.getString("wrappedKey")));
            try {
                if (bArrDoFinal.length != 32) {
                    throw new IOException("wrapped key length");
                }
                return new SecretKeySpec(bArrDoFinal, "AES");
            } finally {
                Arrays.fill(bArrDoFinal, (byte) 0);
            }
        }
        if (!(key instanceof SecretKey)) {
            Model$$ExternalSyntheticBUOutline0.m1107m("keystore key type");
            return null;
        }
        return (SecretKey) key;
    }

    private byte[] aad(Wallet wallet, String str) {
        return ("GramWallet:2\n" + this.address + "\n" + wallet.userId + "\n" + str + "\n" + wallet.locked).getBytes(StandardCharsets.UTF_8);
    }

    private void authenticate(boolean z, final long j) throws StorageException {
        Object obj = LOCK;
        synchronized (obj) {
            checkEpoch(j);
        }
        String strAuthenticate = GramWalletStorageAuth.authenticate(this.file.getAbsolutePath(), z, new GramWalletStorageAuth.Current() { // from class: org.telegram.ui.Wallet.GramWalletStorage$$ExternalSyntheticLambda4
            @Override // org.telegram.ui.Wallet.GramWalletStorageAuth.Current
            public final boolean get() {
                return this.f$0.lambda$authenticate$7(j);
            }
        });
        synchronized (obj) {
            checkEpoch(j);
        }
        if (strAuthenticate != null) {
            throw new StorageException(strAuthenticate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$authenticate$7(long j) {
        return j == epoch();
    }

    private static boolean needsAuthentication(Throwable th) {
        while (th != null) {
            if (th instanceof UserNotAuthenticatedException) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }

    private void cleanup(Wallet wallet) {
        try {
            FileDescriptor fileDescriptorOpen = Os.open(this.file.getParent(), OsConstants.O_RDONLY, 0);
            try {
                Os.fsync(fileDescriptorOpen);
                Os.close(fileDescriptorOpen);
                KeyStore keyStore = keyStore();
                Enumeration<String> enumerationAliases = keyStore.aliases();
                while (enumerationAliases.hasMoreElements()) {
                    String strNextElement = enumerationAliases.nextElement();
                    if (strNextElement.startsWith(this.aliasPrefix) && !references(wallet, strNextElement)) {
                        keyStore.deleteEntry(strNextElement);
                    }
                }
                if (wallet.legacy) {
                    return;
                }
                if (!legacyPrefs().edit().clear().commit()) {
                    throw new IOException("legacy cleanup");
                }
                keyStore.deleteEntry("gramwallet_free_" + this.address);
                keyStore.deleteEntry("gramwallet_lock_" + this.address);
            } catch (Throwable th) {
                Os.close(fileDescriptorOpen);
                throw th;
            }
        } catch (Exception e) {
            failed(e);
        }
    }

    private void cleanupUncommitted(ArrayList<String> arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        synchronized (LOCK) {
            try {
                Wallet walletLoad = load();
                KeyStore keyStore = keyStore();
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    String str = arrayList.get(i);
                    i++;
                    String str2 = str;
                    if (!references(walletLoad, str2)) {
                        keyStore.deleteEntry(str2);
                    }
                }
            } catch (Exception e) {
                failed(e);
            }
        }
    }

    private static boolean references(Wallet wallet, String str) {
        Iterator<JSONObject> it = wallet.records.values().iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().optString("alias"))) {
                return true;
            }
        }
        return false;
    }

    private static KeyStore keyStore() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
        keyStore.load(null);
        return keyStore;
    }

    private SharedPreferences legacyPrefs() {
        return this.context.getSharedPreferences("gramwallet_" + this.address, 0);
    }

    private static File directory(Context context) {
        return new File(context.getNoBackupFilesDir(), "gramwallets");
    }

    private int now() {
        return ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
    }

    private void failed(Exception exc) {
        this.lastError = exc;
        FileLog.m1040e(exc);
    }

    private long epoch() {
        long jLongValue;
        synchronized (LOCK) {
            Long l = EPOCHS.get(this.file.getAbsolutePath());
            jLongValue = l == null ? 0L : l.longValue();
        }
        return jLongValue;
    }

    private void invalidate() {
        EPOCHS.put(this.file.getAbsolutePath(), Long.valueOf(epoch() + 1));
        GramWalletStorageAuth.cancel(this.file.getAbsolutePath());
    }

    private void checkEpoch(long j) throws StorageException {
        if (j != epoch()) {
            throw new StorageException("STORAGE_CANCELED");
        }
    }

    private void deliver(final long j, final Utilities.Callback<String> callback, final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStorage$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deliver$8(callback, j, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deliver$8(Utilities.Callback callback, long j, String str) {
        if (callback != null) {
            if (j != epoch()) {
                str = "STORAGE_CANCELED";
            }
            callback.run(str);
        }
    }

    public static class StorageException extends Exception {
        public StorageException(String str) {
            super(str);
        }
    }

    private static String encode(byte[] bArr) {
        return Base64.encodeToString(bArr, 2);
    }

    private static byte[] decode(String str) {
        return Base64.decode(str, 2);
    }

    private static String hex(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        char[] charArray = "0123456789abcdef".toCharArray();
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i * 2;
            byte b2 = bArr[i];
            cArr[i2] = charArray[(b2 & UByte.MAX_VALUE) >>> 4];
            cArr[i2 + 1] = charArray[b2 & 15];
        }
        return new String(cArr);
    }

    private static byte[] unhex(String str) throws IOException {
        if (str == null || str.length() % 2 != 0) {
            Model$$ExternalSyntheticBUOutline0.m1107m("hex length");
            return null;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            int iDigit = Character.digit(str.charAt(i2), 16);
            int iDigit2 = Character.digit(str.charAt(i2 + 1), 16);
            if (iDigit < 0 || iDigit2 < 0) {
                Model$$ExternalSyntheticBUOutline0.m1107m("hex digit");
                return null;
            }
            bArr[i] = (byte) (iDigit2 | (iDigit << 4));
        }
        return bArr;
    }

    private static String digest(String str) {
        try {
            return hex(MessageDigest.getInstance("SHA-256").digest(str.getBytes(StandardCharsets.UTF_8)));
        } catch (Exception e) {
            UnsafeUtil$$ExternalSyntheticBUOutline0.m507m(e);
            return null;
        }
    }

    private static JSONObject readJson(File file) {
        return new JSONObject(new String(readBytes(file), StandardCharsets.UTF_8));
    }

    private static byte[] readBytes(File file) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int i = fileInputStream.read(bArr);
                    if (i != -1) {
                        if (byteArrayOutputStream.size() + i > 4194304) {
                            throw new IOException("wallet too large");
                        }
                        byteArrayOutputStream.write(bArr, 0, i);
                    } else {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        fileInputStream.close();
                        return byteArray;
                    }
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
