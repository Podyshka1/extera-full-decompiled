package j$.time;

import j$.nio.file.C2288b;
import j$.time.zone.C2417f;
import j$.time.zone.C2418g;
import j$.time.zone.ZoneRules;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.q */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2391q extends ZoneId {

    /* JADX INFO: renamed from: d */
    public static final /* synthetic */ int f823d = 0;
    private static final long serialVersionUID = 8386373296231747096L;

    /* JADX INFO: renamed from: b */
    public final String f824b;

    /* JADX INFO: renamed from: c */
    public final transient ZoneRules f825c;

    public C2391q(String str, ZoneRules zoneRules) {
        this.f824b = str;
        this.f825c = zoneRules;
    }

    /* JADX INFO: renamed from: X */
    public static C2391q m871X(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        int length = str.length();
        ZoneRules zoneRulesM905a = null;
        if (length < 2) {
            C2288b.m639h("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
            return null;
        }
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt < 'a' || cCharAt > 'z') && ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt != '/' || i == 0) && ((cCharAt < '0' || cCharAt > '9' || i == 0) && ((cCharAt != '~' || i == 0) && ((cCharAt != '.' || i == 0) && ((cCharAt != '_' || i == 0) && ((cCharAt != '+' || i == 0) && (cCharAt != '-' || i == 0))))))))) {
                C2288b.m639h("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
                return null;
            }
        }
        try {
            zoneRulesM905a = C2418g.m905a(str);
        } catch (C2417f e) {
            if (z) {
                throw e;
            }
        }
        return new C2391q(str, zoneRulesM905a);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2388n((byte) 7, this);
    }

    @Override // j$.time.ZoneId
    /* JADX INFO: renamed from: R */
    public final void mo736R(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(7);
        dataOutput.writeUTF(this.f824b);
    }

    @Override // j$.time.ZoneId
    public final String getId() {
        return this.f824b;
    }

    @Override // j$.time.ZoneId
    public final ZoneRules getRules() {
        ZoneRules zoneRules = this.f825c;
        return zoneRules != null ? zoneRules : C2418g.m905a(this.f824b);
    }
}
