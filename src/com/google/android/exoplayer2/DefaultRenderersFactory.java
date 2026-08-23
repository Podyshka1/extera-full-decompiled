package com.google.android.exoplayer2;

import android.content.Context;
import android.opengl.EGLContext;
import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.audio.AudioCapabilities;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.audio.MediaCodecAudioRenderer;
import com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer;
import com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer;
import com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer;
import com.google.android.exoplayer2.mediacodec.DefaultMediaCodecAdapterFactory;
import com.google.android.exoplayer2.mediacodec.MediaCodecAdapter;
import com.google.android.exoplayer2.mediacodec.MediaCodecSelector;
import com.google.android.exoplayer2.metadata.MetadataOutput;
import com.google.android.exoplayer2.metadata.MetadataRenderer;
import com.google.android.exoplayer2.text.TextOutput;
import com.google.android.exoplayer2.text.TextRenderer;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.video.MediaCodecVideoRenderer;
import com.google.android.exoplayer2.video.VideoRendererEventListener;
import com.google.android.exoplayer2.video.spherical.CameraMotionRenderer;
import java.util.ArrayList;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultRenderersFactory implements RenderersFactory {
    private final Context context;
    private boolean enableAudioTrackPlaybackParams;
    private boolean enableDecoderFallback;
    private boolean enableFloatOutput;
    private boolean enableOffload;
    private final DefaultMediaCodecAdapterFactory codecAdapterFactory = new DefaultMediaCodecAdapterFactory();
    private int extensionRendererMode = 0;
    private long allowedVideoJoiningTimeMs = 5000;
    private MediaCodecSelector mediaCodecSelector = MediaCodecSelector.DEFAULT;

    public void buildMiscellaneousRenderers(Context context, Handler handler, int i, ArrayList<Renderer> arrayList) {
    }

    public DefaultRenderersFactory(Context context) {
        this.context = context;
    }

    public DefaultRenderersFactory setExtensionRendererMode(int i) {
        this.extensionRendererMode = i;
        return this;
    }

    @Override // com.google.android.exoplayer2.RenderersFactory
    public Renderer[] createRenderers(Handler handler, EGLContext eGLContext, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput) {
        ArrayList<Renderer> arrayList = new ArrayList<>();
        buildVideoRenderers(this.context, eGLContext, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, handler, videoRendererEventListener, this.allowedVideoJoiningTimeMs, arrayList);
        AudioSink audioSinkBuildAudioSink = buildAudioSink(this.context, this.enableFloatOutput, this.enableAudioTrackPlaybackParams, this.enableOffload);
        if (audioSinkBuildAudioSink != null) {
            buildAudioRenderers(this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, audioSinkBuildAudioSink, handler, audioRendererEventListener, arrayList);
        }
        buildTextRenderers(this.context, textOutput, handler.getLooper(), this.extensionRendererMode, arrayList);
        buildMetadataRenderers(this.context, metadataOutput, handler.getLooper(), this.extensionRendererMode, arrayList);
        buildCameraMotionRenderers(this.context, this.extensionRendererMode, arrayList);
        buildMiscellaneousRenderers(this.context, handler, this.extensionRendererMode, arrayList);
        return (Renderer[]) arrayList.toArray(new Renderer[0]);
    }

    public void buildVideoRenderers(Context context, EGLContext eGLContext, int i, MediaCodecSelector mediaCodecSelector, boolean z, Handler handler, VideoRendererEventListener videoRendererEventListener, long j, ArrayList<Renderer> arrayList) {
        String str;
        Integer num;
        Class cls;
        int i2;
        Class cls2 = Integer.TYPE;
        Class cls3 = Long.TYPE;
        arrayList.add(new MediaCodecVideoRenderer(context, eGLContext, getCodecAdapterFactory(), mediaCodecSelector, j, z, handler, videoRendererEventListener, 50));
        if (i == 0) {
            return;
        }
        int size = arrayList.size();
        if (i == 2) {
            size--;
        }
        try {
            try {
                cls = cls3;
                try {
                    num = 50;
                    try {
                        i2 = size + 1;
                        try {
                            arrayList.add(size, (Renderer) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(cls, Handler.class, VideoRendererEventListener.class, cls2).newInstance(Long.valueOf(j), handler, videoRendererEventListener, 50));
                            str = "DefaultRenderersFactory";
                        } catch (ClassNotFoundException unused) {
                            str = "DefaultRenderersFactory";
                        }
                    } catch (ClassNotFoundException unused2) {
                        str = "DefaultRenderersFactory";
                    }
                    try {
                        Log.m272i(str, "Loaded LibvpxVideoRenderer.");
                    } catch (ClassNotFoundException unused3) {
                        size = i2;
                        i2 = size;
                    }
                } catch (ClassNotFoundException unused4) {
                    str = "DefaultRenderersFactory";
                    num = 50;
                }
            } catch (Exception e) {
                Make$Map$$ExternalSyntheticBUOutline0.m877m("Error instantiating VP9 extension", e);
                return;
            }
        } catch (ClassNotFoundException unused5) {
            str = "DefaultRenderersFactory";
            num = 50;
            cls = cls3;
        }
        try {
            arrayList.add(i2, (Renderer) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(cls, Handler.class, VideoRendererEventListener.class, cls2).newInstance(Long.valueOf(j), handler, videoRendererEventListener, num));
            Log.m272i(str, "Loaded Libgav1VideoRenderer.");
        } catch (ClassNotFoundException unused6) {
        } catch (Exception e2) {
            Make$Map$$ExternalSyntheticBUOutline0.m877m("Error instantiating AV1 extension", e2);
        }
    }

    public void buildAudioRenderers(Context context, int i, MediaCodecSelector mediaCodecSelector, boolean z, AudioSink audioSink, Handler handler, AudioRendererEventListener audioRendererEventListener, ArrayList<Renderer> arrayList) {
        int i2;
        int i3;
        int i4;
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
            } catch (ClassNotFoundException unused) {
            }
            try {
                arrayList.add(size, (Renderer) Class.forName("com.google.android.exoplayer2.decoder.midi.MidiRenderer").getConstructor(null).newInstance(null));
                Log.m272i("DefaultRenderersFactory", "Loaded MidiRenderer.");
            } catch (ClassNotFoundException unused2) {
                size = i2;
                i2 = size;
            }
            try {
                try {
                    i3 = i2 + 1;
                    try {
                        arrayList.add(i2, (Renderer) LibopusAudioRenderer.class.getConstructor(Handler.class, AudioRendererEventListener.class, AudioSink.class).newInstance(handler, audioRendererEventListener, audioSink));
                        Log.m272i("DefaultRenderersFactory", "Loaded LibopusAudioRenderer.");
                    } catch (ClassNotFoundException unused3) {
                        i2 = i3;
                        i3 = i2;
                    }
                } catch (Exception e) {
                    Make$Map$$ExternalSyntheticBUOutline0.m877m("Error instantiating Opus extension", e);
                    return;
                }
            } catch (ClassNotFoundException unused4) {
            }
            try {
                try {
                    i4 = i3 + 1;
                    try {
                        arrayList.add(i3, (Renderer) LibflacAudioRenderer.class.getConstructor(Handler.class, AudioRendererEventListener.class, AudioSink.class).newInstance(handler, audioRendererEventListener, audioSink));
                        Log.m272i("DefaultRenderersFactory", "Loaded LibflacAudioRenderer.");
                    } catch (ClassNotFoundException unused5) {
                        i3 = i4;
                        i4 = i3;
                    }
                } catch (ClassNotFoundException unused6) {
                }
                try {
                    arrayList.add(i4, (Renderer) FfmpegAudioRenderer.class.getConstructor(Handler.class, AudioRendererEventListener.class, AudioSink.class).newInstance(handler, audioRendererEventListener, audioSink));
                    Log.m272i("DefaultRenderersFactory", "Loaded FfmpegAudioRenderer.");
                } catch (ClassNotFoundException unused7) {
                } catch (Exception e2) {
                    Make$Map$$ExternalSyntheticBUOutline0.m877m("Error instantiating FFmpeg extension", e2);
                }
            } catch (Exception e3) {
                Make$Map$$ExternalSyntheticBUOutline0.m877m("Error instantiating FLAC extension", e3);
            }
        } catch (Exception e4) {
            Make$Map$$ExternalSyntheticBUOutline0.m877m("Error instantiating MIDI extension", e4);
        }
    }

    public void buildTextRenderers(Context context, TextOutput textOutput, Looper looper, int i, ArrayList<Renderer> arrayList) {
        arrayList.add(new TextRenderer(textOutput, looper));
    }

    public void buildMetadataRenderers(Context context, MetadataOutput metadataOutput, Looper looper, int i, ArrayList<Renderer> arrayList) {
        arrayList.add(new MetadataRenderer(metadataOutput, looper));
    }

    public void buildCameraMotionRenderers(Context context, int i, ArrayList<Renderer> arrayList) {
        arrayList.add(new CameraMotionRenderer());
    }

    public AudioSink buildAudioSink(Context context, boolean z, boolean z2, boolean z3) {
        return new DefaultAudioSink.Builder().setAudioCapabilities(AudioCapabilities.getCapabilities(context)).setEnableFloatOutput(z).setEnableAudioTrackPlaybackParams(z2).setOffloadMode(z3 ? 1 : 0).build();
    }

    public MediaCodecAdapter.Factory getCodecAdapterFactory() {
        return this.codecAdapterFactory;
    }
}
