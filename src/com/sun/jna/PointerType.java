package com.sun.jna;

/* JADX INFO: loaded from: classes5.dex */
public abstract class PointerType implements NativeMapped {
    private Pointer pointer;

    public PointerType() {
        this.pointer = Pointer.NULL;
    }

    public PointerType(Pointer pointer) {
        this.pointer = pointer;
    }

    @Override // com.sun.jna.NativeMapped
    public Class<?> nativeType() {
        return Pointer.class;
    }

    @Override // com.sun.jna.NativeMapped
    public Object toNative() {
        return getPointer();
    }

    public Pointer getPointer() {
        return this.pointer;
    }

    public void setPointer(Pointer pointer) {
        this.pointer = pointer;
    }

    @Override // com.sun.jna.NativeMapped
    public Object fromNative(Object obj, FromNativeContext fromNativeContext) {
        if (obj == null) {
            return null;
        }
        PointerType pointerType = (PointerType) Klass.newInstance(getClass());
        pointerType.pointer = (Pointer) obj;
        return pointerType;
    }

    public int hashCode() {
        Pointer pointer = this.pointer;
        if (pointer != null) {
            return pointer.hashCode();
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PointerType)) {
            return false;
        }
        Pointer pointer = ((PointerType) obj).getPointer();
        Pointer pointer2 = this.pointer;
        if (pointer2 == null) {
            return pointer == null;
        }
        return pointer2.equals(pointer);
    }

    public String toString() {
        if (this.pointer == null) {
            return "NULL";
        }
        return this.pointer.toString() + " (" + super.toString() + ")";
    }
}
