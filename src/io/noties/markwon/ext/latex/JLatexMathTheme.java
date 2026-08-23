package io.noties.markwon.ext.latex;

import ru.noties.jlatexmath.JLatexMathDrawable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class JLatexMathTheme {

    public interface BackgroundProvider {
    }

    public static class Padding {
    }

    public abstract BackgroundProvider blockBackgroundProvider();

    public abstract boolean blockFitCanvas();

    @JLatexMathDrawable.Align
    public abstract int blockHorizontalAlignment();

    public abstract Padding blockPadding();

    public abstract int blockTextColor();

    public abstract float blockTextSize();

    public abstract BackgroundProvider inlineBackgroundProvider();

    public abstract Padding inlinePadding();

    public abstract int inlineTextColor();

    public abstract float inlineTextSize();

    public static Builder builder(float f) {
        return new Builder(f, 0.0f, 0.0f);
    }

    public static class Builder {
        private boolean blockFitCanvas = true;
        private int blockHorizontalAlignment = 1;
        private int blockTextColor;
        private final float blockTextSize;
        private int inlineTextColor;
        private final float inlineTextSize;
        private int textColor;
        private final float textSize;

        public static /* synthetic */ Padding access$1000(Builder builder) {
            builder.getClass();
            return null;
        }

        public static /* synthetic */ BackgroundProvider access$300(Builder builder) {
            builder.getClass();
            return null;
        }

        public static /* synthetic */ BackgroundProvider access$400(Builder builder) {
            builder.getClass();
            return null;
        }

        public static /* synthetic */ BackgroundProvider access$500(Builder builder) {
            builder.getClass();
            return null;
        }

        public static /* synthetic */ Padding access$800(Builder builder) {
            builder.getClass();
            return null;
        }

        public static /* synthetic */ Padding access$900(Builder builder) {
            builder.getClass();
            return null;
        }

        public Builder(float f, float f2, float f3) {
            this.textSize = f;
            this.inlineTextSize = f2;
            this.blockTextSize = f3;
        }

        public JLatexMathTheme build() {
            return new Impl(this);
        }
    }

    public static class Impl extends JLatexMathTheme {
        private final boolean blockFitCanvas;
        private int blockHorizontalAlignment;
        private final int blockTextColor;
        private final float blockTextSize;
        private final int inlineTextColor;
        private final float inlineTextSize;
        private final int textColor;
        private final float textSize;

        @Override // io.noties.markwon.ext.latex.JLatexMathTheme
        public BackgroundProvider blockBackgroundProvider() {
            return null;
        }

        @Override // io.noties.markwon.ext.latex.JLatexMathTheme
        public Padding blockPadding() {
            return null;
        }

        @Override // io.noties.markwon.ext.latex.JLatexMathTheme
        public BackgroundProvider inlineBackgroundProvider() {
            return null;
        }

        @Override // io.noties.markwon.ext.latex.JLatexMathTheme
        public Padding inlinePadding() {
            return null;
        }

        public Impl(Builder builder) {
            this.textSize = builder.textSize;
            this.inlineTextSize = builder.inlineTextSize;
            this.blockTextSize = builder.blockTextSize;
            Builder.access$300(builder);
            Builder.access$400(builder);
            Builder.access$500(builder);
            this.blockFitCanvas = builder.blockFitCanvas;
            this.blockHorizontalAlignment = builder.blockHorizontalAlignment;
            Builder.access$800(builder);
            Builder.access$900(builder);
            Builder.access$1000(builder);
            this.textColor = builder.textColor;
            this.inlineTextColor = builder.inlineTextColor;
            this.blockTextColor = builder.blockTextColor;
        }

        @Override // io.noties.markwon.ext.latex.JLatexMathTheme
        public float inlineTextSize() {
            float f = this.inlineTextSize;
            return f > 0.0f ? f : this.textSize;
        }

        @Override // io.noties.markwon.ext.latex.JLatexMathTheme
        public float blockTextSize() {
            float f = this.blockTextSize;
            return f > 0.0f ? f : this.textSize;
        }

        @Override // io.noties.markwon.ext.latex.JLatexMathTheme
        public boolean blockFitCanvas() {
            return this.blockFitCanvas;
        }

        @Override // io.noties.markwon.ext.latex.JLatexMathTheme
        public int blockHorizontalAlignment() {
            return this.blockHorizontalAlignment;
        }

        @Override // io.noties.markwon.ext.latex.JLatexMathTheme
        public int inlineTextColor() {
            int i = this.inlineTextColor;
            return i != 0 ? i : this.textColor;
        }

        @Override // io.noties.markwon.ext.latex.JLatexMathTheme
        public int blockTextColor() {
            int i = this.blockTextColor;
            return i != 0 ? i : this.textColor;
        }
    }
}
