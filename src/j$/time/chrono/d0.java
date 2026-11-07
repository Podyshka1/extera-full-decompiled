package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.EnumC2254a;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class d0 implements Externalizable {
    private static final long serialVersionUID = -6103370247208168577L;

    /* JADX INFO: renamed from: a */
    public byte f662a;

    /* JADX INFO: renamed from: b */
    public Object f663b;

    public d0(byte b2, Object obj) {
        this.f662a = b2;
        this.f663b = obj;
    }

    private Object readResolve() {
        return this.f663b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Object objOf;
        byte b2 = objectInput.readByte();
        this.f662a = b2;
        switch (b2) {
            case 1:
                ConcurrentHashMap concurrentHashMap = AbstractC2186a.f656a;
                objOf = InterfaceC2196k.of(objectInput.readUTF());
                break;
            case 2:
                objOf = ((InterfaceC2187b) objectInput.readObject()).mo661M((LocalTime) objectInput.readObject());
                break;
            case 3:
                objOf = ((ChronoLocalDateTime) objectInput.readObject()).mo672H((ZoneOffset) objectInput.readObject()).mo712G((ZoneId) objectInput.readObject());
                break;
            case 4:
                LocalDate localDate = C2208w.f704d;
                int i = objectInput.readInt();
                byte b3 = objectInput.readByte();
                byte b4 = objectInput.readByte();
                C2206u.f702c.getClass();
                objOf = new C2208w(LocalDate.of(i, b3, b4));
                break;
            case 5:
                C2209x c2209x = C2209x.f708d;
                objOf = C2209x.m764r(objectInput.readByte());
                break;
            case 6:
                C2199n c2199n = (C2199n) objectInput.readObject();
                int i2 = objectInput.readInt();
                byte b5 = objectInput.readByte();
                byte b6 = objectInput.readByte();
                c2199n.getClass();
                objOf = new C2201p(c2199n, i2, b5, b6);
                break;
            case 7:
                int i3 = objectInput.readInt();
                byte b7 = objectInput.readByte();
                byte b8 = objectInput.readByte();
                C2211z.f714c.getClass();
                objOf = new b0(LocalDate.of(i3 + 1911, b7, b8));
                break;
            case 8:
                int i4 = objectInput.readInt();
                byte b9 = objectInput.readByte();
                byte b10 = objectInput.readByte();
                f0.f668c.getClass();
                objOf = new h0(LocalDate.of(i4 - 543, b9, b10));
                break;
            case 9:
                int i5 = C2192g.f669e;
                objOf = new C2192g(InterfaceC2196k.of(objectInput.readUTF()), objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
                break;
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
        this.f663b = objOf;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b2 = this.f662a;
        Object obj = this.f663b;
        objectOutput.writeByte(b2);
        switch (b2) {
            case 1:
                objectOutput.writeUTF(((AbstractC2186a) obj).getId());
                return;
            case 2:
                C2191f c2191f = (C2191f) obj;
                objectOutput.writeObject(c2191f.f666a);
                objectOutput.writeObject(c2191f.f667b);
                return;
            case 3:
                C2195j c2195j = (C2195j) obj;
                objectOutput.writeObject(c2195j.f679a);
                objectOutput.writeObject(c2195j.f680b);
                objectOutput.writeObject(c2195j.f681c);
                return;
            case 4:
                C2208w c2208w = (C2208w) obj;
                c2208w.getClass();
                objectOutput.writeInt(c2208w.mo642g(EnumC2254a.YEAR));
                objectOutput.writeByte(c2208w.mo642g(EnumC2254a.MONTH_OF_YEAR));
                objectOutput.writeByte(c2208w.mo642g(EnumC2254a.DAY_OF_MONTH));
                return;
            case 5:
                objectOutput.writeByte(((C2209x) obj).f710a);
                return;
            case 6:
                C2201p c2201p = (C2201p) obj;
                objectOutput.writeObject(c2201p.f694a);
                objectOutput.writeInt(c2201p.mo642g(EnumC2254a.YEAR));
                objectOutput.writeByte(c2201p.mo642g(EnumC2254a.MONTH_OF_YEAR));
                objectOutput.writeByte(c2201p.mo642g(EnumC2254a.DAY_OF_MONTH));
                return;
            case 7:
                b0 b0Var = (b0) obj;
                b0Var.getClass();
                objectOutput.writeInt(b0Var.mo642g(EnumC2254a.YEAR));
                objectOutput.writeByte(b0Var.mo642g(EnumC2254a.MONTH_OF_YEAR));
                objectOutput.writeByte(b0Var.mo642g(EnumC2254a.DAY_OF_MONTH));
                return;
            case 8:
                h0 h0Var = (h0) obj;
                h0Var.getClass();
                objectOutput.writeInt(h0Var.mo642g(EnumC2254a.YEAR));
                objectOutput.writeByte(h0Var.mo642g(EnumC2254a.MONTH_OF_YEAR));
                objectOutput.writeByte(h0Var.mo642g(EnumC2254a.DAY_OF_MONTH));
                return;
            case 9:
                C2192g c2192g = (C2192g) obj;
                objectOutput.writeUTF(c2192g.f670a.getId());
                objectOutput.writeInt(c2192g.f671b);
                objectOutput.writeInt(c2192g.f672c);
                objectOutput.writeInt(c2192g.f673d);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    public d0() {
    }
}
