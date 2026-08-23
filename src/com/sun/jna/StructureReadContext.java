package com.sun.jna;

import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes5.dex */
public class StructureReadContext extends FromNativeContext {
    private Field field;
    private Structure structure;

    public StructureReadContext(Structure structure, Field field) {
        super(field.getType());
        this.structure = structure;
        this.field = field;
    }

    public Structure getStructure() {
        return this.structure;
    }

    public Field getField() {
        return this.field;
    }
}
