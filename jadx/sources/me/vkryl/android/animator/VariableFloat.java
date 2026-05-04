package me.vkryl.android.animator;

/* JADX INFO: loaded from: classes.dex */
public class VariableFloat {
    private float from;
    private float now;

    /* JADX INFO: renamed from: to */
    private float f1551to;

    public VariableFloat(float f) {
        set(f);
    }

    public void set(float f) {
        this.from = f;
        this.f1551to = f;
        this.now = f;
    }

    public float get() {
        return this.now;
    }

    public void setFrom(float f) {
        this.from = f;
    }

    public void setTo(float f) {
        this.f1551to = f;
    }

    public boolean differs(float f) {
        return this.f1551to != f;
    }

    public void finishAnimation(boolean z) {
        if (z) {
            float f = this.f1551to;
            this.now = f;
            this.from = f;
            return;
        }
        this.from = this.now;
    }

    public boolean applyAnimation(float f) {
        float f2 = this.from;
        float f3 = f2 + ((this.f1551to - f2) * f);
        if (this.now == f3) {
            return false;
        }
        this.now = f3;
        return true;
    }
}
