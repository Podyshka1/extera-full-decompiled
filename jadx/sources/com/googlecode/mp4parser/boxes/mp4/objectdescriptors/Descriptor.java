package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
@Retention(RetentionPolicy.RUNTIME)
public @interface Descriptor {
    int objectTypeIndication() default -1;

    int[] tags();
}
