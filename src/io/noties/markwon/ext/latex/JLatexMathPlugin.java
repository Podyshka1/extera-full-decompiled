package io.noties.markwon.ext.latex;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Spanned;
import android.util.Log;
import android.widget.TextView;
import io.noties.markwon.AbstractMarkwonPlugin;
import io.noties.markwon.MarkwonPlugin;
import io.noties.markwon.MarkwonVisitor;
import io.noties.markwon.ext.latex.JLatexMathBlockParser;
import io.noties.markwon.ext.latex.JLatexMathBlockParserLegacy;
import io.noties.markwon.ext.latex.JLatexMathTheme;
import io.noties.markwon.image.AsyncDrawable;
import io.noties.markwon.image.AsyncDrawableLoader;
import io.noties.markwon.image.AsyncDrawableScheduler;
import io.noties.markwon.image.ImageSizeResolver;
import io.noties.markwon.inlineparser.MarkwonInlineParserPlugin;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.commonmark.parser.Parser;
import ru.noties.jlatexmath.JLatexMathDrawable;

/* JADX INFO: loaded from: classes5.dex */
public class JLatexMathPlugin extends AbstractMarkwonPlugin {
    final Config config;
    private final ImageSizeResolver inlineImageSizeResolver = new InlineImageSizeResolver();
    private final JLatexBlockImageSizeResolver jLatexBlockImageSizeResolver;
    private final JLatextAsyncDrawableLoader jLatextAsyncDrawableLoader;

    public interface BuilderConfigure {
        void configureBuilder(Builder builder);
    }

    public interface ErrorHandler {
    }

    public static JLatexMathPlugin create(float f, BuilderConfigure builderConfigure) {
        Builder builder = builder(f);
        builderConfigure.configureBuilder(builder);
        return new JLatexMathPlugin(builder.build());
    }

    public static Builder builder(float f) {
        return new Builder(JLatexMathTheme.builder(f));
    }

    public static class Config {
        final boolean blocksEnabled;
        final boolean blocksLegacy;
        final ExecutorService executorService;
        final boolean inlinesEnabled;
        final JLatexMathTheme theme;

        public Config(Builder builder) {
            this.theme = builder.theme.build();
            this.blocksEnabled = builder.blocksEnabled;
            this.blocksLegacy = builder.blocksLegacy;
            this.inlinesEnabled = builder.inlinesEnabled;
            Builder.access$400(builder);
            ExecutorService executorService = builder.executorService;
            this.executorService = executorService == null ? Executors.newCachedThreadPool() : executorService;
        }
    }

    public JLatexMathPlugin(Config config) {
        this.config = config;
        this.jLatextAsyncDrawableLoader = new JLatextAsyncDrawableLoader(config);
        this.jLatexBlockImageSizeResolver = new JLatexBlockImageSizeResolver(config.theme.blockFitCanvas());
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void configure(MarkwonPlugin.Registry registry) {
        if (this.config.inlinesEnabled) {
            ((MarkwonInlineParserPlugin) registry.require(MarkwonInlineParserPlugin.class)).factoryBuilder().addInlineProcessor(new JLatexMathInlineProcessor());
        }
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void configureParser(Parser.Builder builder) {
        Config config = this.config;
        if (config.blocksEnabled) {
            if (config.blocksLegacy) {
                builder.customBlockParserFactory(new JLatexMathBlockParserLegacy.Factory());
            } else {
                builder.customBlockParserFactory(new JLatexMathBlockParser.Factory());
            }
        }
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void configureVisitor(MarkwonVisitor.Builder builder) {
        addBlockVisitor(builder);
        addInlineVisitor(builder);
    }

    private void addBlockVisitor(MarkwonVisitor.Builder builder) {
        if (this.config.blocksEnabled) {
            builder.on(JLatexMathBlock.class, new MarkwonVisitor.NodeVisitor<JLatexMathBlock>() { // from class: io.noties.markwon.ext.latex.JLatexMathPlugin.1
                @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
                public void visit(MarkwonVisitor markwonVisitor, JLatexMathBlock jLatexMathBlock) {
                    markwonVisitor.blockStart(jLatexMathBlock);
                    String strLatex = jLatexMathBlock.latex();
                    int length = markwonVisitor.length();
                    markwonVisitor.builder().append(JLatexMathPlugin.prepareLatexTextPlaceholder(strLatex));
                    markwonVisitor.setSpans(length, new JLatexAsyncDrawableSpan(markwonVisitor.configuration().theme(), new JLatextAsyncDrawable(strLatex, JLatexMathPlugin.this.jLatextAsyncDrawableLoader, JLatexMathPlugin.this.jLatexBlockImageSizeResolver, null, true), JLatexMathPlugin.this.config.theme.blockTextColor()));
                    markwonVisitor.blockEnd(jLatexMathBlock);
                }
            });
        }
    }

    private void addInlineVisitor(MarkwonVisitor.Builder builder) {
        if (this.config.inlinesEnabled) {
            builder.on(JLatexMathNode.class, new MarkwonVisitor.NodeVisitor<JLatexMathNode>() { // from class: io.noties.markwon.ext.latex.JLatexMathPlugin.2
                @Override // io.noties.markwon.MarkwonVisitor.NodeVisitor
                public void visit(MarkwonVisitor markwonVisitor, JLatexMathNode jLatexMathNode) {
                    String strLatex = jLatexMathNode.latex();
                    int length = markwonVisitor.length();
                    markwonVisitor.builder().append(JLatexMathPlugin.prepareLatexTextPlaceholder(strLatex));
                    markwonVisitor.setSpans(length, new JLatexInlineAsyncDrawableSpan(markwonVisitor.configuration().theme(), new JLatextAsyncDrawable(strLatex, JLatexMathPlugin.this.jLatextAsyncDrawableLoader, JLatexMathPlugin.this.inlineImageSizeResolver, null, false), JLatexMathPlugin.this.config.theme.inlineTextColor()));
                }
            });
        }
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void beforeSetText(TextView textView, Spanned spanned) {
        AsyncDrawableScheduler.unschedule(textView);
    }

    @Override // io.noties.markwon.AbstractMarkwonPlugin, io.noties.markwon.MarkwonPlugin
    public void afterSetText(TextView textView) {
        AsyncDrawableScheduler.schedule(textView);
    }

    public static String prepareLatexTextPlaceholder(String str) {
        return str.replace('\n', ' ').trim();
    }

    public static class Builder {
        private boolean blocksEnabled = true;
        private boolean blocksLegacy;
        private ExecutorService executorService;
        private boolean inlinesEnabled;
        private final JLatexMathTheme.Builder theme;

        public static /* synthetic */ ErrorHandler access$400(Builder builder) {
            builder.getClass();
            return null;
        }

        public Builder(JLatexMathTheme.Builder builder) {
            this.theme = builder;
        }

        public Builder inlinesEnabled(boolean z) {
            this.inlinesEnabled = z;
            return this;
        }

        public Config build() {
            return new Config(this);
        }
    }

    public static class JLatextAsyncDrawableLoader extends AsyncDrawableLoader {
        private final Config config;
        private final Handler handler = new Handler(Looper.getMainLooper());
        private final Map<AsyncDrawable, Future<?>> cache = new HashMap(3);

        @Override // io.noties.markwon.image.AsyncDrawableLoader
        public Drawable placeholder(AsyncDrawable asyncDrawable) {
            return null;
        }

        public JLatextAsyncDrawableLoader(Config config) {
            this.config = config;
        }

        @Override // io.noties.markwon.image.AsyncDrawableLoader
        public void load(final AsyncDrawable asyncDrawable) {
            if (this.cache.get(asyncDrawable) == null) {
                this.cache.put(asyncDrawable, this.config.executorService.submit(new Runnable() { // from class: io.noties.markwon.ext.latex.JLatexMathPlugin.JLatextAsyncDrawableLoader.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            execute();
                        } catch (Throwable th) {
                            JLatextAsyncDrawableLoader.this.config.getClass();
                            Log.e("JLatexMathPlugin", "Error displaying latex: `" + asyncDrawable.getDestination() + "`", th);
                        }
                    }

                    private void execute() {
                        JLatextAsyncDrawable jLatextAsyncDrawable = (JLatextAsyncDrawable) asyncDrawable;
                        boolean zIsBlock = jLatextAsyncDrawable.isBlock();
                        JLatextAsyncDrawableLoader jLatextAsyncDrawableLoader = JLatextAsyncDrawableLoader.this;
                        JLatextAsyncDrawableLoader.this.setResult(asyncDrawable, zIsBlock ? jLatextAsyncDrawableLoader.createBlockDrawable(jLatextAsyncDrawable) : jLatextAsyncDrawableLoader.createInlineDrawable(jLatextAsyncDrawable));
                    }
                }));
            }
        }

        @Override // io.noties.markwon.image.AsyncDrawableLoader
        public void cancel(AsyncDrawable asyncDrawable) {
            Future<?> futureRemove = this.cache.remove(asyncDrawable);
            if (futureRemove != null) {
                futureRemove.cancel(true);
            }
            this.handler.removeCallbacksAndMessages(asyncDrawable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public JLatexMathDrawable createBlockDrawable(JLatextAsyncDrawable jLatextAsyncDrawable) {
            String destination = jLatextAsyncDrawable.getDestination();
            JLatexMathTheme jLatexMathTheme = this.config.theme;
            jLatexMathTheme.blockBackgroundProvider();
            jLatexMathTheme.blockPadding();
            int iBlockTextColor = jLatexMathTheme.blockTextColor();
            JLatexMathDrawable.Builder builderAlign = JLatexMathDrawable.builder(destination).textSize(jLatexMathTheme.blockTextSize()).align(jLatexMathTheme.blockHorizontalAlignment());
            if (iBlockTextColor != 0) {
                builderAlign.color(iBlockTextColor);
            }
            return builderAlign.build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public JLatexMathDrawable createInlineDrawable(JLatextAsyncDrawable jLatextAsyncDrawable) {
            String destination = jLatextAsyncDrawable.getDestination();
            JLatexMathTheme jLatexMathTheme = this.config.theme;
            jLatexMathTheme.inlineBackgroundProvider();
            jLatexMathTheme.inlinePadding();
            int iInlineTextColor = jLatexMathTheme.inlineTextColor();
            JLatexMathDrawable.Builder builderTextSize = JLatexMathDrawable.builder(destination).textSize(jLatexMathTheme.inlineTextSize());
            if (iInlineTextColor != 0) {
                builderTextSize.color(iInlineTextColor);
            }
            return builderTextSize.build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setResult(final AsyncDrawable asyncDrawable, final Drawable drawable) {
            this.handler.postAtTime(new Runnable() { // from class: io.noties.markwon.ext.latex.JLatexMathPlugin.JLatextAsyncDrawableLoader.2
                @Override // java.lang.Runnable
                public void run() {
                    if (JLatextAsyncDrawableLoader.this.cache.remove(asyncDrawable) == null || !asyncDrawable.isAttached()) {
                        return;
                    }
                    asyncDrawable.setResult(drawable);
                }
            }, asyncDrawable, SystemClock.uptimeMillis());
        }
    }

    public static class InlineImageSizeResolver extends ImageSizeResolver {
        private InlineImageSizeResolver() {
        }

        @Override // io.noties.markwon.image.ImageSizeResolver
        public Rect resolveImageSize(AsyncDrawable asyncDrawable) {
            Rect bounds = asyncDrawable.getResult().getBounds();
            int lastKnownCanvasWidth = asyncDrawable.getLastKnownCanvasWidth();
            int iWidth = bounds.width();
            if (iWidth <= lastKnownCanvasWidth) {
                return bounds;
            }
            return new Rect(0, 0, lastKnownCanvasWidth, (int) ((lastKnownCanvasWidth / (iWidth / bounds.height())) + 0.5f));
        }
    }
}
