package p022j$.time.chrono;

import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.C2173h;
import p022j$.time.LocalDate;
import p022j$.time.ZoneId;
import p022j$.time.ZoneOffset;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.EnumC2186a;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.time.chrono.D */
/* JADX INFO: loaded from: classes2.dex */
public final class C2113D implements Externalizable {
    private static final long serialVersionUID = -6103370247208168577L;

    /* JADX INFO: renamed from: a */
    public byte f672a;

    /* JADX INFO: renamed from: b */
    public Object f673b;

    public C2113D() {
    }

    public C2113D(byte b, Object obj) {
        this.f672a = b;
        this.f673b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b = this.f672a;
        Object obj = this.f673b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                objectOutput.writeUTF(((AbstractC2119a) obj).getId());
                return;
            case 2:
                C2124f c2124f = (C2124f) obj;
                objectOutput.writeObject(c2124f.f684a);
                objectOutput.writeObject(c2124f.f685b);
                return;
            case 3:
                C2128j c2128j = (C2128j) obj;
                objectOutput.writeObject(c2128j.f693a);
                objectOutput.writeObject(c2128j.f694b);
                objectOutput.writeObject(c2128j.f695c);
                return;
            case 4:
                C2141w c2141w = (C2141w) obj;
                c2141w.getClass();
                objectOutput.writeInt(AbstractC2203r.m780a(c2141w, EnumC2186a.YEAR));
                objectOutput.writeByte(AbstractC2203r.m780a(c2141w, EnumC2186a.MONTH_OF_YEAR));
                objectOutput.writeByte(AbstractC2203r.m780a(c2141w, EnumC2186a.DAY_OF_MONTH));
                return;
            case 5:
                objectOutput.writeByte(((C2142x) obj).f726a);
                return;
            case 6:
                C2134p c2134p = (C2134p) obj;
                objectOutput.writeObject(c2134p.f708a);
                objectOutput.writeInt(AbstractC2203r.m780a(c2134p, EnumC2186a.YEAR));
                objectOutput.writeByte(AbstractC2203r.m780a(c2134p, EnumC2186a.MONTH_OF_YEAR));
                objectOutput.writeByte(AbstractC2203r.m780a(c2134p, EnumC2186a.DAY_OF_MONTH));
                return;
            case 7:
                C2111B c2111b = (C2111B) obj;
                c2111b.getClass();
                objectOutput.writeInt(AbstractC2203r.m780a(c2111b, EnumC2186a.YEAR));
                objectOutput.writeByte(AbstractC2203r.m780a(c2111b, EnumC2186a.MONTH_OF_YEAR));
                objectOutput.writeByte(AbstractC2203r.m780a(c2111b, EnumC2186a.DAY_OF_MONTH));
                return;
            case 8:
                C2117H c2117h = (C2117H) obj;
                c2117h.getClass();
                objectOutput.writeInt(AbstractC2203r.m780a(c2117h, EnumC2186a.YEAR));
                objectOutput.writeByte(AbstractC2203r.m780a(c2117h, EnumC2186a.MONTH_OF_YEAR));
                objectOutput.writeByte(AbstractC2203r.m780a(c2117h, EnumC2186a.DAY_OF_MONTH));
                return;
            case 9:
                C2125g c2125g = (C2125g) obj;
                objectOutput.writeUTF(c2125g.f687a.getId());
                objectOutput.writeInt(c2125g.f688b);
                objectOutput.writeInt(c2125g.f689c);
                objectOutput.writeInt(c2125g.f690d);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Object objM537W;
        byte b = objectInput.readByte();
        this.f672a = b;
        switch (b) {
            case 1:
                ConcurrentHashMap concurrentHashMap = AbstractC2119a.f680a;
                objM537W = AbstractC2104a.m537W(objectInput.readUTF());
                break;
            case 2:
                objM537W = ((InterfaceC2120b) objectInput.readObject()).mo613y((C2173h) objectInput.readObject());
                break;
            case 3:
                objM537W = ((ChronoLocalDateTime) objectInput.readObject()).mo627l((ZoneOffset) objectInput.readObject()).mo662q((ZoneId) objectInput.readObject());
                break;
            case 4:
                LocalDate localDate = C2141w.f720d;
                int i = objectInput.readInt();
                byte b2 = objectInput.readByte();
                byte b3 = objectInput.readByte();
                C2139u.f718c.getClass();
                objM537W = new C2141w(LocalDate.m596of(i, b2, b3));
                break;
            case 5:
                C2142x c2142x = C2142x.f724d;
                objM537W = C2142x.m712s(objectInput.readByte());
                break;
            case 6:
                C2132n c2132n = (C2132n) objectInput.readObject();
                int i2 = objectInput.readInt();
                byte b4 = objectInput.readByte();
                byte b5 = objectInput.readByte();
                c2132n.getClass();
                objM537W = new C2134p(c2132n, i2, b4, b5);
                break;
            case 7:
                int i3 = objectInput.readInt();
                byte b6 = objectInput.readByte();
                byte b7 = objectInput.readByte();
                C2144z.f730c.getClass();
                objM537W = new C2111B(LocalDate.m596of(i3 + 1911, b6, b7));
                break;
            case 8:
                int i4 = objectInput.readInt();
                byte b8 = objectInput.readByte();
                byte b9 = objectInput.readByte();
                C2115F.f675c.getClass();
                objM537W = new C2117H(LocalDate.m596of(i4 - 543, b8, b9));
                break;
            case 9:
                int i5 = C2125g.f686e;
                objM537W = new C2125g(AbstractC2104a.m537W(objectInput.readUTF()), objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
                break;
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
        this.f673b = objM537W;
    }

    private Object readResolve() {
        return this.f673b;
    }
}
