package com.google.firebase.encoders.proto;

/* JADX INFO: loaded from: classes5.dex */
public @interface Protobuf {

    public enum IntEncoding {
        DEFAULT,
        SIGNED,
        FIXED
    }

    IntEncoding intEncoding() default IntEncoding.DEFAULT;

    int tag();
}
