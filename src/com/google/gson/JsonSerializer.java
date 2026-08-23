package com.google.gson;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes5.dex */
public interface JsonSerializer {
    JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonSerializationContext);
}
