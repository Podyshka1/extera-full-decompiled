package org.telegram.ui;
public class PhotoViewer$EditState {
    public long averageDuration;
    public org.telegram.messenger.MediaController$CropState cropState;
    public java.util.ArrayList croppedMediaEntities;
    public String croppedPaintPath;
    public java.util.ArrayList mediaEntities;
    public String paintPath;
    public org.telegram.messenger.MediaController$SavedFilterState savedFilterState;

    public PhotoViewer$EditState()
    {
        return;
    }

    public void reset()
    {
        this.paintPath = 0;
        this.cropState = 0;
        this.savedFilterState = 0;
        this.mediaEntities = 0;
        this.croppedPaintPath = 0;
        this.croppedMediaEntities = 0;
        this.averageDuration = 0;
        return;
    }
}
