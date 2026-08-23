package com.android.billingclient.api;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.view.ComponentActivity;
import androidx.view.result.ActivityResult;
import androidx.view.result.ActivityResultCallback;
import androidx.view.result.ActivityResultLauncher;
import androidx.view.result.IntentSenderRequest;
import androidx.view.result.contract.ActivityResultContract;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.play_billing.zze;

/* JADX INFO: loaded from: classes4.dex */
@UsedByReflection("PlatformActivityProxy")
public class ProxyBillingActivityV2 extends ComponentActivity {
    private ActivityResultLauncher zza;
    private ActivityResultLauncher zzb;
    private ResultReceiver zzc;
    private ResultReceiver zzd;

    @Override // androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zza = registerForActivityResult(new ActivityResultContract<IntentSenderRequest, ActivityResult>() { // from class: androidx.activity.result.contract.ActivityResultContracts$StartIntentSenderForResult
            @Override // androidx.view.result.contract.ActivityResultContract
            public Intent createIntent(Context context, IntentSenderRequest input) {
                return new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", input);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.view.result.contract.ActivityResultContract
            public ActivityResult parseResult(int resultCode, Intent intent) {
                return new ActivityResult(resultCode, intent);
            }
        }, new ActivityResultCallback() { // from class: com.android.billingclient.api.zzct
            @Override // androidx.view.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                this.zza.zza((ActivityResult) obj);
            }
        });
        this.zzb = registerForActivityResult(new ActivityResultContract<IntentSenderRequest, ActivityResult>() { // from class: androidx.activity.result.contract.ActivityResultContracts$StartIntentSenderForResult
            @Override // androidx.view.result.contract.ActivityResultContract
            public Intent createIntent(Context context, IntentSenderRequest input) {
                return new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", input);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.view.result.contract.ActivityResultContract
            public ActivityResult parseResult(int resultCode, Intent intent) {
                return new ActivityResult(resultCode, intent);
            }
        }, new ActivityResultCallback() { // from class: com.android.billingclient.api.zzcu
            @Override // androidx.view.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                this.zza.zzb((ActivityResult) obj);
            }
        });
        if (bundle != null) {
            if (bundle.containsKey("alternative_billing_only_dialog_result_receiver")) {
                this.zzc = (ResultReceiver) bundle.getParcelable("alternative_billing_only_dialog_result_receiver");
                return;
            } else {
                if (bundle.containsKey("external_payment_dialog_result_receiver")) {
                    this.zzd = (ResultReceiver) bundle.getParcelable("external_payment_dialog_result_receiver");
                    return;
                }
                return;
            }
        }
        zze.zzk("ProxyBillingActivityV2", "Launching Play Store billing dialog");
        if (getIntent().hasExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")) {
            PendingIntent pendingIntent = (PendingIntent) getIntent().getParcelableExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT");
            this.zzc = (ResultReceiver) getIntent().getParcelableExtra("alternative_billing_only_dialog_result_receiver");
            this.zza.launch(new IntentSenderRequest.Builder(pendingIntent).build());
        } else if (getIntent().hasExtra("external_payment_dialog_pending_intent")) {
            PendingIntent pendingIntent2 = (PendingIntent) getIntent().getParcelableExtra("external_payment_dialog_pending_intent");
            this.zzd = (ResultReceiver) getIntent().getParcelableExtra("external_payment_dialog_result_receiver");
            this.zzb.launch(new IntentSenderRequest.Builder(pendingIntent2).build());
        }
    }

    @Override // androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.zzc;
        if (resultReceiver != null) {
            bundle.putParcelable("alternative_billing_only_dialog_result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.zzd;
        if (resultReceiver2 != null) {
            bundle.putParcelable("external_payment_dialog_result_receiver", resultReceiver2);
        }
    }

    public final void zza(ActivityResult activityResult) {
        Intent data = activityResult.getData();
        int responseCode = zze.zzf(data, "ProxyBillingActivityV2").getResponseCode();
        ResultReceiver resultReceiver = this.zzc;
        if (resultReceiver != null) {
            resultReceiver.send(responseCode, data == null ? null : data.getExtras());
        }
        if (activityResult.getResultCode() != -1 || responseCode != 0) {
            zze.zzl("ProxyBillingActivityV2", "Alternative billing only dialog finished with resultCode " + activityResult.getResultCode() + " and billing's responseCode: " + responseCode);
        }
        finish();
    }

    public final void zzb(ActivityResult activityResult) {
        Intent data = activityResult.getData();
        int responseCode = zze.zzf(data, "ProxyBillingActivityV2").getResponseCode();
        ResultReceiver resultReceiver = this.zzd;
        if (resultReceiver != null) {
            resultReceiver.send(responseCode, data == null ? null : data.getExtras());
        }
        if (activityResult.getResultCode() != -1 || responseCode != 0) {
            zze.zzl("ProxyBillingActivityV2", String.format("External offer dialog finished with resultCode: %s and billing's responseCode: %s", Integer.valueOf(activityResult.getResultCode()), Integer.valueOf(responseCode)));
        }
        finish();
    }
}
