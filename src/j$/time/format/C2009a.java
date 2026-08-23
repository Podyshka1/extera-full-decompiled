package j$.time.format;

import j$.time.C2034h;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.InterfaceC1990k;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2060n;
import j$.time.temporal.InterfaceC2065s;
import j$.util.C2207w;
import j$.util.Objects;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Function$CC;
import j$.util.r0;
import j$.util.stream.Collectors;
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

/* JADX INFO: renamed from: j$.time.format.a */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2009a implements Function, IntFunction, BiConsumer, BinaryOperator, DoubleBinaryOperator, ObjDoubleConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f508a;

    public /* synthetic */ C2009a(int i) {
        this.f508a = i;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f508a) {
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
        switch (this.f508a) {
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
    public /* synthetic */ Function m3270andThen(Function function) {
        switch (this.f508a) {
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
        switch (this.f508a) {
            case 15:
                Set set = Collectors.f873a;
            case 8:
                return obj;
            case 18:
                return ((r0) obj).toString();
            default:
                return ((StringBuilder) obj).toString();
        }
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d, double d2) {
        return Math.min(d, d2);
    }

    public /* synthetic */ Function compose(Function function) {
        switch (this.f508a) {
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
        switch (this.f508a) {
            case 11:
                Collection collection = (Collection) obj;
                Set set = Collectors.f873a;
                collection.addAll((Collection) obj2);
                return collection;
            case 14:
                List list = (List) obj;
                Set set2 = Collectors.f873a;
                list.addAll((List) obj2);
                return list;
            case 17:
                r0 r0Var = (r0) obj;
                r0 r0Var2 = (r0) obj2;
                r0Var.getClass();
                Objects.requireNonNull(r0Var2);
                if (r0Var2.f854d != null) {
                    r0Var2.m743b();
                    r0Var.m742a(r0Var2.f854d[0]);
                }
                return r0Var;
            case 19:
                Set set3 = (Set) obj;
                Set set4 = (Set) obj2;
                Set set5 = Collectors.f873a;
                if (set3.size() < set4.size()) {
                    set4.addAll(set3);
                    return set4;
                }
                set3.addAll(set4);
                return set3;
            default:
                StringBuilder sb = (StringBuilder) obj;
                Set set6 = Collectors.f873a;
                sb.append((CharSequence) obj2);
                return sb;
        }
    }

    /* JADX INFO: renamed from: a */
    public Object m593a(InterfaceC2060n interfaceC2060n) {
        switch (this.f508a) {
            case 0:
                ZoneId zoneId = (ZoneId) interfaceC2060n.mo458k(AbstractC2064r.f610a);
                if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                    return null;
                }
                return zoneId;
            case 1:
                return (ZoneId) interfaceC2060n.mo458k(AbstractC2064r.f610a);
            case 2:
                return (InterfaceC1990k) interfaceC2060n.mo458k(AbstractC2064r.f611b);
            case 3:
                return (InterfaceC2065s) interfaceC2060n.mo458k(AbstractC2064r.f612c);
            case 4:
                EnumC2047a enumC2047a = EnumC2047a.OFFSET_SECONDS;
                if (interfaceC2060n.mo455e(enumC2047a)) {
                    return ZoneOffset.m524H(interfaceC2060n.mo456h(enumC2047a));
                }
                return null;
            case 5:
                ZoneId zoneId2 = (ZoneId) interfaceC2060n.mo458k(AbstractC2064r.f610a);
                return zoneId2 != null ? zoneId2 : (ZoneId) interfaceC2060n.mo458k(AbstractC2064r.f613d);
            case 6:
                EnumC2047a enumC2047a2 = EnumC2047a.EPOCH_DAY;
                if (interfaceC2060n.mo455e(enumC2047a2)) {
                    return LocalDate.m474K(interfaceC2060n.mo460w(enumC2047a2));
                }
                return null;
            default:
                EnumC2047a enumC2047a3 = EnumC2047a.NANO_OF_DAY;
                if (interfaceC2060n.mo455e(enumC2047a3)) {
                    return C2034h.m617F(interfaceC2060n.mo460w(enumC2047a3));
                }
                return null;
        }
    }

    public String toString() {
        switch (this.f508a) {
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
        switch (this.f508a) {
            case 27:
                double[] dArr = (double[]) obj;
                dArr[2] = dArr[2] + 1.0d;
                Collectors.m772a(dArr, d);
                dArr[3] = dArr[3] + d;
                break;
            default:
                ((C2207w) obj).accept(d);
                break;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f508a) {
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
                ((r0) obj).m742a((CharSequence) obj2);
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
                Collectors.m772a(dArr, dArr2[0]);
                Collectors.m772a(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
                break;
            default:
                double[] dArr3 = (double[]) obj;
                double[] dArr4 = (double[]) obj2;
                Collectors.m772a(dArr3, dArr4[0]);
                Collectors.m772a(dArr3, dArr4[1]);
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
