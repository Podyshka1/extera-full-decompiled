package org.telegram.messenger;

import org.telegram.p029ui.Components.Bulletin;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class MediaDataController$$ExternalSyntheticLambda12 implements Runnable {
    public final /* synthetic */ Bulletin.UndoButton f$0;

    public /* synthetic */ MediaDataController$$ExternalSyntheticLambda12(Bulletin.UndoButton undoButton) {
        this.f$0 = undoButton;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.undo();
    }
}
