package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.util.Log;
import androidx.media3.decoder.ffmpeg.ExperimentalFfmpegVideoRenderer;
import androidx.media3.decoder.ffmpeg.FfmpegAudioRenderer;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.audio.MediaCodecAudioRenderer;
import androidx.media3.exoplayer.image.BitmapFactoryImageDecoder;
import androidx.media3.exoplayer.image.ImageDecoder;
import androidx.media3.exoplayer.image.ImageRenderer;
import androidx.media3.exoplayer.mediacodec.DefaultMediaCodecAdapterFactory;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.metadata.MetadataRenderer;
import androidx.media3.exoplayer.text.TextOutput;
import androidx.media3.exoplayer.text.TextRenderer;
import androidx.media3.exoplayer.video.MediaCodecVideoRenderer;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionRenderer;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import org.mvel2.asm.Constants$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultRenderersFactory implements RenderersFactory {
    private final DefaultMediaCodecAdapterFactory codecAdapterFactory;
    private final Context context;
    private boolean enableAudioTrackPlaybackParams;
    private boolean enableDecoderFallback;
    private boolean enableFloatOutput;
    private boolean enableMediaCodecBufferDecodeOnlyFlag;
    private boolean enableMediaCodecVideoRendererPrewarming;
    private boolean parseAv1SampleDependencies;
    private int extensionRendererMode = 0;
    private long allowedVideoJoiningTimeMs = 5000;
    private MediaCodecSelector mediaCodecSelector = MediaCodecSelector.DEFAULT;
    private long lateThresholdToDropDecoderInputUs = -9223372036854775807L;

    public void buildMiscellaneousRenderers(Context context, Handler handler, int i, ArrayList<Renderer> arrayList) {
    }

    public DefaultRenderersFactory(Context context) {
        this.context = context;
        this.codecAdapterFactory = new DefaultMediaCodecAdapterFactory(context);
    }

    public final DefaultRenderersFactory setExtensionRendererMode(int i) {
        this.extensionRendererMode = i;
        return this;
    }

    @Override // androidx.media3.exoplayer.RenderersFactory
    public Renderer[] createRenderers(Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput) {
        Handler handler2;
        ArrayList<Renderer> arrayList = new ArrayList<>();
        buildVideoRenderers(this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, handler, videoRendererEventListener, this.allowedVideoJoiningTimeMs, arrayList);
        AudioSink audioSinkBuildAudioSink = buildAudioSink(this.context, this.enableFloatOutput, this.enableAudioTrackPlaybackParams);
        if (audioSinkBuildAudioSink != null) {
            handler2 = handler;
            buildAudioRenderers(this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, audioSinkBuildAudioSink, handler2, audioRendererEventListener, arrayList);
        } else {
            handler2 = handler;
        }
        buildTextRenderers(this.context, textOutput, handler2.getLooper(), this.extensionRendererMode, arrayList);
        buildMetadataRenderers(this.context, metadataOutput, handler2.getLooper(), this.extensionRendererMode, arrayList);
        buildCameraMotionRenderers(this.context, this.extensionRendererMode, arrayList);
        buildImageRenderers(this.context, arrayList);
        buildMiscellaneousRenderers(this.context, handler2, this.extensionRendererMode, arrayList);
        return (Renderer[]) arrayList.toArray(new Renderer[0]);
    }

    public void buildVideoRenderers(Context context, int i, MediaCodecSelector mediaCodecSelector, boolean z, Handler handler, VideoRendererEventListener videoRendererEventListener, long j, ArrayList<Renderer> arrayList) {
        char c2;
        int i2;
        int i3;
        Renderer renderer;
        Class<?> cls = Integer.TYPE;
        Class<?> cls2 = Long.TYPE;
        MediaCodecVideoRenderer.Builder builderExperimentalSetLateThresholdToDropDecoderInputUs = new MediaCodecVideoRenderer.Builder(context).setCodecAdapterFactory(getCodecAdapterFactory()).setMediaCodecSelector(mediaCodecSelector).setAllowedJoiningTimeMs(j).setEnableDecoderFallback(z).setEventHandler(handler).setEventListener(videoRendererEventListener).setMaxDroppedFramesToNotify(50).experimentalSetParseAv1SampleDependencies(this.parseAv1SampleDependencies).experimentalSetLateThresholdToDropDecoderInputUs(this.lateThresholdToDropDecoderInputUs);
        if (Build.VERSION.SDK_INT >= 34) {
            builderExperimentalSetLateThresholdToDropDecoderInputUs = builderExperimentalSetLateThresholdToDropDecoderInputUs.experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(this.enableMediaCodecBufferDecodeOnlyFlag);
        }
        arrayList.add(builderExperimentalSetLateThresholdToDropDecoderInputUs.build());
        if (i == 0) {
            return;
        }
        int size = arrayList.size();
        if (i == 2) {
            size--;
        }
        try {
            try {
                c2 = 3;
                try {
                    i2 = size + 1;
                } catch (ClassNotFoundException unused) {
                }
                try {
                    arrayList.add(size, (Renderer) Class.forName("androidx.media3.decoder.vp9.LibvpxVideoRenderer").getConstructor(cls2, Handler.class, VideoRendererEventListener.class, cls).newInstance(Long.valueOf(j), handler, videoRendererEventListener, 50));
                    Log.m162i("DefaultRenderersFactory", "Loaded LibvpxVideoRenderer.");
                } catch (ClassNotFoundException unused2) {
                    size = i2;
                    i2 = size;
                }
            } catch (Exception e) {
                Constants$$ExternalSyntheticBUOutline0.m958m("Error instantiating VP9 extension", e);
                return;
            }
        } catch (ClassNotFoundException unused3) {
            c2 = 3;
        }
        try {
            try {
                Class<?> cls3 = Class.forName("androidx.media3.decoder.av1.Libgav1VideoRenderer");
                Class<?>[] clsArr = new Class[4];
                clsArr[0] = cls2;
                clsArr[1] = Handler.class;
                clsArr[2] = VideoRendererEventListener.class;
                clsArr[c2] = cls;
                Constructor<?> constructor = cls3.getConstructor(clsArr);
                Object[] objArr = new Object[4];
                objArr[0] = Long.valueOf(j);
                objArr[1] = handler;
                objArr[2] = videoRendererEventListener;
                objArr[c2] = 50;
                renderer = (Renderer) constructor.newInstance(objArr);
                i3 = i2 + 1;
            } catch (Exception e2) {
                Constants$$ExternalSyntheticBUOutline0.m958m("Error instantiating AV1 extension", e2);
                return;
            }
        } catch (ClassNotFoundException unused4) {
        }
        try {
            arrayList.add(i2, renderer);
            Log.m162i("DefaultRenderersFactory", "Loaded Libgav1VideoRenderer.");
        } catch (ClassNotFoundException unused5) {
            i2 = i3;
            i3 = i2;
        }
        try {
            int i4 = ExperimentalFfmpegVideoRenderer.$r8$clinit;
            Class[] clsArr2 = new Class[4];
            clsArr2[0] = cls2;
            clsArr2[1] = Handler.class;
            clsArr2[2] = VideoRendererEventListener.class;
            clsArr2[c2] = cls;
            Constructor constructor2 = ExperimentalFfmpegVideoRenderer.class.getConstructor(clsArr2);
            Object[] objArr2 = new Object[4];
            objArr2[0] = Long.valueOf(j);
            objArr2[1] = handler;
            objArr2[2] = videoRendererEventListener;
            objArr2[c2] = 50;
            arrayList.add(i3, (Renderer) constructor2.newInstance(objArr2));
            Log.m162i("DefaultRenderersFactory", "Loaded FfmpegVideoRenderer.");
        } catch (ClassNotFoundException unused6) {
        } catch (Exception e3) {
            Constants$$ExternalSyntheticBUOutline0.m958m("Error instantiating FFmpeg extension", e3);
        }
    }

    public void buildAudioRenderers(Context context, int i, MediaCodecSelector mediaCodecSelector, boolean z, AudioSink audioSink, Handler handler, AudioRendererEventListener audioRendererEventListener, ArrayList<Renderer> arrayList) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        arrayList.add(new MediaCodecAudioRenderer(context, getCodecAdapterFactory(), mediaCodecSelector, z, handler, audioRendererEventListener, audioSink));
        if (i == 0) {
            return;
        }
        int size = arrayList.size();
        if (i == 2) {
            size--;
        }
        try {
            try {
                i2 = size + 1;
            } catch (Exception e) {
                Constants$$ExternalSyntheticBUOutline0.m958m("Error instantiating MIDI extension", e);
                return;
            }
        } catch (ClassNotFoundException unused) {
        }
        try {
            arrayList.add(size, (Renderer) Class.forName("androidx.media3.decoder.midi.MidiRenderer").getConstructor(Context.class, Handler.class, AudioRendererEventListener.class, AudioSink.class).newInstance(context, handler, audioRendererEventListener, audioSink));
            Log.m162i("DefaultRenderersFactory", "Loaded MidiRenderer.");
        } catch (ClassNotFoundException unused2) {
            size = i2;
            i2 = size;
        }
        try {
            try {
                i3 = i2 + 1;
                try {
                    arrayList.add(i2, (Renderer) Class.forName("androidx.media3.decoder.opus.LibopusAudioRenderer").getConstructor(Handler.class, AudioRendererEventListener.class, AudioSink.class).newInstance(handler, audioRendererEventListener, audioSink));
                    Log.m162i("DefaultRenderersFactory", "Loaded LibopusAudioRenderer.");
                } catch (ClassNotFoundException unused3) {
                    i2 = i3;
                    i3 = i2;
                }
            } catch (ClassNotFoundException unused4) {
            }
            try {
                try {
                    i4 = i3 + 1;
                } catch (Exception e2) {
                    Constants$$ExternalSyntheticBUOutline0.m958m("Error instantiating FLAC extension", e2);
                    return;
                }
            } catch (ClassNotFoundException unused5) {
            }
            try {
                arrayList.add(i3, (Renderer) Class.forName("androidx.media3.decoder.flac.LibflacAudioRenderer").getConstructor(Handler.class, AudioRendererEventListener.class, AudioSink.class).newInstance(handler, audioRendererEventListener, audioSink));
                Log.m162i("DefaultRenderersFactory", "Loaded LibflacAudioRenderer.");
            } catch (ClassNotFoundException unused6) {
                i3 = i4;
                i4 = i3;
            }
            try {
                try {
                    i5 = i4 + 1;
                } catch (ClassNotFoundException unused7) {
                }
                try {
                    arrayList.add(i4, (Renderer) FfmpegAudioRenderer.class.getConstructor(Handler.class, AudioRendererEventListener.class, AudioSink.class).newInstance(handler, audioRendererEventListener, audioSink));
                    Log.m162i("DefaultRenderersFactory", "Loaded FfmpegAudioRenderer.");
                } catch (ClassNotFoundException unused8) {
                    i4 = i5;
                    i5 = i4;
                }
                try {
                    try {
                        i6 = i5 + 1;
                    } catch (Exception e3) {
                        Constants$$ExternalSyntheticBUOutline0.m958m("Error instantiating IAMF extension", e3);
                        return;
                    }
                } catch (ClassNotFoundException unused9) {
                }
                try {
                    arrayList.add(i5, (Renderer) Class.forName("androidx.media3.decoder.iamf.LibiamfAudioRenderer").getConstructor(Context.class, Handler.class, AudioRendererEventListener.class, AudioSink.class).newInstance(context, handler, audioRendererEventListener, audioSink));
                    Log.m162i("DefaultRenderersFactory", "Loaded LibiamfAudioRenderer.");
                } catch (ClassNotFoundException unused10) {
                    i5 = i6;
                    i6 = i5;
                }
                try {
                    arrayList.add(i6, (Renderer) Class.forName("androidx.media3.decoder.mpegh.MpeghAudioRenderer").getConstructor(Handler.class, AudioRendererEventListener.class, AudioSink.class).newInstance(handler, audioRendererEventListener, audioSink));
                    Log.m162i("DefaultRenderersFactory", "Loaded MpeghAudioRenderer.");
                } catch (ClassNotFoundException unused11) {
                } catch (Exception e4) {
                    Constants$$ExternalSyntheticBUOutline0.m958m("Error instantiating MPEG-H extension", e4);
                }
            } catch (Exception e5) {
                Constants$$ExternalSyntheticBUOutline0.m958m("Error instantiating FFmpeg extension", e5);
            }
        } catch (Exception e6) {
            Constants$$ExternalSyntheticBUOutline0.m958m("Error instantiating Opus extension", e6);
        }
    }

    public void buildTextRenderers(Context context, TextOutput textOutput, Looper looper, int i, ArrayList<Renderer> arrayList) {
        arrayList.add(new TextRenderer(textOutput, looper));
    }

    public void buildMetadataRenderers(Context context, MetadataOutput metadataOutput, Looper looper, int i, ArrayList<Renderer> arrayList) {
        arrayList.add(new MetadataRenderer(metadataOutput, looper));
        arrayList.add(new MetadataRenderer(metadataOutput, looper));
    }

    public void buildCameraMotionRenderers(Context context, int i, ArrayList<Renderer> arrayList) {
        arrayList.add(new CameraMotionRenderer());
    }

    @Deprecated
    public void buildImageRenderers(ArrayList<Renderer> arrayList) {
        arrayList.add(new ImageRenderer(getImageDecoderFactory(this.context), null));
    }

    public void buildImageRenderers(Context context, ArrayList<Renderer> arrayList) {
        buildImageRenderers(arrayList);
    }

    public AudioSink buildAudioSink(Context context, boolean z, boolean z2) {
        return new DefaultAudioSink.Builder(context).setEnableFloatOutput(z).setEnableAudioTrackPlaybackParams(z2).build();
    }

    @Override // androidx.media3.exoplayer.RenderersFactory
    public Renderer createSecondaryRenderer(Renderer renderer, Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput) {
        if (renderer.getTrackType() == 2) {
            return buildSecondaryVideoRenderer(renderer, this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, handler, videoRendererEventListener, this.allowedVideoJoiningTimeMs);
        }
        return null;
    }

    public Renderer buildSecondaryVideoRenderer(Renderer renderer, Context context, int i, MediaCodecSelector mediaCodecSelector, boolean z, Handler handler, VideoRendererEventListener videoRendererEventListener, long j) {
        if (!this.enableMediaCodecVideoRendererPrewarming || renderer.getClass() != MediaCodecVideoRenderer.class) {
            return null;
        }
        MediaCodecVideoRenderer.Builder builderExperimentalSetLateThresholdToDropDecoderInputUs = new MediaCodecVideoRenderer.Builder(context).setCodecAdapterFactory(getCodecAdapterFactory()).setMediaCodecSelector(mediaCodecSelector).setAllowedJoiningTimeMs(j).setEnableDecoderFallback(z).setEventHandler(handler).setEventListener(videoRendererEventListener).setMaxDroppedFramesToNotify(50).experimentalSetParseAv1SampleDependencies(this.parseAv1SampleDependencies).experimentalSetLateThresholdToDropDecoderInputUs(this.lateThresholdToDropDecoderInputUs);
        if (Build.VERSION.SDK_INT >= 34) {
            builderExperimentalSetLateThresholdToDropDecoderInputUs = builderExperimentalSetLateThresholdToDropDecoderInputUs.experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(this.enableMediaCodecBufferDecodeOnlyFlag);
        }
        return builderExperimentalSetLateThresholdToDropDecoderInputUs.build();
    }

    public MediaCodecAdapter.Factory getCodecAdapterFactory() {
        return this.codecAdapterFactory;
    }

    public ImageDecoder.Factory getImageDecoderFactory(Context context) {
        return new BitmapFactoryImageDecoder.Factory(context);
    }
}
