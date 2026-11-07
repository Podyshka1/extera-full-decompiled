package com.google.android.recaptcha.internal;

import android.security.keystore.KeyGenParameterSpec;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableEntryException;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zznk implements zznf {
    private final String zza = "recck";
    private final Lazy zzb = LazyKt.lazy(zznj.zza);

    public zznk(String str) {
    }

    @Override // com.google.android.recaptcha.internal.zznf
    public final byte[] zza(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
        cipher.init(1, zzc());
        return ArraysKt.plus(cipher.getIV(), cipher.doFinal(bArr));
    }

    @Override // com.google.android.recaptcha.internal.zznf
    public final byte[] zzb(byte[] bArr) {
        try {
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(2, zzc(), new GCMParameterSpec(128, bArr, 0, 12));
            return cipher.doFinal(bArr, 12, bArr.length - 12);
        } catch (Exception unused) {
            return null;
        }
    }

    public final SecretKey zzc() throws NoSuchAlgorithmException, KeyStoreException, NoSuchProviderException, UnrecoverableEntryException, InvalidAlgorithmParameterException {
        SecretKey secretKey;
        KeyStore keyStore = (KeyStore) this.zzb.getValue();
        String str = this.zza;
        KeyStore.Entry entry = keyStore.getEntry(str, null);
        KeyStore.SecretKeyEntry secretKeyEntry = entry instanceof KeyStore.SecretKeyEntry ? (KeyStore.SecretKeyEntry) entry : null;
        if (secretKeyEntry != null && (secretKey = secretKeyEntry.getSecretKey()) != null) {
            return secretKey;
        }
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
        keyGenerator.init(new KeyGenParameterSpec.Builder(str, 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").build());
        return keyGenerator.generateKey();
    }
}
