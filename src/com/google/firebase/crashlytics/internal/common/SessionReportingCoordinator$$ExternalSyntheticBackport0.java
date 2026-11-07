package com.google.firebase.crashlytics.internal.common;

import java.util.Objects;
import java.util.Optional;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes5.dex */
public abstract /* synthetic */ class SessionReportingCoordinator$$ExternalSyntheticBackport0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ Optional m495m(Optional optional, Supplier supplier) {
        Objects.requireNonNull(supplier);
        if (optional.isPresent()) {
            return optional;
        }
        Optional optional2 = (Optional) supplier.get();
        Objects.requireNonNull(optional2);
        return optional2;
    }
}
