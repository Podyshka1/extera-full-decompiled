package p022j$.time.format;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import p022j$.time.C2173h;
import p022j$.time.LocalDate;
import p022j$.time.ZoneId;
import p022j$.time.ZoneOffset;
import p022j$.time.chrono.InterfaceC2129k;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.time.temporal.InterfaceC2204s;
import p022j$.util.C2308r0;
import p022j$.util.C2585w;
import p022j$.util.Objects;
import p022j$.util.function.BiConsumer$CC;
import p022j$.util.function.BiFunction$CC;
import p022j$.util.function.Function$CC;
import p022j$.util.stream.Collectors;

/* JADX INFO: renamed from: j$.time.format.a */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2148a implements Function, IntFunction, BiConsumer, BinaryOperator, DoubleBinaryOperator, ObjDoubleConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f743a;

    public /* synthetic */ C2148a(int i) {
        this.f743a = i;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f743a) {
            case 10:
                break;
            case 12:
                break;
            case 13:
                break;
            case 16:
                break;
            case 20:
                break;
            case 23:
                break;
            case 24:
                break;
            case 25:
                break;
        }
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f743a) {
            case 11:
                break;
            case 14:
                break;
            case 17:
                break;
            case 19:
                break;
        }
        return BiFunction$CC.$default$andThen(this, function);
    }

    /* JADX INFO: renamed from: andThen, reason: collision with other method in class */
    public /* synthetic */ Function m3592andThen(Function function) {
        switch (this.f743a) {
            case 8:
                break;
            case 15:
                break;
            case 18:
                break;
        }
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        switch (this.f743a) {
            case 15:
                Set set = Collectors.f1108a;
            case 8:
                return obj;
            case 18:
                return ((C2308r0) obj).toString();
            default:
                return ((StringBuilder) obj).toString();
        }
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d, double d2) {
        return Math.min(d, d2);
    }

    public /* synthetic */ Function compose(Function function) {
        switch (this.f743a) {
            case 8:
                break;
            case 15:
                break;
            case 18:
                break;
        }
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f743a) {
            case 11:
                Collection collection = (Collection) obj;
                Set set = Collectors.f1108a;
                collection.addAll((Collection) obj2);
                return collection;
            case 14:
                List list = (List) obj;
                Set set2 = Collectors.f1108a;
                list.addAll((List) obj2);
                return list;
            case 17:
                C2308r0 c2308r0 = (C2308r0) obj;
                C2308r0 c2308r02 = (C2308r0) obj2;
                c2308r0.getClass();
                Objects.requireNonNull(c2308r02);
                if (c2308r02.f1089d != null) {
                    c2308r02.m871b();
                    c2308r0.m870a(c2308r02.f1089d[0]);
                }
                return c2308r0;
            case 19:
                Set set3 = (Set) obj;
                Set set4 = (Set) obj2;
                Set set5 = Collectors.f1108a;
                if (set3.size() < set4.size()) {
                    set4.addAll(set3);
                    return set4;
                }
                set3.addAll(set4);
                return set3;
            default:
                StringBuilder sb = (StringBuilder) obj;
                Set set6 = Collectors.f1108a;
                sb.append((CharSequence) obj2);
                return sb;
        }
    }

    /* JADX INFO: renamed from: a */
    public Object m716a(InterfaceC2199n interfaceC2199n) {
        switch (this.f743a) {
            case 0:
                ZoneId zoneId = (ZoneId) interfaceC2199n.mo578k(AbstractC2203r.f845a);
                if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                    return null;
                }
                return zoneId;
            case 1:
                return (ZoneId) interfaceC2199n.mo578k(AbstractC2203r.f845a);
            case 2:
                return (InterfaceC2129k) interfaceC2199n.mo578k(AbstractC2203r.f846b);
            case 3:
                return (InterfaceC2204s) interfaceC2199n.mo578k(AbstractC2203r.f847c);
            case 4:
                EnumC2186a enumC2186a = EnumC2186a.OFFSET_SECONDS;
                if (interfaceC2199n.mo575e(enumC2186a)) {
                    return ZoneOffset.m647H(interfaceC2199n.mo576h(enumC2186a));
                }
                return null;
            case 5:
                ZoneId zoneId2 = (ZoneId) interfaceC2199n.mo578k(AbstractC2203r.f845a);
                return zoneId2 != null ? zoneId2 : (ZoneId) interfaceC2199n.mo578k(AbstractC2203r.f848d);
            case 6:
                EnumC2186a enumC2186a2 = EnumC2186a.EPOCH_DAY;
                if (interfaceC2199n.mo575e(enumC2186a2)) {
                    return LocalDate.m594K(interfaceC2199n.mo580w(enumC2186a2));
                }
                return null;
            default:
                EnumC2186a enumC2186a3 = EnumC2186a.NANO_OF_DAY;
                if (interfaceC2199n.mo575e(enumC2186a3)) {
                    return C2173h.m740F(interfaceC2199n.mo580w(enumC2186a3));
                }
                return null;
        }
    }

    public String toString() {
        switch (this.f743a) {
            case 1:
                return "ZoneId";
            case 2:
                return "Chronology";
            case 3:
                return "Precision";
            case 4:
                return "ZoneOffset";
            case 5:
                return "Zone";
            case 6:
                return "LocalDate";
            case 7:
                return "LocalTime";
            default:
                return super.toString();
        }
    }

    @Override // java.util.function.ObjDoubleConsumer
    public void accept(Object obj, double d) {
        switch (this.f743a) {
            case 27:
                double[] dArr = (double[]) obj;
                dArr[2] = dArr[2] + 1.0d;
                Collectors.m909a(dArr, d);
                dArr[3] = dArr[3] + d;
                break;
            default:
                ((C2585w) obj).accept(d);
                break;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f743a) {
            case 10:
                ((Collection) obj).add(obj2);
                break;
            case 12:
                ((List) obj).add(obj2);
                break;
            case 13:
                ((Set) obj).add(obj2);
                break;
            case 16:
                ((C2308r0) obj).m870a((CharSequence) obj2);
                break;
            case 20:
                ((StringBuilder) obj).append((CharSequence) obj2);
                break;
            case 23:
                ((LinkedHashSet) obj).add(obj2);
                break;
            case 24:
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
                break;
            case 25:
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                Collectors.m909a(dArr, dArr2[0]);
                Collectors.m909a(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
                break;
            default:
                double[] dArr3 = (double[]) obj;
                double[] dArr4 = (double[]) obj2;
                Collectors.m909a(dArr3, dArr4[0]);
                Collectors.m909a(dArr3, dArr4[1]);
                dArr3[2] = dArr3[2] + dArr4[2];
                dArr3[3] = dArr3[3] + dArr4[3];
                break;
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        return new Object[i];
    }
}
