package org.telegram.ui;
 class TopicCreateFragment$4 extends android.widget.FrameLayout {
    android.animation.ValueAnimator backAnimator;
    boolean pressed;
    float pressedProgress;
    final synthetic org.telegram.ui.TopicCreateFragment this$0;

    public static synthetic void $r8$lambda$1AWJwu23wgo2-nymx7j3H-XOS3I(org.telegram.ui.TopicCreateFragment$4 p0, android.animation.ValueAnimator p1)
    {
        p0.lambda$setPressed$0(p1);
        return;
    }

    TopicCreateFragment$4(org.telegram.ui.TopicCreateFragment p1, android.content.Context p2)
    {
        this.this$0 = p1;
        super(p2);
        return;
    }

    private synthetic void lambda$setPressed$0(android.animation.ValueAnimator p1)
    {
        this.pressedProgress = ((Float) p1.getAnimatedValue()).floatValue();
        this.invalidate();
        return;
    }

    protected void dispatchDraw(android.graphics.Canvas p5)
    {
        float v0_3 = (((1065353216 - this.pressedProgress) * 1045220557) + 1061997773);
        p5.save();
        p5.scale(v0_3, v0_3, (((float) this.getMeasuredHeight()) / 1073741824), (((float) this.getMeasuredWidth()) / 1073741824));
        super.dispatchDraw(p5);
        p5.restore();
        this.updatePressedProgress();
        return;
    }

    public void setPressed(boolean p4)
    {
        super.setPressed(p4);
        if (this.pressed != p4) {
            this.pressed = p4;
            this.invalidate();
            if (p4 != null) {
                long v0_9 = this.backAnimator;
                if (v0_9 != 0) {
                    v0_9.removeAllListeners();
                    this.backAnimator.cancel();
                }
            }
            if (p4 == null) {
                android.animation.ValueAnimator v4_1 = this.pressedProgress;
                if (v4_1 != 0) {
                    int v1_2 = new float[2];
                    v1_2[0] = v4_1;
                    v1_2[1] = 0;
                    android.animation.ValueAnimator v4_3 = android.animation.ValueAnimator.ofFloat(v1_2);
                    this.backAnimator = v4_3;
                    v4_3.addUpdateListener(new org.telegram.ui.TopicCreateFragment$4$$ExternalSyntheticLambda0(this));
                    this.backAnimator.addListener(new org.telegram.ui.TopicCreateFragment$4$1(this));
                    this.backAnimator.setInterpolator(new android.view.animation.OvershootInterpolator(1084227584));
                    this.backAnimator.setDuration(350);
                    this.backAnimator.start();
                }
            }
        }
        return;
    }

    public void updatePressedProgress()
    {
        if (this.isPressed()) {
            float v0_2 = this.pressedProgress;
            if (v0_2 != 1065353216) {
                this.pressedProgress = org.telegram.messenger.Utilities.clamp((v0_2 + 1042536202), 1065353216, 0);
                this.invalidate();
            }
        }
        return;
    }
}
