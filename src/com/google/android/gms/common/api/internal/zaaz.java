package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.ClientLibraryUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class zaaz extends GoogleApiClient implements zabu {
    zabs zab;
    final Map zac;
    Set zad;
    final ClientSettings zae;
    final Map zaf;
    final Api.AbstractClientBuilder zag;
    Set zah;
    final zacu zai;
    private final Lock zaj;
    private final com.google.android.gms.common.internal.zak zak;
    private final int zam;
    private final Context zan;
    private final Looper zao;
    private volatile boolean zap;
    private long zaq;
    private long zar;
    private final zaax zas;
    private final GoogleApiAvailability zat;
    private final ListenerHolders zau;
    private final ArrayList zav;
    private Integer zaw;
    private final com.google.android.gms.common.internal.zaj zax;
    private zabv zal = null;
    final Queue zaa = new LinkedList();

    public zaaz(Context context, Lock lock, Looper looper, ClientSettings clientSettings, GoogleApiAvailability googleApiAvailability, Api.AbstractClientBuilder abstractClientBuilder, Map map, List list, List list2, Map map2, int i, int i2, ArrayList arrayList) {
        this.zaq = true != ClientLibraryUtils.isPackageSide() ? 120000L : 10000L;
        this.zar = 5000L;
        this.zad = new HashSet();
        this.zau = new ListenerHolders();
        this.zaw = null;
        this.zah = null;
        zaat zaatVar = new zaat(this);
        this.zax = zaatVar;
        this.zan = context;
        this.zaj = lock;
        this.zak = new com.google.android.gms.common.internal.zak(looper, zaatVar);
        this.zao = looper;
        this.zas = new zaax(this, looper);
        this.zat = googleApiAvailability;
        this.zam = i;
        if (i >= 0) {
            this.zaw = Integer.valueOf(i2);
        }
        this.zaf = map;
        this.zac = map2;
        this.zav = arrayList;
        this.zai = new zacu();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.zak.zaf((GoogleApiClient.ConnectionCallbacks) it.next());
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            this.zak.zai((GoogleApiClient.OnConnectionFailedListener) it2.next());
        }
        this.zae = clientSettings;
        this.zag = abstractClientBuilder;
    }

    public static int zaf(Iterable iterable, boolean z) {
        Iterator it = iterable.iterator();
        boolean zRequiresSignIn = false;
        boolean zProvidesSignIn = false;
        while (it.hasNext()) {
            Api.Client client = (Api.Client) it.next();
            zRequiresSignIn |= client.requiresSignIn();
            zProvidesSignIn |= client.providesSignIn();
        }
        if (zRequiresSignIn) {
            return (zProvidesSignIn && z) ? 2 : 1;
        }
        return 3;
    }

    public static String zag(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "UNKNOWN" : "SIGN_IN_MODE_NONE" : "SIGN_IN_MODE_OPTIONAL" : "SIGN_IN_MODE_REQUIRED";
    }

    private final void zam(int i) {
        zaaz zaazVar;
        Integer num = this.zaw;
        if (num == null) {
            this.zaw = Integer.valueOf(i);
        } else if (num.intValue() != i) {
            String strZag = zag(this.zaw.intValue());
            String strZag2 = zag(i);
            zaaz$$ExternalSyntheticBUOutline0.m294m(strZag2.length() + 51 + strZag.length(), "Cannot use sign-in mode: ", strZag2, ". Mode was already set to ", strZag);
            return;
        }
        if (this.zal != null) {
            return;
        }
        Map map = this.zac;
        boolean zRequiresSignIn = false;
        boolean zProvidesSignIn = false;
        for (Api.Client client : map.values()) {
            zRequiresSignIn |= client.requiresSignIn();
            zProvidesSignIn |= client.providesSignIn();
        }
        int iIntValue = this.zaw.intValue();
        if (iIntValue == 1) {
            zaazVar = this;
            if (!zRequiresSignIn) {
                Segment$$ExternalSyntheticBUOutline1.m848m("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
                return;
            } else if (zProvidesSignIn) {
                Segment$$ExternalSyntheticBUOutline1.m848m("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
                return;
            }
        } else {
            if (iIntValue == 2 && zRequiresSignIn) {
                this.zal = zax.zaa(this.zan, this, this.zaj, this.zao, this.zat, map, this.zae, this.zaf, this.zag, this.zav);
                return;
            }
            zaazVar = this;
        }
        zaazVar.zal = new zabd(zaazVar.zan, zaazVar, zaazVar.zaj, zaazVar.zao, zaazVar.zat, map, zaazVar.zae, zaazVar.zaf, zaazVar.zag, zaazVar.zav, zaazVar);
    }

    private final void zan() {
        this.zak.zab();
        ((zabv) Preconditions.checkNotNull(this.zal)).zae();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void connect() {
        Lock lock = this.zaj;
        lock.lock();
        try {
            int i = this.zam;
            Integer num = this.zaw;
            int i2 = 2;
            boolean z = false;
            if (i >= 0) {
                Preconditions.checkState(num != null, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (num == null) {
                this.zaw = Integer.valueOf(zaf(this.zac.values(), false));
            } else if (num.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            int iIntValue = ((Integer) Preconditions.checkNotNull(this.zaw)).intValue();
            lock.lock();
            try {
                if (iIntValue != 3 && iIntValue != 1) {
                    if (iIntValue != 2) {
                        i2 = iIntValue;
                    }
                    StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 22);
                    sb.append("Illegal sign-in mode: ");
                    sb.append(i2);
                    Preconditions.checkArgument(z, sb.toString());
                    zam(i2);
                    zan();
                    this.zaj.unlock();
                    return;
                }
                i2 = iIntValue;
                StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length() + 22);
                sb2.append("Illegal sign-in mode: ");
                sb2.append(i2);
                Preconditions.checkArgument(z, sb2.toString());
                zam(i2);
                zan();
                this.zaj.unlock();
                return;
            } finally {
                this.zaj.unlock();
            }
            z = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void disconnect() {
        Lock lock = this.zaj;
        lock.lock();
        try {
            this.zai.zab();
            zabv zabvVar = this.zal;
            if (zabvVar != null) {
                zabvVar.zah();
            }
            this.zau.zab();
            Queue<BaseImplementation$ApiMethodImpl> queue = this.zaa;
            for (BaseImplementation$ApiMethodImpl baseImplementation$ApiMethodImpl : queue) {
                baseImplementation$ApiMethodImpl.zan(null);
                baseImplementation$ApiMethodImpl.cancel();
            }
            queue.clear();
            if (this.zal != null) {
                zad();
                this.zak.zaa();
            }
            lock.unlock();
        } catch (Throwable th) {
            this.zaj.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.zan);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.zap);
        printWriter.append(" mWorkQueue.size()=").print(this.zaa.size());
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.zai.zab.size());
        zabv zabvVar = this.zal;
        if (zabvVar != null) {
            zabvVar.zan(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, R extends Result, T extends BaseImplementation$ApiMethodImpl<R, A>> T enqueue(T t) {
        Api<?> api = t.getApi();
        boolean zContainsKey = this.zac.containsKey(t.getClientKey());
        String strZad = api != null ? api.zad() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(strZad).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(strZad);
        sb.append(" required for this call.");
        Preconditions.checkArgument(zContainsKey, sb.toString());
        Lock lock = this.zaj;
        lock.lock();
        try {
            zabv zabvVar = this.zal;
            if (zabvVar == null) {
                this.zaa.add(t);
            } else {
                t = (T) zabvVar.zab(t);
            }
            lock.unlock();
            return t;
        } catch (Throwable th) {
            this.zaj.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <A extends Api.AnyClient, T extends BaseImplementation$ApiMethodImpl<? extends Result, A>> T execute(T t) {
        Map map = this.zac;
        Api<?> api = t.getApi();
        boolean zContainsKey = map.containsKey(t.getClientKey());
        String strZad = api != null ? api.zad() : "the API";
        StringBuilder sb = new StringBuilder(String.valueOf(strZad).length() + 65);
        sb.append("GoogleApiClient is not configured to use ");
        sb.append(strZad);
        sb.append(" required for this call.");
        Preconditions.checkArgument(zContainsKey, sb.toString());
        Lock lock = this.zaj;
        lock.lock();
        try {
            zabv zabvVar = this.zal;
            if (zabvVar == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (!this.zap) {
                return (T) zabvVar.zac(t);
            }
            Queue queue = this.zaa;
            queue.add(t);
            while (!queue.isEmpty()) {
                BaseImplementation$ApiMethodImpl baseImplementation$ApiMethodImpl = (BaseImplementation$ApiMethodImpl) queue.remove();
                this.zai.zaa(baseImplementation$ApiMethodImpl);
                baseImplementation$ApiMethodImpl.setFailedResult(Status.RESULT_INTERNAL_ERROR);
            }
            lock.unlock();
            return t;
        } finally {
            this.zaj.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final <C extends Api.Client> C getClient(Api.AnyClientKey<C> anyClientKey) {
        C c2 = (C) this.zac.get(anyClientKey);
        Preconditions.checkNotNull(c2, "Appropriate Api was not requested.");
        return c2;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final Looper getLooper() {
        return this.zao;
    }

    public final boolean isConnected() {
        zabv zabvVar = this.zal;
        return zabvVar != null && zabvVar.zai();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final boolean maybeSignIn(SignInConnectionListener signInConnectionListener) {
        zabv zabvVar = this.zal;
        return zabvVar != null && zabvVar.zak(signInConnectionListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void maybeSignOut() {
        zabv zabvVar = this.zal;
        if (zabvVar != null) {
            zabvVar.zam();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zak.zai(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public final void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zak.zak(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zaa(Bundle bundle) {
        while (true) {
            Queue queue = this.zaa;
            if (queue.isEmpty()) {
                this.zak.zac(bundle);
                return;
            }
            execute((BaseImplementation$ApiMethodImpl) queue.remove());
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zab(ConnectionResult connectionResult) {
        if (!this.zat.isPlayServicesPossiblyUpdating(this.zan, connectionResult.getErrorCode())) {
            zad();
        }
        if (this.zap) {
            return;
        }
        com.google.android.gms.common.internal.zak zakVar = this.zak;
        zakVar.zae(connectionResult);
        zakVar.zaa();
    }

    public final boolean zad() {
        if (!this.zap) {
            return false;
        }
        this.zap = false;
        zaax zaaxVar = this.zas;
        zaaxVar.removeMessages(2);
        zaaxVar.removeMessages(1);
        zabs zabsVar = this.zab;
        if (zabsVar != null) {
            zabsVar.zab();
            this.zab = null;
        }
        return true;
    }

    public final String zae() {
        StringWriter stringWriter = new StringWriter();
        dump(_UrlKt.FRAGMENT_ENCODE_SET, null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }

    public final /* synthetic */ void zai() {
        this.zaj.lock();
        try {
            if (this.zap) {
                zan();
            }
        } finally {
            this.zaj.unlock();
        }
    }

    public final /* synthetic */ void zaj() {
        this.zaj.lock();
        try {
            if (zad()) {
                zan();
            }
        } finally {
            this.zaj.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabu
    public final void zac(int i, boolean z) {
        if (i == 1) {
            if (!z && !this.zap) {
                this.zap = true;
                if (this.zab == null && !ClientLibraryUtils.isPackageSide()) {
                    try {
                        this.zab = this.zat.zaf(this.zan.getApplicationContext(), new zaay(this));
                    } catch (SecurityException unused) {
                    }
                }
                zaax zaaxVar = this.zas;
                zaaxVar.sendMessageDelayed(zaaxVar.obtainMessage(1), this.zaq);
                zaaxVar.sendMessageDelayed(zaaxVar.obtainMessage(2), this.zar);
            }
            i = 1;
        }
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.zai.zab.toArray(new BasePendingResult[0])) {
            basePendingResult.forceFailureUnlessReady(zacu.zaa);
        }
        com.google.android.gms.common.internal.zak zakVar = this.zak;
        zakVar.zad(i);
        zakVar.zaa();
        if (i == 2) {
            zan();
        }
    }
}
