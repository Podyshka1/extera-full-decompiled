package org.telegram.ui;
 class PhotoViewer$2 implements java.lang.Runnable {
    final synthetic org.telegram.ui.PhotoViewer this$0;

    PhotoViewer$2(org.telegram.ui.PhotoViewer p1)
    {
        this.this$0 = p1;
        return;
    }

    public void run()
    {
        if (((org.telegram.ui.PhotoViewer.-$$Nest$fgetvideoPlayerControlVisible(this.this$0)) && ((org.telegram.ui.PhotoViewer.-$$Nest$fgetisPlaying(this.this$0)) && ((!org.telegram.messenger.ApplicationLoader.mainInterfacePaused) && ((org.telegram.ui.PhotoViewer.-$$Nest$fgetmenuItem(this.this$0) == null) || (!org.telegram.ui.PhotoViewer.-$$Nest$fgetmenuItem(this.this$0).isSubMenuShowing()))))) && (((org.telegram.ui.PhotoViewer.-$$Nest$fgetvideoItem(this.this$0) == null) || (!org.telegram.ui.PhotoViewer.-$$Nest$fgetvideoItem(this.this$0).isSubMenuShowing())) && (((org.telegram.ui.PhotoViewer.-$$Nest$fgetcaptionScrollView(this.this$0) == null) || (org.telegram.ui.PhotoViewer.-$$Nest$fgetcaptionScrollView(this.this$0).getScrollY() == 0)) && ((org.telegram.ui.PhotoViewer.-$$Nest$fgetminiProgressView(this.this$0) == null) || (org.telegram.ui.PhotoViewer.-$$Nest$fgetminiProgressView(this.this$0).getVisibility() != 0))))) {
            org.telegram.ui.PhotoViewer v1 = this.this$0;
            if (org.telegram.ui.PhotoViewer.-$$Nest$sfgetPipInstance() != v1) {
                org.telegram.ui.PhotoViewer.-$$Nest$mtoggleActionBar(v1, 0, 1);
            }
        }
        return;
    }
}
