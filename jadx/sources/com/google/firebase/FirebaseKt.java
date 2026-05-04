package com.google.firebase;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class FirebaseKt {
    public static final FirebaseApp getApp(Firebase firebase) {
        Intrinsics.checkNotNullParameter(firebase, "<this>");
        FirebaseApp firebaseApp = FirebaseApp.getInstance();
        Intrinsics.checkNotNullExpressionValue(firebaseApp, "getInstance(...)");
        return firebaseApp;
    }
}
