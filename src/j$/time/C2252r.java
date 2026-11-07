package j$.time;

import j$.nio.file.C2148b;
import j$.time.zone.C2278f;
import j$.time.zone.C2279g;
import j$.time.zone.ZoneRules;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.r */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2252r extends ZoneId {

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ int f821d = 0;
    private static final long serialVersionUID = 8386373296231747096L;

    /* JADX INFO: renamed from: b */
    public final String f822b;

    /* JADX INFO: renamed from: c */
    public final transient ZoneRules f823c;

    public C2252r(String str, ZoneRules zoneRules) {
        this.f822b = str;
        this.f823c = zoneRules;
    }

    /* JADX INFO: renamed from: Y */
    public static C2252r m827Y(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        int length = str.length();
        ZoneRules zoneRulesM857a = null;
        if (length < 2) {
            C2148b.m615h("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
            return null;
        }
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < 'a' || cCharAt > 'z') && ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt != '/' || i == 0) && ((cCharAt < '0' || cCharAt > '9' || i == 0) && ((cCharAt != '~' || i == 0) && ((cCharAt != '.' || i == 0) && ((cCharAt != '_' || i == 0) && ((cCharAt != '+' || i == 0) && (cCharAt != '-' || i == 0))))))))) {
                C2148b.m615h("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
                return null;
            }
        }
        try {
            zoneRulesM857a = C2279g.m857a(str);
        } catch (C2278f e) {
            if (z) {
                throw e;
            }
        }
        return new C2252r(str, zoneRulesM857a);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2249o((byte) 7, this);
    }

    @Override // j$.time.ZoneId
    /* JADX INFO: renamed from: S */
    public final void mo706S(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(7);
        dataOutput.writeUTF(this.f822b);
    }

    @Override // j$.time.ZoneId
    public final String getId() {
        return this.f822b;
    }

    @Override // j$.time.ZoneId
    public final ZoneRules getRules() {
        ZoneRules zoneRules = this.f823c;
        return zoneRules != null ? zoneRules : C2279g.m857a(this.f822b);
    }
}
