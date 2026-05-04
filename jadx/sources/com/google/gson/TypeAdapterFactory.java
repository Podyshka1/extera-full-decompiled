package com.google.gson;

import com.google.gson.reflect.TypeToken;

/* JADX INFO: loaded from: classes.dex */
public interface TypeAdapterFactory {
    TypeAdapter create(Gson gson, TypeToken typeToken);
}
