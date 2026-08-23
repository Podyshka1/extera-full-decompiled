package p022j$.time;

import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import p022j$.time.zone.C2213f;
import p022j$.time.zone.C2215h;
import p022j$.time.zone.ZoneRules;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.time.t */
/* JADX INFO: loaded from: classes2.dex */
public final class C2185t extends ZoneId {

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ int f822d = 0;
    private static final long serialVersionUID = 8386373296231747096L;

    /* JADX INFO: renamed from: b */
    public final String f823b;

    /* JADX INFO: renamed from: c */
    public final transient ZoneRules f824c;

    /* JADX INFO: renamed from: F */
    public static C2185t m768F(String str, boolean z) {
        ZoneRules zoneRulesM805a;
        Objects.requireNonNull(str, "zoneId");
        int length = str.length();
        if (length >= 2) {
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if ((cCharAt < 'a' || cCharAt > 'z') && ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt != '/' || i == 0) && ((cCharAt < '0' || cCharAt > '9' || i == 0) && ((cCharAt != '~' || i == 0) && ((cCharAt != '.' || i == 0) && ((cCharAt != '_' || i == 0) && ((cCharAt != '+' || i == 0) && (cCharAt != '-' || i == 0))))))))) {
                    throw new C2108b("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
                }
            }
            try {
                zoneRulesM805a = C2215h.m805a(str);
            } catch (C2213f e) {
                if (z) {
                    throw e;
                }
                zoneRulesM805a = null;
            }
            return new C2185t(str, zoneRulesM805a);
        }
        throw new C2108b("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
    }

    public C2185t(String str, ZoneRules zoneRules) {
        this.f823b = str;
        this.f824c = zoneRules;
    }

    @Override // p022j$.time.ZoneId
    public final String getId() {
        return this.f823b;
    }

    @Override // p022j$.time.ZoneId
    public final ZoneRules getRules() {
        ZoneRules zoneRules = this.f824c;
        return zoneRules != null ? zoneRules : C2215h.m805a(this.f823b);
    }

    private Object writeReplace() {
        return new C2180o((byte) 7, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // p022j$.time.ZoneId
    /* JADX INFO: renamed from: E */
    public final void mo644E(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(7);
        dataOutput.writeUTF(this.f823b);
    }
}
