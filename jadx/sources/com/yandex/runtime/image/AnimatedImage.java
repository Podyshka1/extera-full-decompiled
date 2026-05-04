package com.yandex.runtime.image;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class AnimatedImage {
    public static final int INFINITE_ANIMATION = 0;
    private final List<Frame> frames;
    private final int loopCount;

    public AnimatedImage(int i, List<Frame> list) {
        this.frames = list;
        this.loopCount = i;
    }

    public AnimatedImage(int i) {
        this(i, new ArrayList());
    }

    public void addFrame(ImageProvider imageProvider, long j) {
        this.frames.add(new Frame(imageProvider, j));
    }

    public List<Frame> getFrames() {
        return this.frames;
    }

    public int getLoopCount() {
        return this.loopCount;
    }
}
