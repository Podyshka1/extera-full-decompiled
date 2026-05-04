package j$.time.format;

import j$.time.C2034h;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.ZonedDateTime;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2060n;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: renamed from: j$.time.format.o */
/* JADX INFO: loaded from: classes2.dex */
public final class C2023o extends C2022n {

    /* JADX INFO: renamed from: d */
    public static final ConcurrentHashMap f534d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c */
    public final TextStyle f535c;

    public C2023o(TextStyle textStyle) {
        super(AbstractC2064r.f614e, "ZoneText(" + textStyle + ")");
        new HashMap();
        new HashMap();
        this.f535c = (TextStyle) Objects.requireNonNull(textStyle, "textStyle");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0078  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // j$.time.format.C2022n, j$.time.format.InterfaceC2014f
    /* JADX INFO: renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo596h(C2026r c2026r, StringBuilder sb) {
        boolean zM672g;
        String[] strArr;
        ZoneId zoneId = (ZoneId) c2026r.m613b(AbstractC2064r.f610a);
        if (zoneId == null) {
            return false;
        }
        String id = zoneId.getId();
        if (!(zoneId instanceof ZoneOffset)) {
            InterfaceC2060n interfaceC2060n = c2026r.f546a;
            String str = null;
            Map concurrentHashMap = null;
            if (interfaceC2060n.mo455e(EnumC2047a.INSTANT_SECONDS)) {
                zM672g = zoneId.getRules().m672g(Instant.m463A(interfaceC2060n));
            } else {
                EnumC2047a enumC2047a = EnumC2047a.EPOCH_DAY;
                if (interfaceC2060n.mo455e(enumC2047a)) {
                    EnumC2047a enumC2047a2 = EnumC2047a.NANO_OF_DAY;
                    if (interfaceC2060n.mo455e(enumC2047a2)) {
                        LocalDateTime localDateTimeM494E = LocalDateTime.m494E(LocalDate.m474K(interfaceC2060n.mo460w(enumC2047a)), C2034h.m617F(interfaceC2060n.mo460w(enumC2047a2)));
                        if (zoneId.getRules().m670e(localDateTimeM494E) == null) {
                            zM672g = zoneId.getRules().m672g(Instant.m464D(ZonedDateTime.m529v(localDateTimeM494E, zoneId, null).mo531C(), r0.mo535b().f565d));
                        } else {
                            zM672g = 2;
                        }
                    }
                }
            }
            Locale locale = c2026r.f547b.f503b;
            TextStyle textStyle = TextStyle.NARROW;
            TextStyle textStyle2 = this.f535c;
            if (textStyle2 != textStyle) {
                ConcurrentHashMap concurrentHashMap2 = f534d;
                SoftReference softReference = (SoftReference) concurrentHashMap2.get(id);
                if (softReference == null || (concurrentHashMap = (Map) softReference.get()) == null || (strArr = (String[]) concurrentHashMap.get(locale)) == null) {
                    TimeZone timeZone = TimeZone.getTimeZone(id);
                    String[] strArr2 = {id, timeZone.getDisplayName(false, 1, locale), timeZone.getDisplayName(false, 0, locale), timeZone.getDisplayName(true, 1, locale), timeZone.getDisplayName(true, 0, locale), id, id};
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    concurrentHashMap.put(locale, strArr2);
                    concurrentHashMap2.put(id, new SoftReference(concurrentHashMap));
                    strArr = strArr2;
                }
                if (zM672g == 0) {
                    str = strArr[textStyle2.f507a + 1];
                } else if (zM672g == 1) {
                    str = strArr[textStyle2.f507a + 3];
                } else {
                    str = strArr[textStyle2.f507a + 5];
                }
            }
            if (str != null) {
                id = str;
            }
        }
        sb.append(id);
        return true;
    }
}
