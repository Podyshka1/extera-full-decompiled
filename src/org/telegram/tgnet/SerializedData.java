package org.telegram.tgnet;

import com.android.p003dx.p006io.Opcodes;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes.dex */
public class SerializedData extends AbstractSerializedData {

    /* JADX INFO: renamed from: in */
    private DataInputStream f1654in;
    private ByteArrayInputStream inbuf;
    protected boolean isOut;
    private boolean justCalc;
    private int len;
    private DataOutputStream out;
    private ByteArrayOutputStream outbuf;

    @Override // org.telegram.tgnet.InputSerializedData
    public NativeByteBuffer readByteBuffer(boolean z) {
        return null;
    }

    @Override // org.telegram.tgnet.OutputSerializedData
    public void writeByteBuffer(NativeByteBuffer nativeByteBuffer) {
    }

    public SerializedData() {
        this.isOut = true;
        this.justCalc = false;
        this.outbuf = new ByteArrayOutputStream();
        this.out = new DataOutputStream(this.outbuf);
    }

    public SerializedData(boolean z) {
        this.isOut = true;
        this.justCalc = false;
        if (!z) {
            this.outbuf = new ByteArrayOutputStream();
            this.out = new DataOutputStream(this.outbuf);
        }
        this.justCalc = z;
        this.len = 0;
    }

    public SerializedData(int i) {
        this.isOut = true;
        this.justCalc = false;
        this.outbuf = new ByteArrayOutputStream(i);
        this.out = new DataOutputStream(this.outbuf);
    }

    public SerializedData(byte[] bArr) {
        this.justCalc = false;
        this.isOut = false;
        this.inbuf = new ByteArrayInputStream(bArr);
        this.f1654in = new DataInputStream(this.inbuf);
        this.len = 0;
    }

    public void cleanup() {
        try {
            ByteArrayInputStream byteArrayInputStream = this.inbuf;
            if (byteArrayInputStream != null) {
                byteArrayInputStream.close();
                this.inbuf = null;
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        try {
            DataInputStream dataInputStream = this.f1654in;
            if (dataInputStream != null) {
                dataInputStream.close();
                this.f1654in = null;
            }
        } catch (Exception e2) {
            FileLog.m1136e(e2);
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = this.outbuf;
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
                this.outbuf = null;
            }
        } catch (Exception e3) {
            FileLog.m1136e(e3);
        }
        try {
            DataOutputStream dataOutputStream = this.out;
            if (dataOutputStream != null) {
                dataOutputStream.close();
                this.out = null;
            }
        } catch (Exception e4) {
            FileLog.m1136e(e4);
        }
    }

    public SerializedData(File file) throws IOException {
        this.isOut = true;
        this.justCalc = false;
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[(int) file.length()];
        new DataInputStream(fileInputStream).readFully(bArr);
        fileInputStream.close();
        this.isOut = false;
        this.inbuf = new ByteArrayInputStream(bArr);
        this.f1654in = new DataInputStream(this.inbuf);
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeInt32(int i) {
        if (!this.justCalc) {
            writeInt32(i, this.out);
        } else {
            this.len += 4;
        }
    }

    private void writeInt32(int i, DataOutputStream dataOutputStream) {
        for (int i2 = 0; i2 < 4; i2++) {
            try {
                dataOutputStream.write(i >> (i2 * 8));
            } catch (Exception e) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1134e("write int32 error");
                    FileLog.m1136e(e);
                    return;
                }
                return;
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeInt64(long j) {
        if (!this.justCalc) {
            writeInt64(j, this.out);
        } else {
            this.len += 8;
        }
    }

    private void writeInt64(long j, DataOutputStream dataOutputStream) {
        for (int i = 0; i < 8; i++) {
            try {
                dataOutputStream.write((int) (j >> (i * 8)));
            } catch (Exception e) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1134e("write int64 error");
                    FileLog.m1136e(e);
                    return;
                }
                return;
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeBool(boolean z) {
        if (this.justCalc) {
            this.len += 4;
        } else if (z) {
            writeInt32(-1720552011);
        } else {
            writeInt32(-1132882121);
        }
    }

    @Override // org.telegram.tgnet.OutputSerializedData
    public void writeBytes(byte[] bArr) {
        try {
            if (!this.justCalc) {
                this.out.write(bArr);
            } else {
                this.len += bArr.length;
            }
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1134e("write raw error");
                FileLog.m1136e(e);
            }
        }
    }

    public void writeBytes(byte[] bArr, int i, int i2) {
        try {
            if (!this.justCalc) {
                this.out.write(bArr, i, i2);
            } else {
                this.len += i2;
            }
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1134e("write bytes error");
                FileLog.m1136e(e);
            }
        }
    }

    public void writeByte(int i) {
        try {
            if (!this.justCalc) {
                this.out.writeByte((byte) i);
            } else {
                this.len++;
            }
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1134e("write byte error");
                FileLog.m1136e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeByte(byte b) {
        try {
            if (!this.justCalc) {
                this.out.writeByte(b);
            } else {
                this.len++;
            }
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1134e("write byte error");
                FileLog.m1136e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.OutputSerializedData
    public void writeByteArray(byte[] bArr) {
        try {
            if (bArr.length <= 253) {
                if (this.justCalc) {
                    this.len++;
                } else {
                    this.out.write(bArr.length);
                }
            } else if (this.justCalc) {
                this.len += 4;
            } else {
                this.out.write(Opcodes.CONST_METHOD_HANDLE);
                this.out.write(bArr.length);
                this.out.write(bArr.length >> 8);
                this.out.write(bArr.length >> 16);
            }
            if (this.justCalc) {
                this.len += bArr.length;
            } else {
                this.out.write(bArr);
            }
            for (int i = bArr.length <= 253 ? 1 : 4; (bArr.length + i) % 4 != 0; i++) {
                if (this.justCalc) {
                    this.len++;
                } else {
                    this.out.write(0);
                }
            }
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1134e("write byte array error");
                FileLog.m1136e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeString(String str) {
        try {
            writeByteArray(str.getBytes("UTF-8"));
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1134e("write string error");
                FileLog.m1136e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.OutputSerializedData
    public void writeDouble(double d) {
        try {
            writeInt64(Double.doubleToRawLongBits(d));
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1134e("write double error");
                FileLog.m1136e(e);
            }
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.OutputSerializedData
    public void writeFloat(float f) {
        try {
            writeInt32(Float.floatToIntBits(f));
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1134e("write float error");
                FileLog.m1136e(e);
            }
        }
    }

    public int length() {
        if (this.justCalc) {
            return this.len;
        }
        return this.isOut ? this.outbuf.size() : this.inbuf.available();
    }

    public byte[] toByteArray() {
        return this.outbuf.toByteArray();
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public boolean readBool(boolean z) {
        int int32 = readInt32(z);
        if (int32 == -1720552011) {
            return true;
        }
        if (int32 == -1132882121) {
            return false;
        }
        if (z) {
            throw new RuntimeException("Not bool value!");
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1134e("Not bool value!");
        }
        return false;
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public byte readByte(boolean z) {
        try {
            byte b = this.f1654in.readByte();
            this.len++;
            return b;
        } catch (Exception e) {
            if (z) {
                throw new RuntimeException("read byte error", e);
            }
            if (!BuildVars.LOGS_ENABLED) {
                return (byte) 0;
            }
            FileLog.m1134e("read byte error");
            FileLog.m1136e(e);
            return (byte) 0;
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public String readString(boolean z) {
        int i;
        try {
            int i2 = this.f1654in.read();
            this.len++;
            if (i2 >= 254) {
                i2 = this.f1654in.read() | (this.f1654in.read() << 8) | (this.f1654in.read() << 16);
                this.len += 3;
                i = 4;
            } else {
                i = 1;
            }
            byte[] bArr = new byte[i2];
            this.f1654in.read(bArr);
            this.len++;
            while ((i2 + i) % 4 != 0) {
                this.f1654in.read();
                this.len++;
                i++;
            }
            return new String(bArr, StandardCharsets.UTF_8);
        } catch (Exception e) {
            if (z) {
                throw new RuntimeException("read string error", e);
            }
            if (!BuildVars.LOGS_ENABLED) {
                return null;
            }
            FileLog.m1134e("read string error");
            FileLog.m1136e(e);
            return null;
        }
    }

    @Override // org.telegram.tgnet.InputSerializedData
    public byte[] readByteArray(boolean z) {
        int i;
        try {
            int i2 = this.f1654in.read();
            this.len++;
            if (i2 >= 254) {
                i2 = this.f1654in.read() | (this.f1654in.read() << 8) | (this.f1654in.read() << 16);
                this.len += 3;
                i = 4;
            } else {
                i = 1;
            }
            byte[] bArr = new byte[i2];
            this.f1654in.read(bArr);
            this.len++;
            while ((i2 + i) % 4 != 0) {
                this.f1654in.read();
                this.len++;
                i++;
            }
            return bArr;
        } catch (Exception e) {
            if (z) {
                throw new RuntimeException("read byte array error", e);
            }
            if (!BuildVars.LOGS_ENABLED) {
                return null;
            }
            FileLog.m1134e("read byte array error");
            FileLog.m1136e(e);
            return null;
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public double readDouble(boolean z) {
        try {
            return Double.longBitsToDouble(readInt64(z));
        } catch (Exception e) {
            if (z) {
                throw new RuntimeException("read double error", e);
            }
            if (!BuildVars.LOGS_ENABLED) {
                return 0.0d;
            }
            FileLog.m1134e("read double error");
            FileLog.m1136e(e);
            return 0.0d;
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public float readFloat(boolean z) {
        try {
            return Float.intBitsToFloat(readInt32(z));
        } catch (Exception e) {
            if (z) {
                throw new RuntimeException("read float error", e);
            }
            if (!BuildVars.LOGS_ENABLED) {
                return 0.0f;
            }
            FileLog.m1134e("read float error");
            FileLog.m1136e(e);
            return 0.0f;
        }
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public int readInt32(boolean z) {
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            try {
                i |= this.f1654in.read() << (i2 * 8);
                this.len++;
            } catch (Exception e) {
                if (z) {
                    throw new RuntimeException("read int32 error", e);
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1134e("read int32 error");
                    FileLog.m1136e(e);
                }
                return 0;
            }
        }
        return i;
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public long readInt64(boolean z) {
        long j = 0;
        for (int i = 0; i < 8; i++) {
            try {
                j |= ((long) this.f1654in.read()) << (i * 8);
                this.len++;
            } catch (Exception e) {
                if (z) {
                    throw new RuntimeException("read int64 error", e);
                }
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1134e("read int64 error");
                    FileLog.m1136e(e);
                }
                return 0L;
            }
        }
        return j;
    }

    @Override // org.telegram.tgnet.AbstractSerializedData, org.telegram.tgnet.InputSerializedData
    public int remaining() {
        try {
            return this.f1654in.available();
        } catch (Exception unused) {
            return Integer.MAX_VALUE;
        }
    }
}
