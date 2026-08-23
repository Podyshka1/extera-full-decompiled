package j$.time.chrono;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.C2034h;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.EnumC2047a;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* JADX INFO: renamed from: j$.time.chrono.D */
/* JADX INFO: loaded from: classes2.dex */
public final class C1974D implements Externalizable {
    private static final long serialVersionUID = -6103370247208168577L;

    /* JADX INFO: renamed from: a */
    public byte f440a;

    /* JADX INFO: renamed from: b */
    public Object f441b;

    public C1974D() {
    }

    public C1974D(byte b, Object obj) {
        this.f440a = b;
        this.f441b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b = this.f440a;
        Object obj = this.f441b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                objectOutput.writeUTF(((AbstractC1980a) obj).getId());
                return;
            case 2:
                C1985f c1985f = (C1985f) obj;
                objectOutput.writeObject(c1985f.f451a);
                objectOutput.writeObject(c1985f.f452b);
                return;
            case 3:
                C1989j c1989j = (C1989j) obj;
                objectOutput.writeObject(c1989j.f460a);
                objectOutput.writeObject(c1989j.f461b);
                objectOutput.writeObject(c1989j.f462c);
                return;
            case 4:
                C2002w c2002w = (C2002w) obj;
                c2002w.getClass();
                objectOutput.writeInt(AbstractC2064r.m655a(c2002w, EnumC2047a.YEAR));
                objectOutput.writeByte(AbstractC2064r.m655a(c2002w, EnumC2047a.MONTH_OF_YEAR));
                objectOutput.writeByte(AbstractC2064r.m655a(c2002w, EnumC2047a.DAY_OF_MONTH));
                return;
            case 5:
                objectOutput.writeByte(((C2003x) obj).f491a);
                return;
            case 6:
                C1995p c1995p = (C1995p) obj;
                objectOutput.writeObject(c1995p.f475a);
                objectOutput.writeInt(AbstractC2064r.m655a(c1995p, EnumC2047a.YEAR));
                objectOutput.writeByte(AbstractC2064r.m655a(c1995p, EnumC2047a.MONTH_OF_YEAR));
                objectOutput.writeByte(AbstractC2064r.m655a(c1995p, EnumC2047a.DAY_OF_MONTH));
                return;
            case 7:
                C1972B c1972b = (C1972B) obj;
                c1972b.getClass();
                objectOutput.writeInt(AbstractC2064r.m655a(c1972b, EnumC2047a.YEAR));
                objectOutput.writeByte(AbstractC2064r.m655a(c1972b, EnumC2047a.MONTH_OF_YEAR));
                objectOutput.writeByte(AbstractC2064r.m655a(c1972b, EnumC2047a.DAY_OF_MONTH));
                return;
            case 8:
                C1978H c1978h = (C1978H) obj;
                c1978h.getClass();
                objectOutput.writeInt(AbstractC2064r.m655a(c1978h, EnumC2047a.YEAR));
                objectOutput.writeByte(AbstractC2064r.m655a(c1978h, EnumC2047a.MONTH_OF_YEAR));
                objectOutput.writeByte(AbstractC2064r.m655a(c1978h, EnumC2047a.DAY_OF_MONTH));
                return;
            case 9:
                C1986g c1986g = (C1986g) obj;
                objectOutput.writeUTF(c1986g.f454a.getId());
                objectOutput.writeInt(c1986g.f455b);
                objectOutput.writeInt(c1986g.f456c);
                objectOutput.writeInt(c1986g.f457d);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Object objM417W;
        byte b = objectInput.readByte();
        this.f440a = b;
        switch (b) {
            case 1:
                ConcurrentHashMap concurrentHashMap = AbstractC1980a.f447a;
                objM417W = AbstractC1965a.m417W(objectInput.readUTF());
                break;
            case 2:
                objM417W = ((InterfaceC1981b) objectInput.readObject()).mo492y((C2034h) objectInput.readObject());
                break;
            case 3:
                objM417W = ((ChronoLocalDateTime) objectInput.readObject()).mo506l((ZoneOffset) objectInput.readObject()).mo539q((ZoneId) objectInput.readObject());
                break;
            case 4:
                LocalDate localDate = C2002w.f485d;
                int i = objectInput.readInt();
                byte b2 = objectInput.readByte();
                byte b3 = objectInput.readByte();
                C2000u.f483c.getClass();
                objM417W = new C2002w(LocalDate.of(i, b2, b3));
                break;
            case 5:
                C2003x c2003x = C2003x.f489d;
                objM417W = C2003x.m589s(objectInput.readByte());
                break;
            case 6:
                C1993n c1993n = (C1993n) objectInput.readObject();
                int i2 = objectInput.readInt();
                byte b4 = objectInput.readByte();
                byte b5 = objectInput.readByte();
                c1993n.getClass();
                objM417W = new C1995p(c1993n, i2, b4, b5);
                break;
            case 7:
                int i3 = objectInput.readInt();
                byte b6 = objectInput.readByte();
                byte b7 = objectInput.readByte();
                C2005z.f495c.getClass();
                objM417W = new C1972B(LocalDate.of(i3 + 1911, b6, b7));
                break;
            case 8:
                int i4 = objectInput.readInt();
                byte b8 = objectInput.readByte();
                byte b9 = objectInput.readByte();
                C1976F.f443c.getClass();
                objM417W = new C1978H(LocalDate.of(i4 - 543, b8, b9));
                break;
            case 9:
                int i5 = C1986g.f453e;
                objM417W = new C1986g(AbstractC1965a.m417W(objectInput.readUTF()), objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
                break;
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
        this.f441b = objM417W;
    }

    private Object readResolve() {
        return this.f441b;
    }
}
