package com.yandex.runtime.attestation_storage.internal;

import android.security.keystore.KeyGenParameterSpec;
import android.util.Base64;
import com.android.dx.dex.code.CstInsn$$ExternalSyntheticBUOutline0;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.integrity.IntegrityManagerFactory;
import com.google.android.play.core.integrity.IntegrityTokenRequest;
import com.google.android.play.core.integrity.IntegrityTokenResponse;
import com.yandex.runtime.Runtime;
import com.yandex.runtime.attestation.EcPublicKey;
import com.yandex.runtime.logging.Logger;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import java.security.UnrecoverableEntryException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
public class PlatformKeystoreImpl implements PlatformKeystore {
    private static final int CERTIFICATE_VALID_YEARS = 10;
    private String alias;
    private KeyStore keyStore;
    private KeyStore.PrivateKeyEntry privateKeyEntry;

    private static native String getKeyAliasBase();

    public static boolean attestationAvailable() {
        Provider provider = Security.getProvider("AndroidKeyStore");
        if (provider == null || provider.getService("KeyPairGenerator", "EC") == null || provider.getService("KeyFactory", "EC") == null || Security.getProviders("Signature.NONEwithECDSA").length == 0) {
            return false;
        }
        try {
            CertificateFactory.getInstance("X.509");
            return Security.getProviders("MessageDigest.SHA-256").length != 0;
        } catch (CertificateException unused) {
            return false;
        }
    }

    public static void cleanupUnusedKeys(String str) {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            try {
                keyStore.load(null);
                try {
                    ArrayList list = Collections.list(keyStore.aliases());
                    int size = list.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = list.get(i);
                        i++;
                        String str2 = (String) obj;
                        if (str2.startsWith(getKeyAliasBase())) {
                            if (str != null) {
                                if (str2.equals(getKeyAliasBase() + str)) {
                                }
                            }
                            keyStore.deleteEntry(str2);
                        }
                    }
                } catch (KeyStoreException e) {
                    Logger.error("Could not delete entry: " + e.getMessage());
                }
            } catch (IOException e2) {
                Logger.error("Could not load keystore for key cleanup. I/O error: " + e2.getMessage());
            } catch (NoSuchAlgorithmException e3) {
                Logger.error("Could not load keystore for key cleanup. No such algorithm for checking keystore integrity: " + e3.getMessage());
            } catch (CertificateException e4) {
                Logger.error("Could not load keystore for key cleanup. Could not load certificate: " + e4.getMessage());
            }
        } catch (KeyStoreException e5) {
            Logger.error("Could not get keystore implementation for key cleanup: " + e5.getMessage());
        }
    }

    public static PlatformKeystore createKeystore(String str) {
        try {
            return new PlatformKeystoreImpl(getKeyAliasBase() + str);
        } catch (IOException | CertificateException unused) {
            return null;
        }
    }

    @Override // com.yandex.runtime.attestation_storage.internal.PlatformKeystore
    public boolean hasKey() {
        return this.privateKeyEntry != null;
    }

    @Override // com.yandex.runtime.attestation_storage.internal.PlatformKeystore
    public void generateKey(byte[] bArr) {
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("EC", "AndroidKeyStore");
            try {
                Calendar calendar = Calendar.getInstance();
                Date time = calendar.getTime();
                calendar.add(1, 10);
                keyPairGenerator.initialize(new KeyGenParameterSpec.Builder(this.alias, 4).setDigests("NONE").setAlgorithmParameterSpec(new ECGenParameterSpec("secp256r1")).setAttestationChallenge(bArr).setKeySize(256).setCertificateNotBefore(time).setCertificateNotAfter(calendar.getTime()).build());
                keyPairGenerator.generateKeyPair();
                tryLoadEntry();
            } catch (InvalidAlgorithmParameterException e) {
                CstInsn$$ExternalSyntheticBUOutline0.m188m("Arguments for initialization of EC algorithm are invalid: ", e.getMessage());
            }
        } catch (NoSuchAlgorithmException e2) {
            CstInsn$$ExternalSyntheticBUOutline0.m188m("EC algorithm is unsupported in AndroidKeyStore: ", e2.getMessage());
        } catch (NoSuchProviderException e3) {
            CstInsn$$ExternalSyntheticBUOutline0.m188m("No Android Key Store in the system: ", e3.getMessage());
        }
    }

    @Override // com.yandex.runtime.attestation_storage.internal.PlatformKeystore
    public void removeKey() {
        this.privateKeyEntry = null;
        if (hasEntry()) {
            try {
                this.keyStore.deleteEntry(this.alias);
            } catch (KeyStoreException e) {
                CstInsn$$ExternalSyntheticBUOutline0.m188m("Keystore is not initialized: ", e.getMessage());
            }
        }
    }

    @Override // com.yandex.runtime.attestation_storage.internal.PlatformKeystore
    public String getApplicationId() {
        throw new UnsupportedOperationException("Should not be used for Android");
    }

    @Override // com.yandex.runtime.attestation_storage.internal.PlatformKeystore
    public byte[] getKeystoreProof() {
        return getCertificateChain();
    }

    @Override // com.yandex.runtime.attestation_storage.internal.PlatformKeystore
    public String getAppAttestKeyId() {
        throw new UnsupportedOperationException("No AppAttest for Android");
    }

    @Override // com.yandex.runtime.attestation_storage.internal.PlatformKeystore
    public byte[] getAppAttestKeyAssertion() {
        throw new UnsupportedOperationException("No AppAttest for Android");
    }

    @Override // com.yandex.runtime.attestation_storage.internal.PlatformKeystore
    public EcPublicKey getEcPublicKey() {
        try {
            ECPoint w = ((ECPublicKeySpec) KeyFactory.getInstance("EC").getKeySpec(this.privateKeyEntry.getCertificate().getPublicKey(), ECPublicKeySpec.class)).getW();
            return new EcPublicKey(w.getAffineX().toByteArray(), w.getAffineY().toByteArray());
        } catch (NoSuchAlgorithmException e) {
            CstInsn$$ExternalSyntheticBUOutline0.m188m("EC algorithm is unsupported in AndroidKeyStore: ", e.getMessage());
            return null;
        } catch (InvalidKeySpecException e2) {
            CstInsn$$ExternalSyntheticBUOutline0.m188m("Invalid KeySpec or key could not be processed: ", e2.getMessage());
            return null;
        }
    }

    @Override // com.yandex.runtime.attestation_storage.internal.PlatformKeystore
    public void requestAttestKey(byte[] bArr, long j, final AttestationListener attestationListener) {
        String strCreateNonce = createNonce(bArr);
        if (strCreateNonce == null) {
            attestationListener.onAttestationFailed("Could not create nonce");
        }
        Task<IntegrityTokenResponse> taskRequestIntegrityToken = IntegrityManagerFactory.create(Runtime.getApplicationContext()).requestIntegrityToken(IntegrityTokenRequest.builder().setNonce(strCreateNonce).setCloudProjectNumber(j).build());
        taskRequestIntegrityToken.addOnSuccessListener(new OnSuccessListener<IntegrityTokenResponse>() { // from class: com.yandex.runtime.attestation_storage.internal.PlatformKeystoreImpl.1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public void onSuccess(IntegrityTokenResponse integrityTokenResponse) {
                attestationListener.onAttestationReceived(integrityTokenResponse.token().getBytes());
            }
        });
        taskRequestIntegrityToken.addOnFailureListener(new OnFailureListener() { // from class: com.yandex.runtime.attestation_storage.internal.PlatformKeystoreImpl.2
            @Override // com.google.android.gms.tasks.OnFailureListener
            public void onFailure(Exception exc) {
                attestationListener.onAttestationFailed(exc.getMessage());
            }
        });
    }

    @Override // com.yandex.runtime.attestation_storage.internal.PlatformKeystore
    public byte[] ecSign(byte[] bArr) {
        if (this.privateKeyEntry == null) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Key entry is null. Generate key first.");
            return null;
        }
        try {
            Signature signature = Signature.getInstance("NONEwithECDSA");
            try {
                signature.initSign(this.privateKeyEntry.getPrivateKey());
                try {
                    signature.update(bArr);
                    return signature.sign();
                } catch (SignatureException e) {
                    CstInsn$$ExternalSyntheticBUOutline0.m188m("Could not sign provided data: ", e.getMessage());
                    return null;
                }
            } catch (InvalidKeyException e2) {
                CstInsn$$ExternalSyntheticBUOutline0.m188m("Key provided for signing is invalid: ", e2.getMessage());
                return null;
            }
        } catch (NoSuchAlgorithmException e3) {
            CstInsn$$ExternalSyntheticBUOutline0.m188m("No NONEwithECDSA support: ", e3.getMessage());
            return null;
        }
    }

    private PlatformKeystoreImpl(String str) throws IOException, CertificateException {
        this.alias = str;
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            this.keyStore = keyStore;
            try {
                keyStore.load(null);
                if (hasEntry()) {
                    tryLoadEntry();
                }
            } catch (NoSuchAlgorithmException e) {
                CstInsn$$ExternalSyntheticBUOutline0.m188m("Can't check the integrity of keystore: ", e.getMessage());
                throw null;
            }
        } catch (KeyStoreException e2) {
            CstInsn$$ExternalSyntheticBUOutline0.m188m("No Android Key Store in the system: ", e2.getMessage());
            throw null;
        }
    }

    private boolean hasEntry() {
        try {
            return this.keyStore.containsAlias(this.alias);
        } catch (KeyStoreException e) {
            CstInsn$$ExternalSyntheticBUOutline0.m188m("Keystore is not initialized: ", e.getMessage());
            return false;
        }
    }

    private void tryLoadEntry() {
        try {
            KeyStore.Entry entry = this.keyStore.getEntry(this.alias, null);
            if (entry == null) {
                return;
            }
            if (!(entry instanceof KeyStore.PrivateKeyEntry)) {
                Segment$$ExternalSyntheticBUOutline1.m848m("Key entry is not an instance of a KeyStore.PrivateKeyEntry");
                return;
            }
            KeyStore.PrivateKeyEntry privateKeyEntry = (KeyStore.PrivateKeyEntry) entry;
            this.privateKeyEntry = privateKeyEntry;
            if (privateKeyEntry.getPrivateKey().getAlgorithm() != "EC") {
                removeKey();
            }
        } catch (KeyStoreException e) {
            CstInsn$$ExternalSyntheticBUOutline0.m188m("Keystore has not been loaded: ", e.getMessage());
        } catch (NoSuchAlgorithmException e2) {
            CstInsn$$ExternalSyntheticBUOutline0.m188m("No such algorithm in the environment: ", e2.getMessage());
        } catch (UnrecoverableEntryException e3) {
            CstInsn$$ExternalSyntheticBUOutline0.m188m("Entry is protected: ", e3.getMessage());
        }
    }

    private byte[] getCertificateChain() {
        if (this.privateKeyEntry == null) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Key entry is null. Generate key first.");
            return null;
        }
        try {
            try {
                return CertificateFactory.getInstance("X.509").generateCertPath(Arrays.asList(this.privateKeyEntry.getCertificateChain())).getEncoded();
            } catch (CertificateEncodingException | CertificateException unused) {
                return null;
            }
        } catch (CertificateException e) {
            CstInsn$$ExternalSyntheticBUOutline0.m188m("X.509 is unsupported in the system: ", e.getMessage());
            return null;
        }
    }

    private String createNonce(byte[] bArr) {
        try {
            byte[] certificateChain = getCertificateChain();
            if (certificateChain == null) {
                return null;
            }
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            messageDigest.update(certificateChain);
            return Base64.encodeToString(messageDigest.digest(), 10);
        } catch (NoSuchAlgorithmException e) {
            CstInsn$$ExternalSyntheticBUOutline0.m188m("No SHA-256 algorithm in the environment: ", e.getMessage());
            return null;
        }
    }
}
