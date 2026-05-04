package org.telegram.ui;
 class PhotoAlbumPickerActivity$7 implements android.view.ViewTreeObserver$OnPreDrawListener {
    final synthetic org.telegram.ui.PhotoAlbumPickerActivity this$0;

    PhotoAlbumPickerActivity$7(org.telegram.ui.PhotoAlbumPickerActivity p1)
    {
        this.this$0 = p1;
        return;
    }

    public boolean onPreDraw()
    {
        org.telegram.ui.PhotoAlbumPickerActivity.-$$Nest$mfixLayoutInternal(this.this$0);
        if (org.telegram.ui.PhotoAlbumPickerActivity.-$$Nest$fgetlistView(this.this$0) != null) {
            org.telegram.ui.PhotoAlbumPickerActivity.-$$Nest$fgetlistView(this.this$0).getViewTreeObserver().removeOnPreDrawListener(this);
        }
        return 1;
    }
}
