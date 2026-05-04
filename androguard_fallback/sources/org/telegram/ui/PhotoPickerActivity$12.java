package org.telegram.ui;
 class PhotoPickerActivity$12 extends android.widget.FrameLayout {
    final synthetic org.telegram.ui.PhotoPickerActivity this$0;

    PhotoPickerActivity$12(org.telegram.ui.PhotoPickerActivity p1, android.content.Context p2)
    {
        this.this$0 = p1;
        super(p2);
        return;
    }

    public void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo p4)
    {
        super.onInitializeAccessibilityNodeInfo(p4);
        Object[] v1_1 = new Object[0];
        p4.setText(org.telegram.messenger.LocaleController.formatPluralString("AccDescrSendPhotos", org.telegram.ui.PhotoPickerActivity.-$$Nest$fgetselectedPhotos(this.this$0).size(), v1_1));
        p4.setClassName(android.widget.Button.getName());
        p4.setLongClickable(1);
        p4.setClickable(1);
        return;
    }
}
