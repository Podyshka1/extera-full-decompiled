package com.google.firebase.sessions;

import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class UuidGeneratorImpl implements UuidGenerator {
    public static final UuidGeneratorImpl INSTANCE = new UuidGeneratorImpl();

    private UuidGeneratorImpl() {
    }

    @Override // com.google.firebase.sessions.UuidGenerator
    public UUID next() {
        UUID uuidRandomUUID = UUID.randomUUID();
        Intrinsics.checkNotNullExpressionValue(uuidRandomUUID, "randomUUID(...)");
        return uuidRandomUUID;
    }
}
