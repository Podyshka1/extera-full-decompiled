package com.google.android.gms.internal.clearcut;

import java.util.concurrent.ConcurrentMap;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
final class zzea {
    private static final zzea zznc = new zzea();
    private final zzeg zznd;
    private final ConcurrentMap zzne = new ConcurrentHashMap();

    private zzea() {
        String[] strArr = {"com.google.protobuf.AndroidProto3SchemaFactory"};
        zzeg zzegVarZzk = null;
        for (int i = 0; i <= 0; i++) {
            zzegVarZzk = zzk(strArr[0]);
            if (zzegVarZzk != null) {
                break;
            }
        }
        this.zznd = zzegVarZzk == null ? new zzdd() : zzegVarZzk;
    }

    public static zzea zzcm() {
        return zznc;
    }

    private static zzeg zzk(String str) {
        try {
            return (zzeg) Class.forName(str).getConstructor(null).newInstance(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public final zzef zze(Class cls) {
        zzci.zza((Object) cls, "messageType");
        zzef zzefVarZzd = (zzef) this.zzne.get(cls);
        if (zzefVarZzd == null) {
            zzefVarZzd = this.zznd.zzd(cls);
            zzci.zza((Object) cls, "messageType");
            zzci.zza((Object) zzefVarZzd, "schema");
            zzef zzefVar = (zzef) this.zzne.putIfAbsent(cls, zzefVarZzd);
            if (zzefVar != null) {
                return zzefVar;
            }
        }
        return zzefVarZzd;
    }

    public final zzef zzp(Object obj) {
        return zze(obj.getClass());
    }
}
