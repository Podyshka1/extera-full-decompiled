package com.google.android.gms.internal.measurement;

import android.net.Uri;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzru {
    private final Map zza;
    private final Map zzb;
    private final List zzc;

    public zzru(List list) {
        List list2 = Collections.EMPTY_LIST;
        this.zza = new HashMap();
        this.zzb = new HashMap();
        this.zzc = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzsx zzsxVar = (zzsx) it.next();
            if (TextUtils.isEmpty(zzsxVar.zzc())) {
                Log.w("MobStore.FileStorage", "Cannot register backend, name empty");
            } else {
                zzsx zzsxVar2 = (zzsx) this.zza.put(zzsxVar.zzc(), zzsxVar);
                if (zzsxVar2 != null) {
                    String canonicalName = zzsxVar2.getClass().getCanonicalName();
                    String canonicalName2 = zzsxVar.getClass().getCanonicalName();
                    StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 30 + String.valueOf(canonicalName2).length());
                    sb.append("Cannot override Backend ");
                    sb.append(canonicalName);
                    sb.append(" with ");
                    sb.append(canonicalName2);
                    throw new IllegalArgumentException(sb.toString());
                }
            }
        }
        Iterator it2 = list2.iterator();
        if (it2.hasNext()) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it2.next());
            throw null;
        }
        this.zzc.addAll(list2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final zzrs zze(Uri uri) throws zzsk {
        ImmutableList.Builder builder = ImmutableList.builder();
        ImmutableList.Builder builder2 = ImmutableList.builder();
        String encodedFragment = uri.getEncodedFragment();
        ImmutableList immutableListOf = (TextUtils.isEmpty(encodedFragment) || !encodedFragment.startsWith("transform=")) ? ImmutableList.of() : ImmutableList.copyOf(Splitter.on("+").omitEmptyStrings().split(encodedFragment.substring(10)));
        int size = immutableListOf.size();
        for (int i = 0; i < size; i++) {
            builder2.add(zzsp.zza((String) immutableListOf.get(i)));
        }
        ImmutableList immutableListBuild = builder2.build();
        if (immutableListBuild.size() > 0) {
            String str = (String) immutableListBuild.get(0);
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(this.zzb.get(str));
            String strValueOf = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + strValueOf.length());
            sb.append("Requested transform isn't registered: ");
            sb.append(str);
            sb.append(": ");
            sb.append(strValueOf);
            throw new zzsk(sb.toString());
        }
        ImmutableList immutableListReverse = builder.build().reverse();
        zzrr zzrrVar = new zzrr(null);
        String scheme = uri.getScheme();
        zzsx zzsxVar = (zzsx) this.zza.get(scheme);
        if (zzsxVar == null) {
            throw new zzsk(String.format("Requested backend isn't registered: %s", scheme));
        }
        zzrrVar.zza(zzsxVar);
        zzrrVar.zzc(this.zzc);
        zzrrVar.zzb(immutableListReverse);
        zzrrVar.zze(uri);
        if (!immutableListReverse.isEmpty()) {
            ArrayList arrayList = new ArrayList(uri.getPathSegments());
            if (!arrayList.isEmpty() && !uri.getPath().endsWith("/")) {
                String str2 = (String) arrayList.get(arrayList.size() - 1);
                ListIterator<E> listIterator = immutableListReverse.listIterator(immutableListReverse.size());
                while (listIterator.hasPrevious()) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(listIterator.previous());
                }
                arrayList.set(arrayList.size() - 1, str2);
                uri = uri.buildUpon().path(TextUtils.join("/", arrayList)).encodedFragment(null).build();
            }
        }
        zzrrVar.zzd(uri);
        return new zzrs(zzrrVar);
    }

    public final Object zza(Uri uri, zzrt zzrtVar) {
        return zzrtVar.zza(zze(uri));
    }

    public final void zzb(Uri uri) throws zzsk {
        zzrs zzrsVarZze = zze(uri);
        zzrsVarZze.zza().zzk(zzrsVarZze.zzb());
    }

    public final boolean zzc(Uri uri) throws zzsk {
        zzrs zzrsVarZze = zze(uri);
        return zzrsVarZze.zza().zze(zzrsVarZze.zzb());
    }

    public final void zzd(Uri uri, Uri uri2) throws zzsk {
        zzrs zzrsVarZze = zze(uri);
        zzrs zzrsVarZze2 = zze(uri2);
        if (zzrsVarZze.zza() != zzrsVarZze2.zza()) {
            throw new zzsk("Cannot rename file across backends");
        }
        zzrsVarZze.zza().zzl(zzrsVarZze.zzb(), zzrsVarZze2.zzb());
    }
}
