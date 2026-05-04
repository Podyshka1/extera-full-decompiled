package org.telegram.ui;
 class ProfileActivity$1 extends android.graphics.Paint {
    final synthetic org.telegram.ui.ProfileActivity this$0;

    ProfileActivity$1(org.telegram.ui.ProfileActivity p1, int p2)
    {
        this.this$0 = p1;
        super(p2);
        return;
    }

    public void setAlpha(int p1)
    {
        super.setAlpha(p1);
        this.this$0.fragmentView.invalidate();
        return;
    }
}
