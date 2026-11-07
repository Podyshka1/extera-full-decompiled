package com.google.android.gms.cloudmessaging;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class zzp implements ServiceConnection {
    int zza;
    final Messenger zzb;
    zzq zzc;
    final Queue zzd;
    final SparseArray zze;
    final /* synthetic */ zzv zzf;

    public /* synthetic */ zzp(zzv zzvVar, byte[] bArr) {
        Objects.requireNonNull(zzvVar);
        this.zzf = zzvVar;
        this.zza = 0;
        this.zzb = new Messenger(new com.google.android.gms.internal.cloudmessaging.zzv(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.gms.cloudmessaging.zzo
            @Override // android.os.Handler.Callback
            public final /* synthetic */ boolean handleMessage(Message message) {
                int i = message.arg1;
                if (Log.isLoggable("MessengerIpcClient", 3)) {
                    StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 30);
                    sb.append("Received response to request: ");
                    sb.append(i);
                    Log.d("MessengerIpcClient", sb.toString());
                }
                zzp zzpVar = this.zza;
                synchronized (zzpVar) {
                    try {
                        SparseArray sparseArray = zzpVar.zze;
                        zzs zzsVar = (zzs) sparseArray.get(i);
                        if (zzsVar == null) {
                            StringBuilder sb2 = new StringBuilder(String.valueOf(i).length() + 39);
                            sb2.append("Received response for unknown request: ");
                            sb2.append(i);
                            Log.w("MessengerIpcClient", sb2.toString());
                            return true;
                        }
                        sparseArray.remove(i);
                        zzpVar.zze();
                        Bundle data = message.getData();
                        if (data.getBoolean("unsupported", false)) {
                            zzsVar.zzd(new zzt(4, "Not supported by GmsCore", null));
                            return true;
                        }
                        zzsVar.zzb(data);
                        return true;
                    } finally {
                    }
                }
            }
        }));
        this.zzd = new ArrayDeque();
        this.zze = new SparseArray();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        zzv zzvVar = this.zzf;
        zzvVar.zze().execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzk
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                IBinder iBinder2 = iBinder;
                zzp zzpVar = this.zza;
                synchronized (zzpVar) {
                    if (iBinder2 == null) {
                        zzpVar.zzc(0, "Null service connection");
                        return;
                    }
                    try {
                        zzpVar.zzc = new zzq(iBinder2);
                        zzpVar.zza = 2;
                        zzpVar.zzb();
                    } catch (RemoteException e) {
                        zzpVar.zzc(0, e.getMessage());
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        zzv zzvVar = this.zzf;
        zzvVar.zze().execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzm
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzc(2, "Service disconnected");
            }
        });
    }

    public final synchronized boolean zza(zzs zzsVar) {
        int i = this.zza;
        if (i != 0) {
            if (i == 1) {
                this.zzd.add(zzsVar);
                return true;
            }
            if (i != 2) {
                return false;
            }
            this.zzd.add(zzsVar);
            zzb();
            return true;
        }
        this.zzd.add(zzsVar);
        Preconditions.checkState(this.zza == 0);
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Starting bind to GmsCore");
        }
        this.zza = 1;
        Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
        intent.setPackage("com.google.android.gms");
        try {
            ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
            zzv zzvVar = this.zzf;
            if (connectionTracker.bindService(zzvVar.zzd(), intent, this, 1)) {
                zzvVar.zze().schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzj
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        this.zza.zzf();
                    }
                }, 30L, TimeUnit.SECONDS);
            } else {
                zzc(0, "Unable to bind to service");
            }
        } catch (SecurityException e) {
            zzd(0, "Unable to bind to service", e);
        }
        return true;
    }

    public final void zzb() {
        this.zzf.zze().execute(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzl
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                final zzs zzsVar;
                int i;
                while (true) {
                    final zzp zzpVar = this.zza;
                    synchronized (zzpVar) {
                        try {
                            if (zzpVar.zza != 2) {
                                return;
                            }
                            Queue queue = zzpVar.zzd;
                            if (queue.isEmpty()) {
                                zzpVar.zze();
                                return;
                            }
                            zzsVar = (zzs) queue.poll();
                            SparseArray sparseArray = zzpVar.zze;
                            i = zzsVar.zza;
                            sparseArray.put(i, zzsVar);
                            zzpVar.zzf.zze().schedule(new Runnable() { // from class: com.google.android.gms.cloudmessaging.zzn
                                @Override // java.lang.Runnable
                                public final /* synthetic */ void run() {
                                    zzpVar.zzg(zzsVar.zza);
                                }
                            }, 30L, TimeUnit.SECONDS);
                        } finally {
                        }
                    }
                    if (Log.isLoggable("MessengerIpcClient", 3)) {
                        Log.d("MessengerIpcClient", "Sending ".concat(String.valueOf(zzsVar)));
                    }
                    zzv zzvVar = zzpVar.zzf;
                    Messenger messenger = zzpVar.zzb;
                    int i2 = zzsVar.zzc;
                    Message messageObtain = Message.obtain();
                    messageObtain.what = i2;
                    messageObtain.arg1 = i;
                    messageObtain.replyTo = messenger;
                    Bundle bundle = new Bundle();
                    bundle.putBoolean("oneWay", zzsVar.zza());
                    bundle.putString("pkg", zzvVar.zzd().getPackageName());
                    bundle.putBundle("data", zzsVar.zzd);
                    messageObtain.setData(bundle);
                    try {
                        zzpVar.zzc.zza(messageObtain);
                    } catch (RemoteException e) {
                        zzpVar.zzc(2, e.getMessage());
                    }
                }
            }
        });
    }

    public final synchronized void zzc(int i, String str) {
        zzd(i, str, null);
    }

    public final synchronized void zzd(int i, String str, Throwable th) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                Log.d("MessengerIpcClient", "Disconnected: ".concat(String.valueOf(str)));
            }
            int i2 = this.zza;
            if (i2 == 0) {
                throw new IllegalStateException();
            }
            if (i2 != 1 && i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                this.zza = 4;
                return;
            }
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Unbinding service");
            }
            this.zza = 4;
            ConnectionTracker.getInstance().unbindService(this.zzf.zzd(), this);
            zzt zztVar = new zzt(i, str, th);
            Queue queue = this.zzd;
            Iterator it = queue.iterator();
            while (it.hasNext()) {
                ((zzs) it.next()).zzd(zztVar);
            }
            queue.clear();
            int i3 = 0;
            while (true) {
                SparseArray sparseArray = this.zze;
                if (i3 >= sparseArray.size()) {
                    sparseArray.clear();
                    return;
                } else {
                    ((zzs) sparseArray.valueAt(i3)).zzd(zztVar);
                    i3++;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void zze() {
        try {
            if (this.zza == 2 && this.zzd.isEmpty() && this.zze.size() == 0) {
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
                }
                this.zza = 3;
                ConnectionTracker.getInstance().unbindService(this.zzf.zzd(), this);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzf() {
        if (this.zza == 1) {
            zzc(1, "Timed out while binding");
        }
    }

    public final synchronized void zzg(int i) {
        SparseArray sparseArray = this.zze;
        zzs zzsVar = (zzs) sparseArray.get(i);
        if (zzsVar != null) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 20);
            sb.append("Timing out request: ");
            sb.append(i);
            Log.w("MessengerIpcClient", sb.toString());
            sparseArray.remove(i);
            zzsVar.zzd(new zzt(3, "Timed out waiting for response", null));
            zze();
        }
    }
}
