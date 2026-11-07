package com.google.android.gms.cast.framework.media.widget;

import android.widget.ImageView;
import com.google.android.gms.cast.framework.media.uicontroller.UIMediaController;

/* JADX INFO: loaded from: classes4.dex */
public interface ControlButtonsContainer {
    ImageView getButtonImageViewAt(int i);

    int getButtonSlotCount();

    int getButtonTypeAt(int i);

    UIMediaController getUIMediaController();
}
