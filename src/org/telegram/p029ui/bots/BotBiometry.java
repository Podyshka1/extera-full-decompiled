package org.telegram.p029ui.bots;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import android.text.TextUtils;
import android.util.Pair;
import androidx.biometric.BiometricManager;
import androidx.biometric.BiometricPrompt;
import androidx.core.content.ContextCompat;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import okhttp3.internal.url._UrlKt;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class BotBiometry {
    private static final WeakHashMap instances = new WeakHashMap();
    private static KeyStore keyStore;
    public boolean access_granted;
    public boolean access_requested;
    public final long botId;
    private Utilities.Callback2 callback;
    public final Context context;
    public final int currentAccount;
    public boolean disabled;
    private String encrypted_token;

    /* JADX INFO: renamed from: iv */
    private String f2246iv;
    private BiometricPrompt prompt;

    public static BotBiometry get(Context context, int i, long j) {
        Pair pair = new Pair(Integer.valueOf(i), Long.valueOf(j));
        WeakHashMap weakHashMap = instances;
        BotBiometry botBiometry = (BotBiometry) weakHashMap.get(pair);
        if (botBiometry != null) {
            return botBiometry;
        }
        BotBiometry botBiometry2 = new BotBiometry(context, i, j);
        weakHashMap.put(pair, botBiometry2);
        return botBiometry2;
    }

    private BotBiometry(Context context, int i, long j) {
        this.context = context;
        this.currentAccount = i;
        this.botId = j;
        load();
    }

    public void load() {
        SharedPreferences sharedPreferences = this.context.getSharedPreferences("2botbiometry_" + this.currentAccount, 0);
        this.encrypted_token = sharedPreferences.getString(String.valueOf(this.botId), null);
        this.f2246iv = sharedPreferences.getString(String.valueOf(this.botId) + "_iv", null);
        boolean z = true;
        boolean z2 = this.encrypted_token != null;
        this.access_granted = z2;
        if (!z2) {
            if (!sharedPreferences.getBoolean(this.botId + "_requested", false)) {
                z = false;
            }
        }
        this.access_requested = z;
        this.disabled = sharedPreferences.getBoolean(this.botId + "_disabled", false);
    }

    public boolean asked() {
        return this.access_requested;
    }

    public boolean granted() {
        return this.access_granted;
    }

    public void setGranted(boolean z) {
        this.access_requested = true;
        this.access_granted = z;
        save();
    }

    public static String getAvailableType(Context context) {
        try {
            BiometricManager biometricManagerFrom = BiometricManager.from(context);
            if (biometricManagerFrom == null) {
                return null;
            }
            if (biometricManagerFrom.canAuthenticate(15) != 0) {
                return null;
            }
            return "unknown";
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }

    public void requestToken(String str, final Utilities.Callback2 callback2) {
        prompt(str, true, null, new Utilities.Callback2() { // from class: org.telegram.ui.bots.BotBiometry$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$requestToken$0(callback2, (Boolean) obj, (BiometricPrompt.AuthenticationResult) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestToken$0(Utilities.Callback2 callback2, Boolean bool, BiometricPrompt.AuthenticationResult authenticationResult) {
        BiometricPrompt.CryptoObject cryptoObject;
        String str = null;
        if (authenticationResult != null) {
            try {
                if (Build.VERSION.SDK_INT >= 30) {
                    cryptoObject = makeCryptoObject(true);
                } else {
                    cryptoObject = authenticationResult.getCryptoObject();
                }
                if (cryptoObject != null) {
                    if (!TextUtils.isEmpty(this.encrypted_token)) {
                        str = new String(cryptoObject.getCipher().doFinal(Utilities.hexToBytes(this.encrypted_token)), StandardCharsets.UTF_8);
                    } else {
                        str = this.encrypted_token;
                    }
                } else if (!TextUtils.isEmpty(this.encrypted_token)) {
                    throw new RuntimeException("No cryptoObject found");
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
                bool = Boolean.FALSE;
            }
        }
        callback2.run(bool, str);
    }

    public void updateToken(String str, final String str2, final Utilities.Callback callback) {
        prompt(str, false, str2, new Utilities.Callback2() { // from class: org.telegram.ui.bots.BotBiometry$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$updateToken$1(str2, callback, (Boolean) obj, (BiometricPrompt.AuthenticationResult) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateToken$1(String str, Utilities.Callback callback, Boolean bool, BiometricPrompt.AuthenticationResult authenticationResult) {
        BiometricPrompt.CryptoObject cryptoObject;
        if (authenticationResult != null) {
            try {
                authenticationResult.getCryptoObject();
                if (TextUtils.isEmpty(str)) {
                    this.encrypted_token = null;
                    this.f2246iv = null;
                } else {
                    if (Build.VERSION.SDK_INT >= 30) {
                        cryptoObject = makeCryptoObject(false);
                    } else {
                        cryptoObject = authenticationResult.getCryptoObject();
                    }
                    if (cryptoObject != null) {
                        this.encrypted_token = Utilities.bytesToHex(cryptoObject.getCipher().doFinal(str.getBytes(StandardCharsets.UTF_8)));
                        this.f2246iv = Utilities.bytesToHex(cryptoObject.getCipher().getIV());
                    } else {
                        throw new RuntimeException("No cryptoObject found");
                    }
                }
                save();
            } catch (Exception e) {
                FileLog.m1136e(e);
                bool = Boolean.FALSE;
            }
        }
        callback.run(bool);
    }

    private void initPrompt() {
        if (this.prompt != null) {
            return;
        }
        this.prompt = new BiometricPrompt(LaunchActivity.instance, ContextCompat.getMainExecutor(this.context), new BiometricPrompt.AuthenticationCallback() { // from class: org.telegram.ui.bots.BotBiometry.1
            @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
            public void onAuthenticationError(int i, CharSequence charSequence) {
                FileLog.m1133d("BotBiometry onAuthenticationError " + i + " \"" + ((Object) charSequence) + "\"");
                if (BotBiometry.this.callback != null) {
                    Utilities.Callback2 callback2 = BotBiometry.this.callback;
                    BotBiometry.this.callback = null;
                    callback2.run(Boolean.FALSE, null);
                }
            }

            @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
            public void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult authenticationResult) {
                FileLog.m1133d("BotBiometry onAuthenticationSucceeded");
                if (BotBiometry.this.callback != null) {
                    Utilities.Callback2 callback2 = BotBiometry.this.callback;
                    BotBiometry.this.callback = null;
                    callback2.run(Boolean.TRUE, authenticationResult);
                }
            }

            @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
            public void onAuthenticationFailed() {
                FileLog.m1133d("BotBiometry onAuthenticationFailed");
            }
        });
    }

    private BiometricPrompt.CryptoObject makeCryptoObject(boolean z) {
        try {
            Cipher cipher = getCipher();
            SecretKey secretKey = getSecretKey();
            if (z) {
                cipher.init(2, secretKey, new IvParameterSpec(Utilities.hexToBytes(this.f2246iv)));
            } else {
                cipher.init(1, secretKey);
            }
            return new BiometricPrompt.CryptoObject(cipher);
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }

    private void prompt(String str, boolean z, String str2, Utilities.Callback2 callback2) {
        this.callback = callback2;
        try {
            initPrompt();
            BiometricPrompt.CryptoObject cryptoObjectMakeCryptoObject = makeCryptoObject(z);
            BiometricPrompt.PromptInfo.Builder allowedAuthenticators = new BiometricPrompt.PromptInfo.Builder().setTitle(UserObject.getUserName(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.botId)))).setNegativeButtonText(LocaleController.getString(C2888R.string.Back)).setAllowedAuthenticators(15);
            if (!TextUtils.isEmpty(str)) {
                allowedAuthenticators.setDescription(str);
            }
            BiometricPrompt.PromptInfo promptInfoBuild = allowedAuthenticators.build();
            if (cryptoObjectMakeCryptoObject != null && !z && Build.VERSION.SDK_INT >= 30) {
                try {
                    if (TextUtils.isEmpty(str2)) {
                        this.encrypted_token = null;
                    } else {
                        this.encrypted_token = Utilities.bytesToHex(cryptoObjectMakeCryptoObject.getCipher().doFinal(str2.getBytes(StandardCharsets.UTF_8)));
                        this.f2246iv = Utilities.bytesToHex(cryptoObjectMakeCryptoObject.getCipher().getIV());
                    }
                    save();
                    this.callback = null;
                    callback2.run(Boolean.TRUE, null);
                    return;
                } catch (Exception e) {
                    FileLog.m1136e(e);
                    cryptoObjectMakeCryptoObject = makeCryptoObject(z);
                }
            }
            if (cryptoObjectMakeCryptoObject != null && Build.VERSION.SDK_INT < 30) {
                this.prompt.authenticate(promptInfoBuild, cryptoObjectMakeCryptoObject);
            } else {
                this.prompt.authenticate(promptInfoBuild);
            }
        } catch (Exception e2) {
            FileLog.m1136e(e2);
            callback2.run(Boolean.FALSE, null);
        }
    }

    private SecretKey getSecretKey() throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException, NoSuchProviderException, InvalidAlgorithmParameterException {
        if (keyStore == null) {
            KeyStore keyStore2 = KeyStore.getInstance("AndroidKeyStore");
            keyStore = keyStore2;
            keyStore2.load(null);
        }
        if (keyStore.containsAlias("9bot_" + this.botId)) {
            return (SecretKey) keyStore.getKey("9bot_" + this.botId, null);
        }
        KeyGenParameterSpec.Builder builder = new KeyGenParameterSpec.Builder("9bot_" + this.botId, 3);
        builder.setBlockModes("CBC");
        builder.setEncryptionPaddings("PKCS7Padding");
        builder.setUserAuthenticationRequired(true);
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            builder.setUserAuthenticationParameters(60, 2);
        }
        if (i >= 24) {
            builder.setInvalidatedByBiometricEnrollment(true);
        }
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
        keyGenerator.init(builder.build());
        return keyGenerator.generateKey();
    }

    private Cipher getCipher() {
        return Cipher.getInstance("AES/CBC/PKCS7Padding");
    }

    public JSONObject getStatus() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        String availableType = getAvailableType(this.context);
        boolean z = false;
        if (availableType != null) {
            jSONObject.put("available", true);
            jSONObject.put("type", availableType);
        } else {
            jSONObject.put("available", false);
        }
        jSONObject.put("access_requested", this.access_requested);
        if (this.access_granted && !this.disabled) {
            z = true;
        }
        jSONObject.put("access_granted", z);
        jSONObject.put("token_saved", !TextUtils.isEmpty(this.encrypted_token));
        jSONObject.put("device_id", getDeviceId(this.context, this.currentAccount, this.botId));
        return jSONObject;
    }

    public static String getDeviceId(Context context, int i, long j) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("2botbiometry_" + i, 0);
        String string = sharedPreferences.getString("device_id" + j, null);
        if (string != null) {
            return string;
        }
        byte[] bArr = new byte[32];
        new SecureRandom().nextBytes(bArr);
        String strBytesToHex = Utilities.bytesToHex(bArr);
        sharedPreferences.edit().putString("device_id" + j, strBytesToHex).apply();
        return strBytesToHex;
    }

    public void save() {
        SharedPreferences.Editor editorEdit = this.context.getSharedPreferences("2botbiometry_" + this.currentAccount, 0).edit();
        if (this.access_requested) {
            editorEdit.putBoolean(this.botId + "_requested", true);
        } else {
            editorEdit.remove(this.botId + "_requested");
        }
        if (this.access_granted) {
            String strValueOf = String.valueOf(this.botId);
            String str = this.encrypted_token;
            String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            editorEdit.putString(strValueOf, str);
            String str3 = String.valueOf(this.botId) + "_iv";
            String str4 = this.f2246iv;
            if (str4 != null) {
                str2 = str4;
            }
            editorEdit.putString(str3, str2);
        } else {
            editorEdit.remove(String.valueOf(this.botId));
            editorEdit.remove(String.valueOf(this.botId) + "_iv");
        }
        if (this.disabled) {
            editorEdit.putBoolean(this.botId + "_disabled", true);
        } else {
            editorEdit.remove(this.botId + "_disabled");
        }
        editorEdit.apply();
    }

    public static class Bot {
        public boolean disabled;
        public TLRPC.User user;

        private Bot(TLRPC.User user, boolean z) {
            this.user = user;
            this.disabled = z;
        }
    }

    public static void getBots(Context context, final int i, final Utilities.Callback callback) {
        if (callback == null) {
            return;
        }
        int i2 = 0;
        SharedPreferences sharedPreferences = context.getSharedPreferences("2botbiometry_" + i, 0);
        final ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, ?>> it = sharedPreferences.getAll().entrySet().iterator();
        while (it.hasNext()) {
            String key = it.next().getKey();
            if (key.endsWith("_requested")) {
                try {
                    arrayList.add(Long.valueOf(Long.parseLong(key.substring(0, key.length() - 10))));
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
        }
        final HashMap map = new HashMap();
        int size = arrayList.size();
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            Long l = (Long) obj;
            BotBiometry botBiometry = get(context, i, l.longValue());
            if (botBiometry.access_granted && botBiometry.access_requested) {
                map.put(l, Boolean.valueOf(!botBiometry.disabled));
            }
        }
        if (arrayList.isEmpty()) {
            callback.run(new ArrayList());
        } else {
            MessagesStorage.getInstance(i).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.bots.BotBiometry$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BotBiometry.$r8$lambda$BX8icqv4QTfhlOWuLIV7JSZ6DCc(i, arrayList, map, callback);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$BX8icqv4QTfhlOWuLIV7JSZ6DCc(int i, ArrayList arrayList, final HashMap map, final Utilities.Callback callback) {
        final ArrayList<TLRPC.User> users = MessagesStorage.getInstance(i).getUsers(arrayList);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotBiometry$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                BotBiometry.$r8$lambda$zNOl549nqlZ2QPq8Y9Vb3LG8d5I(users, map, callback);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$zNOl549nqlZ2QPq8Y9Vb3LG8d5I(ArrayList arrayList, HashMap map, Utilities.Callback callback) {
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            TLRPC.User user = (TLRPC.User) arrayList.get(i);
            Boolean bool = (Boolean) map.get(Long.valueOf(user.f1825id));
            arrayList2.add(new Bot(user, bool == null || !bool.booleanValue()));
        }
        callback.run(arrayList2);
    }

    public static void toggleBotDisabled(Context context, int i, long j, boolean z) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("2botbiometry_" + i, 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putBoolean(j + "_disabled", z);
        if (!z && sharedPreferences.getString(String.valueOf(j), null) == null) {
            editorEdit.putString(String.valueOf(j), _UrlKt.FRAGMENT_ENCODE_SET);
        }
        editorEdit.apply();
    }

    public static void clear() {
        Context context = ApplicationLoader.applicationContext;
        if (context == null) {
            return;
        }
        for (int i = 0; i < 16; i++) {
            context.getSharedPreferences("2botbiometry_" + i, 0).edit().clear().apply();
        }
        instances.clear();
    }
}
