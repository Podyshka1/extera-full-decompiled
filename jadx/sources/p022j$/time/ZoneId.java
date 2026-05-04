package p022j$.time;

import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.format.C2162o;
import p022j$.time.format.C2163p;
import p022j$.time.format.EnumC2170w;
import p022j$.time.format.TextStyle;
import p022j$.time.zone.ZoneRules;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ZoneId implements Serializable {

    /* JADX INFO: renamed from: a */
    public static final Map f657a;
    private static final long serialVersionUID = 8352817235686L;

    /* JADX INFO: renamed from: E */
    public abstract void mo644E(DataOutput dataOutput);

    public abstract String getId();

    public abstract ZoneRules getRules();

    static {
        Map.Entry[] entryArr = {AbstractC2104a.m531Q("ACT", "Australia/Darwin"), AbstractC2104a.m531Q("AET", "Australia/Sydney"), AbstractC2104a.m531Q("AGT", "America/Argentina/Buenos_Aires"), AbstractC2104a.m531Q("ART", "Africa/Cairo"), AbstractC2104a.m531Q("AST", "America/Anchorage"), AbstractC2104a.m531Q("BET", "America/Sao_Paulo"), AbstractC2104a.m531Q("BST", "Asia/Dhaka"), AbstractC2104a.m531Q("CAT", "Africa/Harare"), AbstractC2104a.m531Q("CNT", "America/St_Johns"), AbstractC2104a.m531Q("CST", "America/Chicago"), AbstractC2104a.m531Q("CTT", "Asia/Shanghai"), AbstractC2104a.m531Q("EAT", "Africa/Addis_Ababa"), AbstractC2104a.m531Q("ECT", "Europe/Paris"), AbstractC2104a.m531Q("IET", "America/Indiana/Indianapolis"), AbstractC2104a.m531Q("IST", "Asia/Kolkata"), AbstractC2104a.m531Q("JST", "Asia/Tokyo"), AbstractC2104a.m531Q("MIT", "Pacific/Apia"), AbstractC2104a.m531Q("NET", "Asia/Yerevan"), AbstractC2104a.m531Q("NST", "Pacific/Auckland"), AbstractC2104a.m531Q("PLT", "Asia/Karachi"), AbstractC2104a.m531Q("PNT", "America/Phoenix"), AbstractC2104a.m531Q("PRT", "America/Puerto_Rico"), AbstractC2104a.m531Q("PST", "America/Los_Angeles"), AbstractC2104a.m531Q("SST", "Pacific/Guadalcanal"), AbstractC2104a.m531Q("VST", "Asia/Ho_Chi_Minh"), AbstractC2104a.m531Q("EST", "-05:00"), AbstractC2104a.m531Q("MST", "-07:00"), AbstractC2104a.m531Q("HST", "-10:00")};
        HashMap map = new HashMap(28);
        for (int i = 0; i < 28; i++) {
            Map.Entry entry = entryArr[i];
            Object objRequireNonNull = Objects.requireNonNull(entry.getKey());
            if (map.put(objRequireNonNull, Objects.requireNonNull(entry.getValue())) != null) {
                throw new IllegalArgumentException("duplicate key: " + objRequireNonNull);
            }
        }
        f657a = Collections.unmodifiableMap(map);
    }

    public static ZoneId systemDefault() {
        String id = TimeZone.getDefault().getID();
        Map map = f657a;
        Objects.requireNonNull(id, "zoneId");
        Objects.requireNonNull(map, "aliasMap");
        return m642of((String) Objects.requireNonNullElse((String) map.get(id), id));
    }

    /* JADX INFO: renamed from: of */
    public static ZoneId m642of(String str) {
        return m643v(str, true);
    }

    /* JADX INFO: renamed from: A */
    public static ZoneId m640A(String str, ZoneOffset zoneOffset) {
        Objects.requireNonNull(str, "prefix");
        Objects.requireNonNull(zoneOffset, "offset");
        if (str.isEmpty()) {
            return zoneOffset;
        }
        if (!str.equals("GMT") && !str.equals("UTC") && !str.equals("UT")) {
            throw new IllegalArgumentException("prefix should be GMT, UTC or UT, is: ".concat(str));
        }
        if (zoneOffset.getTotalSeconds() != 0) {
            str = str.concat(zoneOffset.f663c);
        }
        return new C2185t(str, zoneOffset.getRules());
    }

    /* JADX INFO: renamed from: v */
    public static ZoneId m643v(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        if (str.length() <= 1 || str.startsWith("+") || str.startsWith("-")) {
            return ZoneOffset.m645F(str);
        }
        if (str.startsWith("UTC") || str.startsWith("GMT")) {
            return m641D(str, 3, z);
        }
        if (str.startsWith("UT")) {
            return m641D(str, 2, z);
        }
        return C2185t.m768F(str, z);
    }

    /* JADX INFO: renamed from: D */
    public static ZoneId m641D(String str, int i, boolean z) {
        String strSubstring = str.substring(0, i);
        if (str.length() == i) {
            return m640A(strSubstring, ZoneOffset.UTC);
        }
        if (str.charAt(i) != '+' && str.charAt(i) != '-') {
            return C2185t.m768F(str, z);
        }
        try {
            ZoneOffset zoneOffsetM645F = ZoneOffset.m645F(str.substring(i));
            if (zoneOffsetM645F == ZoneOffset.UTC) {
                return m640A(strSubstring, zoneOffsetM645F);
            }
            return m640A(strSubstring, zoneOffsetM645F);
        } catch (C2108b e) {
            throw new C2108b("Invalid ID for offset-based ZoneId: ".concat(str), e);
        }
    }

    public ZoneId() {
        if (getClass() != ZoneOffset.class && getClass() != C2185t.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        C2163p c2163p = new C2163p();
        c2163p.m724b(new C2162o(textStyle));
        return c2163p.m734l(locale, EnumC2170w.SMART, null).m715a(new C2184s(0, this));
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
        return new C2180o((byte) 7, this);
    }
}
