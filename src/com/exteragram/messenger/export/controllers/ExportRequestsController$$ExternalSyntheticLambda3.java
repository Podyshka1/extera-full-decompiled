package com.exteragram.messenger.export.controllers;

import com.exteragram.messenger.export.api.ApiWrap$FileProgress;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ExportRequestsController$$ExternalSyntheticLambda3 implements Utilities.CallbackReturn {
    public final /* synthetic */ ExportRequestsController f$0;

    public /* synthetic */ ExportRequestsController$$ExternalSyntheticLambda3(ExportRequestsController exportRequestsController) {
        this.f$0 = exportRequestsController;
    }

    @Override // org.telegram.messenger.Utilities.CallbackReturn
    public final Object run(Object obj) {
        return Boolean.valueOf(this.f$0.loadMessageFileProgress((ApiWrap$FileProgress) obj));
    }
}
