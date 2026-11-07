package com.android.dx.cf.attrib;

import com.android.dx.cf.code.LocalVariableList;

/* JADX INFO: loaded from: classes4.dex */
public final class AttLocalVariableTable extends BaseLocalVariables {
    public static final String ATTRIBUTE_NAME = "LocalVariableTable";

    public AttLocalVariableTable(LocalVariableList localVariableList) {
        super(ATTRIBUTE_NAME, localVariableList);
    }
}
