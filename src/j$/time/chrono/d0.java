package j$.time.chrono;

import j$.time.C2162j;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.EnumC2173a;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class d0 implements Externalizable {
    private static final long serialVersionUID = -6103370247208168577L;

    /* JADX INFO: renamed from: a */
    public byte f506a;

    /* JADX INFO: renamed from: b */
    public Object f507b;

    public d0(byte b2, Object obj) {
        this.f506a = b2;
        this.f507b = obj;
    }

    private Object readResolve() {
        return this.f507b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Object objOf;
        byte b2 = objectInput.readByte();
        this.f506a = b2;
        switch (b2) {
            case 1:
                ConcurrentHashMap concurrentHashMap = AbstractC2104a.f500a;
                objOf = InterfaceC2114k.of(objectInput.readUTF());
                break;
            case 2:
                objOf = ((InterfaceC2105b) objectInput.readObject()).mo505K((C2162j) objectInput.readObject());
                break;
            case 3:
                objOf = ((ChronoLocalDateTime) objectInput.readObject()).mo520F((ZoneOffset) objectInput.readObject()).mo553E((ZoneId) objectInput.readObject());
                break;
            case 4:
                LocalDate localDate = C2126w.f548d;
                int i = objectInput.readInt();
                byte b3 = objectInput.readByte();
                byte b4 = objectInput.readByte();
                C2124u.f546c.getClass();
                objOf = new C2126w(LocalDate.of(i, b3, b4));
                break;
            case 5:
                C2127x c2127x = C2127x.f552d;
                objOf = C2127x.m627t(objectInput.readByte());
                break;
            case 6:
                C2117n c2117n = (C2117n) objectInput.readObject();
                int i2 = objectInput.readInt();
                byte b5 = objectInput.readByte();
                byte b6 = objectInput.readByte();
                c2117n.getClass();
                objOf = new C2119p(c2117n, i2, b5, b6);
                break;
            case 7:
                int i3 = objectInput.readInt();
                byte b7 = objectInput.readByte();
                byte b8 = objectInput.readByte();
                C2129z.f558c.getClass();
                objOf = new b0(LocalDate.of(i3 + 1911, b7, b8));
                break;
            case 8:
                int i4 = objectInput.readInt();
                byte b9 = objectInput.readByte();
                byte b10 = objectInput.readByte();
                f0.f512c.getClass();
                objOf = new h0(LocalDate.of(i4 - 543, b9, b10));
                break;
            case 9:
                int i5 = C2110g.f513e;
                objOf = new C2110g(InterfaceC2114k.of(objectInput.readUTF()), objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
                break;
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
        this.f507b = objOf;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b2 = this.f506a;
        Object obj = this.f507b;
        objectOutput.writeByte(b2);
        switch (b2) {
            case 1:
                objectOutput.writeUTF(((AbstractC2104a) obj).getId());
                return;
            case 2:
                C2109f c2109f = (C2109f) obj;
                objectOutput.writeObject(c2109f.f510a);
                objectOutput.writeObject(c2109f.f511b);
                return;
            case 3:
                C2113j c2113j = (C2113j) obj;
                objectOutput.writeObject(c2113j.f523a);
                objectOutput.writeObject(c2113j.f524b);
                objectOutput.writeObject(c2113j.f525c);
                return;
            case 4:
                C2126w c2126w = (C2126w) obj;
                c2126w.getClass();
                objectOutput.writeInt(c2126w.mo484g(EnumC2173a.YEAR));
                objectOutput.writeByte(c2126w.mo484g(EnumC2173a.MONTH_OF_YEAR));
                objectOutput.writeByte(c2126w.mo484g(EnumC2173a.DAY_OF_MONTH));
                return;
            case 5:
                objectOutput.writeByte(((C2127x) obj).f554a);
                return;
            case 6:
                C2119p c2119p = (C2119p) obj;
                objectOutput.writeObject(c2119p.f538a);
                objectOutput.writeInt(c2119p.mo484g(EnumC2173a.YEAR));
                objectOutput.writeByte(c2119p.mo484g(EnumC2173a.MONTH_OF_YEAR));
                objectOutput.writeByte(c2119p.mo484g(EnumC2173a.DAY_OF_MONTH));
                return;
            case 7:
                b0 b0Var = (b0) obj;
                b0Var.getClass();
                objectOutput.writeInt(b0Var.mo484g(EnumC2173a.YEAR));
                objectOutput.writeByte(b0Var.mo484g(EnumC2173a.MONTH_OF_YEAR));
                objectOutput.writeByte(b0Var.mo484g(EnumC2173a.DAY_OF_MONTH));
                return;
            case 8:
                h0 h0Var = (h0) obj;
                h0Var.getClass();
                objectOutput.writeInt(h0Var.mo484g(EnumC2173a.YEAR));
                objectOutput.writeByte(h0Var.mo484g(EnumC2173a.MONTH_OF_YEAR));
                objectOutput.writeByte(h0Var.mo484g(EnumC2173a.DAY_OF_MONTH));
                return;
            case 9:
                C2110g c2110g = (C2110g) obj;
                objectOutput.writeUTF(c2110g.f514a.getId());
                objectOutput.writeInt(c2110g.f515b);
                objectOutput.writeInt(c2110g.f516c);
                objectOutput.writeInt(c2110g.f517d);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    public d0() {
    }
}
