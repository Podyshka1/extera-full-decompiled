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
import com.google.android.gms.internal.play_billing.zzc;
import com.google.android.gms.internal.play_billing.zzie;

/* JADX INFO: loaded from: classes4.dex */
@UsedByReflection("PlatformActivityProxy")
public class ProxyBillingActivityV2 extends ComponentActivity {
    private ActivityResultLauncher zza;
    private ActivityResultLauncher zzb;
    private ActivityResultLauncher zzc;
    private ResultReceiver zzd;
    private ResultReceiver zze;
    private ResultReceiver zzf;

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
        this.zzc = registerForActivityResult(new ActivityResultContract<IntentSenderRequest, ActivityResult>() { // from class: androidx.activity.result.contract.ActivityResultContracts$StartIntentSenderForResult
            @Override // androidx.view.result.contract.ActivityResultContract
            public Intent createIntent(Context context, IntentSenderRequest input) {
                return new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", input);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // androidx.view.result.contract.ActivityResultContract
            public ActivityResult parseResult(int resultCode, Intent intent) {
                return new ActivityResult(resultCode, intent);
            }
        }, new ActivityResultCallback() { // from class: com.android.billingclient.api.zzcv
            @Override // androidx.view.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                this.zza.zzc((ActivityResult) obj);
            }
        });
        if (bundle != null) {
            if (bundle.containsKey("alternative_billing_only_dialog_result_receiver")) {
                this.zzd = (ResultReceiver) bundle.getParcelable("alternative_billing_only_dialog_result_receiver");
            }
            if (bundle.containsKey("external_payment_dialog_result_receiver")) {
                this.zze = (ResultReceiver) bundle.getParcelable("external_payment_dialog_result_receiver");
            }
            if (bundle.containsKey("external_offer_flow_result_receiver")) {
                this.zzf = (ResultReceiver) bundle.getParcelable("external_offer_flow_result_receiver");
                return;
            }
            return;
        }
        zzc.zzm("ProxyBillingActivityV2", "Launching Play Store billing dialog");
        if (getIntent().hasExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")) {
            PendingIntent pendingIntent = (PendingIntent) getIntent().getParcelableExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT");
            this.zzd = (ResultReceiver) getIntent().getParcelableExtra("alternative_billing_only_dialog_result_receiver");
            this.zza.launch(new IntentSenderRequest.Builder(pendingIntent).build());
        } else if (getIntent().hasExtra("external_payment_dialog_pending_intent")) {
            PendingIntent pendingIntent2 = (PendingIntent) getIntent().getParcelableExtra("external_payment_dialog_pending_intent");
            this.zze = (ResultReceiver) getIntent().getParcelableExtra("external_payment_dialog_result_receiver");
            this.zzb.launch(new IntentSenderRequest.Builder(pendingIntent2).build());
        } else if (getIntent().hasExtra("external_offer_flow_pending_intent")) {
            PendingIntent pendingIntent3 = (PendingIntent) getIntent().getParcelableExtra("external_offer_flow_pending_intent");
            this.zzf = (ResultReceiver) getIntent().getParcelableExtra("external_offer_flow_result_receiver");
            this.zzc.launch(new IntentSenderRequest.Builder(pendingIntent3).build());
        }
    }

    @Override // androidx.view.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.zzd;
        if (resultReceiver != null) {
            bundle.putParcelable("alternative_billing_only_dialog_result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.zze;
        if (resultReceiver2 != null) {
            bundle.putParcelable("external_payment_dialog_result_receiver", resultReceiver2);
        }
        ResultReceiver resultReceiver3 = this.zzf;
        if (resultReceiver3 != null) {
            bundle.putParcelable("external_offer_flow_result_receiver", resultReceiver3);
        }
    }

    public final void zza(ActivityResult activityResult) {
        Intent data = activityResult.getData();
        int responseCode = zzc.zzh(data, "ProxyBillingActivityV2").getResponseCode();
        ResultReceiver resultReceiver = this.zzd;
        if (resultReceiver != null) {
            resultReceiver.send(responseCode, data == null ? null : data.getExtras());
        }
        if (activityResult.getResultCode() != -1 || responseCode != 0) {
            zzc.zzn("ProxyBillingActivityV2", "Alternative billing only dialog finished with resultCode " + activityResult.getResultCode() + " and billing's responseCode: " + responseCode);
        }
        finish();
    }

    public final void zzb(ActivityResult activityResult) {
        Intent data = activityResult.getData();
        int responseCode = zzc.zzh(data, "ProxyBillingActivityV2").getResponseCode();
        ResultReceiver resultReceiver = this.zze;
        if (resultReceiver != null) {
            resultReceiver.send(responseCode, data == null ? null : data.getExtras());
        }
        if (activityResult.getResultCode() != -1 || responseCode != 0) {
            zzc.zzn("ProxyBillingActivityV2", String.format("External offer dialog finished with resultCode: %s and billing's responseCode: %s", Integer.valueOf(activityResult.getResultCode()), Integer.valueOf(responseCode)));
        }
        finish();
    }

    public final void zzc(ActivityResult activityResult) {
        Intent data = activityResult.getData();
        Bundle extras = data == null ? null : data.getExtras();
        if (activityResult.getResultCode() != -1) {
            if (extras == null) {
                extras = new Bundle();
            }
            zzc.zzn("ProxyBillingActivityV2", String.format("External offer flow finished with resultCode: %s", Integer.valueOf(activityResult.getResultCode())));
            extras.putInt("INTERNAL_LOG_ERROR_REASON", zzie.ERROR_IN_ACTIVITY_RESULT.zza());
            extras.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", String.format("External offer flow finished with error resultCode: %s", Integer.valueOf(activityResult.getResultCode())));
        }
        int responseCode = zzc.zzh(data, "ProxyBillingActivityV2").getResponseCode();
        ResultReceiver resultReceiver = this.zzf;
        if (resultReceiver != null) {
            resultReceiver.send(responseCode, extras);
        } else {
            zzc.zzn("ProxyBillingActivityV2", "External offer flow result receiver is null");
        }
        if (responseCode != 0) {
            zzc.zzn("ProxyBillingActivityV2", String.format("External offer flow finished with billing responseCode: %s", Integer.valueOf(responseCode)));
        }
        finish();
    }
}
