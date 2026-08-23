package j$.time;

import j$.time.zone.C2203f;
import j$.time.zone.C2205h;
import j$.time.zone.ZoneRules;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.w */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2195w extends ZoneId {

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ int f711d = 0;
    private static final long serialVersionUID = 8386373296231747096L;

    /* JADX INFO: renamed from: b */
    public final String f712b;

    /* JADX INFO: renamed from: c */
    public final transient ZoneRules f713c;

    public C2195w(String str, ZoneRules zoneRules) {
        this.f712b = str;
        this.f713c = zoneRules;
    }

    /* JADX INFO: renamed from: V */
    public static C2195w m733V(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        int length = str.length();
        ZoneRules zoneRulesM750a = null;
        if (length < 2) {
            C2159g.m684a("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
            return null;
        }
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < 'a' || cCharAt > 'z') && ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt != '/' || i == 0) && ((cCharAt < '0' || cCharAt > '9' || i == 0) && ((cCharAt != '~' || i == 0) && ((cCharAt != '.' || i == 0) && ((cCharAt != '_' || i == 0) && ((cCharAt != '+' || i == 0) && (cCharAt != '-' || i == 0))))))))) {
                C2159g.m684a("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
                return null;
            }
        }
        try {
            zoneRulesM750a = C2205h.m750a(str);
        } catch (C2203f e) {
            if (z) {
                throw e;
            }
        }
        return new C2195w(str, zoneRulesM750a);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2170r((byte) 7, this);
    }

    @Override // j$.time.ZoneId
    /* JADX INFO: renamed from: P */
    public final void mo545P(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(7);
        dataOutput.writeUTF(this.f712b);
    }

    @Override // j$.time.ZoneId
    public final String getId() {
        return this.f712b;
    }

    @Override // j$.time.ZoneId
    public final ZoneRules getRules() {
        ZoneRules zoneRules = this.f713c;
        return zoneRules != null ? zoneRules : C2205h.m750a(this.f712b);
    }
}
