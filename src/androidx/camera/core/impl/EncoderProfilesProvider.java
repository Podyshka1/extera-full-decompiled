package androidx.camera.core.impl;

import java.util.Arrays;
import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public interface EncoderProfilesProvider {
    public static final EncoderProfilesProvider EMPTY = new EncoderProfilesProvider() { // from class: androidx.camera.core.impl.EncoderProfilesProvider.1
        @Override // androidx.camera.core.impl.EncoderProfilesProvider
        public EncoderProfilesProxy getAll(int i) {
            return null;
        }

        @Override // androidx.camera.core.impl.EncoderProfilesProvider
        public boolean hasProfile(int i) {
            return false;
        }
    };
    public static final List QUALITY_HIGH_TO_LOW = DesugarCollections.unmodifiableList(Arrays.asList(13, 10, 8, 11, 6, 5, 4, 9, 3, 7, 2));

    EncoderProfilesProxy getAll(int i);

    boolean hasProfile(int i);
}
