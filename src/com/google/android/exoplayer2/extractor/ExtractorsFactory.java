package com.google.android.exoplayer2.extractor;

import android.net.Uri;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public interface ExtractorsFactory {
    public static final ExtractorsFactory EMPTY = new ExtractorsFactory() { // from class: com.google.android.exoplayer2.extractor.ExtractorsFactory$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return ExtractorsFactory.m2818$r8$lambda$cyX1_nrPwwQz0ArrAj1f3VbsVA();
        }
    };

    Extractor[] createExtractors();

    /* JADX INFO: renamed from: $r8$lambda$cyX1_nrPwwQz0-ArrAj1f3VbsVA, reason: not valid java name */
    static /* synthetic */ Extractor[] m2818$r8$lambda$cyX1_nrPwwQz0ArrAj1f3VbsVA() {
        return new Extractor[0];
    }

    default Extractor[] createExtractors(Uri uri, Map<String, List<String>> map) {
        return createExtractors();
    }
}
