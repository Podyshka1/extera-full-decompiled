package j$.time;

import j$.time.zone.C2074f;
import j$.time.zone.C2076h;
import j$.time.zone.ZoneRules;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* JADX INFO: renamed from: j$.time.t */
/* JADX INFO: loaded from: classes2.dex */
public final class C2046t extends ZoneId {

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ int f587d = 0;
    private static final long serialVersionUID = 8386373296231747096L;

    /* JADX INFO: renamed from: b */
    public final String f588b;

    /* JADX INFO: renamed from: c */
    public final transient ZoneRules f589c;

    /* JADX INFO: renamed from: F */
    public static C2046t m643F(String str, boolean z) {
        ZoneRules zoneRulesM680a;
        Objects.requireNonNull(str, "zoneId");
        int length = str.length();
        if (length >= 2) {
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if ((cCharAt < 'a' || cCharAt > 'z') && ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt != '/' || i == 0) && ((cCharAt < '0' || cCharAt > '9' || i == 0) && ((cCharAt != '~' || i == 0) && ((cCharAt != '.' || i == 0) && ((cCharAt != '_' || i == 0) && ((cCharAt != '+' || i == 0) && (cCharAt != '-' || i == 0))))))))) {
                    throw new C1969b("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
                }
            }
            try {
                zoneRulesM680a = C2076h.m680a(str);
            } catch (C2074f e) {
                if (z) {
                    throw e;
                }
                zoneRulesM680a = null;
            }
            return new C2046t(str, zoneRulesM680a);
        }
        throw new C1969b("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
    }

    public C2046t(String str, ZoneRules zoneRules) {
        this.f588b = str;
        this.f589c = zoneRules;
    }

    @Override // j$.time.ZoneId
    public final String getId() {
        return this.f588b;
    }

    @Override // j$.time.ZoneId
    public final ZoneRules getRules() {
        ZoneRules zoneRules = this.f589c;
        return zoneRules != null ? zoneRules : C2076h.m680a(this.f588b);
    }

    private Object writeReplace() {
        return new C2041o((byte) 7, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.ZoneId
    /* JADX INFO: renamed from: E */
    public final void mo521E(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(7);
        dataOutput.writeUTF(this.f588b);
    }
}
