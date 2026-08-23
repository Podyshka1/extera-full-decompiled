package com.google.gson.annotations;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface Expose {
    boolean deserialize() default true;

    boolean serialize() default true;
}
