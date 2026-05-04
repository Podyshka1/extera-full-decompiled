package com.sun.jna;

import com.sun.jna.Structure;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Array;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import org.mvel2.MVEL;

/* JADX INFO: loaded from: classes5.dex */
public class Pointer {
    public static final Pointer NULL = null;
    protected long peer;

    public static final Pointer createConstant(long j) {
        return new Opaque(j);
    }

    public static final Pointer createConstant(int i) {
        return new Opaque(((long) i) & 4294967295L);
    }

    Pointer() {
    }

    public Pointer(long j) {
        this.peer = j;
    }

    public Pointer share(long j) {
        return share(j, 0L);
    }

    public Pointer share(long j, long j2) {
        return j == 0 ? this : new Pointer(this.peer + j);
    }

    public void clear(long j) {
        setMemory(0L, j, (byte) 0);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && (obj instanceof Pointer) && ((Pointer) obj).peer == this.peer;
    }

    public int hashCode() {
        long j = this.peer;
        return (int) ((j >>> 32) + (j & 4294967295L));
    }

    public long indexOf(long j, byte b) {
        return Native.indexOf(this, this.peer, j, b);
    }

    public void read(long j, byte[] bArr, int i, int i2) {
        Native.read(this, this.peer, j, bArr, i, i2);
    }

    public void read(long j, short[] sArr, int i, int i2) {
        Native.read(this, this.peer, j, sArr, i, i2);
    }

    public void read(long j, char[] cArr, int i, int i2) {
        Native.read(this, this.peer, j, cArr, i, i2);
    }

    public void read(long j, int[] iArr, int i, int i2) {
        Native.read(this, this.peer, j, iArr, i, i2);
    }

    public void read(long j, long[] jArr, int i, int i2) {
        Native.read(this, this.peer, j, jArr, i, i2);
    }

    public void read(long j, float[] fArr, int i, int i2) {
        Native.read(this, this.peer, j, fArr, i, i2);
    }

    public void read(long j, double[] dArr, int i, int i2) {
        Native.read(this, this.peer, j, dArr, i, i2);
    }

    public void read(long j, Pointer[] pointerArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            Pointer pointer = getPointer(((long) (Native.POINTER_SIZE * i3)) + j);
            int i4 = i3 + i;
            Pointer pointer2 = pointerArr[i4];
            if (pointer2 == null || pointer == null || pointer.peer != pointer2.peer) {
                pointerArr[i4] = pointer;
            }
        }
    }

    public void write(long j, byte[] bArr, int i, int i2) {
        Native.write(this, this.peer, j, bArr, i, i2);
    }

    public void write(long j, short[] sArr, int i, int i2) {
        Native.write(this, this.peer, j, sArr, i, i2);
    }

    public void write(long j, char[] cArr, int i, int i2) {
        Native.write(this, this.peer, j, cArr, i, i2);
    }

    public void write(long j, int[] iArr, int i, int i2) {
        Native.write(this, this.peer, j, iArr, i, i2);
    }

    public void write(long j, long[] jArr, int i, int i2) {
        Native.write(this, this.peer, j, jArr, i, i2);
    }

    public void write(long j, float[] fArr, int i, int i2) {
        Native.write(this, this.peer, j, fArr, i, i2);
    }

    public void write(long j, double[] dArr, int i, int i2) {
        Native.write(this, this.peer, j, dArr, i, i2);
    }

    public void write(long j, Pointer[] pointerArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            setPointer(((long) (Native.POINTER_SIZE * i3)) + j, pointerArr[i + i3]);
        }
    }

    Object getValue(long j, Class<?> cls, Object obj) {
        Pointer directBufferPointer;
        if (Structure.class.isAssignableFrom(cls)) {
            Structure structure = (Structure) obj;
            if (Structure.ByReference.class.isAssignableFrom(cls)) {
                return Structure.updateStructureByReference(cls, structure, getPointer(j));
            }
            structure.useMemory(this, (int) j, true);
            structure.read();
            return structure;
        }
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            return Function.valueOf(getInt(j) != 0);
        }
        if (cls == Byte.TYPE || cls == Byte.class) {
            return Byte.valueOf(getByte(j));
        }
        if (cls == Short.TYPE || cls == Short.class) {
            return Short.valueOf(getShort(j));
        }
        if (cls == Character.TYPE || cls == Character.class) {
            return Character.valueOf(getChar(j));
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            return Integer.valueOf(getInt(j));
        }
        if (cls == Long.TYPE || cls == Long.class) {
            return Long.valueOf(getLong(j));
        }
        if (cls == Float.TYPE || cls == Float.class) {
            return Float.valueOf(getFloat(j));
        }
        if (cls == Double.TYPE || cls == Double.class) {
            return Double.valueOf(getDouble(j));
        }
        if (Pointer.class.isAssignableFrom(cls)) {
            Pointer pointer = getPointer(j);
            if (pointer == null) {
                return null;
            }
            directBufferPointer = obj instanceof Pointer ? (Pointer) obj : null;
            return (directBufferPointer == null || pointer.peer != directBufferPointer.peer) ? pointer : directBufferPointer;
        }
        if (cls == String.class) {
            Pointer pointer2 = getPointer(j);
            if (pointer2 != null) {
                return pointer2.getString(0L);
            }
            return null;
        }
        if (cls == WString.class) {
            Pointer pointer3 = getPointer(j);
            if (pointer3 != null) {
                return new WString(pointer3.getWideString(0L));
            }
            return null;
        }
        if (Callback.class.isAssignableFrom(cls)) {
            Pointer pointer4 = getPointer(j);
            if (pointer4 == null) {
                return null;
            }
            Callback callback = (Callback) obj;
            return !pointer4.equals(CallbackReference.getFunctionPointer(callback)) ? CallbackReference.getCallback(cls, pointer4) : callback;
        }
        if (Platform.HAS_BUFFERS && Buffer.class.isAssignableFrom(cls)) {
            Pointer pointer5 = getPointer(j);
            if (pointer5 == null) {
                return null;
            }
            directBufferPointer = obj != null ? Native.getDirectBufferPointer((Buffer) obj) : null;
            if (directBufferPointer == null || !directBufferPointer.equals(pointer5)) {
                throw new IllegalStateException("Can't autogenerate a direct buffer on memory read");
            }
            return obj;
        }
        if (NativeMapped.class.isAssignableFrom(cls)) {
            NativeMapped nativeMapped = (NativeMapped) obj;
            if (nativeMapped != null) {
                Object objFromNative = nativeMapped.fromNative(getValue(j, nativeMapped.nativeType(), null), new FromNativeContext(cls));
                return nativeMapped.equals(objFromNative) ? nativeMapped : objFromNative;
            }
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            return nativeMappedConverter.fromNative(getValue(j, nativeMappedConverter.nativeType(), null), new FromNativeContext(cls));
        }
        if (cls.isArray()) {
            if (obj == null) {
                throw new IllegalStateException("Need an initialized array");
            }
            readArray(j, obj, cls.getComponentType());
            return obj;
        }
        throw new IllegalArgumentException("Reading \"" + cls + "\" from memory is not supported");
    }

    private void readArray(long j, Object obj, Class<?> cls) {
        int length = Array.getLength(obj);
        if (cls == Byte.TYPE) {
            read(j, (byte[]) obj, 0, length);
            return;
        }
        if (cls == Short.TYPE) {
            read(j, (short[]) obj, 0, length);
            return;
        }
        if (cls == Character.TYPE) {
            read(j, (char[]) obj, 0, length);
            return;
        }
        if (cls == Integer.TYPE) {
            read(j, (int[]) obj, 0, length);
            return;
        }
        if (cls == Long.TYPE) {
            read(j, (long[]) obj, 0, length);
            return;
        }
        if (cls == Float.TYPE) {
            read(j, (float[]) obj, 0, length);
            return;
        }
        if (cls == Double.TYPE) {
            read(j, (double[]) obj, 0, length);
            return;
        }
        if (Pointer.class.isAssignableFrom(cls)) {
            read(j, (Pointer[]) obj, 0, length);
            return;
        }
        int i = 0;
        if (Structure.class.isAssignableFrom(cls)) {
            Structure[] structureArr = (Structure[]) obj;
            if (Structure.ByReference.class.isAssignableFrom(cls)) {
                Pointer[] pointerArray = getPointerArray(j, structureArr.length);
                while (i < structureArr.length) {
                    structureArr[i] = Structure.updateStructureByReference(cls, structureArr[i], pointerArray[i]);
                    i++;
                }
                return;
            }
            Structure structureNewInstance = structureArr[0];
            if (structureNewInstance == null) {
                structureNewInstance = Structure.newInstance((Class<Structure>) cls, share(j));
                structureNewInstance.conditionalAutoRead();
                structureArr[0] = structureNewInstance;
            } else {
                structureNewInstance.useMemory(this, (int) j, true);
                structureNewInstance.read();
            }
            Structure[] array = structureNewInstance.toArray(structureArr.length);
            for (int i2 = 1; i2 < structureArr.length; i2++) {
                Structure structure = structureArr[i2];
                if (structure == null) {
                    structureArr[i2] = array[i2];
                } else {
                    structure.useMemory(this, (int) (((long) (structure.size() * i2)) + j), true);
                    structureArr[i2].read();
                }
            }
            return;
        }
        if (NativeMapped.class.isAssignableFrom(cls)) {
            NativeMapped[] nativeMappedArr = (NativeMapped[]) obj;
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            int nativeSize = Native.getNativeSize(obj.getClass(), obj) / nativeMappedArr.length;
            while (i < nativeMappedArr.length) {
                nativeMappedArr[i] = (NativeMapped) nativeMappedConverter.fromNative(getValue(((long) (nativeSize * i)) + j, nativeMappedConverter.nativeType(), nativeMappedArr[i]), new FromNativeContext(cls));
                i++;
            }
            return;
        }
        throw new IllegalArgumentException("Reading array of " + cls + " from memory not supported");
    }

    public byte getByte(long j) {
        return Native.getByte(this, this.peer, j);
    }

    public char getChar(long j) {
        return Native.getChar(this, this.peer, j);
    }

    public short getShort(long j) {
        return Native.getShort(this, this.peer, j);
    }

    public int getInt(long j) {
        return Native.getInt(this, this.peer, j);
    }

    public long getLong(long j) {
        return Native.getLong(this, this.peer, j);
    }

    public NativeLong getNativeLong(long j) {
        return new NativeLong(NativeLong.SIZE == 8 ? getLong(j) : getInt(j));
    }

    public float getFloat(long j) {
        return Native.getFloat(this, this.peer, j);
    }

    public double getDouble(long j) {
        return Native.getDouble(this, this.peer, j);
    }

    public Pointer getPointer(long j) {
        return Native.getPointer(this.peer + j);
    }

    public ByteBuffer getByteBuffer(long j, long j2) {
        return Native.getDirectByteBuffer(this, this.peer, j, j2).order(ByteOrder.nativeOrder());
    }

    public String getWideString(long j) {
        return Native.getWideString(this, this.peer, j);
    }

    public String getString(long j) {
        return getString(j, Native.getDefaultStringEncoding());
    }

    public String getString(long j, String str) {
        return Native.getString(this, j, str);
    }

    public byte[] getByteArray(long j, int i) {
        byte[] bArr = new byte[i];
        read(j, bArr, 0, i);
        return bArr;
    }

    public char[] getCharArray(long j, int i) {
        char[] cArr = new char[i];
        read(j, cArr, 0, i);
        return cArr;
    }

    public short[] getShortArray(long j, int i) {
        short[] sArr = new short[i];
        read(j, sArr, 0, i);
        return sArr;
    }

    public int[] getIntArray(long j, int i) {
        int[] iArr = new int[i];
        read(j, iArr, 0, i);
        return iArr;
    }

    public long[] getLongArray(long j, int i) {
        long[] jArr = new long[i];
        read(j, jArr, 0, i);
        return jArr;
    }

    public float[] getFloatArray(long j, int i) {
        float[] fArr = new float[i];
        read(j, fArr, 0, i);
        return fArr;
    }

    public double[] getDoubleArray(long j, int i) {
        double[] dArr = new double[i];
        read(j, dArr, 0, i);
        return dArr;
    }

    public Pointer[] getPointerArray(long j) {
        ArrayList arrayList = new ArrayList();
        Pointer pointer = getPointer(j);
        int i = 0;
        while (pointer != null) {
            arrayList.add(pointer);
            i += Native.POINTER_SIZE;
            pointer = getPointer(((long) i) + j);
        }
        return (Pointer[]) arrayList.toArray(new Pointer[0]);
    }

    public Pointer[] getPointerArray(long j, int i) {
        Pointer[] pointerArr = new Pointer[i];
        read(j, pointerArr, 0, i);
        return pointerArr;
    }

    public String[] getStringArray(long j) {
        return getStringArray(j, -1, Native.getDefaultStringEncoding());
    }

    public String[] getStringArray(long j, String str) {
        return getStringArray(j, -1, str);
    }

    public String[] getStringArray(long j, int i) {
        return getStringArray(j, i, Native.getDefaultStringEncoding());
    }

    public String[] getWideStringArray(long j) {
        return getWideStringArray(j, -1);
    }

    public String[] getWideStringArray(long j, int i) {
        return getStringArray(j, i, "--WIDE-STRING--");
    }

    public String[] getStringArray(long j, int i, String str) {
        String string;
        String wideString;
        ArrayList arrayList = new ArrayList();
        if (i == -1) {
            int i2 = 0;
            while (true) {
                Pointer pointer = getPointer(((long) i2) + j);
                if (pointer == null) {
                    break;
                }
                if ("--WIDE-STRING--".equals(str)) {
                    string = pointer.getWideString(0L);
                } else {
                    string = pointer.getString(0L, str);
                }
                arrayList.add(string);
                i2 += Native.POINTER_SIZE;
            }
        } else {
            Pointer pointer2 = getPointer(((long) 0) + j);
            int i3 = 0;
            int i4 = 0;
            while (true) {
                int i5 = i3 + 1;
                if (i3 >= i) {
                    break;
                }
                if (pointer2 == null) {
                    wideString = null;
                } else {
                    wideString = "--WIDE-STRING--".equals(str) ? pointer2.getWideString(0L) : pointer2.getString(0L, str);
                }
                arrayList.add(wideString);
                if (i5 < i) {
                    i4 += Native.POINTER_SIZE;
                    pointer2 = getPointer(((long) i4) + j);
                }
                i3 = i5;
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    void setValue(long j, Object obj, Class<?> cls) {
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            setInt(j, Boolean.TRUE.equals(obj) ? -1 : 0);
            return;
        }
        if (cls == Byte.TYPE || cls == Byte.class) {
            setByte(j, obj != null ? ((Byte) obj).byteValue() : (byte) 0);
            return;
        }
        if (cls == Short.TYPE || cls == Short.class) {
            setShort(j, obj != null ? ((Short) obj).shortValue() : (short) 0);
            return;
        }
        if (cls == Character.TYPE || cls == Character.class) {
            setChar(j, obj != null ? ((Character) obj).charValue() : (char) 0);
            return;
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            setInt(j, obj != null ? ((Integer) obj).intValue() : 0);
            return;
        }
        if (cls == Long.TYPE || cls == Long.class) {
            setLong(j, obj == null ? 0L : ((Long) obj).longValue());
            return;
        }
        if (cls == Float.TYPE || cls == Float.class) {
            setFloat(j, obj == null ? 0.0f : ((Float) obj).floatValue());
            return;
        }
        if (cls == Double.TYPE || cls == Double.class) {
            setDouble(j, obj == null ? 0.0d : ((Double) obj).doubleValue());
            return;
        }
        if (cls == Pointer.class) {
            setPointer(j, (Pointer) obj);
            return;
        }
        if (cls == String.class) {
            setPointer(j, (Pointer) obj);
            return;
        }
        if (cls == WString.class) {
            setPointer(j, (Pointer) obj);
            return;
        }
        if (Structure.class.isAssignableFrom(cls)) {
            Structure structure = (Structure) obj;
            if (Structure.ByReference.class.isAssignableFrom(cls)) {
                setPointer(j, structure != null ? structure.getPointer() : null);
                if (structure != null) {
                    structure.autoWrite();
                    return;
                }
                return;
            }
            structure.useMemory(this, (int) j, true);
            structure.write();
            return;
        }
        if (Callback.class.isAssignableFrom(cls)) {
            setPointer(j, CallbackReference.getFunctionPointer((Callback) obj));
            return;
        }
        if (Platform.HAS_BUFFERS && Buffer.class.isAssignableFrom(cls)) {
            setPointer(j, obj != null ? Native.getDirectBufferPointer((Buffer) obj) : null);
            return;
        }
        if (NativeMapped.class.isAssignableFrom(cls)) {
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            setValue(j, nativeMappedConverter.toNative(obj, new ToNativeContext()), nativeMappedConverter.nativeType());
        } else {
            if (cls.isArray()) {
                writeArray(j, obj, cls.getComponentType());
                return;
            }
            throw new IllegalArgumentException("Writing " + cls + " to memory is not supported");
        }
    }

    private void writeArray(long j, Object obj, Class<?> cls) {
        if (cls == Byte.TYPE) {
            byte[] bArr = (byte[]) obj;
            write(j, bArr, 0, bArr.length);
            return;
        }
        if (cls == Short.TYPE) {
            short[] sArr = (short[]) obj;
            write(j, sArr, 0, sArr.length);
            return;
        }
        if (cls == Character.TYPE) {
            char[] cArr = (char[]) obj;
            write(j, cArr, 0, cArr.length);
            return;
        }
        if (cls == Integer.TYPE) {
            int[] iArr = (int[]) obj;
            write(j, iArr, 0, iArr.length);
            return;
        }
        if (cls == Long.TYPE) {
            long[] jArr = (long[]) obj;
            write(j, jArr, 0, jArr.length);
            return;
        }
        if (cls == Float.TYPE) {
            float[] fArr = (float[]) obj;
            write(j, fArr, 0, fArr.length);
            return;
        }
        if (cls == Double.TYPE) {
            double[] dArr = (double[]) obj;
            write(j, dArr, 0, dArr.length);
            return;
        }
        if (Pointer.class.isAssignableFrom(cls)) {
            Pointer[] pointerArr = (Pointer[]) obj;
            write(j, pointerArr, 0, pointerArr.length);
            return;
        }
        if (Structure.class.isAssignableFrom(cls)) {
            Structure[] structureArr = (Structure[]) obj;
            if (Structure.ByReference.class.isAssignableFrom(cls)) {
                int length = structureArr.length;
                Pointer[] pointerArr2 = new Pointer[length];
                for (int i = 0; i < structureArr.length; i++) {
                    Structure structure = structureArr[i];
                    if (structure == null) {
                        pointerArr2[i] = null;
                    } else {
                        pointerArr2[i] = structure.getPointer();
                        structureArr[i].write();
                    }
                }
                write(j, pointerArr2, 0, length);
                return;
            }
            Structure structureNewInstance = structureArr[0];
            if (structureNewInstance == null) {
                structureNewInstance = Structure.newInstance((Class<Structure>) cls, share(j));
                structureArr[0] = structureNewInstance;
            } else {
                structureNewInstance.useMemory(this, (int) j, true);
            }
            structureNewInstance.write();
            Structure[] array = structureNewInstance.toArray(structureArr.length);
            for (int i2 = 1; i2 < structureArr.length; i2++) {
                Structure structure2 = structureArr[i2];
                if (structure2 == null) {
                    structureArr[i2] = array[i2];
                } else {
                    structure2.useMemory(this, (int) (((long) (structure2.size() * i2)) + j), true);
                }
                structureArr[i2].write();
            }
            return;
        }
        if (NativeMapped.class.isAssignableFrom(cls)) {
            NativeMapped[] nativeMappedArr = (NativeMapped[]) obj;
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            Class<?> clsNativeType = nativeMappedConverter.nativeType();
            int nativeSize = Native.getNativeSize(obj.getClass(), obj) / nativeMappedArr.length;
            for (int i3 = 0; i3 < nativeMappedArr.length; i3++) {
                setValue(((long) (i3 * nativeSize)) + j, nativeMappedConverter.toNative(nativeMappedArr[i3], new ToNativeContext()), clsNativeType);
            }
            return;
        }
        throw new IllegalArgumentException("Writing array of " + cls + " to memory not supported");
    }

    public void setMemory(long j, long j2, byte b) {
        Native.setMemory(this, this.peer, j, j2, b);
    }

    public void setByte(long j, byte b) {
        Native.setByte(this, this.peer, j, b);
    }

    public void setShort(long j, short s) {
        Native.setShort(this, this.peer, j, s);
    }

    public void setChar(long j, char c) {
        Native.setChar(this, this.peer, j, c);
    }

    public void setInt(long j, int i) {
        Native.setInt(this, this.peer, j, i);
    }

    public void setLong(long j, long j2) {
        Native.setLong(this, this.peer, j, j2);
    }

    public void setNativeLong(long j, NativeLong nativeLong) {
        if (NativeLong.SIZE == 8) {
            setLong(j, nativeLong.longValue());
        } else {
            setInt(j, nativeLong.intValue());
        }
    }

    public void setFloat(long j, float f) {
        Native.setFloat(this, this.peer, j, f);
    }

    public void setDouble(long j, double d) {
        Native.setDouble(this, this.peer, j, d);
    }

    public void setPointer(long j, Pointer pointer) {
        Native.setPointer(this, this.peer, j, pointer != null ? pointer.peer : 0L);
    }

    public void setWideString(long j, String str) {
        Native.setWideString(this, this.peer, j, str);
    }

    public void setString(long j, WString wString) {
        setWideString(j, wString == null ? null : wString.toString());
    }

    public void setString(long j, String str) {
        setString(j, str, Native.getDefaultStringEncoding());
    }

    public void setString(long j, String str, String str2) {
        byte[] bytes = Native.getBytes(str, str2);
        write(j, bytes, 0, bytes.length);
        setByte(((long) bytes.length) + j, (byte) 0);
    }

    public String dump(long j, int i) {
        StringWriter stringWriter = new StringWriter(13 + (i * 2) + ((i / 4) * 4));
        PrintWriter printWriter = new PrintWriter(stringWriter);
        printWriter.println("memory dump");
        for (int i2 = 0; i2 < i; i2++) {
            byte b = getByte(((long) i2) + j);
            int i3 = i2 % 4;
            if (i3 == 0) {
                printWriter.print("[");
            }
            if (b >= 0 && b < 16) {
                printWriter.print(MVEL.VERSION_SUB);
            }
            printWriter.print(Integer.toHexString(b & 255));
            if (i3 == 3 && i2 < i - 1) {
                printWriter.println("]");
            }
        }
        if (stringWriter.getBuffer().charAt(stringWriter.getBuffer().length() - 2) != ']') {
            printWriter.println("]");
        }
        return stringWriter.toString();
    }

    public String toString() {
        return "native@0x" + Long.toHexString(this.peer);
    }

    public static long nativeValue(Pointer pointer) {
        if (pointer == null) {
            return 0L;
        }
        return pointer.peer;
    }

    public static void nativeValue(Pointer pointer, long j) {
        pointer.peer = j;
    }

    private static class Opaque extends Pointer {
        private final String MSG;

        private Opaque(long j) {
            super(j);
            this.MSG = "This pointer is opaque: " + this;
        }

        @Override // com.sun.jna.Pointer
        public Pointer share(long j, long j2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void clear(long j) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public long indexOf(long j, byte b) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j, byte[] bArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j, char[] cArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j, short[] sArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j, int[] iArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j, long[] jArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j, float[] fArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j, double[] dArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void read(long j, Pointer[] pointerArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j, byte[] bArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j, char[] cArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j, short[] sArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j, int[] iArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j, long[] jArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j, float[] fArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j, double[] dArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void write(long j, Pointer[] pointerArr, int i, int i2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public ByteBuffer getByteBuffer(long j, long j2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public byte getByte(long j) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public char getChar(long j) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public short getShort(long j) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public int getInt(long j) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public long getLong(long j) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public float getFloat(long j) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public double getDouble(long j) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public Pointer getPointer(long j) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public String getString(long j, String str) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public String getWideString(long j) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setByte(long j, byte b) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setChar(long j, char c) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setShort(long j, short s) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setInt(long j, int i) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setLong(long j, long j2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setFloat(long j, float f) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setDouble(long j, double d) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setPointer(long j, Pointer pointer) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setString(long j, String str, String str2) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setWideString(long j, String str) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public void setMemory(long j, long j2, byte b) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public String dump(long j, int i) {
            throw new UnsupportedOperationException(this.MSG);
        }

        @Override // com.sun.jna.Pointer
        public String toString() {
            return "const@0x" + Long.toHexString(this.peer);
        }
    }
}
