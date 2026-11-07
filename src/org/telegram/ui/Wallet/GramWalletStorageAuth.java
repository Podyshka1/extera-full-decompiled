package org.telegram.ui.Wallet;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.hardware.biometrics.BiometricPrompt;
import android.hardware.biometrics.BiometricPrompt$AuthenticationCallback;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import com.exteragram.messenger.security.SensitiveRequestSwitch$$ExternalSyntheticApiModelOutline0;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.LaunchActivity;

/* JADX INFO: loaded from: classes8.dex */
public abstract class GramWalletStorageAuth {
    private static Request active = null;
    private static int nextCredentialCode = 22336;

    public interface Current {
        boolean get();
    }

    public static String authenticate(String str, final boolean z, final Current current) {
        String str2;
        Runnable runnable;
        final Request request = new Request();
        request.walletId = str;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStorageAuth$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                GramWalletStorageAuth.m23086$r8$lambda$zBZVXr7fDuP5ELXgdm8XVfl_WI(request, current, z);
            }
        });
        try {
            if (request.latch.await(90L, TimeUnit.SECONDS)) {
                str2 = request.error;
                request.expired = true;
                runnable = new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStorageAuth$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        GramWalletStorageAuth.$r8$lambda$4zI6UV4jRKzxpwUfsjAqiZn1hp0(request);
                    }
                };
            } else {
                str2 = "AUTH_TIMEOUT";
                request.expired = true;
                runnable = new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStorageAuth$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        GramWalletStorageAuth.$r8$lambda$4zI6UV4jRKzxpwUfsjAqiZn1hp0(request);
                    }
                };
            }
            AndroidUtilities.runOnUIThread(runnable);
            return str2;
        } catch (Throwable th) {
            request.expired = true;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStorageAuth$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    GramWalletStorageAuth.$r8$lambda$4zI6UV4jRKzxpwUfsjAqiZn1hp0(request);
                }
            });
            throw th;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$-zBZVXr7fDuP5ELXgdm8XVfl_WI, reason: not valid java name */
    public static /* synthetic */ void m23086$r8$lambda$zBZVXr7fDuP5ELXgdm8XVfl_WI(Request request, Current current, boolean z) {
        if (request.expired) {
            return;
        }
        try {
            if (!current.get()) {
                request.finish("STORAGE_CANCELED");
                return;
            }
            active = request;
            LaunchActivity launchActivity = LaunchActivity.instance;
            if (launchActivity != null && !launchActivity.isFinishing() && !launchActivity.isDestroyed() && !launchActivity.getSupportFragmentManager().isStateSaved()) {
                request.activity = launchActivity;
                request.start(z);
                return;
            }
            request.finish("AUTH_UNAVAILABLE");
        } catch (Exception e) {
            FileLog.m1040e(e);
            request.finish("AUTH_UNAVAILABLE");
        }
    }

    public static /* synthetic */ void $r8$lambda$4zI6UV4jRKzxpwUfsjAqiZn1hp0(Request request) {
        request.finish("AUTH_CANCELED");
        request.stopBiometrics();
        if (active == request) {
            active = null;
        }
    }

    public static void cancel(final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStorageAuth$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                GramWalletStorageAuth.$r8$lambda$BxZh5sAQrgXzmW97cYPOk3S8MKg(str);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$BxZh5sAQrgXzmW97cYPOk3S8MKg(String str) {
        Request request = active;
        if (request == null || !str.equals(request.walletId)) {
            return;
        }
        active.finish("STORAGE_CANCELED");
        active.stopBiometrics();
    }

    public static boolean onActivityResult(Activity activity, int i, int i2) {
        if (i < 22336 || i > 22399) {
            return false;
        }
        Request request = active;
        if (request == null || request.activity != activity || !request.credentialStarted || request.credentialCode != i) {
            return true;
        }
        request.finish(i2 == -1 ? null : "AUTH_CANCELED");
        return true;
    }

    public static void onActivityStopped(Activity activity) {
        Request request = active;
        if (request == null || request.activity != activity || Build.VERSION.SDK_INT >= 30) {
            return;
        }
        Request request2 = active;
        if (request2.credentialStarted) {
            return;
        }
        request2.finish("AUTH_CANCELED");
        active.stopBiometrics();
    }

    public static void onActivityDestroyed(Activity activity) {
        Request request = active;
        if (request == null || request.activity != activity) {
            return;
        }
        request.finish("AUTH_CANCELED");
        active.stopBiometrics();
    }

    public static final class Request {
        LaunchActivity activity;
        CancellationSignal cancellation;
        int credentialCode;
        boolean credentialStarted;
        String error;
        volatile boolean expired;
        AlertDialog fingerprintDialog;
        final CountDownLatch latch;
        String walletId;

        private Request() {
            this.latch = new CountDownLatch(1);
        }

        public void finish(String str) {
            if (this.latch.getCount() == 0) {
                return;
            }
            this.error = str;
            this.latch.countDown();
        }

        public void start(boolean z) {
            try {
                if (z) {
                    credentials();
                } else if (Build.VERSION.SDK_INT >= 30) {
                    modernBiometrics();
                } else {
                    fingerprints();
                }
            } catch (Exception e) {
                FileLog.m1040e(e);
                credentials();
            }
        }

        private void modernBiometrics() {
            this.cancellation = new CancellationSignal();
            GramWalletStorageAuth$Request$$ExternalSyntheticApiModelOutline0.m1100m();
            SensitiveRequestSwitch$$ExternalSyntheticApiModelOutline0.m291m(this.activity).setTitle(LocaleController.getString(C2807R.string.WalletUnlock)).setAllowedAuthenticators(32783).build().authenticate(this.cancellation, this.activity.getMainExecutor(), new BiometricPrompt$AuthenticationCallback() { // from class: org.telegram.ui.Wallet.GramWalletStorageAuth.Request.1
                public void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult authenticationResult) {
                    Request.this.finish(null);
                }

                public void onAuthenticationError(int i, CharSequence charSequence) {
                    if (Request.this.waiting()) {
                        Request request = Request.this;
                        if (request.credentialStarted) {
                            return;
                        }
                        if (i == 10 || i == 5) {
                            request.finish("AUTH_CANCELED");
                        } else {
                            request.credentials();
                        }
                    }
                }
            });
        }

        private void fingerprints() {
            FingerprintManager fingerprintManager = (FingerprintManager) this.activity.getSystemService("fingerprint");
            if (fingerprintManager == null || !fingerprintManager.isHardwareDetected() || !fingerprintManager.hasEnrolledFingerprints()) {
                credentials();
                return;
            }
            this.cancellation = new CancellationSignal();
            this.fingerprintDialog = new AlertDialog.Builder(this.activity).setTitle(LocaleController.getString(C2807R.string.WalletUnlock)).setMessage(LocaleController.getString(C2807R.string.WalletTouchFingerprint)).setNegativeButton(LocaleController.getString(C2807R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Wallet.GramWalletStorageAuth$Request$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.lambda$fingerprints$0(dialogInterface, i);
                }
            }).setPositiveButton(LocaleController.getString(C2807R.string.WalletUseDevicePasscode), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Wallet.GramWalletStorageAuth$Request$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.lambda$fingerprints$1(dialogInterface, i);
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.Wallet.GramWalletStorageAuth$Request$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    this.f$0.lambda$fingerprints$2(dialogInterface);
                }
            }).show();
            fingerprintManager.authenticate(null, this.cancellation, 0, new FingerprintManager.AuthenticationCallback() { // from class: org.telegram.ui.Wallet.GramWalletStorageAuth.Request.2
                @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
                public void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult authenticationResult) {
                    Request request = Request.this;
                    if (request.credentialStarted) {
                        return;
                    }
                    request.finish(null);
                }

                @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
                public void onAuthenticationFailed() {
                    AlertDialog alertDialog;
                    if (!Request.this.waiting() || (alertDialog = Request.this.fingerprintDialog) == null) {
                        return;
                    }
                    alertDialog.setMessage(LocaleController.getString(C2807R.string.WalletFingerprintRetry));
                }

                @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
                public void onAuthenticationHelp(int i, CharSequence charSequence) {
                    AlertDialog alertDialog;
                    if (!Request.this.waiting() || (alertDialog = Request.this.fingerprintDialog) == null) {
                        return;
                    }
                    alertDialog.setMessage(charSequence);
                }

                @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
                public void onAuthenticationError(int i, CharSequence charSequence) {
                    if (Request.this.waiting()) {
                        Request request = Request.this;
                        if (request.credentialStarted) {
                            return;
                        }
                        if (i == 5) {
                            request.finish("AUTH_CANCELED");
                        } else {
                            request.credentials();
                        }
                    }
                }
            }, new Handler(Looper.getMainLooper()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fingerprints$0(DialogInterface dialogInterface, int i) {
            finish("AUTH_CANCELED");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fingerprints$1(DialogInterface dialogInterface, int i) {
            credentials();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fingerprints$2(DialogInterface dialogInterface) {
            finish("AUTH_CANCELED");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean waiting() {
            return (this.expired || this.latch.getCount() == 0) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void credentials() {
            if (this.credentialStarted || !waiting()) {
                return;
            }
            this.credentialStarted = true;
            stopBiometrics();
            try {
                KeyguardManager keyguardManager = (KeyguardManager) this.activity.getSystemService("keyguard");
                Intent intentCreateConfirmDeviceCredentialIntent = null;
                if (keyguardManager != null) {
                    intentCreateConfirmDeviceCredentialIntent = keyguardManager.createConfirmDeviceCredentialIntent(LocaleController.getString(C2807R.string.WalletUnlock), null);
                }
                if (intentCreateConfirmDeviceCredentialIntent == null) {
                    finish("AUTH_UNAVAILABLE");
                    return;
                }
                int i = GramWalletStorageAuth.nextCredentialCode;
                GramWalletStorageAuth.nextCredentialCode = i + 1;
                this.credentialCode = i;
                if (GramWalletStorageAuth.nextCredentialCode > 22399) {
                    GramWalletStorageAuth.nextCredentialCode = 22336;
                }
                this.activity.startActivityForResult(intentCreateConfirmDeviceCredentialIntent, this.credentialCode);
            } catch (Exception e) {
                FileLog.m1040e(e);
                finish("AUTH_UNAVAILABLE");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void stopBiometrics() {
            try {
                CancellationSignal cancellationSignal = this.cancellation;
                if (cancellationSignal != null) {
                    cancellationSignal.cancel();
                }
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
            try {
                AlertDialog alertDialog = this.fingerprintDialog;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                }
            } catch (Exception e2) {
                FileLog.m1040e(e2);
            }
            this.fingerprintDialog = null;
        }
    }
}
