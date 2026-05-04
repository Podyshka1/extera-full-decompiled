package com.google.firebase.encoders.config;

import com.google.firebase.encoders.ObjectEncoder;

/* JADX INFO: loaded from: classes.dex */
public interface EncoderConfig {
    EncoderConfig registerEncoder(Class cls, ObjectEncoder objectEncoder);
}
