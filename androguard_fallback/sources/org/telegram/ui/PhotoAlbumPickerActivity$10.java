package org.telegram.ui;
 class PhotoAlbumPickerActivity$10 implements org.telegram.ui.PhotoPickerActivity$PhotoPickerActivityDelegate {
    final synthetic org.telegram.ui.PhotoAlbumPickerActivity this$0;
    final synthetic java.util.ArrayList val$order;
    final synthetic java.util.HashMap val$photos;

    PhotoAlbumPickerActivity$10(org.telegram.ui.PhotoAlbumPickerActivity p1, java.util.HashMap p2, java.util.ArrayList p3)
    {
        this.this$0 = p1;
        this.val$photos = p2;
        this.val$order = p3;
        return;
    }

    public void actionButtonPressed(boolean p2, boolean p3, int p4, int p5)
    {
        this.this$0.removeSelfFromStack();
        if (p2 == null) {
            org.telegram.ui.PhotoAlbumPickerActivity.-$$Nest$msendSelectedPhotos(this.this$0, this.val$photos, this.val$order, p3, p4);
        }
        return;
    }

    public synthetic boolean canFinishFragment()
    {
        return org.telegram.ui.PhotoPickerActivity$PhotoPickerActivityDelegate$-CC.$default$canFinishFragment(this);
    }

    public void onCaptionChanged(CharSequence p3)
    {
        org.telegram.ui.Components.EditTextEmoji v0_1 = org.telegram.ui.PhotoAlbumPickerActivity.-$$Nest$fgetcommentTextView(this.this$0);
        org.telegram.ui.PhotoAlbumPickerActivity.-$$Nest$fputcaption(this.this$0, p3);
        v0_1.setText(p3);
        return;
    }

    public synthetic void onOpenInPressed()
    {
        org.telegram.ui.PhotoPickerActivity$PhotoPickerActivityDelegate$-CC.$default$onOpenInPressed(this);
        return;
    }

    public void selectedPhotosChanged()
    {
        return;
    }
}
