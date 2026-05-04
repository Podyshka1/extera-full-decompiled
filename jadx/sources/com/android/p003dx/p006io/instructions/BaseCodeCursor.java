package com.android.p003dx.p006io.instructions;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseCodeCursor implements CodeCursor {
    private final AddressMap baseAddressMap = new AddressMap();
    private int cursor = 0;

    @Override // com.android.p003dx.p006io.instructions.CodeCursor
    public final int cursor() {
        return this.cursor;
    }

    @Override // com.android.p003dx.p006io.instructions.CodeCursor
    public final int baseAddressForCursor() {
        int i = this.baseAddressMap.get(this.cursor);
        return i >= 0 ? i : this.cursor;
    }

    @Override // com.android.p003dx.p006io.instructions.CodeCursor
    public final void setBaseAddress(int i, int i2) {
        this.baseAddressMap.put(i, i2);
    }

    protected final void advance(int i) {
        this.cursor += i;
    }
}
