package j$.time;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.format.C2023o;
import j$.time.format.C2024p;
import j$.time.format.EnumC2031w;
import j$.time.format.TextStyle;
import j$.time.zone.ZoneRules;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ZoneId implements Serializable {

    /* JADX INFO: renamed from: a */
    public static final Map f425a;
    private static final long serialVersionUID = 8352817235686L;

    /* JADX INFO: renamed from: E */
    public abstract void mo521E(DataOutput dataOutput);

    public abstract String getId();

    public abstract ZoneRules getRules();

    static {
        Map.Entry[] entryArr = {AbstractC1965a.m411Q("ACT", "Australia/Darwin"), AbstractC1965a.m411Q("AET", "Australia/Sydney"), AbstractC1965a.m411Q("AGT", "America/Argentina/Buenos_Aires"), AbstractC1965a.m411Q("ART", "Africa/Cairo"), AbstractC1965a.m411Q("AST", "America/Anchorage"), AbstractC1965a.m411Q("BET", "America/Sao_Paulo"), AbstractC1965a.m411Q("BST", "Asia/Dhaka"), AbstractC1965a.m411Q("CAT", "Africa/Harare"), AbstractC1965a.m411Q("CNT", "America/St_Johns"), AbstractC1965a.m411Q("CST", "America/Chicago"), AbstractC1965a.m411Q("CTT", "Asia/Shanghai"), AbstractC1965a.m411Q("EAT", "Africa/Addis_Ababa"), AbstractC1965a.m411Q("ECT", "Europe/Paris"), AbstractC1965a.m411Q("IET", "America/Indiana/Indianapolis"), AbstractC1965a.m411Q("IST", "Asia/Kolkata"), AbstractC1965a.m411Q("JST", "Asia/Tokyo"), AbstractC1965a.m411Q("MIT", "Pacific/Apia"), AbstractC1965a.m411Q("NET", "Asia/Yerevan"), AbstractC1965a.m411Q("NST", "Pacific/Auckland"), AbstractC1965a.m411Q("PLT", "Asia/Karachi"), AbstractC1965a.m411Q("PNT", "America/Phoenix"), AbstractC1965a.m411Q("PRT", "America/Puerto_Rico"), AbstractC1965a.m411Q("PST", "America/Los_Angeles"), AbstractC1965a.m411Q("SST", "Pacific/Guadalcanal"), AbstractC1965a.m411Q("VST", "Asia/Ho_Chi_Minh"), AbstractC1965a.m411Q("EST", "-05:00"), AbstractC1965a.m411Q("MST", "-07:00"), AbstractC1965a.m411Q("HST", "-10:00")};
        HashMap map = new HashMap(28);
        for (int i = 0; i < 28; i++) {
            Map.Entry entry = entryArr[i];
            Object objRequireNonNull = Objects.requireNonNull(entry.getKey());
            if (map.put(objRequireNonNull, Objects.requireNonNull(entry.getValue())) != null) {
                throw new IllegalArgumentException("duplicate key: " + objRequireNonNull);
            }
        }
        f425a = Collections.unmodifiableMap(map);
    }

    public static ZoneId systemDefault() {
        String id = TimeZone.getDefault().getID();
        Map map = f425a;
        Objects.requireNonNull(id, "zoneId");
        Objects.requireNonNull(map, "aliasMap");
        return of((String) Objects.requireNonNullElse((String) map.get(id), id));
    }

    public static ZoneId of(String str) {
        return m520v(str, true);
    }

    /* JADX INFO: renamed from: A */
    public static ZoneId m518A(String str, ZoneOffset zoneOffset) {
        Objects.requireNonNull(str, "prefix");
        Objects.requireNonNull(zoneOffset, "offset");
        if (str.isEmpty()) {
            return zoneOffset;
        }
        if (!str.equals("GMT") && !str.equals("UTC") && !str.equals("UT")) {
            throw new IllegalArgumentException("prefix should be GMT, UTC or UT, is: ".concat(str));
        }
        if (zoneOffset.getTotalSeconds() != 0) {
            str = str.concat(zoneOffset.f431c);
        }
        return new C2046t(str, zoneOffset.getRules());
    }

    /* JADX INFO: renamed from: v */
    public static ZoneId m520v(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        if (str.length() <= 1 || str.startsWith("+") || str.startsWith("-")) {
            return ZoneOffset.m522F(str);
        }
        if (str.startsWith("UTC") || str.startsWith("GMT")) {
            return m519D(str, 3, z);
        }
        if (str.startsWith("UT")) {
            return m519D(str, 2, z);
        }
        return C2046t.m643F(str, z);
    }

    /* JADX INFO: renamed from: D */
    public static ZoneId m519D(String str, int i, boolean z) {
        String strSubstring = str.substring(0, i);
        if (str.length() == i) {
            return m518A(strSubstring, ZoneOffset.UTC);
        }
        if (str.charAt(i) != '+' && str.charAt(i) != '-') {
            return C2046t.m643F(str, z);
        }
        try {
            ZoneOffset zoneOffsetM522F = ZoneOffset.m522F(str.substring(i));
            if (zoneOffsetM522F == ZoneOffset.UTC) {
                return m518A(strSubstring, zoneOffsetM522F);
            }
            return m518A(strSubstring, zoneOffsetM522F);
        } catch (C1969b e) {
            throw new C1969b("Invalid ID for offset-based ZoneId: ".concat(str), e);
        }
    }

    public ZoneId() {
        if (getClass() != ZoneOffset.class && getClass() != C2046t.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        C2024p c2024p = new C2024p();
        c2024p.m601b(new C2023o(textStyle));
        return c2024p.m611l(locale, EnumC2031w.SMART, null).m592a(new C2045s(0, this));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneId) {
            return getId().equals(((ZoneId) obj).getId());
        }
        return false;
    }

    public int hashCode() {
        return getId().hashCode();
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public String toString() {
        return getId();
    }

    private Object writeReplace() {
        return new C2041o((byte) 7, this);
    }
}
