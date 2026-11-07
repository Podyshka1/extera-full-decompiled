package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.EnumC2393a;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class d0 implements Externalizable {
    private static final long serialVersionUID = -6103370247208168577L;

    /* JADX INFO: renamed from: a */
    public byte f664a;

    /* JADX INFO: renamed from: b */
    public Object f665b;

    public d0(byte b2, Object obj) {
        this.f664a = b2;
        this.f665b = obj;
    }

    private Object readResolve() {
        return this.f665b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Object objOf;
        byte b2 = objectInput.readByte();
        this.f664a = b2;
        switch (b2) {
            case 1:
                ConcurrentHashMap concurrentHashMap = AbstractC2326a.f658a;
                objOf = InterfaceC2336k.of(objectInput.readUTF());
                break;
            case 2:
                objOf = ((InterfaceC2327b) objectInput.readObject()).mo684L((LocalTime) objectInput.readObject());
                break;
            case 3:
                objOf = ((ChronoLocalDateTime) objectInput.readObject()).mo697H((ZoneOffset) objectInput.readObject()).mo745G((ZoneId) objectInput.readObject());
                break;
            case 4:
                LocalDate localDate = C2348w.f706d;
                int i = objectInput.readInt();
                byte b3 = objectInput.readByte();
                byte b4 = objectInput.readByte();
                C2346u.f704c.getClass();
                objOf = new C2348w(LocalDate.of(i, b3, b4));
                break;
            case 5:
                C2349x c2349x = C2349x.f710d;
                objOf = C2349x.m808r(objectInput.readByte());
                break;
            case 6:
                C2339n c2339n = (C2339n) objectInput.readObject();
                int i2 = objectInput.readInt();
                byte b5 = objectInput.readByte();
                byte b6 = objectInput.readByte();
                c2339n.getClass();
                objOf = new C2341p(c2339n, i2, b5, b6);
                break;
            case 7:
                int i3 = objectInput.readInt();
                byte b7 = objectInput.readByte();
                byte b8 = objectInput.readByte();
                C2351z.f716c.getClass();
                objOf = new b0(LocalDate.of(i3 + 1911, b7, b8));
                break;
            case 8:
                int i4 = objectInput.readInt();
                byte b9 = objectInput.readByte();
                byte b10 = objectInput.readByte();
                f0.f670c.getClass();
                objOf = new h0(LocalDate.of(i4 - 543, b9, b10));
                break;
            case 9:
                int i5 = C2332g.f671e;
                objOf = new C2332g(InterfaceC2336k.of(objectInput.readUTF()), objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
                break;
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
        this.f665b = objOf;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b2 = this.f664a;
        Object obj = this.f665b;
        objectOutput.writeByte(b2);
        switch (b2) {
            case 1:
                objectOutput.writeUTF(((AbstractC2326a) obj).getId());
                return;
            case 2:
                C2331f c2331f = (C2331f) obj;
                objectOutput.writeObject(c2331f.f668a);
                objectOutput.writeObject(c2331f.f669b);
                return;
            case 3:
                C2335j c2335j = (C2335j) obj;
                objectOutput.writeObject(c2335j.f681a);
                objectOutput.writeObject(c2335j.f682b);
                objectOutput.writeObject(c2335j.f683c);
                return;
            case 4:
                C2348w c2348w = (C2348w) obj;
                c2348w.getClass();
                objectOutput.writeInt(c2348w.mo666g(EnumC2393a.YEAR));
                objectOutput.writeByte(c2348w.mo666g(EnumC2393a.MONTH_OF_YEAR));
                objectOutput.writeByte(c2348w.mo666g(EnumC2393a.DAY_OF_MONTH));
                return;
            case 5:
                objectOutput.writeByte(((C2349x) obj).f712a);
                return;
            case 6:
                C2341p c2341p = (C2341p) obj;
                objectOutput.writeObject(c2341p.f696a);
                objectOutput.writeInt(c2341p.mo666g(EnumC2393a.YEAR));
                objectOutput.writeByte(c2341p.mo666g(EnumC2393a.MONTH_OF_YEAR));
                objectOutput.writeByte(c2341p.mo666g(EnumC2393a.DAY_OF_MONTH));
                return;
            case 7:
                b0 b0Var = (b0) obj;
                b0Var.getClass();
                objectOutput.writeInt(b0Var.mo666g(EnumC2393a.YEAR));
                objectOutput.writeByte(b0Var.mo666g(EnumC2393a.MONTH_OF_YEAR));
                objectOutput.writeByte(b0Var.mo666g(EnumC2393a.DAY_OF_MONTH));
                return;
            case 8:
                h0 h0Var = (h0) obj;
                h0Var.getClass();
                objectOutput.writeInt(h0Var.mo666g(EnumC2393a.YEAR));
                objectOutput.writeByte(h0Var.mo666g(EnumC2393a.MONTH_OF_YEAR));
                objectOutput.writeByte(h0Var.mo666g(EnumC2393a.DAY_OF_MONTH));
                return;
            case 9:
                C2332g c2332g = (C2332g) obj;
                objectOutput.writeUTF(c2332g.f672a.getId());
                objectOutput.writeInt(c2332g.f673b);
                objectOutput.writeInt(c2332g.f674c);
                objectOutput.writeInt(c2332g.f675d);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    public d0() {
    }
}
