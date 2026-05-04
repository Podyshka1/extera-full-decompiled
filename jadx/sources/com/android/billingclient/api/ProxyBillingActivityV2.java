package com.android.billingclient.api;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.activity.ComponentActivity;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.play_billing.zze;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@UsedByReflection("PlatformActivityProxy")
public class ProxyBillingActivityV2 extends ComponentActivity {
    private ActivityResultLauncher zza;
    private ActivityResultLauncher zzb;
    private ResultReceiver zzc;
    private ResultReceiver zzd;

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zza = registerForActivityResult(new ActivityResultContract() { // from class: androidx.activity.result.contract.ActivityResultContracts$StartIntentSenderForResult
            public static final Companion Companion = new Companion(null);

            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public Intent createIntent(Context context, IntentSenderRequest input) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(input, "input");
                Intent intentPutExtra = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", input);
                Intrinsics.checkNotNullExpressionValue(intentPutExtra, "Intent(ACTION_INTENT_SEN…NT_SENDER_REQUEST, input)");
                return intentPutExtra;
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public ActivityResult parseResult(int i, Intent intent) {
                return new ActivityResult(i, intent);
            }
        }, new ActivityResultCallback() { // from class: com.android.billingclient.api.zzct
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                this.zza.zza((ActivityResult) obj);
            }
        });
        this.zzb = registerForActivityResult(new ActivityResultContract() { // from class: androidx.activity.result.contract.ActivityResultContracts$StartIntentSenderForResult
            public static final Companion Companion = new Companion(null);

            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public Intent createIntent(Context context, IntentSenderRequest input) {
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(input, "input");
                Intent intentPutExtra = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", input);
                Intrinsics.checkNotNullExpressionValue(intentPutExtra, "Intent(ACTION_INTENT_SEN…NT_SENDER_REQUEST, input)");
                return intentPutExtra;
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public ActivityResult parseResult(int i, Intent intent) {
                return new ActivityResult(i, intent);
            }
        }, new ActivityResultCallback() { // from class: com.android.billingclient.api.zzcu
            @Override // androidx.activity.result.ActivityResultCallback
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

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected final void onSaveInstanceState(Bundle bundle) {
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

    final void zza(ActivityResult activityResult) {
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

    final void zzb(ActivityResult activityResult) {
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
