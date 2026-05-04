package com.sun.jna;

import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class NativeMappedConverter implements TypeConverter {
    private static final Map<Class<?>, Reference<NativeMappedConverter>> converters = new WeakHashMap();
    private final NativeMapped instance;
    private final Class<?> nativeType;
    private final Class<?> type;

    public static NativeMappedConverter getInstance(Class<?> cls) {
        NativeMappedConverter nativeMappedConverter;
        Map<Class<?>, Reference<NativeMappedConverter>> map = converters;
        synchronized (map) {
            try {
                Reference<NativeMappedConverter> reference = map.get(cls);
                nativeMappedConverter = reference != null ? reference.get() : null;
                if (nativeMappedConverter == null) {
                    nativeMappedConverter = new NativeMappedConverter(cls);
                    map.put(cls, new SoftReference(nativeMappedConverter));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return nativeMappedConverter;
    }

    public NativeMappedConverter(Class<?> cls) {
        if (!NativeMapped.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Type must derive from " + NativeMapped.class);
        }
        this.type = cls;
        NativeMapped nativeMappedDefaultValue = defaultValue();
        this.instance = nativeMappedDefaultValue;
        this.nativeType = nativeMappedDefaultValue.nativeType();
    }

    public NativeMapped defaultValue() {
        if (this.type.isEnum()) {
            return (NativeMapped) this.type.getEnumConstants()[0];
        }
        return (NativeMapped) Klass.newInstance(this.type);
    }

    @Override // com.sun.jna.FromNativeConverter
    public Object fromNative(Object obj, FromNativeContext fromNativeContext) {
        return this.instance.fromNative(obj, fromNativeContext);
    }

    @Override // com.sun.jna.FromNativeConverter, com.sun.jna.ToNativeConverter
    public Class<?> nativeType() {
        return this.nativeType;
    }

    @Override // com.sun.jna.ToNativeConverter
    public Object toNative(Object obj, ToNativeContext toNativeContext) {
        if (obj == null) {
            if (Pointer.class.isAssignableFrom(this.nativeType)) {
                return null;
            }
            obj = defaultValue();
        }
        return ((NativeMapped) obj).toNative();
    }
}
