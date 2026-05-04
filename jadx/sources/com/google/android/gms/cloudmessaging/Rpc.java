package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import com.chaquo.python.internal.Common;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class Rpc {
    private static int zza;
    private static PendingIntent zzb;
    private static final Executor zzc = new Executor() { // from class: com.google.android.gms.cloudmessaging.zzy
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    };
    private static final Pattern zzd = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.*)");
    private final Context zzf;
    private final zzw zzg;
    private final ScheduledExecutorService zzh;
    private Messenger zzj;
    private zzd zzk;
    private final SimpleArrayMap zze = new SimpleArrayMap();
    private final Messenger zzi = new Messenger(new zzae(this, Looper.getMainLooper()));

    public Rpc(Context context) {
        this.zzf = context;
        this.zzg = new zzw(context);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
        scheduledThreadPoolExecutor.setKeepAliveTime(60L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.zzh = scheduledThreadPoolExecutor;
    }

    static /* synthetic */ Task zza(Bundle bundle) {
        return zzi(bundle) ? Tasks.forResult(null) : Tasks.forResult(bundle);
    }

    static /* bridge */ /* synthetic */ void zzc(Rpc rpc, Message message) {
        if (message != null) {
            Object obj = message.obj;
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                intent.setExtrasClassLoader(new zzc());
                if (intent.hasExtra("google.messenger")) {
                    Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
                    if (parcelableExtra instanceof zzd) {
                        rpc.zzk = (zzd) parcelableExtra;
                    }
                    if (parcelableExtra instanceof Messenger) {
                        rpc.zzj = (Messenger) parcelableExtra;
                    }
                }
                Intent intent2 = (Intent) message.obj;
                String action = intent2.getAction();
                if (!Objects.equals(action, "com.google.android.c2dm.intent.REGISTRATION")) {
                    if (Log.isLoggable("Rpc", 3)) {
                        Log.d("Rpc", "Unexpected response action: ".concat(String.valueOf(action)));
                        return;
                    }
                    return;
                }
                String stringExtra = intent2.getStringExtra("registration_id");
                if (stringExtra == null) {
                    stringExtra = intent2.getStringExtra("unregistered");
                }
                if (stringExtra != null) {
                    Matcher matcher = zzd.matcher(stringExtra);
                    if (!matcher.matches()) {
                        if (Log.isLoggable("Rpc", 3)) {
                            Log.d("Rpc", "Unexpected response string: ".concat(stringExtra));
                            return;
                        }
                        return;
                    }
                    String strGroup = matcher.group(1);
                    String strGroup2 = matcher.group(2);
                    if (strGroup != null) {
                        Bundle extras = intent2.getExtras();
                        extras.putString("registration_id", strGroup2);
                        rpc.zzh(strGroup, extras);
                        return;
                    }
                    return;
                }
                String stringExtra2 = intent2.getStringExtra("error");
                if (stringExtra2 == null) {
                    Log.w("Rpc", "Unexpected response, no error or registration id ".concat(String.valueOf(intent2.getExtras())));
                    return;
                }
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Received InstanceID error ".concat(stringExtra2));
                }
                if (!stringExtra2.startsWith("|")) {
                    synchronized (rpc.zze) {
                        for (int i = 0; i < rpc.zze.size(); i++) {
                            try {
                                rpc.zzh((String) rpc.zze.keyAt(i), intent2.getExtras());
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return;
                }
                String[] strArrSplit = stringExtra2.split("\\|");
                if (strArrSplit.length <= 2 || !Objects.equals(strArrSplit[1], "ID")) {
                    Log.w("Rpc", "Unexpected structured response ".concat(stringExtra2));
                    return;
                }
                String str = strArrSplit[2];
                String strSubstring = strArrSplit[3];
                if (strSubstring.startsWith(":")) {
                    strSubstring = strSubstring.substring(1);
                }
                rpc.zzh(str, intent2.putExtra("error", strSubstring).getExtras());
                return;
            }
        }
        Log.w("Rpc", "Dropping invalid message");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Task zze(Bundle bundle) {
        final String strZzf = zzf();
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        synchronized (this.zze) {
            this.zze.put(strZzf, taskCompletionSource);
        }
        Intent intent = new Intent();
        intent.setPackage("com.google.android.gms");
        if (this.zzg.zzb() == 2) {
            intent.setAction("com.google.iid.TOKEN_REQUEST");
        } else {
            intent.setAction("com.google.android.c2dm.intent.REGISTER");
        }
        intent.putExtras(bundle);
        zzg(this.zzf, intent);
        intent.putExtra("kid", "|ID|" + strZzf + "|");
        if (Log.isLoggable("Rpc", 3)) {
            Log.d("Rpc", "Sending ".concat(String.valueOf(intent.getExtras())));
        }
        intent.putExtra("google.messenger", this.zzi);
        if (this.zzj != null || this.zzk != null) {
            Message messageObtain = Message.obtain();
            messageObtain.obj = intent;
            try {
                Messenger messenger = this.zzj;
                if (messenger != null) {
                    messenger.send(messageObtain);
                } else {
                    this.zzk.zzb(messageObtain);
                }
            } catch (RemoteException unused) {
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Messenger failed, fallback to startService");
                }
                if (this.zzg.zzb() != 2) {
                }
            }
        } else if (this.zzg.zzb() != 2) {
            this.zzf.sendBroadcast(intent);
        } else {
            this.zzf.startService(intent);
        }
        final ScheduledFuture<?> scheduledFutureSchedule = this.zzh.schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzac
            @Override // java.lang.Runnable
            public final void run() {
                if (taskCompletionSource.trySetException(new IOException("TIMEOUT"))) {
                    Log.w("Rpc", "No response");
                }
            }
        }, 30L, TimeUnit.SECONDS);
        taskCompletionSource.getTask().addOnCompleteListener(zzc, new OnCompleteListener() { // from class: com.google.android.gms.cloudmessaging.zzad
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.zza.zzd(strZzf, scheduledFutureSchedule, task);
            }
        });
        return taskCompletionSource.getTask();
    }

    private static synchronized String zzf() {
        int i;
        i = zza;
        zza = i + 1;
        return Integer.toString(i);
    }

    private static synchronized void zzg(Context context, Intent intent) {
        try {
            if (zzb == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                zzb = PendingIntent.getBroadcast(context, 0, intent2, com.google.android.gms.internal.cloudmessaging.zza.zza);
            }
            intent.putExtra(Common.ASSET_APP, zzb);
        } catch (Throwable th) {
            throw th;
        }
    }

    private final void zzh(String str, Bundle bundle) {
        synchronized (this.zze) {
            try {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) this.zze.remove(str);
                if (taskCompletionSource != null) {
                    taskCompletionSource.setResult(bundle);
                    return;
                }
                Log.w("Rpc", "Missing callback for " + str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean zzi(Bundle bundle) {
        return bundle != null && bundle.containsKey("google.messenger");
    }

    public Task getProxiedNotificationData() {
        return this.zzg.zza() >= 241100000 ? zzv.zzb(this.zzf).zzd(5, Bundle.EMPTY).continueWith(zzc, new Continuation() { // from class: com.google.android.gms.cloudmessaging.zzab
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Intent intent = (Intent) ((Bundle) task.getResult()).getParcelable("notification_data");
                if (intent != null) {
                    return new CloudMessage(intent);
                }
                return null;
            }
        }) : Tasks.forException(new IOException("SERVICE_NOT_AVAILABLE"));
    }

    public Task messageHandled(CloudMessage cloudMessage) {
        if (this.zzg.zza() < 233700000) {
            return Tasks.forException(new IOException("SERVICE_NOT_AVAILABLE"));
        }
        Bundle bundle = new Bundle();
        bundle.putString("google.message_id", cloudMessage.getMessageId());
        Integer numZza = cloudMessage.zza();
        if (numZza != null) {
            bundle.putInt("google.product_id", numZza.intValue());
        }
        return zzv.zzb(this.zzf).zzc(3, bundle);
    }

    public Task send(final Bundle bundle) {
        return this.zzg.zza() < 12000000 ? this.zzg.zzb() != 0 ? zze(bundle).continueWithTask(zzc, new Continuation() { // from class: com.google.android.gms.cloudmessaging.zzz
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                return this.zza.zzb(bundle, task);
            }
        }) : Tasks.forException(new IOException("MISSING_INSTANCEID_SERVICE")) : zzv.zzb(this.zzf).zzd(1, bundle).continueWith(zzc, new Continuation() { // from class: com.google.android.gms.cloudmessaging.zzaa
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) throws IOException {
                if (task.isSuccessful()) {
                    return (Bundle) task.getResult();
                }
                if (Log.isLoggable("Rpc", 3)) {
                    Log.d("Rpc", "Error making request: ".concat(String.valueOf(task.getException())));
                }
                throw new IOException("SERVICE_NOT_AVAILABLE", task.getException());
            }
        });
    }

    public Task setRetainProxiedNotifications(boolean z) {
        if (this.zzg.zza() < 241100000) {
            return Tasks.forException(new IOException("SERVICE_NOT_AVAILABLE"));
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("proxy_retention", z);
        return zzv.zzb(this.zzf).zzc(4, bundle);
    }

    final /* synthetic */ Task zzb(Bundle bundle, Task task) {
        return (task.isSuccessful() && zzi((Bundle) task.getResult())) ? zze(bundle).onSuccessTask(zzc, new SuccessContinuation() { // from class: com.google.android.gms.cloudmessaging.zzx
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return Rpc.zza((Bundle) obj);
            }
        }) : task;
    }

    final /* synthetic */ void zzd(String str, ScheduledFuture scheduledFuture, Task task) {
        synchronized (this.zze) {
            this.zze.remove(str);
        }
        scheduledFuture.cancel(false);
    }
}
