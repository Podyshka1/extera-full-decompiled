package androidx.versionedparcelable;

import android.os.Parcelable;
import androidx.collection.ArrayMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public abstract class VersionedParcel {
    protected final ArrayMap mParcelizerCache;
    protected final ArrayMap mReadCache;
    protected final ArrayMap mWriteCache;

    protected abstract void closeField();

    protected abstract VersionedParcel createSubParcel();

    public boolean isStream() {
        return false;
    }

    protected abstract boolean readBoolean();

    protected abstract byte[] readByteArray();

    protected abstract CharSequence readCharSequence();

    protected abstract boolean readField(int i);

    protected abstract int readInt();

    protected abstract Parcelable readParcelable();

    protected abstract String readString();

    protected abstract void setOutputField(int i);

    public void setSerializationFlags(boolean z, boolean z2) {
    }

    protected abstract void writeBoolean(boolean z);

    protected abstract void writeByteArray(byte[] bArr);

    protected abstract void writeCharSequence(CharSequence charSequence);

    protected abstract void writeInt(int i);

    protected abstract void writeParcelable(Parcelable parcelable);

    protected abstract void writeString(String str);

    public VersionedParcel(ArrayMap arrayMap, ArrayMap arrayMap2, ArrayMap arrayMap3) {
        this.mReadCache = arrayMap;
        this.mWriteCache = arrayMap2;
        this.mParcelizerCache = arrayMap3;
    }

    public void writeBoolean(boolean z, int i) {
        setOutputField(i);
        writeBoolean(z);
    }

    public void writeByteArray(byte[] bArr, int i) {
        setOutputField(i);
        writeByteArray(bArr);
    }

    public void writeCharSequence(CharSequence charSequence, int i) {
        setOutputField(i);
        writeCharSequence(charSequence);
    }

    public void writeInt(int i, int i2) {
        setOutputField(i2);
        writeInt(i);
    }

    public void writeString(String str, int i) {
        setOutputField(i);
        writeString(str);
    }

    public void writeParcelable(Parcelable parcelable, int i) {
        setOutputField(i);
        writeParcelable(parcelable);
    }

    public boolean readBoolean(boolean z, int i) {
        return !readField(i) ? z : readBoolean();
    }

    public int readInt(int i, int i2) {
        return !readField(i2) ? i : readInt();
    }

    public String readString(String str, int i) {
        return !readField(i) ? str : readString();
    }

    public byte[] readByteArray(byte[] bArr, int i) {
        return !readField(i) ? bArr : readByteArray();
    }

    public Parcelable readParcelable(Parcelable parcelable, int i) {
        return !readField(i) ? parcelable : readParcelable();
    }

    public CharSequence readCharSequence(CharSequence charSequence, int i) {
        return !readField(i) ? charSequence : readCharSequence();
    }

    public void writeVersionedParcelable(VersionedParcelable versionedParcelable, int i) {
        setOutputField(i);
        writeVersionedParcelable(versionedParcelable);
    }

    protected void writeVersionedParcelable(VersionedParcelable versionedParcelable) {
        if (versionedParcelable == null) {
            writeString(null);
            return;
        }
        writeVersionedParcelableCreator(versionedParcelable);
        VersionedParcel versionedParcelCreateSubParcel = createSubParcel();
        writeToParcel(versionedParcelable, versionedParcelCreateSubParcel);
        versionedParcelCreateSubParcel.closeField();
    }

    private void writeVersionedParcelableCreator(VersionedParcelable versionedParcelable) {
        try {
            writeString(findParcelClass(versionedParcelable.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(versionedParcelable.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    public VersionedParcelable readVersionedParcelable(VersionedParcelable versionedParcelable, int i) {
        return !readField(i) ? versionedParcelable : readVersionedParcelable();
    }

    protected VersionedParcelable readVersionedParcelable() {
        String string = readString();
        if (string == null) {
            return null;
        }
        return readFromParcel(string, createSubParcel());
    }

    protected VersionedParcelable readFromParcel(String str, VersionedParcel versionedParcel) {
        try {
            return (VersionedParcelable) getReadMethod(str).invoke(null, versionedParcel);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    protected void writeToParcel(VersionedParcelable versionedParcelable, VersionedParcel versionedParcel) {
        try {
            getWriteMethod(versionedParcelable.getClass()).invoke(null, versionedParcelable, versionedParcel);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    private Method getReadMethod(String str) throws NoSuchMethodException {
        Method method = (Method) this.mReadCache.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
        this.mReadCache.put(str, declaredMethod);
        return declaredMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Method getWriteMethod(Class cls) throws NoSuchMethodException, ClassNotFoundException {
        Method method = (Method) this.mWriteCache.get(cls.getName());
        if (method != null) {
            return method;
        }
        Class clsFindParcelClass = findParcelClass(cls);
        System.currentTimeMillis();
        Method declaredMethod = clsFindParcelClass.getDeclaredMethod("write", cls, VersionedParcel.class);
        this.mWriteCache.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    private Class findParcelClass(Class cls) throws ClassNotFoundException {
        Class cls2 = (Class) this.mParcelizerCache.get(cls.getName());
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
        this.mParcelizerCache.put(cls.getName(), cls3);
        return cls3;
    }
}
