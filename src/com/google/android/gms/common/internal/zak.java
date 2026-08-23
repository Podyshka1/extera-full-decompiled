package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class zak implements Handler.Callback {
    private final zaj zab;
    private final Handler zah;
    private final ArrayList zac = new ArrayList();
    final ArrayList zaa = new ArrayList();
    private final ArrayList zad = new ArrayList();
    private volatile boolean zae = false;
    private final AtomicInteger zaf = new AtomicInteger(0);
    private boolean zag = false;
    private final Object zai = new Object();

    public zak(Looper looper, zaj zajVar) {
        this.zab = zajVar;
        this.zah = new com.google.android.gms.internal.base.zao(looper, this);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 34);
            sb.append("Don't know how to handle message: ");
            sb.append(i);
            Log.wtf("GmsClientEvents", sb.toString(), new Exception());
            return false;
        }
        GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
        synchronized (this.zai) {
            try {
                if (this.zae && this.zab.isConnected() && this.zac.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }

    public final void zaa() {
        this.zae = false;
        this.zaf.incrementAndGet();
    }

    public final void zab() {
        this.zae = true;
    }

    public final void zac(Bundle bundle) {
        Handler handler = this.zah;
        Preconditions.checkHandlerThread(handler, "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.zai) {
            try {
                Preconditions.checkState(!this.zag);
                handler.removeMessages(1);
                this.zag = true;
                ArrayList arrayList = this.zaa;
                Preconditions.checkState(arrayList.isEmpty());
                ArrayList arrayList2 = new ArrayList(this.zac);
                AtomicInteger atomicInteger = this.zaf;
                int i = atomicInteger.get();
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) obj;
                    if (!this.zae || !this.zab.isConnected() || atomicInteger.get() != i) {
                        break;
                    } else if (!arrayList.contains(connectionCallbacks)) {
                        connectionCallbacks.onConnected(bundle);
                    }
                }
                arrayList.clear();
                this.zag = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zad(int i) {
        Handler handler = this.zah;
        Preconditions.checkHandlerThread(handler, "onUnintentionalDisconnection must only be called on the Handler thread");
        handler.removeMessages(1);
        synchronized (this.zai) {
            try {
                this.zag = true;
                ArrayList arrayList = this.zac;
                ArrayList arrayList2 = new ArrayList(arrayList);
                AtomicInteger atomicInteger = this.zaf;
                int i2 = atomicInteger.get();
                int size = arrayList2.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList2.get(i3);
                    i3++;
                    GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) obj;
                    if (!this.zae || atomicInteger.get() != i2) {
                        break;
                    } else if (arrayList.contains(connectionCallbacks)) {
                        connectionCallbacks.onConnectionSuspended(i);
                    }
                }
                this.zaa.clear();
                this.zag = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zae(ConnectionResult connectionResult) {
        Handler handler = this.zah;
        Preconditions.checkHandlerThread(handler, "onConnectionFailure must only be called on the Handler thread");
        handler.removeMessages(1);
        synchronized (this.zai) {
            try {
                ArrayList arrayList = this.zad;
                ArrayList arrayList2 = new ArrayList(arrayList);
                AtomicInteger atomicInteger = this.zaf;
                int i = atomicInteger.get();
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener) obj;
                    if (this.zae && atomicInteger.get() == i) {
                        if (arrayList.contains(onConnectionFailedListener)) {
                            onConnectionFailedListener.onConnectionFailed(connectionResult);
                        }
                    }
                    return;
                }
            } finally {
            }
        }
    }

    public final void zaf(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.zai) {
            try {
                ArrayList arrayList = this.zac;
                if (arrayList.contains(connectionCallbacks)) {
                    String strValueOf = String.valueOf(connectionCallbacks);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 62);
                    sb.append("registerConnectionCallbacks(): listener ");
                    sb.append(strValueOf);
                    sb.append(" is already registered");
                    Log.w("GmsClientEvents", sb.toString());
                } else {
                    arrayList.add(connectionCallbacks);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.zab.isConnected()) {
            Handler handler = this.zah;
            handler.sendMessage(handler.obtainMessage(1, connectionCallbacks));
        }
    }

    public final void zai(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.zai) {
            try {
                ArrayList arrayList = this.zad;
                if (arrayList.contains(onConnectionFailedListener)) {
                    String strValueOf = String.valueOf(onConnectionFailedListener);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 67);
                    sb.append("registerConnectionFailedListener(): listener ");
                    sb.append(strValueOf);
                    sb.append(" is already registered");
                    Log.w("GmsClientEvents", sb.toString());
                } else {
                    arrayList.add(onConnectionFailedListener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zak(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.zai) {
            try {
                if (!this.zad.remove(onConnectionFailedListener)) {
                    String strValueOf = String.valueOf(onConnectionFailedListener);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 57);
                    sb.append("unregisterConnectionFailedListener(): listener ");
                    sb.append(strValueOf);
                    sb.append(" not found");
                    Log.w("GmsClientEvents", sb.toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
