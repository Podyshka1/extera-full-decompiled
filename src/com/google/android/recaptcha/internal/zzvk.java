package com.google.android.recaptcha.internal;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class zzvk {
    private final Map zza = new HashMap();

    public final zzvk zza(zzady zzadyVar, Object obj) throws GeneralSecurityException {
        List list;
        if (zzadyVar.zzd() != 0 && zzadyVar.zzd() != 5) {
            zzsj$$ExternalSyntheticBUOutline1.m480m("PrefixMap only supports 0 and 5 byte prefixes");
            return null;
        }
        Map map = this.zza;
        if (map.containsKey(zzadyVar)) {
            list = (List) map.get(zzadyVar);
        } else {
            ArrayList arrayList = new ArrayList();
            map.put(zzadyVar, arrayList);
            list = arrayList;
        }
        list.add(obj);
        return this;
    }

    public final zzvm zzb() {
        return new zzvm(this.zza, null);
    }
}
