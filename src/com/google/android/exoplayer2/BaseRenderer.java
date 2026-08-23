package com.google.android.exoplayer2;

import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.source.SampleStream;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.MediaClock;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseRenderer implements Renderer, RendererCapabilities {
    private RendererConfiguration configuration;
    private int index;
    private long lastResetPositionUs;
    private PlayerId playerId;
    private int state;
    private SampleStream stream;
    private Format[] streamFormats;
    private boolean streamIsFinal;
    private long streamOffsetUs;
    private boolean throwRendererExceptionIsExecuting;
    private final int trackType;
    private final FormatHolder formatHolder = new FormatHolder();
    private long readingPositionUs = Long.MIN_VALUE;

    @Override // com.google.android.exoplayer2.Renderer
    public final RendererCapabilities getCapabilities() {
        return this;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public MediaClock getMediaClock() {
        return null;
    }

    @Override // com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i, Object obj) {
    }

    public abstract void onDisabled();

    public void onEnabled(boolean z, boolean z2) {
    }

    public abstract void onPositionReset(long j, boolean z);

    public void onReset() {
    }

    public void onStarted() {
    }

    public void onStopped() {
    }

    public void onStreamChanged(Format[] formatArr, long j, long j2) {
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public int supportsMixedMimeTypeAdaptation() {
        return 0;
    }

    public BaseRenderer(int i) {
        this.trackType = i;
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public final int getTrackType() {
        return this.trackType;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void init(int i, PlayerId playerId) {
        this.index = i;
        this.playerId = playerId;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final int getState() {
        return this.state;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void enable(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, long j, boolean z, boolean z2, long j2, long j3) {
        Assertions.checkState(this.state == 0);
        this.configuration = rendererConfiguration;
        this.state = 1;
        onEnabled(z, z2);
        replaceStream(formatArr, sampleStream, j2, j3);
        resetPosition(j, z);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void start() {
        Assertions.checkState(this.state == 1);
        this.state = 2;
        onStarted();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void replaceStream(Format[] formatArr, SampleStream sampleStream, long j, long j2) {
        Assertions.checkState(!this.streamIsFinal);
        this.stream = sampleStream;
        if (this.readingPositionUs == Long.MIN_VALUE) {
            this.readingPositionUs = j;
        }
        this.streamFormats = formatArr;
        this.streamOffsetUs = j2;
        onStreamChanged(formatArr, j, j2);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final SampleStream getStream() {
        return this.stream;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final boolean hasReadStreamToEnd() {
        return this.readingPositionUs == Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final long getReadingPositionUs() {
        return this.readingPositionUs;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void setCurrentStreamFinal() {
        this.streamIsFinal = true;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final boolean isCurrentStreamFinal() {
        return this.streamIsFinal;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void maybeThrowStreamError() {
        ((SampleStream) Assertions.checkNotNull(this.stream)).maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void resetPosition(long j) {
        resetPosition(j, false);
    }

    private void resetPosition(long j, boolean z) {
        this.streamIsFinal = false;
        this.lastResetPositionUs = j;
        this.readingPositionUs = j;
        onPositionReset(j, z);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void stop() {
        Assertions.checkState(this.state == 2);
        this.state = 1;
        onStopped();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void disable() {
        Assertions.checkState(this.state == 1);
        this.formatHolder.clear();
        this.state = 0;
        this.stream = null;
        this.streamFormats = null;
        this.streamIsFinal = false;
        onDisabled();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public final void reset() {
        Assertions.checkState(this.state == 0);
        this.formatHolder.clear();
        onReset();
    }

    public final long getLastResetPositionUs() {
        return this.lastResetPositionUs;
    }

    public final FormatHolder getFormatHolder() {
        this.formatHolder.clear();
        return this.formatHolder;
    }

    public final Format[] getStreamFormats() {
        return (Format[]) Assertions.checkNotNull(this.streamFormats);
    }

    public final RendererConfiguration getConfiguration() {
        return (RendererConfiguration) Assertions.checkNotNull(this.configuration);
    }

    public final int getIndex() {
        return this.index;
    }

    public final PlayerId getPlayerId() {
        return (PlayerId) Assertions.checkNotNull(this.playerId);
    }

    public final ExoPlaybackException createRendererException(Throwable th, Format format, int i) {
        return createRendererException(th, format, false, i);
    }

    public final ExoPlaybackException createRendererException(Throwable th, Format format, boolean z, int i) {
        int formatSupport;
        if (format == null || this.throwRendererExceptionIsExecuting) {
            formatSupport = 4;
        } else {
            this.throwRendererExceptionIsExecuting = true;
            try {
                formatSupport = RendererCapabilities.getFormatSupport(supportsFormat(format));
            } catch (ExoPlaybackException unused) {
                formatSupport = 4;
            } finally {
                this.throwRendererExceptionIsExecuting = false;
            }
        }
        return ExoPlaybackException.createForRenderer(th, getName(), getIndex(), format, formatSupport, z, i);
    }

    public final int readSource(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
        int data = ((SampleStream) Assertions.checkNotNull(this.stream)).readData(formatHolder, decoderInputBuffer, i);
        if (data != -4) {
            if (data == -5) {
                Format format = (Format) Assertions.checkNotNull(formatHolder.format);
                if (format.subsampleOffsetUs != LongCompanionObject.MAX_VALUE) {
                    formatHolder.format = format.buildUpon().setSubsampleOffsetUs(format.subsampleOffsetUs + this.streamOffsetUs).build();
                }
            }
            return data;
        }
        if (decoderInputBuffer.isEndOfStream()) {
            this.readingPositionUs = Long.MIN_VALUE;
            return this.streamIsFinal ? -4 : -3;
        }
        long j = decoderInputBuffer.timeUs + this.streamOffsetUs;
        decoderInputBuffer.timeUs = j;
        this.readingPositionUs = Math.max(this.readingPositionUs, j);
        return data;
    }

    public int skipSource(long j) {
        return ((SampleStream) Assertions.checkNotNull(this.stream)).skipData(j - this.streamOffsetUs);
    }

    public final boolean isSourceReady() {
        return hasReadStreamToEnd() ? this.streamIsFinal : ((SampleStream) Assertions.checkNotNull(this.stream)).isReady();
    }
}
