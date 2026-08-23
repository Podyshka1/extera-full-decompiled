package p022j$.time.format;

import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import p022j$.time.C2173h;
import p022j$.time.Instant;
import p022j$.time.LocalDate;
import p022j$.time.LocalDateTime;
import p022j$.time.ZoneId;
import p022j$.time.ZoneOffset;
import p022j$.time.ZonedDateTime;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.util.Objects;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.time.format.o */
/* JADX INFO: loaded from: classes2.dex */
public final class C2162o extends C2161n {

    /* JADX INFO: renamed from: d */
    public static final ConcurrentHashMap f769d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: c */
    public final TextStyle f770c;

    public C2162o(TextStyle textStyle) {
        super(AbstractC2203r.f849e, "ZoneText(" + textStyle + ")");
        new HashMap();
        new HashMap();
        this.f770c = (TextStyle) Objects.requireNonNull(textStyle, "textStyle");
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
    @Override // p022j$.time.format.C2161n, p022j$.time.format.InterfaceC2153f
    /* JADX INFO: renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean mo719h(C2165r c2165r, StringBuilder sb) {
        boolean zM797g;
        String[] strArr;
        ZoneId zoneId = (ZoneId) c2165r.m736b(AbstractC2203r.f845a);
        if (zoneId == null) {
            return false;
        }
        String id = zoneId.getId();
        if (!(zoneId instanceof ZoneOffset)) {
            InterfaceC2199n interfaceC2199n = c2165r.f781a;
            String str = null;
            Map concurrentHashMap = null;
            if (interfaceC2199n.mo575e(EnumC2186a.INSTANT_SECONDS)) {
                zM797g = zoneId.getRules().m797g(Instant.m583A(interfaceC2199n));
            } else {
                EnumC2186a enumC2186a = EnumC2186a.EPOCH_DAY;
                if (interfaceC2199n.mo575e(enumC2186a)) {
                    EnumC2186a enumC2186a2 = EnumC2186a.NANO_OF_DAY;
                    if (interfaceC2199n.mo575e(enumC2186a2)) {
                        LocalDateTime localDateTimeM615E = LocalDateTime.m615E(LocalDate.m594K(interfaceC2199n.mo580w(enumC2186a)), C2173h.m740F(interfaceC2199n.mo580w(enumC2186a2)));
                        if (zoneId.getRules().m795e(localDateTimeM615E) == null) {
                            zM797g = zoneId.getRules().m797g(Instant.m584D(ZonedDateTime.m652v(localDateTimeM615E, zoneId, null).mo654C(), r0.mo658b().f800d));
                        } else {
                            zM797g = 2;
                        }
                    }
                }
            }
            Locale locale = c2165r.f782b.f738b;
            TextStyle textStyle = TextStyle.NARROW;
            TextStyle textStyle2 = this.f770c;
            if (textStyle2 != textStyle) {
                ConcurrentHashMap concurrentHashMap2 = f769d;
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
                if (zM797g == 0) {
                    str = strArr[textStyle2.f742a + 1];
                } else if (zM797g == 1) {
                    str = strArr[textStyle2.f742a + 3];
                } else {
                    str = strArr[textStyle2.f742a + 5];
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
