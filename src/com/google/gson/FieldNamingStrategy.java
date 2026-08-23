package com.google.gson;

import java.lang.reflect.Field;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface FieldNamingStrategy {
    List alternateNames(Field field);

    String translateName(Field field);

    /* JADX INFO: renamed from: com.google.gson.FieldNamingStrategy$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
    }
}
