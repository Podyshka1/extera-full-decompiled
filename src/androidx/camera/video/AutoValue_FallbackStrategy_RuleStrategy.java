package androidx.camera.video;

import androidx.camera.video.FallbackStrategy;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_FallbackStrategy_RuleStrategy extends FallbackStrategy.RuleStrategy {
    private final Quality fallbackQuality;
    private final int fallbackRule;

    AutoValue_FallbackStrategy_RuleStrategy(Quality quality, int i) {
        if (quality == null) {
            throw new NullPointerException("Null fallbackQuality");
        }
        this.fallbackQuality = quality;
        this.fallbackRule = i;
    }

    @Override // androidx.camera.video.FallbackStrategy.RuleStrategy
    Quality getFallbackQuality() {
        return this.fallbackQuality;
    }

    @Override // androidx.camera.video.FallbackStrategy.RuleStrategy
    int getFallbackRule() {
        return this.fallbackRule;
    }

    public String toString() {
        return "RuleStrategy{fallbackQuality=" + this.fallbackQuality + ", fallbackRule=" + this.fallbackRule + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FallbackStrategy.RuleStrategy) {
            FallbackStrategy.RuleStrategy ruleStrategy = (FallbackStrategy.RuleStrategy) obj;
            if (this.fallbackQuality.equals(ruleStrategy.getFallbackQuality()) && this.fallbackRule == ruleStrategy.getFallbackRule()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.fallbackQuality.hashCode() ^ 1000003) * 1000003) ^ this.fallbackRule;
    }
}
