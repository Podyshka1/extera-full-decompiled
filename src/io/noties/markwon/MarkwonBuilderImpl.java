package io.noties.markwon;

import android.content.Context;
import android.widget.TextView;
import io.noties.markwon.Markwon;
import io.noties.markwon.MarkwonConfiguration;
import io.noties.markwon.MarkwonSpansFactoryImpl;
import io.noties.markwon.MarkwonVisitorImpl;
import io.noties.markwon.core.MarkwonTheme;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.commonmark.parser.Parser;

/* JADX INFO: loaded from: classes5.dex */
class MarkwonBuilderImpl implements Markwon.Builder {
    private final Context context;
    private final List<MarkwonPlugin> plugins = new ArrayList(3);
    private TextView.BufferType bufferType = TextView.BufferType.SPANNABLE;
    private boolean fallbackToRawInputWhenEmpty = true;

    public MarkwonBuilderImpl(Context context) {
        this.context = context;
    }

    @Override // io.noties.markwon.Markwon.Builder
    public Markwon.Builder usePlugin(MarkwonPlugin markwonPlugin) {
        this.plugins.add(markwonPlugin);
        return this;
    }

    @Override // io.noties.markwon.Markwon.Builder
    public Markwon build() {
        if (this.plugins.isEmpty()) {
            Segment$$ExternalSyntheticBUOutline1.m848m("No plugins were added to this builder. Use #usePlugin method to add them");
            return null;
        }
        List<MarkwonPlugin> listPreparePlugins = preparePlugins(this.plugins);
        Parser.Builder builder = new Parser.Builder();
        MarkwonTheme.Builder builderBuilderWithDefaults = MarkwonTheme.builderWithDefaults(this.context);
        MarkwonConfiguration.Builder builder2 = new MarkwonConfiguration.Builder();
        MarkwonVisitorImpl.BuilderImpl builderImpl = new MarkwonVisitorImpl.BuilderImpl();
        MarkwonSpansFactoryImpl.BuilderImpl builderImpl2 = new MarkwonSpansFactoryImpl.BuilderImpl();
        for (MarkwonPlugin markwonPlugin : listPreparePlugins) {
            markwonPlugin.configureParser(builder);
            markwonPlugin.configureTheme(builderBuilderWithDefaults);
            markwonPlugin.configureConfiguration(builder2);
            markwonPlugin.configureVisitor(builderImpl);
            markwonPlugin.configureSpansFactory(builderImpl2);
        }
        MarkwonConfiguration markwonConfigurationBuild = builder2.build(builderBuilderWithDefaults.build(), builderImpl2.build());
        return new MarkwonImpl(this.bufferType, null, builder.build(), MarkwonVisitorFactory.create(builderImpl, markwonConfigurationBuild), markwonConfigurationBuild, Collections.unmodifiableList(listPreparePlugins), this.fallbackToRawInputWhenEmpty);
    }

    private static List<MarkwonPlugin> preparePlugins(List<MarkwonPlugin> list) {
        return new RegistryImpl(list).process();
    }
}
