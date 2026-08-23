package j$.time;

import j$.time.format.C2148p;
import j$.time.format.C2149q;
import j$.time.format.EnumC2158z;
import j$.time.format.TextStyle;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.InterfaceC2184l;
import j$.time.zone.ZoneRules;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ZoneId implements Serializable {

    /* JADX INFO: renamed from: a */
    public static final Map f488a;
    private static final long serialVersionUID = 8352817235686L;

    static {
        Map.Entry[] entryArr = {new AbstractMap.SimpleImmutableEntry("ACT", "Australia/Darwin"), new AbstractMap.SimpleImmutableEntry("AET", "Australia/Sydney"), new AbstractMap.SimpleImmutableEntry("AGT", "America/Argentina/Buenos_Aires"), new AbstractMap.SimpleImmutableEntry("ART", "Africa/Cairo"), new AbstractMap.SimpleImmutableEntry("AST", "America/Anchorage"), new AbstractMap.SimpleImmutableEntry("BET", "America/Sao_Paulo"), new AbstractMap.SimpleImmutableEntry("BST", "Asia/Dhaka"), new AbstractMap.SimpleImmutableEntry("CAT", "Africa/Harare"), new AbstractMap.SimpleImmutableEntry("CNT", "America/St_Johns"), new AbstractMap.SimpleImmutableEntry("CST", "America/Chicago"), new AbstractMap.SimpleImmutableEntry("CTT", "Asia/Shanghai"), new AbstractMap.SimpleImmutableEntry("EAT", "Africa/Addis_Ababa"), new AbstractMap.SimpleImmutableEntry("ECT", "Europe/Paris"), new AbstractMap.SimpleImmutableEntry("IET", "America/Indiana/Indianapolis"), new AbstractMap.SimpleImmutableEntry("IST", "Asia/Kolkata"), new AbstractMap.SimpleImmutableEntry("JST", "Asia/Tokyo"), new AbstractMap.SimpleImmutableEntry("MIT", "Pacific/Apia"), new AbstractMap.SimpleImmutableEntry("NET", "Asia/Yerevan"), new AbstractMap.SimpleImmutableEntry("NST", "Pacific/Auckland"), new AbstractMap.SimpleImmutableEntry("PLT", "Asia/Karachi"), new AbstractMap.SimpleImmutableEntry("PNT", "America/Phoenix"), new AbstractMap.SimpleImmutableEntry("PRT", "America/Puerto_Rico"), new AbstractMap.SimpleImmutableEntry("PST", "America/Los_Angeles"), new AbstractMap.SimpleImmutableEntry("SST", "Pacific/Guadalcanal"), new AbstractMap.SimpleImmutableEntry("VST", "Asia/Ho_Chi_Minh"), new AbstractMap.SimpleImmutableEntry("EST", "-05:00"), new AbstractMap.SimpleImmutableEntry("MST", "-07:00"), new AbstractMap.SimpleImmutableEntry("HST", "-10:00")};
        HashMap map = new HashMap(28);
        for (int i = 0; i < 28; i++) {
            Map.Entry entry = entryArr[i];
            Object key = entry.getKey();
            Objects.requireNonNull(key);
            Object value = entry.getValue();
            Objects.requireNonNull(value);
            if (map.put(key, value) != null) {
                throw new IllegalArgumentException("duplicate key: " + key);
            }
        }
        f488a = Collections.unmodifiableMap(map);
    }

    public ZoneId() {
        if (getClass() != ZoneOffset.class && getClass() != C2195w.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    /* JADX INFO: renamed from: B */
    public static ZoneId m541B(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        return (str.length() <= 1 || str.startsWith("+") || str.startsWith("-")) ? ZoneOffset.m547X(str) : (str.startsWith("UTC") || str.startsWith("GMT")) ? m543I(str, 3, z) : str.startsWith("UT") ? m543I(str, 2, z) : C2195w.m733V(str, z);
    }

    /* JADX INFO: renamed from: G */
    public static ZoneId m542G(String str, ZoneOffset zoneOffset) {
        Objects.requireNonNull(str, "prefix");
        Objects.requireNonNull(zoneOffset, "offset");
        if (str.isEmpty()) {
            return zoneOffset;
        }
        if (!str.equals("GMT") && !str.equals("UTC") && !str.equals("UT")) {
            throw new IllegalArgumentException("prefix should be GMT, UTC or UT, is: ".concat(str));
        }
        if (zoneOffset.getTotalSeconds() != 0) {
            str = str.concat(zoneOffset.f494c);
        }
        return new C2195w(str, new ZoneRules(zoneOffset));
    }

    /* JADX INFO: renamed from: I */
    public static ZoneId m543I(String str, int i, boolean z) {
        String strSubstring = str.substring(0, i);
        if (str.length() == i) {
            return m542G(strSubstring, ZoneOffset.UTC);
        }
        if (str.charAt(i) != '+' && str.charAt(i) != '-') {
            return C2195w.m733V(str, z);
        }
        try {
            ZoneOffset zoneOffsetM547X = ZoneOffset.m547X(str.substring(i));
            return zoneOffsetM547X == ZoneOffset.UTC ? m542G(strSubstring, zoneOffsetM547X) : m542G(strSubstring, zoneOffsetM547X);
        } catch (C2103c e) {
            throw new C2103c("Invalid ID for offset-based ZoneId: ".concat(str), e);
        }
    }

    public static ZoneId of(String str) {
        return m541B(str, true);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static ZoneId systemDefault() {
        String id = TimeZone.getDefault().getID();
        Map map = f488a;
        Objects.requireNonNull(id, "zoneId");
        Objects.requireNonNull(map, "aliasMap");
        String str = (String) map.get(id);
        if (str != null) {
            id = str;
        }
        return of(id);
    }

    /* JADX INFO: renamed from: t */
    public static ZoneId m544t(InterfaceC2184l interfaceC2184l) {
        ZoneId zoneId = (ZoneId) interfaceC2184l.mo482d(AbstractC2189q.f701e);
        if (zoneId != null) {
            return zoneId;
        }
        C2159g.m689f("Unable to obtain ZoneId from TemporalAccessor: ", interfaceC2184l, " of type ", interfaceC2184l.getClass().getName());
        return null;
    }

    private Object writeReplace() {
        return new C2170r((byte) 7, this);
    }

    /* JADX INFO: renamed from: P */
    public abstract void mo545P(DataOutput dataOutput);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneId) {
            return getId().equals(((ZoneId) obj).getId());
        }
        return false;
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        C2149q c2149q = new C2149q();
        c2149q.m654b(new C2148p(textStyle));
        return c2149q.m664l(locale, EnumC2158z.SMART, null).m630a(new C2194v(this));
    }

    public abstract String getId();

    public abstract ZoneRules getRules();

    public int hashCode() {
        return getId().hashCode();
    }

    public String toString() {
        return getId();
    }
}
