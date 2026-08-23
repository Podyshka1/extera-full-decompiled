package com.sun.jna;

import com.sun.jna.Structure;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Map;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import okio.Buffer$$ExternalSyntheticBUOutline4;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;
import retrofit2.Utils$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Function extends Pointer {
    public static final int ALT_CONVENTION = 63;
    public static final int C_CONVENTION = 0;
    private static final int MASK_CC = 63;
    public static final int MAX_NARGS = 256;
    static final String OPTION_INVOKING_METHOD = "invoking-method";
    public static final int THROW_LAST_ERROR = 64;
    public static final int USE_VARARGS = 255;
    private static final int USE_VARARGS_SHIFT = 7;
    final int callFlags;
    final String encoding;
    private final String functionName;
    private NativeLibrary library;
    final Map<String, ?> options;
    static final Integer INTEGER_TRUE = -1;
    static final Integer INTEGER_FALSE = 0;
    private static final VarArgsChecker IS_VARARGS = VarArgsChecker.create();

    public interface PostCallRead {
        void read();
    }

    public static Function getFunction(String str, String str2) {
        return NativeLibrary.getInstance(str).getFunction(str2);
    }

    public static Function getFunction(String str, String str2, int i) {
        return NativeLibrary.getInstance(str).getFunction(str2, i, null);
    }

    public static Function getFunction(String str, String str2, int i, String str3) {
        return NativeLibrary.getInstance(str).getFunction(str2, i, str3);
    }

    public static Function getFunction(Pointer pointer) {
        return getFunction(pointer, 0, (String) null);
    }

    public static Function getFunction(Pointer pointer, int i) {
        return getFunction(pointer, i, (String) null);
    }

    public static Function getFunction(Pointer pointer, int i, String str) {
        return new Function(pointer, i, str);
    }

    public Function(NativeLibrary nativeLibrary, String str, int i, String str2) {
        checkCallingConvention(i & 63);
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Function name must not be null");
            throw null;
        }
        this.library = nativeLibrary;
        this.functionName = str;
        this.callFlags = i;
        this.options = nativeLibrary.getOptions();
        this.encoding = str2 == null ? Native.getDefaultStringEncoding() : str2;
        try {
            this.peer = nativeLibrary.getSymbolAddress(str);
        } catch (UnsatisfiedLinkError e) {
            Function$$ExternalSyntheticBUOutline0.m462m("Error looking up function '", str, "': ", e.getMessage());
            throw null;
        }
    }

    public Function(Pointer pointer, int i, String str) {
        checkCallingConvention(i & 63);
        if (pointer == null || pointer.peer == 0) {
            f$$ExternalSyntheticBUOutline2.m179m("Function address may not be null");
            throw null;
        }
        this.functionName = pointer.toString();
        this.callFlags = i;
        this.peer = pointer.peer;
        this.options = Collections.EMPTY_MAP;
        this.encoding = str == null ? Native.getDefaultStringEncoding() : str;
    }

    private void checkCallingConvention(int i) {
        if ((i & 63) == i) {
            return;
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m752m("Unrecognized calling convention: ", i);
    }

    public String getName() {
        return this.functionName;
    }

    public int getCallingConvention() {
        return this.callFlags & 63;
    }

    public Object invoke(Class<?> cls, Object[] objArr) {
        return invoke(cls, objArr, this.options);
    }

    public Object invoke(Class<?> cls, Object[] objArr, Map<String, ?> map) {
        Method method = (Method) map.get(OPTION_INVOKING_METHOD);
        return invoke(method, method != null ? method.getParameterTypes() : null, cls, objArr, map);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0091 A[PHI: r2
  0x0091: PHI (r2v1 com.sun.jna.FromNativeConverter) = (r2v0 com.sun.jna.FromNativeConverter), (r2v14 com.sun.jna.FromNativeConverter) binds: [B:35:0x0084, B:37:0x008a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object invoke(Method method, Class<?>[] clsArr, Class<?> cls, Object[] objArr, Map<String, ?> map) {
        Object[] objArr2;
        Class<?> clsNativeType;
        FromNativeConverter fromNativeConverter;
        FromNativeContext functionResultContext;
        Function function;
        Method method2;
        Class<?> cls2;
        Class<?> componentType;
        Object[] objArr3 = new Object[0];
        FromNativeConverter fromNativeConverter2 = null;
        if (objArr == null) {
            objArr2 = objArr3;
        } else {
            if (objArr.length > 256) {
                ByteString$$ExternalSyntheticBUOutline0.m838m("Maximum argument count is 256");
                return null;
            }
            int length = objArr.length;
            Object[] objArr4 = new Object[length];
            System.arraycopy(objArr, 0, objArr4, 0, length);
            objArr2 = objArr4;
        }
        TypeMapper typeMapper = (TypeMapper) map.get(Library.OPTION_TYPE_MAPPER);
        boolean zEquals = Boolean.TRUE.equals(map.get(Library.OPTION_ALLOW_OBJECTS));
        boolean zIsVarArgs = (objArr2.length <= 0 || method == null) ? false : isVarArgs(method);
        int iFixedArgs = (objArr2.length <= 0 || method == null) ? 0 : fixedArgs(method);
        int i = 0;
        while (i < objArr2.length) {
            if (method != null) {
                if (zIsVarArgs && i >= clsArr.length - 1) {
                    componentType = clsArr[clsArr.length - 1].getComponentType();
                } else {
                    componentType = clsArr[i];
                }
                method2 = method;
                cls2 = componentType;
                function = this;
            } else {
                function = this;
                method2 = method;
                cls2 = null;
            }
            objArr2[i] = function.convertArgument(objArr2, i, method2, typeMapper, zEquals, cls2);
            i++;
            this = function;
            method = method2;
        }
        Function function2 = this;
        Method method3 = method;
        if (NativeMapped.class.isAssignableFrom(cls)) {
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            clsNativeType = nativeMappedConverter.nativeType();
            fromNativeConverter = nativeMappedConverter;
        } else if (typeMapper != null) {
            FromNativeConverter fromNativeConverter3 = typeMapper.getFromNativeConverter(cls);
            fromNativeConverter2 = fromNativeConverter3;
            if (fromNativeConverter3 != null) {
                clsNativeType = fromNativeConverter3.nativeType();
                fromNativeConverter = fromNativeConverter3;
            } else {
                clsNativeType = cls;
                fromNativeConverter = fromNativeConverter2;
            }
        }
        Object objInvoke = function2.invoke(objArr2, clsNativeType, zEquals, iFixedArgs);
        if (fromNativeConverter != null) {
            if (method3 != null) {
                functionResultContext = new MethodResultContext(cls, function2, objArr, method3);
            } else {
                functionResultContext = new FunctionResultContext(cls, function2, objArr);
            }
            objInvoke = fromNativeConverter.fromNative(objInvoke, functionResultContext);
        }
        if (objArr != null) {
            for (int i2 = 0; i2 < objArr.length; i2++) {
                Object obj = objArr[i2];
                if (obj != null) {
                    if (obj instanceof Structure) {
                        if (!(obj instanceof Structure.ByValue)) {
                            ((Structure) obj).autoRead();
                        }
                    } else {
                        Object obj2 = objArr2[i2];
                        if (obj2 instanceof PostCallRead) {
                            ((PostCallRead) obj2).read();
                            Object obj3 = objArr2[i2];
                            if (obj3 instanceof PointerArray) {
                                PointerArray pointerArray = (PointerArray) obj3;
                                if (Structure.ByReference[].class.isAssignableFrom(obj.getClass())) {
                                    Class<?> componentType2 = obj.getClass().getComponentType();
                                    Structure[] structureArr = (Structure[]) obj;
                                    for (int i3 = 0; i3 < structureArr.length; i3++) {
                                        structureArr[i3] = Structure.updateStructureByReference(componentType2, structureArr[i3], pointerArray.getPointer(Native.POINTER_SIZE * i3));
                                    }
                                }
                            }
                        } else if (Structure[].class.isAssignableFrom(obj.getClass())) {
                            Structure.autoRead((Structure[]) obj);
                        }
                    }
                }
            }
        }
        return objInvoke;
    }

    public Object invoke(Object[] objArr, Class<?> cls, boolean z) {
        return invoke(objArr, cls, z, 0);
    }

    public Object invoke(Object[] objArr, Class<?> cls, boolean z, int i) {
        int i2 = this.callFlags | ((i & 255) << 7);
        if (cls == null || cls == Void.TYPE || cls == Void.class) {
            Native.invokeVoid(this, this.peer, i2, objArr);
            return null;
        }
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            return valueOf(Native.invokeInt(this, this.peer, i2, objArr) != 0);
        }
        if (cls == Byte.TYPE || cls == Byte.class) {
            return Byte.valueOf((byte) Native.invokeInt(this, this.peer, i2, objArr));
        }
        if (cls == Short.TYPE || cls == Short.class) {
            return Short.valueOf((short) Native.invokeInt(this, this.peer, i2, objArr));
        }
        if (cls == Character.TYPE || cls == Character.class) {
            return Character.valueOf((char) Native.invokeInt(this, this.peer, i2, objArr));
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            return Integer.valueOf(Native.invokeInt(this, this.peer, i2, objArr));
        }
        if (cls == Long.TYPE || cls == Long.class) {
            return Long.valueOf(Native.invokeLong(this, this.peer, i2, objArr));
        }
        if (cls == Float.TYPE || cls == Float.class) {
            return Float.valueOf(Native.invokeFloat(this, this.peer, i2, objArr));
        }
        if (cls == Double.TYPE || cls == Double.class) {
            return Double.valueOf(Native.invokeDouble(this, this.peer, i2, objArr));
        }
        if (cls == String.class) {
            return invokeString(i2, objArr, false);
        }
        if (cls == WString.class) {
            String strInvokeString = invokeString(i2, objArr, true);
            if (strInvokeString != null) {
                return new WString(strInvokeString);
            }
        } else {
            if (Pointer.class.isAssignableFrom(cls)) {
                return invokePointer(i2, objArr);
            }
            if (Structure.class.isAssignableFrom(cls)) {
                if (Structure.ByValue.class.isAssignableFrom(cls)) {
                    Structure structureInvokeStructure = Native.invokeStructure(this, this.peer, i2, objArr, Structure.newInstance(cls));
                    structureInvokeStructure.autoRead();
                    return structureInvokeStructure;
                }
                Pointer pointerInvokePointer = invokePointer(i2, objArr);
                if (pointerInvokePointer == null) {
                    return pointerInvokePointer;
                }
                Structure structureNewInstance = Structure.newInstance((Class<Structure>) cls, pointerInvokePointer);
                structureNewInstance.conditionalAutoRead();
                return structureNewInstance;
            }
            if (Callback.class.isAssignableFrom(cls)) {
                Pointer pointerInvokePointer2 = invokePointer(i2, objArr);
                return pointerInvokePointer2 != null ? CallbackReference.getCallback(cls, pointerInvokePointer2) : pointerInvokePointer2;
            }
            if (cls == String[].class) {
                Pointer pointerInvokePointer3 = invokePointer(i2, objArr);
                if (pointerInvokePointer3 != null) {
                    return pointerInvokePointer3.getStringArray(0L, this.encoding);
                }
            } else if (cls == WString[].class) {
                Pointer pointerInvokePointer4 = invokePointer(i2, objArr);
                if (pointerInvokePointer4 != null) {
                    String[] wideStringArray = pointerInvokePointer4.getWideStringArray(0L);
                    WString[] wStringArr = new WString[wideStringArray.length];
                    for (int i3 = 0; i3 < wideStringArray.length; i3++) {
                        wStringArr[i3] = new WString(wideStringArray[i3]);
                    }
                    return wStringArr;
                }
            } else {
                if (cls != Pointer[].class) {
                    if (z) {
                        Object objInvokeObject = Native.invokeObject(this, this.peer, i2, objArr);
                        if (objInvokeObject == null || cls.isAssignableFrom(objInvokeObject.getClass())) {
                            return objInvokeObject;
                        }
                        StringBuilder sb = new StringBuilder("Return type ");
                        sb.append(cls);
                        Class<?> cls2 = objInvokeObject.getClass();
                        sb.append(" does not match result ");
                        sb.append(cls2);
                        throw new ClassCastException(sb.toString());
                    }
                    StringBuilder sb2 = new StringBuilder("Unsupported return type ");
                    sb2.append(cls);
                    Utils$$ExternalSyntheticBUOutline1.m979m(sb2, " in function ", getName());
                    return null;
                }
                Pointer pointerInvokePointer5 = invokePointer(i2, objArr);
                if (pointerInvokePointer5 != null) {
                    return pointerInvokePointer5.getPointerArray(0L);
                }
            }
        }
        return null;
    }

    private Pointer invokePointer(int i, Object[] objArr) {
        long jInvokePointer = Native.invokePointer(this, this.peer, i, objArr);
        if (jInvokePointer == 0) {
            return null;
        }
        return new Pointer(jInvokePointer);
    }

    private Object convertArgument(Object[] objArr, int i, Method method, TypeMapper typeMapper, boolean z, Class<?> cls) {
        ToNativeConverter toNativeConverter;
        ToNativeContext functionParameterContext;
        Object obj = objArr[i];
        if (obj != null) {
            Class<?> cls2 = obj.getClass();
            if (NativeMapped.class.isAssignableFrom(cls2)) {
                toNativeConverter = NativeMappedConverter.getInstance(cls2);
            } else {
                toNativeConverter = typeMapper != null ? typeMapper.getToNativeConverter(cls2) : null;
            }
            if (toNativeConverter != null) {
                if (method != null) {
                    functionParameterContext = new MethodParameterContext(this, objArr, i, method);
                } else {
                    functionParameterContext = new FunctionParameterContext(this, objArr, i);
                }
                obj = toNativeConverter.toNative(obj, functionParameterContext);
            }
        }
        if (obj == null || isPrimitiveArray(obj.getClass())) {
            return obj;
        }
        Class<?> cls3 = obj.getClass();
        if (obj instanceof Structure) {
            Structure structure = (Structure) obj;
            structure.autoWrite();
            if (structure instanceof Structure.ByValue) {
                Class<?> cls4 = structure.getClass();
                if (method != null) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (!IS_VARARGS.isVarArgs(method) || i < parameterTypes.length - 1) {
                        cls4 = parameterTypes[i];
                    } else {
                        Class<?> componentType = parameterTypes[parameterTypes.length - 1].getComponentType();
                        if (componentType != Object.class) {
                            cls4 = componentType;
                        }
                    }
                }
                if (Structure.ByValue.class.isAssignableFrom(cls4)) {
                    return structure;
                }
            }
            return structure.getPointer();
        }
        if (obj instanceof Callback) {
            return CallbackReference.getFunctionPointer((Callback) obj);
        }
        if (obj instanceof String) {
            return new NativeString((String) obj, this.encoding).getPointer();
        }
        if (obj instanceof WString) {
            return new NativeString(obj.toString(), true).getPointer();
        }
        if (obj instanceof Boolean) {
            return Boolean.TRUE.equals(obj) ? INTEGER_TRUE : INTEGER_FALSE;
        }
        if (String[].class == cls3) {
            return new StringArray((String[]) obj, this.encoding);
        }
        if (WString[].class == cls3) {
            return new StringArray((WString[]) obj);
        }
        if (Pointer[].class == cls3) {
            return new PointerArray((Pointer[]) obj);
        }
        if (NativeMapped[].class.isAssignableFrom(cls3)) {
            return new NativeMappedArray((NativeMapped[]) obj);
        }
        if (Structure[].class.isAssignableFrom(cls3)) {
            Structure[] structureArr = (Structure[]) obj;
            Class<?> componentType2 = cls3.getComponentType();
            boolean zIsAssignableFrom = Structure.ByReference.class.isAssignableFrom(componentType2);
            if (cls != null && !Structure.ByReference[].class.isAssignableFrom(cls)) {
                if (zIsAssignableFrom) {
                    throw new IllegalArgumentException("Function " + getName() + " declared Structure[] at parameter " + i + " but array of " + componentType2 + " was passed");
                }
                for (int i2 = 0; i2 < structureArr.length; i2++) {
                    if (structureArr[i2] instanceof Structure.ByReference) {
                        throw new IllegalArgumentException("Function " + getName() + " declared Structure[] at parameter " + i + " but element " + i2 + " is of Structure.ByReference type");
                    }
                }
            }
            if (zIsAssignableFrom) {
                Structure.autoWrite(structureArr);
                Pointer[] pointerArr = new Pointer[structureArr.length + 1];
                for (int i3 = 0; i3 < structureArr.length; i3++) {
                    Structure structure2 = structureArr[i3];
                    pointerArr[i3] = structure2 != null ? structure2.getPointer() : null;
                }
                return new PointerArray(pointerArr);
            }
            if (structureArr.length == 0) {
                f$$ExternalSyntheticBUOutline1.m178m("Structure array must have non-zero length");
                return null;
            }
            if (structureArr[0] == null) {
                Structure.newInstance(componentType2).toArray(structureArr);
                return structureArr[0].getPointer();
            }
            Structure.autoWrite(structureArr);
            return structureArr[0].getPointer();
        }
        if (cls3.isArray()) {
            Buffer$$ExternalSyntheticBUOutline4.m837m("Unsupported array argument type: ", cls3.getComponentType());
            return null;
        }
        if (z || Native.isSupportedNativeType(obj.getClass())) {
            return obj;
        }
        throw new IllegalArgumentException("Unsupported argument type " + obj.getClass().getName() + " at parameter " + i + " of function " + getName());
    }

    private boolean isPrimitiveArray(Class<?> cls) {
        return cls.isArray() && cls.getComponentType().isPrimitive();
    }

    public void invoke(Object[] objArr) {
        invoke(Void.class, objArr);
    }

    private String invokeString(int i, Object[] objArr, boolean z) {
        Pointer pointerInvokePointer = invokePointer(i, objArr);
        if (pointerInvokePointer == null) {
            return null;
        }
        if (z) {
            return pointerInvokePointer.getWideString(0L);
        }
        return pointerInvokePointer.getString(0L, this.encoding);
    }

    @Override // com.sun.jna.Pointer
    public String toString() {
        if (this.library != null) {
            return "native function " + this.functionName + "(" + this.library.getName() + ")@0x" + Long.toHexString(this.peer);
        }
        return "native function@0x" + Long.toHexString(this.peer);
    }

    public Object invokeObject(Object[] objArr) {
        return invoke(Object.class, objArr);
    }

    public Pointer invokePointer(Object[] objArr) {
        return (Pointer) invoke(Pointer.class, objArr);
    }

    public String invokeString(Object[] objArr, boolean z) {
        Object objInvoke = invoke(z ? WString.class : String.class, objArr);
        if (objInvoke != null) {
            return objInvoke.toString();
        }
        return null;
    }

    public int invokeInt(Object[] objArr) {
        return ((Integer) invoke(Integer.class, objArr)).intValue();
    }

    public long invokeLong(Object[] objArr) {
        return ((Long) invoke(Long.class, objArr)).longValue();
    }

    public float invokeFloat(Object[] objArr) {
        return ((Float) invoke(Float.class, objArr)).floatValue();
    }

    public double invokeDouble(Object[] objArr) {
        return ((Double) invoke(Double.class, objArr)).doubleValue();
    }

    public void invokeVoid(Object[] objArr) {
        invoke(Void.class, objArr);
    }

    @Override // com.sun.jna.Pointer
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            Function function = (Function) obj;
            if (function.callFlags == this.callFlags && function.options.equals(this.options) && function.peer == this.peer) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sun.jna.Pointer
    public int hashCode() {
        return this.callFlags + this.options.hashCode() + super.hashCode();
    }

    public static Object[] concatenateVarArgs(Object[] objArr) {
        if (objArr != null && objArr.length > 0) {
            Object obj = objArr[objArr.length - 1];
            Class<?> cls = obj != null ? obj.getClass() : null;
            if (cls != null && cls.isArray()) {
                Object[] objArr2 = (Object[]) obj;
                for (int i = 0; i < objArr2.length; i++) {
                    if (objArr2[i] instanceof Float) {
                        objArr2[i] = Double.valueOf(((Float) r4).floatValue());
                    }
                }
                int length = objArr.length + objArr2.length;
                Object[] objArr3 = new Object[length];
                System.arraycopy(objArr, 0, objArr3, 0, objArr.length - 1);
                System.arraycopy(objArr2, 0, objArr3, objArr.length - 1, objArr2.length);
                objArr3[length - 1] = null;
                return objArr3;
            }
        }
        return objArr;
    }

    public static boolean isVarArgs(Method method) {
        return IS_VARARGS.isVarArgs(method);
    }

    public static int fixedArgs(Method method) {
        return IS_VARARGS.fixedArgs(method);
    }

    public static class NativeMappedArray extends Memory implements PostCallRead {
        private final NativeMapped[] original;

        public NativeMappedArray(NativeMapped[] nativeMappedArr) {
            super(Native.getNativeSize(nativeMappedArr.getClass(), nativeMappedArr));
            this.original = nativeMappedArr;
            setValue(0L, nativeMappedArr, nativeMappedArr.getClass());
        }

        @Override // com.sun.jna.Function.PostCallRead
        public void read() {
            getValue(0L, this.original.getClass(), this.original);
        }
    }

    public static class PointerArray extends Memory implements PostCallRead {
        private final Pointer[] original;

        public PointerArray(Pointer[] pointerArr) {
            super(Native.POINTER_SIZE * (pointerArr.length + 1));
            this.original = pointerArr;
            for (int i = 0; i < pointerArr.length; i++) {
                setPointer(Native.POINTER_SIZE * i, pointerArr[i]);
            }
            setPointer(Native.POINTER_SIZE * pointerArr.length, null);
        }

        @Override // com.sun.jna.Function.PostCallRead
        public void read() {
            Pointer[] pointerArr = this.original;
            read(0L, pointerArr, 0, pointerArr.length);
        }
    }

    public static Boolean valueOf(boolean z) {
        return z ? Boolean.TRUE : Boolean.FALSE;
    }
}
