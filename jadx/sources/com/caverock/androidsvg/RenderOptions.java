package com.caverock.androidsvg;

import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.SVG;

/* JADX INFO: loaded from: classes.dex */
public class RenderOptions {
    CSSParser.Ruleset css = null;
    PreserveAspectRatio preserveAspectRatio = null;
    String targetId = null;
    SVG.Box viewBox = null;
    String viewId = null;
    SVG.Box viewPort = null;

    public boolean hasCss() {
        CSSParser.Ruleset ruleset = this.css;
        return ruleset != null && ruleset.ruleCount() > 0;
    }

    public boolean hasPreserveAspectRatio() {
        return this.preserveAspectRatio != null;
    }

    public boolean hasView() {
        return this.viewId != null;
    }

    public boolean hasViewBox() {
        return this.viewBox != null;
    }

    public RenderOptions viewPort(float f, float f2, float f3, float f4) {
        this.viewPort = new SVG.Box(f, f2, f3, f4);
        return this;
    }

    public boolean hasViewPort() {
        return this.viewPort != null;
    }

    public boolean hasTarget() {
        return this.targetId != null;
    }
}
